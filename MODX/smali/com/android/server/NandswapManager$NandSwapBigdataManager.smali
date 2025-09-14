.class public final Lcom/android/server/NandswapManager$NandSwapBigdataManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final bigdataJsonFormat:[Ljava/lang/String;

.field public static semHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static -$$Nest$smuploadBigdataToHQM()V
    .locals 17

    .line 1
    sget-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 3
    const-string v1, "NandswapManager"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "Bigdata semHqmManager isn\'t initialized..."

    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    goto/16 :goto_10

    .line 14
    :cond_0
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 16
    iget-boolean v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 18
    if-eqz v0, :cond_1f

    .line 20
    const-string v0, "Upload Bigdata..."

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v2, ""

    .line 27
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 29
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    .line 32
    move-result-object v3

    .line 33
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 35
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getBigdataInfoProp()Ljava/util/HashMap;

    .line 38
    move-result-object v4

    .line 39
    new-instance v5, Ljava/util/HashMap;

    .line 41
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 44
    const/4 v6, 0x0

    .line 45
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 47
    new-instance v0, Ljava/io/FileReader;

    .line 49
    const-string v8, "/proc/meminfo"

    .line 51
    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 63
    const-string v8, ":"

    .line 65
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 68
    move-result v8

    .line 69
    if-lez v8, :cond_1

    .line 71
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    const-string v8, "\\D+"

    .line 81
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    move-result v0

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v5, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    move-object v8, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    goto :goto_3

    .line 104
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    move-object v7, v0

    .line 110
    :try_start_4
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    :goto_2
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 114
    :catch_0
    const-string v0, "Failed to read stats from /proc/meminfo"

    .line 116
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 122
    :goto_3
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_1d

    .line 128
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_1d

    .line 134
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_3

    .line 140
    goto/16 :goto_e

    .line 142
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    const-string v7, "\"option\":\""

    .line 146
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I

    .line 152
    move-result v7

    .line 153
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v7, "\","

    .line 158
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    sget-object v8, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    .line 167
    move v9, v6

    .line 168
    :goto_4
    const/16 v10, 0x13

    .line 170
    const/4 v11, 0x1

    .line 171
    if-ge v9, v10, :cond_1b

    .line 173
    aget-object v10, v8, v9

    .line 175
    const-string/jumbo v12, "count_average"

    .line 178
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v12

    .line 182
    const-string v15, "%.3f"

    .line 184
    if-eqz v12, :cond_5

    .line 186
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 188
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 190
    iget-boolean v14, v13, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 192
    if-eqz v14, :cond_4

    .line 194
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 196
    invoke-virtual {v13, v11}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    .line 199
    move-result-wide v13

    .line 200
    goto :goto_5

    .line 201
    :cond_4
    const-wide/16 v13, 0x0

    .line 203
    :goto_5
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 206
    move-result-object v11

    .line 207
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 210
    move-result-object v11

    .line 211
    invoke-static {v12, v15, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    move-result-object v11

    .line 215
    goto/16 :goto_d

    .line 217
    :cond_5
    const-string/jumbo v12, "size_average"

    .line 220
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    move-result v12

    .line 224
    const/4 v13, 0x2

    .line 225
    if-eqz v12, :cond_7

    .line 227
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 229
    sget-object v12, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 231
    iget-boolean v14, v12, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 233
    if-eqz v14, :cond_6

    .line 235
    iget-object v12, v12, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 237
    invoke-virtual {v12, v13}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    .line 240
    move-result-wide v13

    .line 241
    goto :goto_6

    .line 242
    :cond_6
    const-wide/16 v13, 0x0

    .line 244
    :goto_6
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 247
    move-result-object v12

    .line 248
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 251
    move-result-object v12

    .line 252
    invoke-static {v11, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    move-result-object v11

    .line 256
    goto/16 :goto_d

    .line 258
    :cond_7
    const-string/jumbo v12, "ppr_count_average"

    .line 261
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result v12

    .line 265
    if-eqz v12, :cond_9

    .line 267
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 269
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 271
    iget-boolean v14, v13, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 273
    if-eqz v14, :cond_8

    .line 275
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 277
    invoke-virtual {v13, v11}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    .line 280
    move-result-wide v13

    .line 281
    goto :goto_7

    .line 282
    :cond_8
    const-wide/16 v13, 0x0

    .line 284
    :goto_7
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 287
    move-result-object v11

    .line 288
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 291
    move-result-object v11

    .line 292
    invoke-static {v12, v15, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    move-result-object v11

    .line 296
    goto/16 :goto_d

    .line 298
    :cond_9
    const-string/jumbo v11, "ppr_size_average"

    .line 301
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    move-result v11

    .line 305
    if-eqz v11, :cond_b

    .line 307
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 309
    sget-object v12, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 311
    iget-boolean v14, v12, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 313
    if-eqz v14, :cond_a

    .line 315
    iget-object v12, v12, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 317
    invoke-virtual {v12, v13}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    .line 320
    move-result-wide v13

    .line 321
    goto :goto_8

    .line 322
    :cond_a
    const-wide/16 v13, 0x0

    .line 324
    :goto_8
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 327
    move-result-object v12

    .line 328
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 331
    move-result-object v12

    .line 332
    invoke-static {v11, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    move-result-object v11

    .line 336
    goto/16 :goto_d

    .line 338
    :cond_b
    const-string/jumbo v11, "objcnt"

    .line 341
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    move-result v11

    .line 345
    if-nez v11, :cond_1a

    .line 347
    const-string/jumbo v11, "ppr_objcnt"

    .line 350
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    move-result v11

    .line 354
    if-eqz v11, :cond_c

    .line 356
    goto/16 :goto_c

    .line 358
    :cond_c
    const-string/jumbo v11, "max_count"

    .line 361
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    move-result v11

    .line 365
    if-nez v11, :cond_19

    .line 367
    const-string/jumbo v11, "max_size"

    .line 370
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    move-result v11

    .line 374
    if-nez v11, :cond_19

    .line 376
    const-string/jumbo v11, "ppr_max_count"

    .line 379
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    move-result v11

    .line 383
    if-nez v11, :cond_19

    .line 385
    const-string/jumbo v11, "ppr_max_size"

    .line 388
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    move-result v11

    .line 392
    if-eqz v11, :cond_d

    .line 394
    goto/16 :goto_b

    .line 396
    :cond_d
    const-string/jumbo v11, "reads"

    .line 399
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    move-result v11

    .line 403
    if-eqz v11, :cond_e

    .line 405
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 407
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-result-object v11

    .line 411
    check-cast v11, Ljava/lang/Integer;

    .line 413
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 416
    move-result v11

    .line 417
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    move-result-object v12

    .line 421
    check-cast v12, Ljava/lang/Integer;

    .line 423
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 426
    move-result v12

    .line 427
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 429
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 431
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 433
    sub-int/2addr v12, v13

    .line 434
    add-int/2addr v12, v11

    .line 435
    new-instance v11, Ljava/lang/StringBuilder;

    .line 437
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    move-result-object v11

    .line 447
    goto/16 :goto_d

    .line 449
    :cond_e
    const-string/jumbo v11, "writes"

    .line 452
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    move-result v11

    .line 456
    if-eqz v11, :cond_f

    .line 458
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 460
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    move-result-object v11

    .line 464
    check-cast v11, Ljava/lang/Integer;

    .line 466
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 469
    move-result v11

    .line 470
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    move-result-object v12

    .line 474
    check-cast v12, Ljava/lang/Integer;

    .line 476
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 479
    move-result v12

    .line 480
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 482
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 484
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 486
    sub-int/2addr v12, v13

    .line 487
    add-int/2addr v12, v11

    .line 488
    new-instance v11, Ljava/lang/StringBuilder;

    .line 490
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    move-result-object v11

    .line 500
    goto/16 :goto_d

    .line 502
    :cond_f
    const-string/jumbo v11, "ppr_reads"

    .line 505
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    move-result v11

    .line 509
    if-eqz v11, :cond_10

    .line 511
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 513
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    move-result-object v11

    .line 517
    check-cast v11, Ljava/lang/Integer;

    .line 519
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 522
    move-result v11

    .line 523
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    move-result-object v12

    .line 527
    check-cast v12, Ljava/lang/Integer;

    .line 529
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 532
    move-result v12

    .line 533
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 535
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 537
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 539
    sub-int/2addr v12, v13

    .line 540
    add-int/2addr v12, v11

    .line 541
    new-instance v11, Ljava/lang/StringBuilder;

    .line 543
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    move-result-object v11

    .line 553
    goto/16 :goto_d

    .line 555
    :cond_10
    const-string/jumbo v11, "ppr_writes"

    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    move-result v11

    .line 562
    if-eqz v11, :cond_11

    .line 564
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 566
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    move-result-object v11

    .line 570
    check-cast v11, Ljava/lang/Integer;

    .line 572
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 575
    move-result v11

    .line 576
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    move-result-object v12

    .line 580
    check-cast v12, Ljava/lang/Integer;

    .line 582
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 585
    move-result v12

    .line 586
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 588
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 590
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 592
    sub-int/2addr v12, v13

    .line 593
    add-int/2addr v12, v11

    .line 594
    new-instance v11, Ljava/lang/StringBuilder;

    .line 596
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    move-result-object v11

    .line 606
    goto/16 :goto_d

    .line 608
    :cond_11
    const-string/jumbo v11, "objreads"

    .line 611
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    move-result v11

    .line 615
    if-eqz v11, :cond_12

    .line 617
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 619
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    move-result-object v11

    .line 623
    check-cast v11, Ljava/lang/Integer;

    .line 625
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 628
    move-result v11

    .line 629
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    move-result-object v12

    .line 633
    check-cast v12, Ljava/lang/Integer;

    .line 635
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 638
    move-result v12

    .line 639
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 641
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 643
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 645
    sub-int/2addr v12, v13

    .line 646
    add-int/2addr v12, v11

    .line 647
    new-instance v11, Ljava/lang/StringBuilder;

    .line 649
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    move-result-object v11

    .line 659
    goto/16 :goto_d

    .line 661
    :cond_12
    const-string/jumbo v11, "objwrites"

    .line 664
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    move-result v11

    .line 668
    if-eqz v11, :cond_13

    .line 670
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 672
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    move-result-object v11

    .line 676
    check-cast v11, Ljava/lang/Integer;

    .line 678
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 681
    move-result v11

    .line 682
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    move-result-object v12

    .line 686
    check-cast v12, Ljava/lang/Integer;

    .line 688
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 691
    move-result v12

    .line 692
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 694
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 696
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 698
    sub-int/2addr v12, v13

    .line 699
    add-int/2addr v12, v11

    .line 700
    new-instance v11, Ljava/lang/StringBuilder;

    .line 702
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    move-result-object v11

    .line 712
    goto/16 :goto_d

    .line 714
    :cond_13
    const-string/jumbo v11, "gpu_total_mem"

    .line 717
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    move-result v11

    .line 721
    const-string v12, "-1"

    .line 723
    if-eqz v11, :cond_15

    .line 725
    const-string v11, "KgslShmemUsage"

    .line 727
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    move-result-object v13

    .line 731
    if-nez v13, :cond_14

    .line 733
    :goto_9
    move-object v11, v12

    .line 734
    goto/16 :goto_d

    .line 736
    :cond_14
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    move-result-object v11

    .line 740
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 743
    move-result-object v11

    .line 744
    goto/16 :goto_d

    .line 746
    :cond_15
    const-string/jumbo v11, "gpu_reclaimed_mem"

    .line 749
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 752
    move-result v11

    .line 753
    if-eqz v11, :cond_17

    .line 755
    const-string v11, "KgslReclaimed"

    .line 757
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    move-result-object v13

    .line 761
    if-nez v13, :cond_16

    .line 763
    goto :goto_9

    .line 764
    :cond_16
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    move-result-object v11

    .line 768
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 771
    move-result-object v11

    .line 772
    goto :goto_d

    .line 773
    :cond_17
    const-string/jumbo v11, "swap_used"

    .line 776
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    move-result v11

    .line 780
    if-eqz v11, :cond_18

    .line 782
    const-string v11, "SwapTotal"

    .line 784
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    move-result-object v11

    .line 788
    check-cast v11, Ljava/lang/Integer;

    .line 790
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 793
    move-result v11

    .line 794
    const-string v12, "SwapFree"

    .line 796
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    move-result-object v12

    .line 800
    check-cast v12, Ljava/lang/Integer;

    .line 802
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 805
    move-result v12

    .line 806
    sub-int/2addr v11, v12

    .line 807
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 810
    move-result-object v11

    .line 811
    goto :goto_d

    .line 812
    :cond_18
    :goto_a
    move-object v15, v2

    .line 813
    goto/16 :goto_f

    .line 815
    :cond_19
    :goto_b
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 817
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    move-result-object v11

    .line 821
    check-cast v11, Ljava/lang/Integer;

    .line 823
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 826
    move-result v11

    .line 827
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    move-result-object v12

    .line 831
    check-cast v12, Ljava/lang/Integer;

    .line 833
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 836
    move-result v12

    .line 837
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 840
    move-result v11

    .line 841
    new-instance v12, Ljava/lang/StringBuilder;

    .line 843
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 852
    move-result-object v11

    .line 853
    goto :goto_d

    .line 854
    :cond_1a
    :goto_c
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 856
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    move-result-object v12

    .line 860
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 863
    move-result-object v12

    .line 864
    const-string v13, "%d"

    .line 866
    invoke-static {v11, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 869
    move-result-object v11

    .line 870
    :goto_d
    new-instance v12, Ljava/lang/StringBuilder;

    .line 872
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v0, "\""

    .line 880
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v0, "\":\""

    .line 888
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    move-result-object v0

    .line 901
    add-int/lit8 v9, v9, 0x1

    .line 903
    goto/16 :goto_4

    .line 905
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 908
    move-result v2

    .line 909
    if-eqz v2, :cond_1c

    .line 911
    invoke-static {v11, v6, v0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 914
    move-result-object v0

    .line 915
    :cond_1c
    move-object v2, v0

    .line 916
    goto :goto_a

    .line 917
    :cond_1d
    :goto_e
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 919
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 922
    move-result v0

    .line 923
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 926
    move-result v3

    .line 927
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 930
    move-result v4

    .line 931
    const-string/jumbo v5, "persist.sys.zram0.bigdata_info("

    .line 934
    const-string v7, ") or bd_stat("

    .line 936
    const-string v8, ") or meminfo("

    .line 938
    invoke-static {v0, v3, v5, v7, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    move-result-object v0

    .line 942
    const-string v3, ") is empty..."

    .line 944
    invoke-static {v0, v4, v3, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 947
    goto/16 :goto_a

    .line 949
    :goto_f
    sget-object v7, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 951
    const-string v14, ""

    .line 953
    const-string v16, ""

    .line 955
    const/4 v8, 0x0

    .line 956
    const-string v9, "AP"

    .line 958
    const-string v10, "NSST"

    .line 960
    const-string/jumbo v11, "sm"

    .line 963
    const-string v12, "0.0"

    .line 965
    const-string/jumbo v13, "sec"

    .line 968
    invoke-virtual/range {v7 .. v16}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 971
    const-string v0, "Initialize bigdata information..."

    .line 973
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 978
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    .line 981
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 983
    iget-boolean v2, v0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 985
    if-eqz v2, :cond_1e

    .line 987
    iget-object v2, v0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 989
    iget-object v3, v2, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 991
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 994
    iget-object v2, v2, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 996
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 999
    iget-object v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 1001
    iget-object v2, v0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 1003
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1006
    iget-object v0, v0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 1008
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1011
    :cond_1e
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 1013
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    .line 1016
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    :try_start_5
    new-instance v0, Ljava/io/File;

    .line 1023
    const-string v2, "/sys/block/zram0/bd_stat"

    .line 1025
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1028
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1031
    move-result-object v2

    .line 1032
    invoke-static {v0, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1035
    goto :goto_10

    .line 1036
    :catch_1
    const-string v0, "Failed to reset stats from /sys/block/zram0/bd_stat"

    .line 1038
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_1f
    :goto_10
    return-void
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 1
    const-string/jumbo v17, "gpu_reclaimed_mem"

    .line 4
    const-string/jumbo v18, "swap_used"

    .line 7
    const-string/jumbo v0, "count_average"

    .line 10
    const-string/jumbo v1, "size_average"

    .line 13
    const-string/jumbo v2, "reads"

    .line 16
    const-string/jumbo v3, "writes"

    .line 19
    const-string/jumbo v4, "objcnt"

    .line 22
    const-string/jumbo v5, "max_count"

    .line 25
    const-string/jumbo v6, "max_size"

    .line 28
    const-string/jumbo v7, "ppr_count_average"

    .line 31
    const-string/jumbo v8, "ppr_size_average"

    .line 34
    const-string/jumbo v9, "ppr_reads"

    .line 37
    const-string/jumbo v10, "ppr_writes"

    .line 40
    const-string/jumbo v11, "ppr_objcnt"

    .line 43
    const-string/jumbo v12, "ppr_max_count"

    .line 46
    const-string/jumbo v13, "ppr_max_size"

    .line 49
    const-string/jumbo v14, "objreads"

    .line 52
    const-string/jumbo v15, "objwrites"

    .line 55
    const-string/jumbo v16, "gpu_total_mem"

    .line 58
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    .line 64
    return-void
.end method
