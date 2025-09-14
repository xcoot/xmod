.class public final synthetic Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 5
    sget v1, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->$r8$clinit:I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v1, "RemoveOutdatedJobService"

    .line 12
    const-string/jumbo v2, "onStartJob is called"

    .line 15
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v3

    .line 25
    new-instance v5, Ljava/io/File;

    .line 27
    const-string v6, "/data/log/mars/tmp_stats.txt"

    .line 29
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {v5}, Lcom/android/server/am/mars/EventRecorder;->createNewEmptyFile(Ljava/io/File;)Z

    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x1

    .line 37
    if-nez v6, :cond_0

    .line 39
    goto/16 :goto_e

    .line 41
    :cond_0
    new-instance v6, Landroid/util/ArrayMap;

    .line 43
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 46
    new-instance v8, Landroid/util/ArrayMap;

    .line 48
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 51
    const-wide/32 v9, 0x2932e00

    .line 54
    sub-long/2addr v3, v9

    .line 55
    sget-object v9, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 60
    :try_start_0
    new-instance v9, Ljava/io/BufferedWriter;

    .line 62
    new-instance v10, Ljava/io/OutputStreamWriter;

    .line 64
    new-instance v11, Ljava/io/FileOutputStream;

    .line 66
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    move-result-object v12

    .line 70
    invoke-direct {v11, v12, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 73
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 75
    invoke-direct {v10, v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 78
    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    new-instance v10, Ljava/io/BufferedReader;

    .line 83
    new-instance v11, Ljava/io/InputStreamReader;

    .line 85
    new-instance v13, Ljava/io/FileInputStream;

    .line 87
    sget-object v14, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 89
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    move-result-object v14

    .line 93
    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-direct {v11, v13, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 99
    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 105
    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    const-string/jumbo v12, "onStopJob is called. Abort."

    .line 109
    if-eqz v11, :cond_e

    .line 111
    :try_start_3
    iget-boolean v13, v0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    .line 113
    if-eqz v13, :cond_2

    .line 115
    invoke-static {v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 118
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    :goto_1
    sget-object v3, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 126
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    goto/16 :goto_e

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    goto/16 :goto_f

    .line 134
    :catch_0
    move-exception v2

    .line 135
    goto/16 :goto_c

    .line 137
    :catchall_1
    move-exception v2

    .line 138
    goto/16 :goto_a

    .line 140
    :catchall_2
    move-exception v2

    .line 141
    goto/16 :goto_8

    .line 143
    :cond_2
    :try_start_6
    new-instance v12, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 145
    invoke-direct {v12, v11}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(Ljava/lang/String;)V

    .line 148
    sget-object v11, Lcom/android/server/am/mars/EventRecorder$EventType;->FREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 150
    iget-object v13, v12, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 152
    if-ne v13, v11, :cond_3

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    sget-object v14, Lcom/android/server/am/mars/EventRecorder$EventType;->UNFREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 157
    if-ne v13, v14, :cond_8

    .line 159
    :goto_2
    if-ne v13, v11, :cond_5

    .line 161
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 163
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-result-object v11

    .line 167
    if-eqz v11, :cond_4

    .line 169
    goto :goto_0

    .line 170
    :cond_4
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 172
    invoke-virtual {v6, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    goto :goto_0

    .line 176
    :cond_5
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 178
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    move-result-object v11

    .line 182
    if-nez v11, :cond_6

    .line 184
    new-instance v11, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    const-string/jumbo v13, "unfreeze event without freeze event. uid : "

    .line 192
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v12, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 197
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v11

    .line 204
    invoke-static {v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    goto :goto_0

    .line 208
    :cond_6
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 210
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object v11

    .line 214
    check-cast v11, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 216
    iget-wide v13, v12, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 218
    cmp-long v13, v3, v13

    .line 220
    if-lez v13, :cond_7

    .line 222
    goto :goto_0

    .line 223
    :cond_7
    invoke-virtual {v11}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 226
    move-result-object v11

    .line 227
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v12}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 233
    move-result-object v11

    .line 234
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_8
    sget-object v11, Lcom/android/server/am/mars/EventRecorder$EventType;->UID_RUN:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 241
    if-ne v13, v11, :cond_9

    .line 243
    goto :goto_3

    .line 244
    :cond_9
    sget-object v14, Lcom/android/server/am/mars/EventRecorder$EventType;->UID_STOP:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 246
    if-ne v13, v14, :cond_1

    .line 248
    :goto_3
    if-ne v13, v11, :cond_b

    .line 250
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 252
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-result-object v11

    .line 256
    if-eqz v11, :cond_a

    .line 258
    goto/16 :goto_0

    .line 260
    :cond_a
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 262
    invoke-virtual {v8, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    goto/16 :goto_0

    .line 267
    :cond_b
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 269
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-result-object v11

    .line 273
    if-nez v11, :cond_c

    .line 275
    new-instance v11, Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    const-string/jumbo v13, "stop event without run event. uid : "

    .line 283
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v12, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 288
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v11

    .line 295
    invoke-static {v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    goto/16 :goto_0

    .line 300
    :cond_c
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 302
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    move-result-object v11

    .line 306
    check-cast v11, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 308
    iget-wide v13, v12, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 310
    cmp-long v13, v3, v13

    .line 312
    if-lez v13, :cond_d

    .line 314
    goto/16 :goto_0

    .line 316
    :cond_d
    invoke-virtual {v11}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 319
    move-result-object v11

    .line 320
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v12}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 326
    move-result-object v11

    .line 327
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 330
    goto/16 :goto_0

    .line 332
    :cond_e
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 335
    move-result-object v3

    .line 336
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 339
    move-result-object v3

    .line 340
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 343
    move-result v4

    .line 344
    if-eqz v4, :cond_f

    .line 346
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 349
    move-result-object v4

    .line 350
    check-cast v4, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 352
    invoke-virtual {v4}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 355
    move-result-object v4

    .line 356
    invoke-virtual {v9, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 359
    goto :goto_4

    .line 360
    :cond_f
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 363
    move-result-object v3

    .line 364
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 367
    move-result-object v3

    .line 368
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    move-result v4

    .line 372
    if-eqz v4, :cond_10

    .line 374
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 380
    invoke-virtual {v4}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 383
    move-result-object v4

    .line 384
    invoke-virtual {v9, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 387
    goto :goto_5

    .line 388
    :cond_10
    iget-boolean v3, v0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    .line 390
    if-eqz v3, :cond_11

    .line 392
    invoke-static {v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 395
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 398
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 401
    goto/16 :goto_1

    .line 403
    :cond_11
    :try_start_9
    sget-object v3, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 405
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 408
    move-result v4

    .line 409
    if-nez v4, :cond_12

    .line 411
    move v3, v2

    .line 412
    goto :goto_6

    .line 413
    :cond_12
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 416
    move-result v3

    .line 417
    :goto_6
    if-nez v3, :cond_13

    .line 419
    sput-boolean v2, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 421
    :try_start_a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 424
    :try_start_b
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 427
    goto/16 :goto_1

    .line 429
    :cond_13
    :try_start_c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 432
    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 435
    :goto_7
    sget-object v2, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 437
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 440
    goto :goto_d

    .line 441
    :goto_8
    :try_start_e
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 444
    goto :goto_9

    .line 445
    :catchall_3
    move-exception v3

    .line 446
    :try_start_f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 449
    :goto_9
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 450
    :goto_a
    :try_start_10
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 453
    goto :goto_b

    .line 454
    :catchall_4
    move-exception v3

    .line 455
    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 458
    :goto_b
    throw v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 459
    :goto_c
    :try_start_12
    const-string v3, "Error at removeOutdated"

    .line 461
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 464
    goto :goto_7

    .line 465
    :goto_d
    move v2, v7

    .line 466
    :goto_e
    if-nez v2, :cond_14

    .line 468
    const-string v3, "Failed to remove outdated events."

    .line 470
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_14
    xor-int/lit8 v1, v2, 0x1

    .line 475
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 478
    return-void

    .line 479
    :goto_f
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 481
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 484
    throw p0
.end method
