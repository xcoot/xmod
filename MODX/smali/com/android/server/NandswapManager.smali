.class public final Lcom/android/server/NandswapManager;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SUPPORT_RAM_EXPAND_SWITCH:Z

.field public static final intentReceiver:Lcom/android/server/NandswapManager$1;

.field public static final isJdmDevice:Z

.field public static mClient:Lcom/android/server/NandswapManager$NandswapClient;

.field public static mContext:Landroid/content/Context;

.field public static mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

.field public static final sNandswapManager:Landroid/content/ComponentName;


# direct methods
.method public static -$$Nest$smgetRamExpandSizePersistProp()I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    const-string/jumbo v1, "persist.sys.zram.ram_expand_size"

    .line 5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const-string v1, "NandswapManager"

    .line 12
    const-string/jumbo v2, "error on get SystemProperties"

    .line 15
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_0
    return v0
.end method

.method public static -$$Nest$smisBackingDevSet()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    const-string v2, "/sys/block/zram0/backing_dev"

    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v2, ""

    .line 11
    const/16 v3, 0x80

    .line 13
    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const-string/jumbo v2, "none"

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    if-nez v1, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const-string v1, "NandswapManager"

    .line 34
    const-string/jumbo v2, "exception on checking backing_dev /sys/block/zram0/backing_dev"

    .line 37
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    :goto_0
    return v0
.end method

