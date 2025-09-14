.class public abstract Lcom/android/server/am/Pageboost$PageboostAppCapture;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PAGEBOOST_IO_PREFETCH_LEVEL:I

.field public static record_ongoing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.config.pageboost.io_prefetch.level"

    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    .line 11
    return-void
.end method

.method public static capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    const/4 v3, 0x2

    .line 6
    const-string v4, "/proc/"

    .line 8
    const-wide/16 v5, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const-string v8, "Pageboost"

    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v0, 0x3

    .line 15
    sget v10, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    .line 17
    if-ne v0, v10, :cond_4

    .line 19
    sget-boolean v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 21
    if-eqz v0, :cond_0

    .line 23
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 25
    const-string/jumbo v0, "record is ongoing. Abort for "

    .line 28
    invoke-static {v2, v0, v8}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    goto/16 :goto_13

    .line 33
    :cond_0
    if-lez v2, :cond_1a

    .line 35
    new-instance v0, Lcom/android/server/am/Pageboost$IoRecord;

    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v7, v0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    .line 42
    iput-wide v5, v0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    .line 44
    iput-boolean v7, v0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    .line 46
    iput-boolean v7, v0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    .line 48
    if-gtz v2, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    iput v2, v0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    .line 57
    iget-object v5, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 59
    iput-object v1, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v4, "/io_record_control"

    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    const-string v5, "2"

    .line 80
    invoke-static {v4, v5}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    move-result v4

    .line 84
    iput-boolean v4, v0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    .line 86
    if-eqz v4, :cond_2

    .line 88
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    .line 91
    move-result v2

    .line 92
    iput-boolean v2, v0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    .line 94
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 96
    const-string v2, "IoRecord pid : "

    .line 98
    const-string v4, ", started correctly"

    .line 100
    invoke-static {v2, v3, v4, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2
    :goto_0
    iget-boolean v2, v0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    .line 105
    if-eqz v2, :cond_1a

    .line 107
    sput-boolean v9, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    const-string v3, "RecordStart,"

    .line 113
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    .line 128
    iget-boolean v1, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    .line 130
    const/16 v2, 0xf

    .line 132
    if-eqz v1, :cond_3

    .line 134
    const v1, 0x88b8

    .line 137
    invoke-static {v2, v1, v0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    .line 140
    goto/16 :goto_13

    .line 142
    :cond_3
    const/16 v1, 0x1388

    .line 144
    invoke-static {v2, v1, v0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    .line 147
    goto/16 :goto_13

    .line 149
    :cond_4
    sget-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 151
    if-eqz v0, :cond_1a

    .line 153
    iget-boolean v0, v0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    .line 155
    if-nez v0, :cond_5

    .line 157
    goto/16 :goto_13

    .line 159
    :cond_5
    sget-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 161
    if-eqz v0, :cond_1a

    .line 163
    iget-boolean v0, v0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    .line 165
    if-nez v0, :cond_6

    .line 167
    goto/16 :goto_13

    .line 169
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    const-string v11, "IO Capture start for : "

    .line 173
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v11, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string/jumbo v11, "pid : "

    .line 184
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 199
    iget-object v12, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 201
    invoke-static {v0, v12}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 206
    invoke-static {v0, v12}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    move-result-object v12

    .line 210
    if-nez v12, :cond_7

    .line 212
    goto/16 :goto_13

    .line 214
    :cond_7
    if-gt v3, v10, :cond_16

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    move-result-wide v20

    .line 220
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    .line 223
    move-result v22

    .line 224
    new-instance v0, Lcom/android/server/am/Pageboost$FileMapList;

    .line 226
    invoke-direct {v0, v2}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    .line 229
    iget-boolean v13, v0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    .line 231
    if-eqz v13, :cond_16

    .line 233
    iget-object v0, v0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    .line 235
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 242
    move-result-object v23

    .line 243
    move-wide/from16 v24, v5

    .line 245
    move-wide/from16 v26, v24

    .line 247
    move-wide/from16 v28, v26

    .line 249
    move/from16 v30, v7

    .line 251
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_14

    .line 257
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Ljava/lang/String;

    .line 263
    invoke-static {v0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    .line 266
    move-result v13

    .line 267
    if-nez v13, :cond_8

    .line 269
    goto :goto_1

    .line 270
    :cond_8
    if-eqz v22, :cond_9

    .line 272
    sget-object v13, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 274
    invoke-virtual {v13, v0}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    .line 277
    move-result v13

    .line 278
    if-eqz v13, :cond_9

    .line 280
    goto :goto_1

    .line 281
    :cond_9
    if-nez v22, :cond_a

    .line 283
    sget-object v13, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 285
    invoke-virtual {v13, v0}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    .line 288
    move-result v13

    .line 289
    if-eqz v13, :cond_a

    .line 291
    goto :goto_1

    .line 292
    :cond_a
    if-gtz v2, :cond_b

    .line 294
    move v13, v7

    .line 295
    move v14, v13

    .line 296
    goto :goto_2

    .line 297
    :cond_b
    move v14, v2

    .line 298
    move v13, v9

    .line 299
    :goto_2
    if-eqz v13, :cond_13

    .line 301
    if-nez v13, :cond_c

    .line 303
    const/4 v0, 0x0

    .line 304
    goto/16 :goto_d

    .line 306
    :cond_c
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 309
    move-result-object v13

    .line 310
    const-string v14, "/filemap_info"

    .line 312
    invoke-static {v4, v13, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    move-result-object v13

    .line 316
    :try_start_0
    new-instance v15, Ljava/io/FileWriter;

    .line 318
    new-instance v14, Ljava/io/File;

    .line 320
    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-direct {v15, v14}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    :try_start_1
    invoke-virtual {v15, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 329
    new-array v14, v7, [Ljava/lang/String;

    .line 331
    invoke-static {v13, v14}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 334
    move-result-object v13

    .line 335
    invoke-static {v13}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 338
    move-result-object v14

    .line 339
    array-length v13, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 340
    int-to-long v5, v13

    .line 341
    move v9, v7

    .line 342
    move v13, v9

    .line 343
    const-wide/16 v31, 0x0

    .line 345
    :goto_3
    :try_start_2
    array-length v7, v14

    .line 346
    if-ge v13, v7, :cond_10

    .line 348
    aget-byte v7, v14, v13

    .line 350
    const/16 v3, 0xa

    .line 352
    if-ne v7, v3, :cond_f

    .line 354
    invoke-static {v14, v9, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 357
    move-result-object v3

    .line 358
    new-instance v7, Ljava/lang/String;

    .line 360
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 362
    invoke-direct {v7, v3, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 365
    const-string v3, " "

    .line 367
    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 370
    move-result-object v3

    .line 371
    array-length v7, v3

    .line 372
    const/4 v9, 0x2

    .line 373
    if-ne v7, v9, :cond_e

    .line 375
    const/4 v7, 0x0

    .line 376
    aget-object v9, v3, v7

    .line 378
    const-string/jumbo v7, "mapped"

    .line 381
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 385
    if-eqz v7, :cond_d

    .line 387
    const/4 v7, 0x1

    .line 388
    :try_start_3
    aget-object v3, v3, v7

    .line 390
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 393
    move-result-wide v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    const-wide/16 v18, 0x1000

    .line 396
    mul-long v16, v16, v18

    .line 398
    add-long v31, v16, v31

    .line 400
    add-int/lit8 v9, v13, 0x1

    .line 402
    move v3, v7

    .line 403
    move-object v7, v14

    .line 404
    move-object/from16 v33, v15

    .line 406
    goto :goto_6

    .line 407
    :catchall_0
    move-exception v0

    .line 408
    move-object v3, v0

    .line 409
    move-object/from16 v33, v15

    .line 411
    goto/16 :goto_9

    .line 413
    :cond_d
    const/4 v7, 0x1

    .line 414
    const/4 v9, 0x0

    .line 415
    :try_start_4
    aget-object v16, v3, v9

    .line 417
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 420
    move-result v16

    .line 421
    aget-object v3, v3, v7

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 426
    move-result v18

    .line 427
    add-int/lit8 v9, v13, 0x1

    .line 429
    add-int v13, v13, v18

    .line 431
    add-int/lit8 v3, v13, 0x1

    .line 433
    invoke-static {v14, v9, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 436
    move-result-object v17

    .line 437
    const/4 v7, 0x2

    .line 438
    add-int/lit8 v9, v13, 0x2

    .line 440
    sget-object v13, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 442
    const/16 v19, 0x0

    .line 444
    move-object v7, v14

    .line 445
    move-object v14, v12

    .line 446
    move-object/from16 v33, v15

    .line 448
    move-object v15, v0

    .line 449
    :try_start_5
    invoke-static/range {v13 .. v19}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 452
    move v13, v3

    .line 453
    :goto_4
    const/4 v3, 0x1

    .line 454
    goto :goto_6

    .line 455
    :catchall_1
    move-exception v0

    .line 456
    :goto_5
    move-object v3, v0

    .line 457
    goto :goto_9

    .line 458
    :catchall_2
    move-exception v0

    .line 459
    move-object/from16 v33, v15

    .line 461
    goto :goto_5

    .line 462
    :cond_e
    move-object/from16 v33, v15

    .line 464
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 466
    const-string/jumbo v0, "unknown error during parsing of filemap_info"

    .line 469
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 472
    goto :goto_7

    .line 473
    :cond_f
    move-object v7, v14

    .line 474
    move-object/from16 v33, v15

    .line 476
    goto :goto_4

    .line 477
    :goto_6
    add-int/2addr v13, v3

    .line 478
    move-object v14, v7

    .line 479
    move-object/from16 v15, v33

    .line 481
    const/4 v3, 0x2

    .line 482
    goto/16 :goto_3

    .line 484
    :cond_10
    move-object/from16 v33, v15

    .line 486
    :goto_7
    :try_start_6
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 489
    :goto_8
    const/4 v3, 0x2

    .line 490
    goto :goto_c

    .line 491
    :catch_0
    move-exception v0

    .line 492
    goto :goto_b

    .line 493
    :catchall_3
    move-exception v0

    .line 494
    move-object/from16 v33, v15

    .line 496
    move-object v3, v0

    .line 497
    const-wide/16 v5, 0x0

    .line 499
    const-wide/16 v31, 0x0

    .line 501
    :goto_9
    :try_start_7
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 504
    goto :goto_a

    .line 505
    :catchall_4
    move-exception v0

    .line 506
    move-object v7, v0

    .line 507
    :try_start_8
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 510
    :goto_a
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 511
    :catch_1
    move-exception v0

    .line 512
    const-wide/16 v5, 0x0

    .line 514
    const-wide/16 v31, 0x0

    .line 516
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 519
    goto :goto_8

    .line 520
    :goto_c
    new-array v0, v3, [J

    .line 522
    const/4 v7, 0x0

    .line 523
    aput-wide v31, v0, v7

    .line 525
    const/4 v9, 0x1

    .line 526
    aput-wide v5, v0, v9

    .line 528
    :goto_d
    if-eqz v0, :cond_13

    .line 530
    aget-wide v5, v0, v7

    .line 532
    aget-wide v13, v0, v9

    .line 534
    add-long v24, v24, v5

    .line 536
    add-long v5, v26, v5

    .line 538
    add-long v13, v28, v13

    .line 540
    const-wide/32 v15, 0x9600000

    .line 543
    cmp-long v0, v5, v15

    .line 545
    if-lez v0, :cond_11

    .line 547
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    .line 551
    const-string v3, "IO Capture \'map\' over limit : "

    .line 553
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 559
    const-string v3, "/157286400"

    .line 561
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    move-result-object v0

    .line 568
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    goto :goto_e

    .line 572
    :cond_11
    const-wide/32 v15, 0x20000

    .line 575
    cmp-long v0, v13, v15

    .line 577
    if-lez v0, :cond_12

    .line 579
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    .line 583
    const-string v3, "IO Capture \'map\' over dbsize limit : "

    .line 585
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 591
    const-string v3, "/131072"

    .line 593
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    move-result-object v0

    .line 600
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_e
    const/4 v7, 0x1

    .line 604
    goto :goto_f

    .line 605
    :cond_12
    move-wide/from16 v26, v5

    .line 607
    move-wide/from16 v28, v13

    .line 609
    const/16 v30, 0x1

    .line 611
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 614
    move-result-wide v5

    .line 615
    sub-long v5, v5, v20

    .line 617
    const-wide/16 v13, 0x3e8

    .line 619
    cmp-long v0, v5, v13

    .line 621
    if-lez v0, :cond_15

    .line 623
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    .line 627
    const-string v3, "IO Capture \'map\' timed out : "

    .line 629
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 635
    const-string v3, "/1000"

    .line 637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    move-result-object v0

    .line 644
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_14
    move-wide/from16 v5, v26

    .line 649
    move/from16 v7, v30

    .line 651
    goto :goto_f

    .line 652
    :cond_15
    const-wide/16 v5, 0x0

    .line 654
    const/4 v9, 0x1

    .line 655
    goto/16 :goto_1

    .line 657
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 660
    move-result-wide v3

    .line 661
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 663
    const-string v0, "IO Capture \'mapped files\' pid : "

    .line 665
    const-string v9, " size : "

    .line 667
    invoke-static {v2, v0, v5, v6, v9}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    move-result-object v0

    .line 671
    const-string v9, " time : "

    .line 673
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    sub-long v3, v3, v20

    .line 678
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    move-result-object v0

    .line 685
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    move-wide v3, v5

    .line 689
    move-wide/from16 v5, v24

    .line 691
    :goto_10
    const/4 v9, 0x1

    .line 692
    goto :goto_11

    .line 693
    :cond_16
    const-wide/16 v3, 0x0

    .line 695
    const-wide/16 v5, 0x0

    .line 697
    goto :goto_10

    .line 698
    :goto_11
    if-gt v9, v10, :cond_18

    .line 700
    iget-object v15, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 702
    if-eqz v15, :cond_18

    .line 704
    invoke-static {v15}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    .line 707
    move-result v0

    .line 708
    if-eqz v0, :cond_18

    .line 710
    new-instance v0, Ljava/io/File;

    .line 712
    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 718
    move-result v13

    .line 719
    if-eqz v13, :cond_18

    .line 721
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 724
    move-result-wide v13

    .line 725
    long-to-int v0, v13

    .line 726
    const/high16 v13, 0x3200000

    .line 728
    if-le v0, v13, :cond_17

    .line 730
    move v0, v13

    .line 731
    :cond_17
    const v13, 0x8000

    .line 734
    div-int v14, v0, v13

    .line 736
    if-lez v14, :cond_18

    .line 738
    new-array v7, v14, [B

    .line 740
    const/4 v13, -0x1

    .line 741
    invoke-static {v7, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 744
    sget-object v13, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 746
    const/16 v16, 0x0

    .line 748
    const/16 v19, 0x0

    .line 750
    move/from16 v18, v14

    .line 752
    move-object v14, v12

    .line 753
    move-object/from16 v17, v7

    .line 755
    invoke-static/range {v13 .. v19}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 758
    new-instance v7, Ljava/lang/StringBuilder;

    .line 760
    const-string v12, "IO Capture \'apk\', pid : "

    .line 762
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    const-string v12, ", size : "

    .line 770
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    move-result-object v7

    .line 780
    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    int-to-long v12, v0

    .line 784
    add-long/2addr v5, v12

    .line 785
    goto :goto_12

    .line 786
    :cond_18
    move v9, v7

    .line 787
    :goto_12
    iget-object v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 789
    if-eqz v9, :cond_19

    .line 791
    iput v10, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    .line 793
    iput-wide v5, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    .line 795
    iput-wide v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    .line 799
    const-string v3, "Capture,"

    .line 801
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    move-result-object v1

    .line 811
    invoke-static {v1}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    .line 814
    :cond_19
    const-string v1, "IO Capture end for : "

    .line 816
    const-string v3, " done correctly? "

    .line 818
    invoke-static {v2, v1, v0, v11, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    move-result-object v0

    .line 822
    invoke-static {v8, v0, v9}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 825
    :cond_1a
    :goto_13
    return-void
.end method

.method public static captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    sget v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    .line 4
    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 8
    const/4 v2, 0x0

    .line 9
    sput-boolean v2, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 11
    const-string v2, "Pageboost"

    .line 13
    if-nez v0, :cond_0

    .line 15
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 17
    const-string/jumbo p0, "captureFinished requested for null app"

    .line 20
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 24
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    .line 26
    if-eqz v3, :cond_1

    .line 28
    iput v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    .line 30
    iget-wide v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    .line 32
    iput-wide v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    .line 34
    const-wide/16 v3, 0x0

    .line 36
    iput-wide v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    .line 38
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v3, "captureFinished success : "

    .line 45
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-wide v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    .line 50
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string v1, "/proc/self/io_record_control"

    .line 63
    const-string v3, "1"

    .line 65
    invoke-static {v1, v3}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 70
    const-string/jumbo v1, "captureFinished fail"

    .line 73
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    const-string v2, "RecordEnd,"

    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, ","

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    .line 105
    :cond_2
    return-void
.end method

.method public static check64Bit(I)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "/proc/"

    .line 7
    const-string v2, "/exe"

    .line 9
    invoke-static {p0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/io/File;

    .line 15
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 20
    const-string/jumbo v3, "r"

    .line 23
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    const/4 v2, 0x6

    .line 27
    :try_start_1
    new-array v2, v2, [B

    .line 29
    const-string/jumbo v3, "\u007fELF"

    .line 32
    const-string v4, "UTF-8"

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 41
    const/4 v4, 0x4

    .line 42
    invoke-static {v2, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 52
    aget-byte v2, v2, v4

    .line 54
    const/4 v3, 0x2

    .line 55
    if-ne v2, v3, :cond_1

    .line 57
    const/4 v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v2, v0

    .line 62
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    move v0, v2

    .line 69
    goto :goto_4

    .line 70
    :catch_0
    move-exception v1

    .line 71
    goto :goto_3

    .line 72
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    goto :goto_2

    .line 76
    :catchall_1
    move-exception v1

    .line 77
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 81
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :goto_4
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    const-string v2, "64 bit checked : "

    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    const-string v2, " for "

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    const-string v1, "Pageboost"

    .line 110
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v0
.end method

.method public static isCaptureTarget(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 4
    const-string v1, "/data"

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    const-string v1, "/system"

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 20
    const-string v1, "/product"

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 28
    :cond_0
    const-string v1, "/data/misc"

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 36
    const-string v1, "(deleted"

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    :cond_2
    :goto_0
    return v0
.end method
