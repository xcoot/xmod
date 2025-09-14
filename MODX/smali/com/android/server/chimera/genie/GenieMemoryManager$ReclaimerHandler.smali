.class public final Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    iget v2, v0, Landroid/os/Message;->what:I

    .line 7
    if-eqz v2, :cond_e

    .line 9
    const/16 v3, 0xf

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    if-eq v2, v6, :cond_b

    .line 16
    const/4 v7, 0x3

    .line 17
    if-eq v2, v5, :cond_6

    .line 19
    if-eq v2, v7, :cond_2

    .line 21
    const/4 v3, 0x4

    .line 22
    if-eq v2, v3, :cond_0

    .line 24
    goto/16 :goto_8

    .line 26
    :cond_0
    const-string v2, "GenieMemoryManager"

    .line 28
    const-string v4, "UNLOAD_S_LLM_MODEL message handler"

    .line 30
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->isLLMRunning()Z

    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 47
    iget-object v1, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 49
    iget-object v1, v1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 51
    sget v2, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_OOMADJ_THRESHOLD:I

    .line 53
    invoke-virtual {v1, v2, v0}, Lcom/android/server/chimera/SystemRepository;->killGenieProcess(ILjava/lang/String;)V

    .line 56
    const-string v1, "GenieMemoryManager"

    .line 58
    const-string/jumbo v2, "process killed, remove from LRU list"

    .line 61
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    goto/16 :goto_8

    .line 73
    :cond_1
    const-string v2, "GenieMemoryManager"

    .line 75
    const-string/jumbo v4, "resetting timer to unload S.LLM"

    .line 78
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 83
    iget-object v2, v2, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 85
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 88
    move-result-object v0

    .line 89
    sget v2, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MODEL_TIMEOUT:I

    .line 91
    int-to-long v2, v2

    .line 92
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 95
    goto/16 :goto_8

    .line 97
    :cond_2
    iget-object v0, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 99
    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    .line 101
    iget-boolean v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    .line 103
    if-nez v1, :cond_3

    .line 105
    goto/16 :goto_8

    .line 107
    :cond_3
    iget-object v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mLock:Ljava/lang/Object;

    .line 109
    monitor-enter v1

    .line 110
    :try_start_0
    iget v2, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 112
    if-nez v2, :cond_4

    .line 114
    monitor-exit v1

    .line 115
    goto/16 :goto_8

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    sub-int/2addr v2, v6

    .line 120
    iput v2, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 122
    if-lez v2, :cond_5

    .line 124
    monitor-exit v1

    .line 125
    goto/16 :goto_8

    .line 127
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    .line 130
    new-instance v0, Ljava/io/FileWriter;

    .line 132
    const-string v2, "/sys/kernel/rbin/refill_mode"

    .line 134
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 136
    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 139
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    const/16 v0, 0x30

    .line 144
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 147
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 153
    goto/16 :goto_8

    .line 155
    :catch_0
    move-exception v0

    .line 156
    goto :goto_1

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    move-object v2, v0

    .line 159
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 162
    goto :goto_0

    .line 163
    :catchall_2
    move-exception v0

    .line 164
    move-object v1, v0

    .line 165
    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 168
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 169
    :goto_1
    const-string v1, "RbinManager"

    .line 171
    const-string v2, "Error writing to the file "

    .line 173
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    goto/16 :goto_8

    .line 178
    :goto_2
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    throw v0

    .line 180
    :cond_6
    invoke-static {v4, v3, v4, v4}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 183
    move-result v1

    .line 184
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 186
    sub-int/2addr v1, v2

    .line 187
    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    .line 190
    move-result v2

    .line 191
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 193
    sub-int/2addr v2, v3

    .line 194
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    check-cast v0, Ljava/util/ArrayList;

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 206
    move-result-object v4

    .line 207
    sget-object v5, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 209
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v4, " lmkdKill : "

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    const-string v4, " lmkdCriticalKill : "

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v8, Lcom/android/server/chimera/genie/GenieLogger;->sLock:Ljava/lang/Object;

    .line 245
    monitor-enter v8

    .line 246
    :try_start_7
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 248
    if-nez v3, :cond_7

    .line 250
    new-instance v3, Ljava/util/LinkedList;

    .line 252
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 255
    sput-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 257
    goto :goto_3

    .line 258
    :catchall_3
    move-exception v0

    .line 259
    goto :goto_5

    .line 260
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 263
    move-result v3

    .line 264
    if-gtz v3, :cond_8

    .line 266
    monitor-exit v8

    .line 267
    goto :goto_4

    .line 268
    :cond_8
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 270
    check-cast v3, Ljava/util/LinkedList;

    .line 272
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 275
    move-result v3

    .line 276
    const/16 v4, 0x3e8

    .line 278
    if-lt v3, v4, :cond_9

    .line 280
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 282
    check-cast v3, Ljava/util/LinkedList;

    .line 284
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 287
    :cond_9
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 289
    check-cast v3, Ljava/util/LinkedList;

    .line 291
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 294
    sget v3, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    .line 296
    add-int/2addr v3, v6

    .line 297
    sput v3, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 302
    move-result v0

    .line 303
    if-le v0, v7, :cond_a

    .line 305
    sget v0, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    .line 307
    add-int/2addr v0, v6

    .line 308
    sput v0, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    .line 310
    :cond_a
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 311
    :goto_4
    const-string v0, "GenieMemoryManager"

    .line 313
    const-string v3, "Aft GenAI LMKD Kill "

    .line 315
    const-string v4, " LMKD Critical "

    .line 317
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    goto/16 :goto_8

    .line 322
    :goto_5
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 323
    throw v0

    .line 324
    :cond_b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    check-cast v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;

    .line 328
    iget-object v2, v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mDump:Ljava/util/ArrayList;

    .line 330
    iget-object v7, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 332
    iget-wide v8, v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mMemToBeReclaimed:J

    .line 334
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 339
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 342
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 345
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 348
    move-result-object v0

    .line 349
    aget-wide v10, v0, v6

    .line 351
    const/16 v7, 0x1d

    .line 353
    aget-wide v12, v0, v7

    .line 355
    const/4 v7, 0x6

    .line 356
    aget-wide v14, v0, v7

    .line 358
    sub-long v16, v10, v12

    .line 360
    sub-long v6, v16, v14

    .line 362
    const/16 v16, 0x1a

    .line 364
    aget-wide v3, v0, v16

    .line 366
    const/16 v16, 0x1b

    .line 368
    move-wide/from16 v18, v6

    .line 370
    aget-wide v5, v0, v16

    .line 372
    add-long v0, v3, v5

    .line 374
    const-wide/16 v20, 0x2

    .line 376
    div-long v20, v0, v20

    .line 378
    move-wide/from16 v22, v5

    .line 380
    add-long v5, v20, v18

    .line 382
    cmp-long v7, v8, v5

    .line 384
    const-wide/16 v20, 0x0

    .line 386
    if-lez v7, :cond_c

    .line 388
    sub-long v24, v8, v5

    .line 390
    move-wide/from16 v28, v3

    .line 392
    move-wide/from16 v3, v24

    .line 394
    move-wide/from16 v24, v28

    .line 396
    goto :goto_6

    .line 397
    :cond_c
    move-wide/from16 v24, v3

    .line 399
    move-wide/from16 v3, v20

    .line 401
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 403
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 409
    move-result-object v16

    .line 410
    move-wide/from16 v26, v0

    .line 412
    sget-object v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 414
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v0, " curAvailable : "

    .line 427
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 433
    const-string v0, " toReclaim : "

    .line 435
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    const-string/jumbo v0, "reclaimTarget: "

    .line 451
    const-string v1, " = targetSize "

    .line 453
    invoke-static {v0, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, " - "

    .line 462
    const-string v5, " ("

    .line 464
    move-wide/from16 v6, v18

    .line 466
    invoke-static {v0, v1, v6, v7, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 469
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 472
    const-string v1, ", "

    .line 474
    invoke-static {v0, v1, v12, v13, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 477
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 480
    const-string v6, ")  - "

    .line 482
    move-wide/from16 v7, v26

    .line 484
    invoke-static {v0, v6, v7, v8, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 487
    move-wide/from16 v5, v24

    .line 489
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    move-wide/from16 v5, v22

    .line 497
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, ")"

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    move-result-object v0

    .line 509
    const-string v1, "GenieMemoryManager"

    .line 511
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/16 v0, 0xf

    .line 516
    const/4 v1, 0x0

    .line 517
    invoke-static {v1, v0, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 520
    move-result v0

    .line 521
    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    .line 524
    move-result v1

    .line 525
    const/4 v6, 0x2

    .line 526
    move-object/from16 v5, p0

    .line 528
    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 531
    move-result-object v0

    .line 532
    const-wide/16 v6, 0x1388

    .line 534
    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 537
    cmp-long v0, v3, v20

    .line 539
    if-lez v0, :cond_d

    .line 541
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 543
    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 545
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    const-string v0, "Genie Memory Reclaimer Called"

    .line 550
    const-string v1, "MemoryReclaimer"

    .line 552
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :try_start_9
    invoke-static {v3, v4, v2}, Lcom/android/server/chimera/genie/MemoryReclaimer;->executeQuickSwap(JLjava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 558
    goto :goto_7

    .line 559
    :catch_1
    move-exception v0

    .line 560
    move-object v2, v0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 563
    const-string/jumbo v3, "error excuting command "

    .line 566
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 572
    move-result-object v2

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    move-result-object v0

    .line 580
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_7
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 585
    iget-object v1, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 587
    monitor-enter v1

    .line 588
    :try_start_a
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 590
    const/4 v2, 0x1

    .line 591
    iput-boolean v2, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    .line 593
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 594
    const/4 v1, 0x0

    .line 595
    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 602
    goto :goto_8

    .line 603
    :catchall_4
    move-exception v0

    .line 604
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 605
    throw v0

    .line 606
    :cond_d
    const-string v0, "GenieMemoryManager"

    .line 608
    const-string v1, "Memory to Reclaim is less, so skipping GenIE: "

    .line 610
    invoke-static {v1, v3, v4, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 613
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 615
    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 618
    goto :goto_8

    .line 619
    :cond_e
    move-object v5, v1

    .line 620
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 622
    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 625
    :goto_8
    return-void
.end method