.method public static -$$Nest$smsaveClientsBigdataInfoInReboot()V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 3
    iget v1, v0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_2

    .line 8
    iget-boolean v1, v0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 10
    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getBigdataInfoProp()Ljava/util/HashMap;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 23
    move-result v3

    .line 24
    const-string v4, "NandswapManager"

    .line 26
    if-nez v3, :cond_1

    .line 28
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 34
    goto/16 :goto_0

    .line 36
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 38
    const-string/jumbo v3, "reads"

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/lang/Integer;

    .line 47
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v5

    .line 51
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v3

    .line 61
    iget-object v6, v0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 63
    iget v7, v6, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 65
    sub-int/2addr v3, v7

    .line 66
    add-int/2addr v3, v5

    .line 67
    const-string v5, ","

    .line 69
    invoke-static {v3, v5}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object v3

    .line 77
    const-string/jumbo v7, "writes"

    .line 80
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Ljava/lang/Integer;

    .line 86
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 89
    move-result v8

    .line 90
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/lang/Integer;

    .line 96
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 99
    move-result v7

    .line 100
    iget v9, v6, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 102
    sub-int/2addr v7, v9

    .line 103
    add-int/2addr v7, v8

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    move-result-object v3

    .line 130
    const-string/jumbo v7, "max_count"

    .line 133
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v8

    .line 137
    check-cast v8, Ljava/lang/Integer;

    .line 139
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 142
    move-result v8

    .line 143
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Ljava/lang/Integer;

    .line 149
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 152
    move-result v7

    .line 153
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 156
    move-result v7

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v3

    .line 179
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    move-result-object v3

    .line 183
    const-string/jumbo v7, "max_size"

    .line 186
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move-result-object v8

    .line 190
    check-cast v8, Ljava/lang/Integer;

    .line 192
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 195
    move-result v8

    .line 196
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    move-result-object v7

    .line 200
    check-cast v7, Ljava/lang/Integer;

    .line 202
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 205
    move-result v7

    .line 206
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 209
    move-result v7

    .line 210
    new-instance v8, Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v3

    .line 232
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    move-result-object v3

    .line 236
    const-string/jumbo v7, "ppr_reads"

    .line 239
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    move-result-object v8

    .line 243
    check-cast v8, Ljava/lang/Integer;

    .line 245
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 248
    move-result v8

    .line 249
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-result-object v7

    .line 253
    check-cast v7, Ljava/lang/Integer;

    .line 255
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 258
    move-result v7

    .line 259
    iget-object v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 261
    iget v9, v0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 263
    sub-int/2addr v7, v9

    .line 264
    add-int/2addr v7, v8

    .line 265
    new-instance v8, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object v3

    .line 287
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    move-result-object v3

    .line 291
    const-string/jumbo v7, "ppr_writes"

    .line 294
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-result-object v8

    .line 298
    check-cast v8, Ljava/lang/Integer;

    .line 300
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 303
    move-result v8

    .line 304
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    move-result-object v7

    .line 308
    check-cast v7, Ljava/lang/Integer;

    .line 310
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 313
    move-result v7

    .line 314
    iget v0, v0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 316
    sub-int/2addr v7, v0

    .line 317
    add-int/2addr v7, v8

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    move-result-object v0

    .line 344
    const-string/jumbo v3, "ppr_max_count"

    .line 347
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    move-result-object v7

    .line 351
    check-cast v7, Ljava/lang/Integer;

    .line 353
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 356
    move-result v7

    .line 357
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    move-result-object v3

    .line 361
    check-cast v3, Ljava/lang/Integer;

    .line 363
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 366
    move-result v3

    .line 367
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 370
    move-result v3

    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    .line 373
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    move-result-object v0

    .line 397
    const-string/jumbo v3, "ppr_max_size"

    .line 400
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    move-result-object v7

    .line 404
    check-cast v7, Ljava/lang/Integer;

    .line 406
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 409
    move-result v7

    .line 410
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    move-result-object v3

    .line 414
    check-cast v3, Ljava/lang/Integer;

    .line 416
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 419
    move-result v3

    .line 420
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 423
    move-result v3

    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    .line 426
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    move-result-object v0

    .line 446
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    move-result-object v0

    .line 450
    const-string/jumbo v3, "objreads"

    .line 453
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    move-result-object v7

    .line 457
    check-cast v7, Ljava/lang/Integer;

    .line 459
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 462
    move-result v7

    .line 463
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    move-result-object v3

    .line 467
    check-cast v3, Ljava/lang/Integer;

    .line 469
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 472
    move-result v3

    .line 473
    iget v8, v6, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 475
    sub-int/2addr v3, v8

    .line 476
    add-int/2addr v3, v7

    .line 477
    new-instance v7, Ljava/lang/StringBuilder;

    .line 479
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    move-result-object v3

    .line 492
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    move-result-object v0

    .line 499
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    move-result-object v0

    .line 503
    const-string/jumbo v3, "objwrites"

    .line 506
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    move-result-object v1

    .line 510
    check-cast v1, Ljava/lang/Integer;

    .line 512
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 515
    move-result v1

    .line 516
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    move-result-object v2

    .line 520
    check-cast v2, Ljava/lang/Integer;

    .line 522
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 525
    move-result v2

    .line 526
    iget v3, v6, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 528
    sub-int/2addr v2, v3

    .line 529
    add-int/2addr v2, v1

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    .line 532
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    move-result-object v0

    .line 549
    :try_start_0
    const-string/jumbo v1, "persist.sys.zram0.bigdata_info"

    .line 552
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    const-string v0, "Saved Bigdata Info successfully!!"

    .line 557
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    goto :goto_1

    .line 561
    :catch_0
    const-string v0, "Failed to saved Bigdata Info..."

    .line 563
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    goto :goto_1

    .line 567
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 569
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 572
    move-result v0

    .line 573
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 576
    move-result v1

    .line 577
    const-string/jumbo v2, "persist.sys.zram0.bigdata_info("

    .line 580
    const-string v3, ") or bd_stat("

    .line 582
    const-string v5, ") is empty..."

    .line 584
    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    move-result-object v0

    .line 588
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    :goto_1
    return-void
.end method

