.class public final Lcom/android/server/am/Pageboost$PageboostHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    const/4 p0, 0x1

    .line 2
    const-string v0, "Record App IO : "

    .line 4
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 6
    const/16 v2, 0xbb8

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 15
    :pswitch_0
    goto/16 :goto_6

    .line 17
    :pswitch_1
    sget-object p0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    .line 23
    check-cast v0, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/server/PinnerService$PinnedFile;

    .line 41
    invoke-virtual {v1}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    .line 47
    check-cast p0, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 52
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 54
    const-string/jumbo p0, "munlockAllFiles() done"

    .line 57
    const-string v0, "Pageboost"

    .line 59
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    sput-object v5, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 64
    goto/16 :goto_6

    .line 66
    :pswitch_2
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->getString()Ljava/util/LinkedList;

    .line 69
    move-result-object p0

    .line 70
    new-instance v0, Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 72
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v5, v0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iput-object v1, v0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    .line 84
    iput-object p0, v0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    .line 86
    sput-object v0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 88
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$LRUPolicy;->mlockAllFiles()V

    .line 91
    goto/16 :goto_6

    .line 93
    :pswitch_3
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 95
    const-string p0, "Pageboost"

    .line 97
    const-string/jumbo v0, "stop alp by timeout"

    .line 100
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 106
    goto/16 :goto_6

    .line 108
    :pswitch_4
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 111
    goto/16 :goto_6

    .line 113
    :pswitch_5
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 115
    if-nez p0, :cond_2

    .line 117
    goto/16 :goto_6

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 122
    move-result-object p0

    .line 123
    const-string/jumbo v0, "pkg"

    .line 126
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    const-string v0, "alp"

    .line 132
    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    goto/16 :goto_6

    .line 137
    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 141
    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->collectMemUsage(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    .line 144
    goto/16 :goto_6

    .line 146
    :pswitch_7
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 148
    if-nez p0, :cond_3

    .line 150
    goto/16 :goto_6

    .line 152
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 159
    move-result-object p0

    .line 160
    if-eqz p0, :cond_1c

    .line 162
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    .line 164
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    .line 166
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    .line 168
    add-int/2addr v0, v1

    .line 169
    add-int/2addr v0, v2

    .line 170
    if-nez v0, :cond_1c

    .line 172
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    .line 174
    const/16 v1, 0x12

    .line 176
    if-eqz v0, :cond_4

    .line 178
    const v0, 0x88b8

    .line 181
    invoke-static {v1, v0, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    .line 184
    goto/16 :goto_6

    .line 186
    :cond_4
    const/16 v0, 0x1388

    .line 188
    invoke-static {v1, v0, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    .line 191
    goto/16 :goto_6

    .line 193
    :pswitch_8
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 195
    if-nez v0, :cond_5

    .line 197
    goto/16 :goto_6

    .line 199
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 202
    move-result-object v0

    .line 203
    const-string/jumbo v1, "status"

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 209
    move-result v1

    .line 210
    const-string/jumbo v2, "pid"

    .line 213
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 216
    move-result v2

    .line 217
    const-string/jumbo v4, "pkg"

    .line 220
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 224
    sget-object v4, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 226
    invoke-virtual {v4, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 229
    move-result-object v4

    .line 230
    if-eqz v4, :cond_1c

    .line 232
    if-ne v1, p0, :cond_7

    .line 234
    iget v1, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 236
    if-eqz v1, :cond_6

    .line 238
    invoke-static {v0, v6}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_6

    .line 244
    move v2, v0

    .line 245
    :cond_6
    iget v0, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 247
    if-eq v0, v2, :cond_1c

    .line 249
    iput v2, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 251
    iput p0, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 253
    goto/16 :goto_6

    .line 255
    :cond_7
    if-ne v1, v3, :cond_1c

    .line 257
    iget p0, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 259
    if-ne p0, v2, :cond_1c

    .line 261
    iput v6, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 263
    iput v6, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 265
    goto/16 :goto_6

    .line 267
    :pswitch_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    check-cast p0, Lcom/android/server/am/Pageboost$IoRecord;

    .line 271
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->getResultFromKernel()V

    .line 274
    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V

    .line 277
    iget-object p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 279
    if-eqz p0, :cond_1c

    .line 281
    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 283
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 285
    invoke-static {v0, v1, p0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    .line 288
    goto/16 :goto_6

    .line 290
    :pswitch_a
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 292
    if-nez v1, :cond_8

    .line 294
    goto/16 :goto_6

    .line 296
    :cond_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    check-cast v2, Ljava/lang/String;

    .line 300
    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 303
    move-result-object v1

    .line 304
    sget-boolean v4, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 306
    if-eqz v1, :cond_1c

    .line 308
    iget v4, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 310
    if-ne v4, v3, :cond_9

    .line 312
    goto/16 :goto_6

    .line 314
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_1c

    .line 320
    iget v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    .line 322
    sget v4, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    .line 324
    if-ge v3, v4, :cond_1c

    .line 326
    iget v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 328
    const-string v4, "Pageboost"

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    .line 332
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v0, " pid "

    .line 340
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    move-result-object v0

    .line 350
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    if-nez v3, :cond_b

    .line 355
    :goto_1
    const/16 v0, 0xa

    .line 357
    if-ge v6, v0, :cond_b

    .line 359
    :try_start_1
    invoke-static {v2, p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    .line 362
    move-result v3

    .line 363
    if-lez v3, :cond_a

    .line 365
    goto :goto_2

    .line 366
    :cond_a
    const-wide/16 v4, 0x32

    .line 368
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 371
    add-int/2addr v6, p0

    .line 372
    goto :goto_1

    .line 373
    :catch_0
    move-exception p0

    .line 374
    :try_start_2
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 376
    const-string v0, "Pageboost"

    .line 378
    const-string v2, "Failed to sleep"

    .line 380
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    :cond_b
    :goto_2
    if-lez v3, :cond_1c

    .line 388
    invoke-static {v1, v3}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    .line 391
    goto/16 :goto_6

    .line 393
    :pswitch_b
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 395
    if-nez v0, :cond_c

    .line 397
    goto/16 :goto_6

    .line 399
    :cond_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 402
    move-result-object v0

    .line 403
    const-string/jumbo v1, "pid"

    .line 406
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 409
    move-result v1

    .line 410
    const-string/jumbo v2, "launchtime"

    .line 413
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 416
    move-result v2

    .line 417
    const-string v7, "0,0,0"

    .line 419
    const-string/jumbo v8, "pkg"

    .line 422
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    move-result-object v0

    .line 426
    const-string v8, "Pageboost"

    .line 428
    const-string v9, "Launcher App Execution"

    .line 430
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget-object v8, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 435
    if-eqz v8, :cond_14

    .line 437
    sget-object v8, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 439
    invoke-virtual {v8, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 442
    move-result-object v8

    .line 443
    if-eqz v8, :cond_13

    .line 445
    sget-object v9, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 447
    iget-object v10, v9, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 449
    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 450
    :try_start_3
    iget-object v9, v9, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 452
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 455
    move-result v9

    .line 456
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 457
    if-eqz v9, :cond_13

    .line 459
    :try_start_4
    iget v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 461
    if-nez v9, :cond_d

    .line 463
    invoke-static {v0, v6}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    .line 466
    move-result v9

    .line 467
    if-ne v1, v9, :cond_d

    .line 469
    iput v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 471
    iput v3, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 473
    :cond_d
    iget v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 475
    if-ne v9, p0, :cond_e

    .line 477
    iput v3, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 479
    :cond_e
    if-eqz v1, :cond_10

    .line 481
    iget v3, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 483
    if-eq v1, v3, :cond_10

    .line 485
    iput v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 487
    if-lez v2, :cond_f

    .line 489
    const/16 v1, 0x2710

    .line 491
    if-ge v2, v1, :cond_f

    .line 493
    iget v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    .line 495
    add-int/2addr v1, p0

    .line 496
    iput v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    .line 498
    iget-wide v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 500
    int-to-long v11, v2

    .line 501
    add-long/2addr v9, v11

    .line 502
    iput-wide v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 504
    :cond_f
    new-array v1, v4, [J

    .line 506
    invoke-virtual {v8, v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getIoinfo([J)V

    .line 509
    aget-wide v9, v1, v6

    .line 511
    const-wide/16 v11, -0x1

    .line 513
    cmp-long v3, v9, v11

    .line 515
    if-eqz v3, :cond_11

    .line 517
    const-string v3, ""

    .line 519
    move-object v7, v3

    .line 520
    move v3, v6

    .line 521
    :goto_3
    if-ge v3, v4, :cond_11

    .line 523
    aget-wide v9, v1, v3

    .line 525
    new-instance v11, Ljava/lang/StringBuilder;

    .line 527
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 536
    const-string v7, ","

    .line 538
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    move-result-object v7

    .line 545
    add-int/2addr v3, p0

    .line 546
    goto :goto_3

    .line 547
    :cond_10
    move v2, v6

    .line 548
    :cond_11
    sget-object v1, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 550
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    invoke-static {v8, v2}, Lcom/android/server/am/Pageboost$PageboostPredictor;->checkPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    .line 556
    move-result v1

    .line 557
    if-eqz v1, :cond_12

    .line 559
    iget v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 561
    add-int/2addr v1, p0

    .line 562
    iput v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 564
    const-string v1, "Pageboost"

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    .line 568
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    const-string v4, "Prefetch Hit! : "

    .line 573
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    move-result-object v3

    .line 583
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    move v6, p0

    .line 587
    :cond_12
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 589
    invoke-virtual {v1, v8, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 592
    goto :goto_4

    .line 593
    :catchall_0
    move-exception p0

    .line 594
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 595
    :try_start_6
    throw p0

    .line 596
    :cond_13
    :goto_4
    sget-object p0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 598
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    sget-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 603
    iget-object v1, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    .line 605
    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 606
    :try_start_7
    iput-object v5, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    .line 608
    monitor-exit v1

    .line 609
    move-object v5, v8

    .line 610
    goto :goto_5

    .line 611
    :catchall_1
    move-exception p0

    .line 612
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 613
    :try_start_8
    throw p0

    .line 614
    :cond_14
    :goto_5
    if-eqz v5, :cond_1c

    .line 616
    if-lez v2, :cond_15

    .line 618
    new-instance p0, Ljava/lang/StringBuilder;

    .line 620
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    const-string v1, "AppEntry,"

    .line 625
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v0, ","

    .line 633
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    const-string v0, ","

    .line 641
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 647
    const-string v0, ","

    .line 649
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    move-result-object p0

    .line 659
    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    .line 662
    goto/16 :goto_6

    .line 664
    :cond_15
    if-nez v2, :cond_1c

    .line 666
    new-instance p0, Ljava/lang/StringBuilder;

    .line 668
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    const-string v1, "AppReEntry,"

    .line 673
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string v0, ","

    .line 681
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 687
    const-string v0, ","

    .line 689
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    move-result-object p0

    .line 699
    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    .line 702
    goto/16 :goto_6

    .line 704
    :pswitch_c
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 707
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 710
    move-result-object p0

    .line 711
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 713
    const/16 v1, 0xc

    .line 715
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 718
    move-result-object v0

    .line 719
    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 722
    sget-object p0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 724
    int-to-long v1, v2

    .line 725
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 728
    goto/16 :goto_6

    .line 730
    :pswitch_d
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 733
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 736
    move-result-object p0

    .line 737
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 739
    const/16 v1, 0xb

    .line 741
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 748
    sget-object p0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 750
    int-to-long v1, v2

    .line 751
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 754
    goto/16 :goto_6

    .line 756
    :pswitch_e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 758
    check-cast p0, Ljava/lang/String;

    .line 760
    if-eqz p0, :cond_1c

    .line 762
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smremovePackage(Ljava/lang/String;)V

    .line 765
    goto/16 :goto_6

    .line 767
    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 769
    check-cast p0, Ljava/lang/String;

    .line 771
    if-eqz p0, :cond_1c

    .line 773
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smaddPackage(Ljava/lang/String;)V

    .line 776
    goto/16 :goto_6

    .line 778
    :pswitch_10
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 780
    if-nez p0, :cond_16

    .line 782
    goto/16 :goto_6

    .line 784
    :cond_16
    sget-object p0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 786
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 788
    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V

    .line 791
    goto/16 :goto_6

    .line 793
    :pswitch_11
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 795
    if-nez v0, :cond_17

    .line 797
    goto/16 :goto_6

    .line 799
    :cond_17
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 801
    if-nez v0, :cond_18

    .line 803
    goto :goto_6

    .line 804
    :cond_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 806
    check-cast v0, Ljava/lang/String;

    .line 808
    invoke-static {v0, p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    .line 811
    move-result p0

    .line 812
    if-lez p0, :cond_1c

    .line 814
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 816
    invoke-virtual {v1, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 819
    move-result-object v0

    .line 820
    sget-boolean v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 822
    if-eqz v0, :cond_1c

    .line 824
    iget v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 826
    if-ne v1, v3, :cond_19

    .line 828
    goto :goto_6

    .line 829
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    .line 832
    move-result v1

    .line 833
    if-eqz v1, :cond_1c

    .line 835
    iget v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    .line 837
    sget v2, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    .line 839
    if-ge v1, v2, :cond_1c

    .line 841
    const-string v1, "Pageboost"

    .line 843
    const-string/jumbo v2, "capturing App IO"

    .line 846
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    .line 852
    goto :goto_6

    .line 853
    :pswitch_12
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$smrealupdatePackages()V

    .line 856
    goto :goto_6

    .line 857
    :pswitch_13
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 859
    if-eqz p0, :cond_1c

    .line 861
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    .line 863
    if-eqz p0, :cond_1a

    .line 865
    goto :goto_6

    .line 866
    :cond_1a
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 868
    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 870
    const-string v0, "Pageboost"

    .line 872
    const-string v1, "Launcher Page Up"

    .line 874
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 879
    if-eqz v0, :cond_1c

    .line 881
    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostPredictor;->predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V

    .line 884
    goto :goto_6

    .line 885
    :pswitch_14
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 887
    if-nez p0, :cond_1b

    .line 889
    goto :goto_6

    .line 890
    :cond_1b
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 893
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 895
    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 897
    const/16 v0, 0x190

    .line 899
    invoke-static {v4, v0, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    .line 902
    goto :goto_6

    .line 903
    :pswitch_15
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$smdelayedInitPageboost()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 906
    :cond_1c
    :goto_6
    return-void

    .line 907
    :catch_1
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 909
    const-string p0, "Pageboost"

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    .line 913
    const-string/jumbo v1, "failed to handleMessage "

    .line 916
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 919
    iget p1, p1, Landroid/os/Message;->what:I

    .line 921
    invoke-static {v0, p1, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 924
    return-void

    .line 925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
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
