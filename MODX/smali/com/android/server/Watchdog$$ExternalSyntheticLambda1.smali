.class public final synthetic Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/Watchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/Watchdog;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    .line 1
    const/4 v1, 0x3

    .line 2
    const/4 v2, 0x2

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x1

    .line 5
    move-object/from16 v0, p0

    .line 7
    iget-object v11, v0, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/Watchdog;

    .line 9
    iget-object v0, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string/jumbo v5, "persist.vendor.softdog"

    .line 17
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v5

    .line 21
    const-string/jumbo v6, "off"

    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v5

    .line 28
    const/16 v12, 0x64

    .line 30
    if-eqz v5, :cond_0

    .line 32
    const-string v0, "Watchdog:WatchdogSoftdog"

    .line 34
    const-string v5, "!@persist.vendor.softdog is off, so do not turn on softdog"

    .line 36
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/WatchdogSoftdog;->native_sdogOpen()I

    .line 43
    move-result v5

    .line 44
    if-ltz v5, :cond_1

    .line 46
    iput-boolean v3, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 48
    invoke-virtual {v0, v12}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    .line 51
    :cond_1
    :goto_0
    const-string/jumbo v0, "persist.sys.fd_leak_threshold_cnt"

    .line 54
    const-wide/16 v13, 0x1388

    .line 56
    invoke-static {v0, v13, v14}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 59
    move-result-wide v5

    .line 60
    sput-wide v5, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    .line 62
    const-wide/16 v9, 0x7d0

    .line 64
    cmp-long v0, v5, v9

    .line 66
    if-gez v0, :cond_2

    .line 68
    sput-wide v13, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    .line 70
    :cond_2
    move v5, v3

    .line 71
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 74
    iget-wide v6, v11, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 76
    const-wide/16 v15, 0x2

    .line 78
    div-long v15, v6, v15

    .line 80
    iget-object v8, v11, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 82
    monitor-enter v8

    .line 83
    move v0, v3

    .line 84
    :goto_2
    :try_start_0
    iget-object v9, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result v9

    .line 90
    if-ge v0, v9, :cond_3

    .line 92
    iget-object v9, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v9

    .line 98
    check-cast v9, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 100
    iget-object v10, v9, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 102
    iget-object v9, v9, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mCustomTimeoutMillis:Ljava/util/Optional;

    .line 104
    sget v3, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 106
    int-to-long v13, v3

    .line 107
    mul-long/2addr v13, v6

    .line 108
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v9, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/Long;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 121
    move-result-wide v13

    .line 122
    invoke-virtual {v10, v13, v14}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked(J)V

    .line 125
    add-int/2addr v0, v4

    .line 126
    const/4 v3, 0x0

    .line 127
    const-wide/16 v13, 0x1388

    .line 129
    goto :goto_2

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto/16 :goto_28

    .line 133
    :cond_3
    iget-object v0, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 135
    invoke-virtual {v0, v12}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    .line 138
    invoke-virtual {v11}, Lcom/android/server/Watchdog;->printLogAndCheckStatus()V

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 144
    move-result-wide v6

    .line 145
    move-wide v9, v15

    .line 146
    const/4 v0, 0x0

    .line 147
    :goto_3
    const-wide/16 v13, 0x0

    .line 149
    cmp-long v3, v9, v13

    .line 151
    if-lez v3, :cond_6

    .line 153
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 156
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz v3, :cond_4

    .line 159
    move v3, v2

    .line 160
    goto :goto_4

    .line 161
    :cond_4
    move v3, v0

    .line 162
    :goto_4
    :try_start_1
    iget-object v0, v11, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 164
    invoke-virtual {v0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    goto :goto_5

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_2
    const-string v9, "Watchdog"

    .line 171
    invoke-static {v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :goto_5
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_5

    .line 180
    move v0, v2

    .line 181
    goto :goto_6

    .line 182
    :cond_5
    move v0, v3

    .line 183
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 186
    move-result-wide v9

    .line 187
    sub-long/2addr v9, v6

    .line 188
    sub-long v9, v15, v9

    .line 190
    goto :goto_3

    .line 191
    :cond_6
    const/4 v3, 0x0

    .line 192
    const/4 v6, 0x0

    .line 193
    :goto_7
    iget-object v7, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 198
    move-result v7

    .line 199
    if-ge v3, v7, :cond_7

    .line 201
    iget-object v7, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    move-result-object v7

    .line 207
    check-cast v7, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 209
    iget-object v7, v7, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 211
    invoke-virtual {v7}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    .line 214
    move-result v7

    .line 215
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 218
    move-result v6

    .line 219
    add-int/2addr v3, v4

    .line 220
    goto :goto_7

    .line 221
    :cond_7
    if-nez v6, :cond_8

    .line 223
    monitor-exit v8

    .line 224
    const/4 v3, 0x0

    .line 225
    const/4 v5, 0x0

    .line 226
    const-wide/16 v9, 0x7d0

    .line 228
    :goto_8
    const-wide/16 v13, 0x1388

    .line 230
    goto/16 :goto_1

    .line 232
    :cond_8
    if-ne v6, v4, :cond_9

    .line 234
    monitor-exit v8

    .line 235
    goto :goto_9

    .line 236
    :cond_9
    if-ne v6, v2, :cond_c

    .line 238
    if-nez v5, :cond_b

    .line 240
    invoke-static {}, Lcom/android/server/Watchdog;->getPsInfo()V

    .line 243
    const-string v3, "Watchdog"

    .line 245
    const-string v5, "!@*** WAITED_UNTIL_PRE_WATCHDOG"

    .line 247
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v3, "Watchdog"

    .line 252
    iget-object v5, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 254
    invoke-static {v5}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    .line 257
    move-result-object v5

    .line 258
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v3, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 263
    invoke-virtual {v3, v12}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    .line 266
    invoke-virtual {v11, v2}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    .line 269
    move-result-object v3

    .line 270
    invoke-static {v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    .line 273
    move-result-object v5

    .line 274
    new-instance v6, Ljava/util/ArrayList;

    .line 276
    iget-object v7, v11, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 278
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    sget-boolean v7, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 283
    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 285
    iget-boolean v7, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 287
    if-eqz v7, :cond_a

    .line 289
    const-string v7, "Watchdog"

    .line 291
    new-instance v9, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    const-string v10, "!@*** unFreezeAllPackages for watchdog HALF debug! request time : "

    .line 298
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v10, Ljava/text/SimpleDateFormat;

    .line 303
    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 306
    invoke-direct {v10, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    new-instance v15, Ljava/util/Date;

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 314
    move-result-wide v12

    .line 315
    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 318
    invoke-virtual {v10, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 321
    move-result-object v10

    .line 322
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object v9

    .line 329
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object v7, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 334
    const-string v9, "Watchdog_HALF"

    .line 336
    invoke-virtual {v7, v9}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 339
    :cond_a
    move v13, v4

    .line 340
    move v14, v13

    .line 341
    move v15, v14

    .line 342
    move-object v12, v5

    .line 343
    move-object/from16 v20, v6

    .line 345
    goto :goto_a

    .line 346
    :cond_b
    monitor-exit v8

    .line 347
    :goto_9
    const/4 v3, 0x0

    .line 348
    const-wide/16 v9, 0x7d0

    .line 350
    const/16 v12, 0x64

    .line 352
    goto :goto_8

    .line 353
    :cond_c
    invoke-virtual {v11, v1}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    .line 356
    move-result-object v3

    .line 357
    invoke-static {v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    .line 360
    move-result-object v6

    .line 361
    iget-boolean v7, v11, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 363
    new-instance v9, Ljava/util/ArrayList;

    .line 365
    iget-object v10, v11, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 367
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    move v13, v5

    .line 371
    move-object v12, v6

    .line 372
    move v14, v7

    .line 373
    move-object/from16 v20, v9

    .line 375
    const/4 v15, 0x0

    .line 376
    :goto_a
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 380
    move-result-object v5

    .line 381
    const-string v6, "AID_SYSTEM"

    .line 383
    const/16 v7, 0x3e8

    .line 385
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    .line 388
    move-result-object v5

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    .line 391
    const-string v7, "--- CriticalEventLog ---\n"

    .line 393
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-static {v5}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    .line 399
    move-result-object v5

    .line 400
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const/16 v10, 0xa

    .line 405
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object v27

    .line 412
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 414
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 420
    move-result-object v9

    .line 421
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 423
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 428
    const-string/jumbo v6, "system_server"

    .line 431
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 434
    move-result v7

    .line 435
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    invoke-static {v6, v7, v9}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 441
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 443
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    invoke-static {v12, v9}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 449
    if-eqz v15, :cond_d

    .line 451
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 454
    move-result-object v5

    .line 455
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    new-instance v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    .line 460
    invoke-direct {v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    .line 463
    iput-object v12, v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    .line 465
    new-instance v7, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 467
    invoke-direct {v7}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 470
    invoke-virtual {v7, v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setHalfWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 473
    invoke-virtual {v5, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 476
    const/16 v5, 0x1cc

    .line 478
    invoke-static {v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 481
    const-string/jumbo v5, "pre_watchdog"

    .line 484
    :goto_b
    move-object v7, v5

    .line 485
    goto :goto_c

    .line 486
    :cond_d
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 489
    move-result-object v5

    .line 490
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    new-instance v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    .line 495
    invoke-direct {v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    .line 498
    iput-object v12, v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 500
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 503
    move-result-object v7

    .line 504
    iput-object v7, v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    .line 506
    new-instance v7, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 508
    invoke-direct {v7}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 511
    invoke-virtual {v7, v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 514
    invoke-virtual {v5, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 517
    const/16 v5, 0xaf2

    .line 519
    invoke-static {v5, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 522
    const/16 v5, 0xb9

    .line 524
    invoke-static {v5, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 527
    const-string/jumbo v5, "watchdog"

    .line 530
    goto :goto_b

    .line 531
    :goto_c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 533
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    .line 539
    move-result-object v5

    .line 540
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    new-instance v5, Ljava/io/StringWriter;

    .line 545
    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 548
    iget-object v6, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 550
    new-instance v22, Landroid/util/SparseBooleanArray;

    .line 552
    invoke-direct/range {v22 .. v22}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 555
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    .line 558
    move-result-object v16

    .line 559
    invoke-static/range {v16 .. v16}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 562
    move-result-object v23

    .line 563
    new-instance v29, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 565
    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 568
    const/16 v28, 0x0

    .line 570
    const/16 v31, 0x0

    .line 572
    const/16 v25, 0x0

    .line 574
    const/16 v30, 0x0

    .line 576
    move-object/from16 v21, v6

    .line 578
    move-object/from16 v24, v5

    .line 580
    move-object/from16 v26, v12

    .line 582
    invoke-static/range {v20 .. v31}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    .line 585
    move-result-object v16

    .line 586
    const-string v6, "Watchdog"

    .line 588
    const-string v1, "!@*** End dumpStackTraces"

    .line 590
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-wide/16 v18, 0x1388

    .line 595
    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    .line 598
    iget-object v1, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 600
    invoke-static {v1}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    .line 603
    move-result-object v1

    .line 604
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 610
    move-result-object v1

    .line 611
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 614
    if-nez v15, :cond_e

    .line 616
    const/16 v1, 0x77

    .line 618
    invoke-static {v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 621
    const/16 v1, 0x6d

    .line 623
    invoke-static {v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 626
    const/16 v1, 0x6c

    .line 628
    invoke-static {v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 631
    :cond_e
    new-instance v1, Lcom/android/server/Watchdog$2;

    .line 633
    move-object v5, v1

    .line 634
    move-object v6, v11

    .line 635
    move-object/from16 v22, v3

    .line 637
    move-object/from16 v17, v9

    .line 639
    const-wide/16 v2, 0x7d0

    .line 641
    move-object/from16 v9, v16

    .line 643
    move/from16 v16, v10

    .line 645
    move-object/from16 v10, v17

    .line 647
    invoke-direct/range {v5 .. v10}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V

    .line 650
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 653
    :try_start_3
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 656
    :catch_1
    if-eqz v15, :cond_f

    .line 658
    move-wide v9, v2

    .line 659
    move v5, v13

    .line 660
    move-wide/from16 v13, v18

    .line 662
    const/4 v1, 0x3

    .line 663
    const/4 v2, 0x2

    .line 664
    const/4 v3, 0x0

    .line 665
    :goto_d
    const/16 v12, 0x64

    .line 667
    goto/16 :goto_1

    .line 669
    :cond_f
    iget-object v1, v11, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 671
    monitor-enter v1

    .line 672
    :try_start_4
    iget-object v5, v11, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 674
    iget-object v6, v11, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    .line 676
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 677
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    .line 679
    if-eqz v1, :cond_10

    .line 681
    if-eqz v5, :cond_10

    .line 683
    const-string v1, "Watchdog"

    .line 685
    const-string v7, "Reporting stuck state to activity controller"

    .line 687
    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :try_start_5
    const-string v1, "Service dumps disabled due to hung system process."

    .line 692
    invoke-static {v1}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 695
    invoke-interface {v5, v12}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    .line 698
    move-result v1

    .line 699
    if-ltz v1, :cond_10

    .line 701
    const-string v1, "Watchdog"

    .line 703
    const-string v5, "!@ Activity controller requested to coninue to wait"

    .line 705
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 708
    move-wide v9, v2

    .line 709
    move-wide/from16 v13, v18

    .line 711
    const/4 v1, 0x3

    .line 712
    const/4 v2, 0x2

    .line 713
    const/4 v3, 0x0

    .line 714
    const/4 v5, 0x0

    .line 715
    goto :goto_d

    .line 716
    :catch_2
    :cond_10
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 719
    move-result v1

    .line 720
    if-eqz v1, :cond_11

    .line 722
    const/4 v0, 0x2

    .line 723
    :cond_11
    const/4 v1, 0x2

    .line 724
    if-lt v0, v1, :cond_12

    .line 726
    const-string v0, "Watchdog"

    .line 728
    const-string v1, "!@ Debugger connected: Watchdog is *not* killing the system process"

    .line 730
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_e
    const/4 v6, 0x0

    .line 734
    const/4 v15, 0x2

    .line 735
    goto/16 :goto_27

    .line 737
    :cond_12
    if-lez v0, :cond_13

    .line 739
    const-string v0, "Watchdog"

    .line 741
    const-string v1, "!@ Debugger was connected: Watchdog is *not* killing the system process"

    .line 743
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    goto :goto_e

    .line 747
    :cond_13
    if-nez v14, :cond_14

    .line 749
    const-string v0, "Watchdog"

    .line 751
    const-string v1, "!@ Restart not allowed: Watchdog is *not* killing the system process"

    .line 753
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    goto :goto_e

    .line 757
    :cond_14
    const-string v0, "Watchdog"

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    .line 761
    const-string v5, "!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    .line 763
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    move-result-object v1

    .line 773
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v0, "P|WD"

    .line 778
    invoke-static {v0, v12}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, v11, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 783
    if-eqz v0, :cond_15

    .line 785
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingCmdBR:Ljava/util/ArrayList;

    .line 787
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 790
    move-result v1

    .line 791
    if-lez v1, :cond_15

    .line 793
    const-string v1, "Watchdog"

    .line 795
    const-string/jumbo v5, "pending commanded broadcasts"

    .line 798
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v1, 0x0

    .line 802
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 805
    move-result v5

    .line 806
    if-ge v1, v5, :cond_15

    .line 808
    const-string v5, "Watchdog"

    .line 810
    const-string v7, "#"

    .line 812
    const-string v8, " "

    .line 814
    invoke-static {v1, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    move-result-object v7

    .line 818
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 821
    move-result-object v8

    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 828
    move-result-object v7

    .line 829
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    add-int/2addr v1, v4

    .line 833
    goto :goto_f

    .line 834
    :cond_15
    const-string v0, "Watchdog"

    .line 836
    iget-object v1, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 838
    invoke-static {v1}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    .line 841
    move-result-object v1

    .line 842
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v0, Ljava/io/PrintWriter;

    .line 847
    new-instance v1, Landroid/util/LogWriter;

    .line 849
    const-string v5, "Watchdog"

    .line 851
    const/4 v7, 0x5

    .line 852
    const/4 v8, 0x4

    .line 853
    invoke-direct {v1, v7, v5, v8}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    .line 856
    invoke-direct {v0, v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 859
    const-string v1, "PLATFORM WATCHDOG RESET"

    .line 861
    const/4 v7, 0x6

    .line 862
    const/4 v9, 0x0

    .line 863
    invoke-static {v8, v7, v5, v1, v9}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    const/4 v1, 0x0

    .line 867
    :goto_10
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    .line 870
    move-result v10

    .line 871
    if-ge v1, v10, :cond_18

    .line 873
    move-object/from16 v10, v22

    .line 875
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 878
    move-result-object v12

    .line 879
    check-cast v12, Lcom/android/server/Watchdog$HandlerChecker;

    .line 881
    iget-object v12, v12, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 883
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 886
    move-result-object v12

    .line 887
    invoke-virtual {v12}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 890
    move-result-object v12

    .line 891
    invoke-static {v12, v0}, Lcom/android/server/WatchdogDiagnostics;->printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z

    .line 894
    move-result v13

    .line 895
    if-eqz v13, :cond_16

    .line 897
    goto :goto_12

    .line 898
    :cond_16
    new-instance v13, Ljava/lang/StringBuilder;

    .line 900
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 906
    move-result-object v14

    .line 907
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    const-string v14, " stack trace:"

    .line 912
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    move-result-object v13

    .line 919
    invoke-static {v8, v7, v5, v13, v9}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    invoke-virtual {v12}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 925
    move-result-object v12

    .line 926
    array-length v13, v12

    .line 927
    const/4 v14, 0x0

    .line 928
    :goto_11
    if-ge v14, v13, :cond_17

    .line 930
    aget-object v15, v12, v14

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    .line 934
    const-string v3, " at "

    .line 936
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    move-result-object v2

    .line 946
    invoke-static {v8, v7, v5, v2, v9}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    add-int/2addr v14, v4

    .line 950
    const-wide/16 v2, 0x7d0

    .line 952
    goto :goto_11

    .line 953
    :cond_17
    :goto_12
    add-int/2addr v1, v4

    .line 954
    move-object/from16 v22, v10

    .line 956
    const-wide/16 v2, 0x7d0

    .line 958
    goto :goto_10

    .line 959
    :cond_18
    iget-object v0, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 961
    iget-boolean v1, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 963
    if-eqz v1, :cond_19

    .line 965
    goto :goto_13

    .line 966
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/WatchdogSoftdog;->native_sdogClose()V

    .line 969
    iput-boolean v4, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 971
    :goto_13
    new-instance v0, Landroid/os/BugreportParams;

    .line 973
    const/16 v1, 0xd

    .line 975
    invoke-direct {v0, v1}, Landroid/os/BugreportParams;-><init>(I)V

    .line 978
    const-string/jumbo v1, "system_server"

    .line 981
    invoke-static {v0, v1}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    .line 984
    const-string/jumbo v0, "crashrecovery.rescue_boot_count"

    .line 987
    const-string/jumbo v1, "crashrecovery.rescue_boot_count"

    .line 990
    const/4 v2, 0x0

    .line 991
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 994
    move-result v1

    .line 995
    const/4 v2, 0x2

    .line 996
    add-int/2addr v1, v2

    .line 997
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1000
    move-result-object v1

    .line 1001
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1006
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1008
    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 1010
    if-eqz v0, :cond_1a

    .line 1012
    const-string v0, "Watchdog"

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1016
    const-string v2, "!@*** unFreezeAllPackages for watchdog debug! request time : "

    .line 1018
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1021
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 1023
    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 1026
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1029
    new-instance v3, Ljava/util/Date;

    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1034
    move-result-wide v7

    .line 1035
    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1038
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1041
    move-result-object v2

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    move-result-object v1

    .line 1049
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 1054
    const-string v1, "Watchdog"

    .line 1056
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 1059
    :cond_1a
    if-eqz v6, :cond_1b

    .line 1061
    const-string v0, "Watchdog"

    .line 1063
    const-string v1, "!@*** ActivityController is set by "

    .line 1065
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1068
    move-result-object v1

    .line 1069
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_1b
    const-string v0, "Watchdog"

    .line 1074
    const-string v1, "!@*** GOODBYE!"

    .line 1076
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 1081
    if-nez v0, :cond_29

    .line 1083
    const-string/jumbo v0, "framework_watchdog.fatal_count"

    .line 1086
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    move-result-object v0

    .line 1090
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1093
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1094
    goto :goto_14

    .line 1095
    :catch_3
    move-object v0, v9

    .line 1096
    :goto_14
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1099
    move-result-object v0

    .line 1100
    const/4 v1, 0x0

    .line 1101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1104
    move-result-object v2

    .line 1105
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    move-result-object v0

    .line 1109
    check-cast v0, Ljava/lang/Integer;

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1114
    move-result v1

    .line 1115
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1117
    const-string/jumbo v2, "framework_watchdog.fatal_window.second"

    .line 1120
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1123
    move-result-object v2

    .line 1124
    :try_start_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1127
    move-result-object v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1128
    goto :goto_15

    .line 1129
    :catch_4
    move-object v2, v9

    .line 1130
    :goto_15
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1133
    move-result-object v2

    .line 1134
    const/4 v3, 0x0

    .line 1135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1138
    move-result-object v5

    .line 1139
    invoke-virtual {v2, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    move-result-object v2

    .line 1143
    check-cast v2, Ljava/lang/Integer;

    .line 1145
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1148
    move-result v2

    .line 1149
    int-to-long v2, v2

    .line 1150
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 1153
    move-result-wide v2

    .line 1154
    const-string v5, "Watchdog"

    .line 1156
    if-eqz v1, :cond_1c

    .line 1158
    const-wide/16 v6, 0x0

    .line 1160
    cmp-long v0, v2, v6

    .line 1162
    if-nez v0, :cond_1d

    .line 1164
    :cond_1c
    const/4 v6, 0x0

    .line 1165
    const/4 v15, 0x2

    .line 1166
    goto/16 :goto_25

    .line 1168
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1171
    move-result-wide v6

    .line 1172
    const/4 v8, 0x0

    .line 1173
    new-array v10, v8, [Ljava/lang/String;

    .line 1175
    :try_start_8
    new-instance v8, Ljava/io/BufferedReader;

    .line 1177
    new-instance v0, Ljava/io/FileReader;

    .line 1179
    const-string v12, "/data/system/watchdog-timeout-history.txt"

    .line 1181
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1183
    invoke-direct {v0, v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 1186
    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1189
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1192
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1193
    if-nez v0, :cond_1e

    .line 1195
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1198
    :catch_5
    const/4 v15, 0x2

    .line 1199
    goto :goto_1c

    .line 1200
    :catch_6
    move-exception v0

    .line 1201
    const/4 v15, 0x2

    .line 1202
    goto :goto_1b

    .line 1203
    :cond_1e
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1206
    move-result-object v0

    .line 1207
    const-string v12, ":"

    .line 1209
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1212
    move-result-object v0

    .line 1213
    array-length v12, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1214
    const-string v13, ""

    .line 1216
    if-lt v12, v4, :cond_1f

    .line 1218
    const/4 v12, 0x0

    .line 1219
    :try_start_c
    aget-object v14, v0, v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1221
    goto :goto_16

    .line 1222
    :catchall_1
    move-exception v0

    .line 1223
    move-object v12, v0

    .line 1224
    const/4 v15, 0x2

    .line 1225
    goto :goto_19

    .line 1226
    :cond_1f
    move-object v14, v13

    .line 1227
    :goto_16
    :try_start_d
    array-length v12, v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1228
    const/4 v15, 0x2

    .line 1229
    if-lt v12, v15, :cond_20

    .line 1231
    :try_start_e
    aget-object v13, v0, v4

    .line 1233
    goto :goto_18

    .line 1234
    :catchall_2
    move-exception v0

    .line 1235
    :goto_17
    move-object v12, v0

    .line 1236
    goto :goto_19

    .line 1237
    :cond_20
    :goto_18
    const-string/jumbo v0, "ro.boottime.zygote"

    .line 1240
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1243
    move-result-object v0

    .line 1244
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1247
    move-result v0

    .line 1248
    if-eqz v0, :cond_21

    .line 1250
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 1253
    move-result v0

    .line 1254
    if-nez v0, :cond_21

    .line 1256
    const-string v0, ","

    .line 1258
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1261
    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1262
    :try_start_f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1265
    move-object v10, v0

    .line 1266
    goto :goto_1c

    .line 1267
    :catch_7
    move-exception v0

    .line 1268
    goto :goto_1b

    .line 1269
    :cond_21
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 1272
    goto :goto_1c

    .line 1273
    :catchall_3
    move-exception v0

    .line 1274
    const/4 v15, 0x2

    .line 1275
    goto :goto_17

    .line 1276
    :goto_19
    :try_start_10
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1279
    goto :goto_1a

    .line 1280
    :catchall_4
    move-exception v0

    .line 1281
    move-object v8, v0

    .line 1282
    :try_start_11
    invoke-virtual {v12, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1285
    :goto_1a
    throw v12
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 1286
    :goto_1b
    const-string v8, "Failed to read file /data/system/watchdog-timeout-history.txt"

    .line 1288
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    :catch_8
    :goto_1c
    new-instance v8, Ljava/util/ArrayList;

    .line 1293
    array-length v0, v10

    .line 1294
    sub-int/2addr v0, v1

    .line 1295
    sub-int/2addr v0, v4

    .line 1296
    const/4 v12, 0x0

    .line 1297
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 1300
    move-result v0

    .line 1301
    array-length v12, v10

    .line 1302
    invoke-static {v10, v0, v12}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 1305
    move-result-object v0

    .line 1306
    check-cast v0, [Ljava/lang/String;

    .line 1308
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1311
    move-result-object v0

    .line 1312
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1315
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1318
    move-result-object v0

    .line 1319
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    invoke-static {v8}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1325
    :try_start_12
    new-instance v0, Ljava/io/File;

    .line 1327
    const-string v10, "/sys/class/android_usb/android0/state"

    .line 1329
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1332
    const/16 v10, 0x80

    .line 1334
    invoke-static {v0, v10, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1337
    move-result-object v0

    .line 1338
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1341
    move-result-object v0

    .line 1342
    const-string v10, "CONFIGURED"

    .line 1344
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1347
    move-result v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 1348
    if-eqz v0, :cond_22

    .line 1350
    goto/16 :goto_24

    .line 1352
    :cond_22
    :goto_1d
    const/4 v10, 0x0

    .line 1353
    goto :goto_1e

    .line 1354
    :catch_9
    move-exception v0

    .line 1355
    const-string v10, "Failed to determine if device was on USB"

    .line 1357
    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1360
    goto :goto_1d

    .line 1361
    :goto_1e
    :try_start_13
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1364
    move-result-object v0

    .line 1365
    check-cast v0, Ljava/lang/String;

    .line 1367
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1370
    move-result-wide v12
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_b

    .line 1371
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1374
    move-result v0

    .line 1375
    if-lt v0, v1, :cond_28

    .line 1377
    sub-long/2addr v6, v12

    .line 1378
    cmp-long v0, v6, v2

    .line 1380
    if-gez v0, :cond_28

    .line 1382
    const-string/jumbo v0, "persist.debug.framework_watchdog.fatal_ignore"

    .line 1385
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1388
    move-result-object v0

    .line 1389
    if-nez v0, :cond_23

    .line 1391
    goto :goto_20

    .line 1392
    :cond_23
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1394
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1397
    move-result-object v0

    .line 1398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1401
    const/4 v1, -0x1

    .line 1402
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1405
    move-result v2

    .line 1406
    sparse-switch v2, :sswitch_data_0

    .line 1409
    goto :goto_1f

    .line 1410
    :sswitch_0
    const-string/jumbo v2, "false"

    .line 1413
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1416
    move-result v0

    .line 1417
    if-nez v0, :cond_24

    .line 1419
    goto :goto_1f

    .line 1420
    :cond_24
    const/4 v1, 0x3

    .line 1421
    goto :goto_1f

    .line 1422
    :sswitch_1
    const-string/jumbo v2, "true"

    .line 1425
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1428
    move-result v0

    .line 1429
    if-nez v0, :cond_25

    .line 1431
    goto :goto_1f

    .line 1432
    :cond_25
    move v1, v15

    .line 1433
    goto :goto_1f

    .line 1434
    :sswitch_2
    const-string v2, "1"

    .line 1436
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1439
    move-result v0

    .line 1440
    if-nez v0, :cond_26

    .line 1442
    goto :goto_1f

    .line 1443
    :cond_26
    move v1, v4

    .line 1444
    goto :goto_1f

    .line 1445
    :sswitch_3
    const-string v2, "0"

    .line 1447
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1450
    move-result v0

    .line 1451
    if-nez v0, :cond_27

    .line 1453
    goto :goto_1f

    .line 1454
    :cond_27
    const/4 v1, 0x0

    .line 1455
    :goto_1f
    packed-switch v1, :pswitch_data_0

    .line 1458
    goto :goto_20

    .line 1459
    :pswitch_0
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1461
    goto :goto_20

    .line 1462
    :pswitch_1
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1464
    :goto_20
    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1467
    move-result-object v0

    .line 1468
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1470
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    move-result-object v0

    .line 1474
    check-cast v0, Ljava/lang/Boolean;

    .line 1476
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1479
    move-result v0

    .line 1480
    if-nez v0, :cond_28

    .line 1482
    :try_start_14
    new-instance v1, Ljava/io/FileWriter;

    .line 1484
    const-string v0, "/dev/kmsg_debug"

    .line 1486
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1488
    invoke-direct {v1, v0, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 1491
    :try_start_15
    const-string v0, "Fatal reset to escape the system_server crashing loop\n"

    .line 1493
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 1496
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    .line 1499
    goto :goto_23

    .line 1500
    :catch_a
    move-exception v0

    .line 1501
    goto :goto_22

    .line 1502
    :catchall_5
    move-exception v0

    .line 1503
    move-object v2, v0

    .line 1504
    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 1507
    goto :goto_21

    .line 1508
    :catchall_6
    move-exception v0

    .line 1509
    move-object v1, v0

    .line 1510
    :try_start_18
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1513
    :goto_21
    throw v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    .line 1514
    :goto_22
    const-string v1, "Watchdog"

    .line 1516
    const-string v2, "Failed to append to kmsg"

    .line 1518
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1521
    :goto_23
    const/16 v0, 0x63

    .line 1523
    invoke-static {v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1526
    :cond_28
    :goto_24
    const/4 v6, 0x0

    .line 1527
    goto :goto_26

    .line 1528
    :catch_b
    move-exception v0

    .line 1529
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1531
    const-string v2, "Failed to parseLong "

    .line 1533
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1536
    const/4 v6, 0x0

    .line 1537
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1540
    move-result-object v2

    .line 1541
    check-cast v2, Ljava/lang/String;

    .line 1543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1549
    move-result-object v1

    .line 1550
    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1553
    new-instance v0, Ljava/util/ArrayList;

    .line 1555
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1558
    invoke-static {v0}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1561
    goto :goto_26

    .line 1562
    :goto_25
    int-to-long v0, v1

    .line 1563
    cmp-long v0, v0, v2

    .line 1565
    if-eqz v0, :cond_2a

    .line 1567
    const-string/jumbo v0, "sysprops \'framework_watchdog.fatal_count\' and \'framework_watchdog.fatal_window.second\' should be set or unset together"

    .line 1570
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    goto :goto_26

    .line 1574
    :cond_29
    const/4 v6, 0x0

    .line 1575
    const/4 v15, 0x2

    .line 1576
    :cond_2a
    :goto_26
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1579
    move-result v0

    .line 1580
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1583
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->exit(I)V

    .line 1586
    :goto_27
    move v3, v6

    .line 1587
    move v5, v3

    .line 1588
    move v2, v15

    .line 1589
    move-wide/from16 v13, v18

    .line 1591
    const/4 v1, 0x3

    .line 1592
    const-wide/16 v9, 0x7d0

    .line 1594
    goto/16 :goto_d

    .line 1596
    :catchall_7
    move-exception v0

    .line 1597
    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 1598
    throw v0

    .line 1599
    :goto_28
    :try_start_1a
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1600
    throw v0

    .line 1601
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    .line 1619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