.method public static -$$Nest$smsetExpandSizeAndList(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/NandswapManager;->getStorageSize()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x20

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "NandswapManager"

    .line 10
    if-ge v0, v1, :cond_0

    .line 12
    const-string/jumbo v1, "no ramExpandSwitch for low storage "

    .line 15
    invoke-static {v0, v1, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :goto_0
    sget-boolean v1, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    .line 23
    if-nez v1, :cond_1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v1, "no ramExpandSwitch for version "

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 35
    invoke-static {v0, v1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v0

    .line 40
    :goto_1
    invoke-static {p0, p1}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    .line 43
    invoke-static {p1}, Lcom/android/server/NandswapManager;->setRamExpandSizePersistProp(I)V

    .line 46
    if-nez v2, :cond_2

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-static {}, Lcom/android/server/NandswapManager;->getAvailSizeList()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v2, "ramExpandSizeMb: "

    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string p1, " avail: "

    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager;->putRamExpandSizeList(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-class v1, Lcom/android/server/NandswapManager;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sput-object v0, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 19
    sput-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 21
    sput-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    .line 23
    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/android/server/NandswapManager;->isJdmDevice:Z

    .line 26
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 28
    const v2, 0x1fc34

    .line 31
    if-lt v1, v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    sput-boolean v0, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    .line 37
    new-instance v0, Lcom/android/server/NandswapManager$1;

    .line 39
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    sput-object v0, Lcom/android/server/NandswapManager;->intentReceiver:Lcom/android/server/NandswapManager$1;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 4
    return-void
.end method

.method public static getAvailSizeList()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x1e

    .line 7
    shr-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ge v0, v1, :cond_0

    .line 12
    const-string v0, "2,4"

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x6

    .line 16
    if-ge v0, v1, :cond_1

    .line 18
    const-string v0, "2,4,6"

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v0, "2,4,6,8"

    .line 23
    :goto_0
    return-object v0
.end method

.method public static getDefaultRamExpandSize()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/NandswapManager;->getStorageSize()I

    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.higher_max_size"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/16 v1, 0x100

    .line 17
    if-lt v0, v1, :cond_0

    .line 19
    const/16 v0, 0x2000

    .line 21
    return v0

    .line 22
    :cond_0
    const/16 v1, 0x20

    .line 24
    if-le v0, v1, :cond_1

    .line 26
    const/16 v0, 0x1000

    .line 28
    return v0

    .line 29
    :cond_1
    if-ne v0, v1, :cond_2

    .line 31
    const/16 v0, 0x800

    .line 33
    return v0

    .line 34
    :cond_2
    return v2
.end method

.method public static getStorageSize()I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 4
    new-instance v2, Ljava/io/FileReader;

    .line 6
    const-string v3, "/proc/partitions"

    .line 8
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    invoke-static {}, Lcom/android/server/NandswapManager;->isUfs()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 20
    const-string v2, ".*(sd[a-z])$"

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v2

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    const-string v2, ".*(mmcblk0)$"

    .line 27
    :goto_0
    move v3, v0

    .line 28
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_2

    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    const-string v5, "\\s+"

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    array-length v5, v4

    .line 51
    const/4 v6, 0x4

    .line 52
    if-ne v5, v6, :cond_1

    .line 54
    const/4 v5, 0x2

    .line 55
    aget-object v4, v4, v5

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    move-result v4

    .line 61
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    goto :goto_4

    .line 70
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    goto :goto_3

    .line 74
    :catchall_1
    move-exception v1

    .line 75
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    :goto_3
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    :catch_0
    const-string v1, "NandswapManager"

    .line 81
    const-string v2, "Failed to read storage size from /proc/partitions"

    .line 83
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    move v3, v0

    .line 87
    :goto_4
    if-nez v3, :cond_3

    .line 89
    return v0

    .line 90
    :cond_3
    const/high16 v0, 0x100000

    .line 92
    div-int/2addr v3, v0

    .line 93
    int-to-double v0, v3

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 97
    move-result-wide v0

    .line 98
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 103
    move-result-wide v2

    .line 104
    div-double/2addr v0, v2

    .line 105
    double-to-int v0, v0

    .line 106
    const/4 v1, 0x1

    .line 107
    add-int/2addr v0, v1

    .line 108
    shl-int v0, v1, v0

    .line 110
    return v0
.end method

.method public static initNandswapClient()V
    .locals 15

    .line 1
    const-string v0, "NandswapManager"

    .line 3
    const-string v1, "Init Nandswap Client"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    new-instance v2, Ljava/util/HashMap;

    .line 22
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 25
    const/4 v3, 0x0

    .line 26
    const/16 v4, 0x8

    .line 28
    const/16 v5, 0xc

    .line 30
    filled-new-array {v3, v3, v4, v5}, [I

    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x1

    .line 35
    filled-new-array {v3, v7, v4, v5}, [I

    .line 38
    move-result-object v4

    .line 39
    const/16 v5, 0x10

    .line 41
    const/16 v8, 0x20

    .line 43
    const/16 v9, 0x40

    .line 45
    const/16 v10, 0x80

    .line 47
    filled-new-array {v5, v8, v9, v10}, [I

    .line 50
    move-result-object v11

    .line 51
    invoke-static {}, Lcom/android/server/NandswapManager;->getStorageSize()I

    .line 54
    move-result v12

    .line 55
    sget-boolean v13, Lcom/android/server/NandswapManager;->isJdmDevice:Z

    .line 57
    const/high16 v14, 0x40000

    .line 59
    if-eqz v13, :cond_3

    .line 61
    const-string v1, "This device is JDM model"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-lt v12, v9, :cond_1

    .line 68
    :goto_0
    move v1, v14

    .line 69
    goto/16 :goto_4

    .line 71
    :cond_1
    if-ne v12, v8, :cond_2

    .line 73
    const/high16 v1, 0x20000

    .line 75
    goto/16 :goto_4

    .line 77
    :cond_2
    move v1, v3

    .line 78
    goto/16 :goto_4

    .line 80
    :cond_3
    const-string v8, "This device is in-house model"

    .line 82
    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    move v8, v3

    .line 86
    :goto_1
    const/4 v9, 0x4

    .line 87
    if-ge v8, v9, :cond_4

    .line 89
    aget v9, v11, v8

    .line 91
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v9

    .line 95
    aget v13, v6, v8

    .line 97
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v13

    .line 101
    invoke-virtual {v1, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    aget v9, v11, v8

    .line 106
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v9

    .line 110
    aget v13, v4, v8

    .line 112
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v13

    .line 116
    invoke-virtual {v2, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    add-int/lit8 v8, v8, 0x1

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    if-le v12, v10, :cond_5

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    move v10, v12

    .line 126
    :goto_2
    if-le v5, v10, :cond_6

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    move v5, v10

    .line 130
    :goto_3
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Ljava/lang/Integer;

    .line 140
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 143
    move-result v1

    .line 144
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Ljava/lang/Integer;

    .line 154
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 157
    move-result v2

    .line 158
    invoke-static {}, Lcom/android/server/NandswapManager;->isUfs()Z

    .line 161
    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    if-eqz v4, :cond_7

    .line 164
    mul-int/2addr v1, v14

    .line 165
    goto :goto_4

    .line 166
    :cond_7
    mul-int v1, v2, v14

    .line 168
    goto :goto_4

    .line 169
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    const-string v2, "Storage size is not in Quota table! size:"

    .line 173
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v1

    .line 187
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    goto :goto_0

    .line 191
    :goto_4
    const-string/jumbo v2, "persist.sys.zram.daily_quota"

    .line 194
    const/4 v4, -0x1

    .line 195
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 198
    move-result v5

    .line 199
    if-ne v5, v4, :cond_8

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v5, "First boot, set daily quota..."

    .line 210
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_8
    const-string/jumbo v5, "persist.sys.zram.daily_quota_remain"

    .line 216
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 219
    move-result v6

    .line 220
    if-ne v6, v4, :cond_9

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "First boot, set daily quota remaining..."

    .line 231
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_9
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 237
    move-result v0

    .line 238
    mul-int/lit8 v1, v0, 0x3

    .line 240
    sget-object v2, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 242
    iget v4, v2, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 244
    if-ne v4, v7, :cond_a

    .line 246
    iput v0, v2, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    .line 248
    iput v1, v2, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    .line 250
    invoke-static {}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaSysNode()I

    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_a

    .line 256
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 264
    move-result v0

    .line 265
    sget-object v1, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 267
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    invoke-static {v0}, Lcom/android/server/NandswapManager$NandswapClient;->setQuotaSysNode(I)V

    .line 273
    :cond_a
    return-void
.end method

.method public static isRemainStorageLifeTime()Z
    .locals 9

    .line 1
    const-string v0, ""

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    const-string v2, "/sys/class/scsi_host/host0/lt"

    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/io/File;

    .line 12
    const-string v4, "/sys/class/sec/ufs/lt"

    .line 14
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    move-object v2, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v2, "/sys/block/mmcblk0/device/life_time"

    .line 34
    :goto_0
    const-string/jumbo v1, "try to check lifetime via "

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string v3, "NandswapManager"

    .line 43
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v1, 0x0

    .line 47
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 49
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    const/16 v5, 0x10

    .line 54
    invoke-static {v4, v5, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    const-string v6, "\\s+"

    .line 64
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    move v6, v1

    .line 69
    :goto_1
    array-length v7, v4

    .line 70
    if-ge v6, v7, :cond_3

    .line 72
    aget-object v7, v4, v6

    .line 74
    const-string v8, "0x"

    .line 76
    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v7

    .line 80
    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 83
    move-result v7

    .line 84
    const/16 v8, 0x8

    .line 86
    if-le v7, v8, :cond_2

    .line 88
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v4, "abort: lifetime below 20%(val="

    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v4, ")"

    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return v1

    .line 116
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    const/4 v0, 0x1

    .line 120
    return v0

    .line 121
    :catch_0
    const-string v0, "Failed to read "

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v1
.end method

.method public static isUfs()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    const-string v2, "/sys/class/sec/ufs/un"

    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    return v2

    .line 17
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 19
    const-string v3, "/sys/class/sec/mmc/un"

    .line 21
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    return v0

    .line 31
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 33
    const-string v3, "/sys/class/scsi_host/host0/proc_name"

    .line 35
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 44
    const-string v3, ""

    .line 46
    const/16 v4, 0x40

    .line 48
    invoke-static {v1, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    const-string/jumbo v3, "ufshcd"

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    if-eqz v1, :cond_2

    .line 65
    return v2

    .line 66
    :catch_0
    const-string v1, "NandswapManager"

    .line 68
    const-string v2, "Failed to read /sys/class/scsi_host/host0/proc_name"

    .line 70
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    return v0
.end method

.method public static makeNandswapBigdataManager(Landroid/content/Context;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v1, "HqmManagerService"

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/SemHqmManager;

    .line 14
    sput-object p0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 16
    sget-object p0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 18
    iget-boolean p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 20
    if-eqz p0, :cond_1

    .line 22
    if-eqz p0, :cond_0

    .line 24
    const-string/jumbo p0, "persist.sys.zram0.bigdata_info"

    .line 27
    const-string v1, "None"

    .line 29
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object p0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 42
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    .line 45
    :cond_1
    :goto_0
    sput-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "Unexpected error while create bigdataManager: "

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v1, "NandswapManager"

    .line 59
    invoke-static {p0, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 62
    const/4 p0, 0x0

    .line 63
    sput-object p0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    .line 65
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public static putRamExpandSize(Landroid/content/Context;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "ram_expand_size"

    .line 8
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const-string/jumbo p0, "error on ram_expand_size: "

    .line 15
    const-string v0, "NandswapManager"

    .line 17
    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    return-void
.end method

.method public static putRamExpandSizeList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "ram_expand_size_list"

    .line 8
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const-string/jumbo p0, "error on ram_expand_size_list "

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const-string p1, "NandswapManager"

    .line 21
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    return-void
.end method

.method public static saveClientsStorageUsage()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 3
    iget v1, v0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 8
    iget-boolean v1, v0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    .line 15
    move-result-object v1

    .line 16
    const-string/jumbo v2, "count"

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-object v3, v0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 30
    iget-object v4, v3, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string/jumbo v2, "size"

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget-object v3, v3, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string/jumbo v2, "ppr_count"

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iget-object v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 66
    iget-object v3, v0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string/jumbo v2, "ppr_size"

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iget-object v0, v0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v0, "NandswapManager"

    .line 90
    const-string v1, "Saved storage usage successfully!!"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method

.method public static schedNextLimitReset()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "jobscheduler"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 12
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 14
    const/16 v2, 0x32d

    .line 16
    sget-object v3, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    .line 18
    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 21
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 23
    const-wide/16 v3, 0x18

    .line 25
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 28
    move-result-wide v5

    .line 29
    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 48
    return-void
.end method

.method public static schedNextUpdateAvgerage()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "jobscheduler"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 12
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 14
    const/16 v2, 0x32e

    .line 16
    sget-object v3, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    .line 18
    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 21
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 23
    const-wide/16 v3, 0x4

    .line 25
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 28
    move-result-wide v5

    .line 29
    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 48
    return-void
.end method

.method public static setRamExpandSizePersistProp(I)V
    .locals 2

    .line 1
    :try_start_0
    const-string/jumbo v0, "persist.sys.zram.ram_expand_size"

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const-string/jumbo v0, "error on set SystemProperties: "

    .line 15
    const-string v1, "NandswapManager"

    .line 17
    invoke-static {p0, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    return-void
.end method

.method public static testRestoreExpandSizeAndList(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "ram_expand_size"

    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    if-ne v0, v2, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    sget-boolean v1, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    .line 18
    const-string/jumbo v3, "ramExpandSizeMb: "

    .line 21
    const-string v4, "NandswapManager"

    .line 23
    if-nez v1, :cond_2

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v2, "no ramExpandSwitch for version "

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    .line 48
    move-result v1

    .line 49
    if-eq v0, v1, :cond_1

    .line 51
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    .line 54
    move v0, v1

    .line 55
    :cond_1
    invoke-static {v0, v3, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 59
    :cond_2
    invoke-static {}, Lcom/android/server/NandswapManager;->getAvailSizeList()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    move-result-object v5

    .line 67
    const-string/jumbo v6, "ram_expand_size_list"

    .line 70
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_3

    .line 80
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager;->putRamExpandSizeList(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    :cond_3
    invoke-static {}, Lcom/android/server/NandswapManager;->getAvailSizeList()Ljava/lang/String;

    .line 86
    move-result-object v5

    .line 87
    if-eqz v0, :cond_5

    .line 89
    rem-int/lit16 v6, v0, 0x400

    .line 91
    if-nez v6, :cond_4

    .line 93
    div-int/lit16 v6, v0, 0x400

    .line 95
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 102
    move-result v5

    .line 103
    if-ne v5, v2, :cond_5

    .line 105
    :cond_4
    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    .line 108
    move-result v0

    .line 109
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    .line 112
    :cond_5
    invoke-static {v0}, Lcom/android/server/NandswapManager;->setRamExpandSizePersistProp(I)V

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, " avail: "

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 1
    const-string v0, "NandswapManager"

    .line 3
    const-string/jumbo v1, "onStartJob"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 16
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 19
    return v1

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x32d

    .line 28
    if-ne v2, v3, :cond_3

    .line 30
    const-string v2, "Reset Client Quotas"

    .line 32
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v2, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 37
    iget v3, v2, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 39
    const/4 v4, 0x1

    .line 40
    if-ne v3, v4, :cond_2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaSysNode()I

    .line 48
    move-result v2

    .line 49
    sget-object v3, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 51
    iget v4, v3, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    .line 53
    add-int/2addr v2, v4

    .line 54
    iget v3, v3, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    .line 56
    if-le v2, v3, :cond_1

    .line 58
    move v2, v3

    .line 59
    :cond_1
    invoke-static {v2}, Lcom/android/server/NandswapManager$NandswapClient;->setQuotaSysNode(I)V

    .line 62
    :cond_2
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 69
    move-result v2

    .line 70
    const/16 v3, 0x32e

    .line 72
    if-ne v2, v3, :cond_4

    .line 74
    invoke-static {}, Lcom/android/server/NandswapManager;->saveClientsStorageUsage()V

    .line 77
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAvgerage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_1

    .line 81
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v4, "scheduler exception occurred : "

    .line 86
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {v2, v3, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 95
    return v1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const-string p0, "NandswapManager"

    .line 3
    const-string/jumbo p1, "onStopJob"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method
