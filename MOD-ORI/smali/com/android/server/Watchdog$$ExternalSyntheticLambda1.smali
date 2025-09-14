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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/Watchdog;

    .line 5
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

    .line 6
    .line 7
    iget-object v11, v0, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/Watchdog;

    .line 8
    .line 9
    iget-object v0, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v5, "persist.vendor.softdog"

    .line 15
    .line 16
    .line 17
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string/jumbo v6, "off"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/16 v12, 0x64

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const-string v0, "Watchdog:WatchdogSoftdog"

    .line 33
    .line 34
    const-string v5, "!@persist.vendor.softdog is off, so do not turn on softdog"

    .line 35
    .line 36
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/WatchdogSoftdog;->native_sdogOpen()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ltz v5, :cond_1

    .line 45
    .line 46
    iput-boolean v3, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 47
    .line 48
    invoke-virtual {v0, v12}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    const-string/jumbo v0, "persist.sys.fd_leak_threshold_cnt"

    .line 52
    .line 53
    .line 54
    const-wide/16 v13, 0x1388

    .line 55
    .line 56
    invoke-static {v0, v13, v14}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    sput-wide v5, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    .line 61
    .line 62
    const-wide/16 v9, 0x7d0

    .line 63
    .line 64
    cmp-long v0, v5, v9

    .line 65
    .line 66
    if-gez v0, :cond_2

    .line 67
    .line 68
    sput-wide v13, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    .line 69
    .line 70
    :cond_2
    move v5, v3

    .line 71
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    iget-wide v6, v11, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 75
    .line 76
    const-wide/16 v15, 0x2

    .line 77
    .line 78
    div-long v15, v6, v15

    .line 79
    .line 80
    iget-object v8, v11, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v8

    .line 83
    move v0, v3

    .line 84
    :goto_2
    :try_start_0
    iget-object v9, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-ge v0, v9, :cond_3

    .line 91
    .line 92
    iget-object v9, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    check-cast v9, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 99
    .line 100
    iget-object v10, v9, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 101
    .line 102
    iget-object v9, v9, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mCustomTimeoutMillis:Ljava/util/Optional;

    .line 103
    .line 104
    sget v3, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 105
    .line 106
    int-to-long v13, v3

    .line 107
    mul-long/2addr v13, v6

    .line 108
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v9, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/Long;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 119
    .line 120
    .line 121
    move-result-wide v13

    .line 122
    invoke-virtual {v10, v13, v14}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked(J)V

    .line 123
    .line 124
    .line 125
    add-int/2addr v0, v4

    .line 126
    const/4 v3, 0x0

    .line 127
    const-wide/16 v13, 0x1388

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto/16 :goto_28

    .line 132
    .line 133
    :cond_3
    iget-object v0, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 134
    .line 135
    invoke-virtual {v0, v12}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11}, Lcom/android/server/Watchdog;->printLogAndCheckStatus()V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide v6

    .line 145
    move-wide v9, v15

    .line 146
    const/4 v0, 0x0

    .line 147
    :goto_3
    const-wide/16 v13, 0x0

    .line 148
    .line 149
    cmp-long v3, v9, v13

    .line 150
    .line 151
    if-lez v3, :cond_6

    .line 152
    .line 153
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 154
    .line 155
    .line 156
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz v3, :cond_4

    .line 158
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

    .line 163
    .line 164
    invoke-virtual {v0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_2
    const-string v9, "Watchdog"

    .line 170
    .line 171
    invoke-static {v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    :goto_5
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_5

    .line 179
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

    .line 184
    .line 185
    .line 186
    move-result-wide v9

    .line 187
    sub-long/2addr v9, v6

    .line 188
    sub-long v9, v15, v9

    .line 189
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

    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-ge v3, v7, :cond_7

    .line 200
    .line 201
    iget-object v7, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    check-cast v7, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 208
    .line 209
    iget-object v7, v7, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 210
    .line 211
    invoke-virtual {v7}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    add-int/2addr v3, v4

    .line 220
    goto :goto_7

    .line 221
    :cond_7
    if-nez v6, :cond_8

    .line 222
    .line 223
    monitor-exit v8

    .line 224
    const/4 v3, 0x0

    .line 225
    const/4 v5, 0x0

    .line 226
    const-wide/16 v9, 0x7d0

    .line 227
    .line 228
    :goto_8
    const-wide/16 v13, 0x1388

    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_8
    if-ne v6, v4, :cond_9

    .line 233
    .line 234
    monitor-exit v8

    .line 235
    goto :goto_9

    .line 236
    :cond_9
    if-ne v6, v2, :cond_c

    .line 237
    .line 238
    if-nez v5, :cond_b

    .line 239
    .line 240
    invoke-static {}, Lcom/android/server/Watchdog;->getPsInfo()V

    .line 241
    .line 242
    .line 243
    const-string v3, "Watchdog"

    .line 244
    .line 245
    const-string v5, "!@*** WAITED_UNTIL_PRE_WATCHDOG"

    .line 246
    .line 247
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    const-string v3, "Watchdog"

    .line 251
    .line 252
    iget-object v5, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 253
    .line 254
    invoke-static {v5}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    iget-object v3, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 262
    .line 263
    invoke-virtual {v3, v12}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v11, v2}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-static {v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    new-instance v6, Ljava/util/ArrayList;

    .line 275
    .line 276
    iget-object v7, v11, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 277
    .line 278
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    .line 280
    .line 281
    sget-boolean v7, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 282
    .line 283
    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 284
    .line 285
    iget-boolean v7, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 286
    .line 287
    if-eqz v7, :cond_a

    .line 288
    .line 289
    const-string v7, "Watchdog"

    .line 290
    .line 291
    new-instance v9, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    const-string v10, "!@*** unFreezeAllPackages for watchdog HALF debug! request time : "

    .line 297
    .line 298
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    new-instance v10, Ljava/text/SimpleDateFormat;

    .line 302
    .line 303
    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 304
    .line 305
    .line 306
    invoke-direct {v10, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    new-instance v15, Ljava/util/Date;

    .line 310
    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 312
    .line 313
    .line 314
    move-result-wide v12

    .line 315
    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v10, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    sget-object v7, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 333
    .line 334
    const-string v9, "Watchdog_HALF"

    .line 335
    .line 336
    invoke-virtual {v7, v9}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 337
    .line 338
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

    .line 344
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

    .line 349
    .line 350
    const/16 v12, 0x64

    .line 351
    .line 352
    goto :goto_8

    .line 353
    :cond_c
    invoke-virtual {v11, v1}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-static {v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    iget-boolean v7, v11, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 362
    .line 363
    new-instance v9, Ljava/util/ArrayList;

    .line 364
    .line 365
    iget-object v10, v11, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 366
    .line 367
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    .line 369
    .line 370
    move v13, v5

    .line 371
    move-object v12, v6

    .line 372
    move v14, v7

    .line 373
    move-object/from16 v20, v9

    .line 374
    .line 375
    const/4 v15, 0x0

    .line 376
    :goto_a
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    const-string v6, "AID_SYSTEM"

    .line 382
    .line 383
    const/16 v7, 0x3e8

    .line 384
    .line 385
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    const-string v7, "--- CriticalEventLog ---\n"

    .line 392
    .line 393
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-static {v5}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const/16 v10, 0xa

    .line 404
    .line 405
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v27

    .line 412
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 413
    .line 414
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 422
    .line 423
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 427
    .line 428
    const-string/jumbo v6, "system_server"

    .line 429
    .line 430
    .line 431
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 432
    .line 433
    .line 434
    move-result v7

    .line 435
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    invoke-static {v6, v7, v9}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 439
    .line 440
    .line 441
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 442
    .line 443
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    invoke-static {v12, v9}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 447
    .line 448
    .line 449
    if-eqz v15, :cond_d

    .line 450
    .line 451
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    new-instance v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    .line 459
    .line 460
    invoke-direct {v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    .line 461
    .line 462
    .line 463
    iput-object v12, v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    .line 464
    .line 465
    new-instance v7, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 466
    .line 467
    invoke-direct {v7}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v7, v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setHalfWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v5, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 474
    .line 475
    .line 476
    const/16 v5, 0x1cc

    .line 477
    .line 478
    invoke-static {v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 479
    .line 480
    .line 481
    const-string/jumbo v5, "pre_watchdog"

    .line 482
    .line 483
    .line 484
    :goto_b
    move-object v7, v5

    .line 485
    goto :goto_c

    .line 486
    :cond_d
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    new-instance v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    .line 494
    .line 495
    invoke-direct {v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    .line 496
    .line 497
    .line 498
    iput-object v12, v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 499
    .line 500
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    iput-object v7, v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    .line 505
    .line 506
    new-instance v7, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 507
    .line 508
    invoke-direct {v7}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v7, v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v5, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 515
    .line 516
    .line 517
    const/16 v5, 0xaf2

    .line 518
    .line 519
    invoke-static {v5, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 520
    .line 521
    .line 522
    const/16 v5, 0xb9

    .line 523
    .line 524
    invoke-static {v5, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 525
    .line 526
    .line 527
    const-string/jumbo v5, "watchdog"

    .line 528
    .line 529
    .line 530
    goto :goto_b

    .line 531
    :goto_c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    .line 536
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    new-instance v5, Ljava/io/StringWriter;

    .line 544
    .line 545
    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 546
    .line 547
    .line 548
    iget-object v6, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 549
    .line 550
    new-instance v22, Landroid/util/SparseBooleanArray;

    .line 551
    .line 552
    invoke-direct/range {v22 .. v22}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 553
    .line 554
    .line 555
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    .line 556
    .line 557
    .line 558
    move-result-object v16

    .line 559
    invoke-static/range {v16 .. v16}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 560
    .line 561
    .line 562
    move-result-object v23

    .line 563
    new-instance v29, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 564
    .line 565
    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 566
    .line 567
    .line 568
    const/16 v28, 0x0

    .line 569
    .line 570
    const/16 v31, 0x0

    .line 571
    .line 572
    const/16 v25, 0x0

    .line 573
    .line 574
    const/16 v30, 0x0

    .line 575
    .line 576
    move-object/from16 v21, v6

    .line 577
    .line 578
    move-object/from16 v24, v5

    .line 579
    .line 580
    move-object/from16 v26, v12

    .line 581
    .line 582
    invoke-static/range {v20 .. v31}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    .line 583
    .line 584
    .line 585
    move-result-object v16

    .line 586
    const-string v6, "Watchdog"

    .line 587
    .line 588
    const-string v1, "!@*** End dumpStackTraces"

    .line 589
    .line 590
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    const-wide/16 v18, 0x1388

    .line 594
    .line 595
    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    .line 596
    .line 597
    .line 598
    iget-object v1, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 599
    .line 600
    invoke-static {v1}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    if-nez v15, :cond_e

    .line 615
    .line 616
    const/16 v1, 0x77

    .line 617
    .line 618
    invoke-static {v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 619
    .line 620
    .line 621
    const/16 v1, 0x6d

    .line 622
    .line 623
    invoke-static {v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 624
    .line 625
    .line 626
    const/16 v1, 0x6c

    .line 627
    .line 628
    invoke-static {v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 629
    .line 630
    .line 631
    :cond_e
    new-instance v1, Lcom/android/server/Watchdog$2;

    .line 632
    .line 633
    move-object v5, v1

    .line 634
    move-object v6, v11

    .line 635
    move-object/from16 v22, v3

    .line 636
    .line 637
    move-object/from16 v17, v9

    .line 638
    .line 639
    const-wide/16 v2, 0x7d0

    .line 640
    .line 641
    move-object/from16 v9, v16

    .line 642
    .line 643
    move/from16 v16, v10

    .line 644
    .line 645
    move-object/from16 v10, v17

    .line 646
    .line 647
    invoke-direct/range {v5 .. v10}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 651
    .line 652
    .line 653
    :try_start_3
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 654
    .line 655
    .line 656
    :catch_1
    if-eqz v15, :cond_f

    .line 657
    .line 658
    move-wide v9, v2

    .line 659
    move v5, v13

    .line 660
    move-wide/from16 v13, v18

    .line 661
    .line 662
    const/4 v1, 0x3

    .line 663
    const/4 v2, 0x2

    .line 664
    const/4 v3, 0x0

    .line 665
    :goto_d
    const/16 v12, 0x64

    .line 666
    .line 667
    goto/16 :goto_1

    .line 668
    .line 669
    :cond_f
    iget-object v1, v11, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 670
    .line 671
    monitor-enter v1

    .line 672
    :try_start_4
    iget-object v5, v11, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 673
    .line 674
    iget-object v6, v11, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    .line 675
    .line 676
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 677
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    .line 678
    .line 679
    if-eqz v1, :cond_10

    .line 680
    .line 681
    if-eqz v5, :cond_10

    .line 682
    .line 683
    const-string v1, "Watchdog"

    .line 684
    .line 685
    const-string v7, "Reporting stuck state to activity controller"

    .line 686
    .line 687
    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .line 689
    .line 690
    :try_start_5
    const-string v1, "Service dumps disabled due to hung system process."

    .line 691
    .line 692
    invoke-static {v1}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-interface {v5, v12}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    if-ltz v1, :cond_10

    .line 700
    .line 701
    const-string v1, "Watchdog"

    .line 702
    .line 703
    const-string v5, "!@ Activity controller requested to coninue to wait"

    .line 704
    .line 705
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 706
    .line 707
    .line 708
    move-wide v9, v2

    .line 709
    move-wide/from16 v13, v18

    .line 710
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

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-eqz v1, :cond_11

    .line 721
    .line 722
    const/4 v0, 0x2

    .line 723
    :cond_11
    const/4 v1, 0x2

    .line 724
    if-lt v0, v1, :cond_12

    .line 725
    .line 726
    const-string v0, "Watchdog"

    .line 727
    .line 728
    const-string v1, "!@ Debugger connected: Watchdog is *not* killing the system process"

    .line 729
    .line 730
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    :goto_e
    const/4 v6, 0x0

    .line 734
    const/4 v15, 0x2

    .line 735
    goto/16 :goto_27

    .line 736
    .line 737
    :cond_12
    if-lez v0, :cond_13

    .line 738
    .line 739
    const-string v0, "Watchdog"

    .line 740
    .line 741
    const-string v1, "!@ Debugger was connected: Watchdog is *not* killing the system process"

    .line 742
    .line 743
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    .line 745
    .line 746
    goto :goto_e

    .line 747
    :cond_13
    if-nez v14, :cond_14

    .line 748
    .line 749
    const-string v0, "Watchdog"

    .line 750
    .line 751
    const-string v1, "!@ Restart not allowed: Watchdog is *not* killing the system process"

    .line 752
    .line 753
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .line 755
    .line 756
    goto :goto_e

    .line 757
    :cond_14
    const-string v0, "Watchdog"

    .line 758
    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    .line 760
    .line 761
    const-string v5, "!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    .line 762
    .line 763
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    .line 775
    .line 776
    const-string v0, "P|WD"

    .line 777
    .line 778
    invoke-static {v0, v12}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    iget-object v0, v11, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 782
    .line 783
    if-eqz v0, :cond_15

    .line 784
    .line 785
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingCmdBR:Ljava/util/ArrayList;

    .line 786
    .line 787
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-lez v1, :cond_15

    .line 792
    .line 793
    const-string v1, "Watchdog"

    .line 794
    .line 795
    const-string/jumbo v5, "pending commanded broadcasts"

    .line 796
    .line 797
    .line 798
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .line 800
    .line 801
    const/4 v1, 0x0

    .line 802
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 803
    .line 804
    .line 805
    move-result v5

    .line 806
    if-ge v1, v5, :cond_15

    .line 807
    .line 808
    const-string v5, "Watchdog"

    .line 809
    .line 810
    const-string v7, "#"

    .line 811
    .line 812
    const-string v8, " "

    .line 813
    .line 814
    invoke-static {v1, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    move-result-object v7

    .line 818
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v8

    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v7

    .line 829
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    .line 831
    .line 832
    add-int/2addr v1, v4

    .line 833
    goto :goto_f

    .line 834
    :cond_15
    const-string v0, "Watchdog"

    .line 835
    .line 836
    iget-object v1, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 837
    .line 838
    invoke-static {v1}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .line 844
    .line 845
    new-instance v0, Ljava/io/PrintWriter;

    .line 846
    .line 847
    new-instance v1, Landroid/util/LogWriter;

    .line 848
    .line 849
    const-string v5, "Watchdog"

    .line 850
    .line 851
    const/4 v7, 0x5

    .line 852
    const/4 v8, 0x4

    .line 853
    invoke-direct {v1, v7, v5, v8}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    .line 854
    .line 855
    .line 856
    invoke-direct {v0, v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 857
    .line 858
    .line 859
    const-string v1, "PLATFORM WATCHDOG RESET"

    .line 860
    .line 861
    const/4 v7, 0x6

    .line 862
    const/4 v9, 0x0

    .line 863
    invoke-static {v8, v7, v5, v1, v9}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    .line 865
    .line 866
    const/4 v1, 0x0

    .line 867
    :goto_10
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    .line 868
    .line 869
    .line 870
    move-result v10

    .line 871
    if-ge v1, v10, :cond_18

    .line 872
    .line 873
    move-object/from16 v10, v22

    .line 874
    .line 875
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v12

    .line 879
    check-cast v12, Lcom/android/server/Watchdog$HandlerChecker;

    .line 880
    .line 881
    iget-object v12, v12, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 882
    .line 883
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 884
    .line 885
    .line 886
    move-result-object v12

    .line 887
    invoke-virtual {v12}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 888
    .line 889
    .line 890
    move-result-object v12

    .line 891
    invoke-static {v12, v0}, Lcom/android/server/WatchdogDiagnostics;->printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z

    .line 892
    .line 893
    .line 894
    move-result v13

    .line 895
    if-eqz v13, :cond_16

    .line 896
    .line 897
    goto :goto_12

    .line 898
    :cond_16
    new-instance v13, Ljava/lang/StringBuilder;

    .line 899
    .line 900
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v14

    .line 907
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    const-string v14, " stack trace:"

    .line 911
    .line 912
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v13

    .line 919
    invoke-static {v8, v7, v5, v13, v9}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    .line 921
    .line 922
    invoke-virtual {v12}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 923
    .line 924
    .line 925
    move-result-object v12

    .line 926
    array-length v13, v12

    .line 927
    const/4 v14, 0x0

    .line 928
    :goto_11
    if-ge v14, v13, :cond_17

    .line 929
    .line 930
    aget-object v15, v12, v14

    .line 931
    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    .line 933
    .line 934
    const-string v3, " at "

    .line 935
    .line 936
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v2

    .line 946
    invoke-static {v8, v7, v5, v2, v9}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    .line 948
    .line 949
    add-int/2addr v14, v4

    .line 950
    const-wide/16 v2, 0x7d0

    .line 951
    .line 952
    goto :goto_11

    .line 953
    :cond_17
    :goto_12
    add-int/2addr v1, v4

    .line 954
    move-object/from16 v22, v10

    .line 955
    .line 956
    const-wide/16 v2, 0x7d0

    .line 957
    .line 958
    goto :goto_10

    .line 959
    :cond_18
    iget-object v0, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 960
    .line 961
    iget-boolean v1, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 962
    .line 963
    if-eqz v1, :cond_19

    .line 964
    .line 965
    goto :goto_13

    .line 966
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/WatchdogSoftdog;->native_sdogClose()V

    .line 967
    .line 968
    .line 969
    iput-boolean v4, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 970
    .line 971
    :goto_13
    new-instance v0, Landroid/os/BugreportParams;

    .line 972
    .line 973
    const/16 v1, 0xd

    .line 974
    .line 975
    invoke-direct {v0, v1}, Landroid/os/BugreportParams;-><init>(I)V

    .line 976
    .line 977
    .line 978
    const-string/jumbo v1, "system_server"

    .line 979
    .line 980
    .line 981
    invoke-static {v0, v1}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    const-string/jumbo v0, "crashrecovery.rescue_boot_count"

    .line 985
    .line 986
    .line 987
    const-string/jumbo v1, "crashrecovery.rescue_boot_count"

    .line 988
    .line 989
    .line 990
    const/4 v2, 0x0

    .line 991
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 992
    .line 993
    .line 994
    move-result v1

    .line 995
    const/4 v2, 0x2

    .line 996
    add-int/2addr v1, v2

    .line 997
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1005
    .line 1006
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1007
    .line 1008
    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 1009
    .line 1010
    if-eqz v0, :cond_1a

    .line 1011
    .line 1012
    const-string v0, "Watchdog"

    .line 1013
    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    const-string v2, "!@*** unFreezeAllPackages for watchdog debug! request time : "

    .line 1017
    .line 1018
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 1022
    .line 1023
    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 1024
    .line 1025
    .line 1026
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    new-instance v3, Ljava/util/Date;

    .line 1030
    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1032
    .line 1033
    .line 1034
    move-result-wide v7

    .line 1035
    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v2

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .line 1051
    .line 1052
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 1053
    .line 1054
    const-string v1, "Watchdog"

    .line 1055
    .line 1056
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    :cond_1a
    if-eqz v6, :cond_1b

    .line 1060
    .line 1061
    const-string v0, "Watchdog"

    .line 1062
    .line 1063
    const-string v1, "!@*** ActivityController is set by "

    .line 1064
    .line 1065
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    .line 1071
    .line 1072
    :cond_1b
    const-string v0, "Watchdog"

    .line 1073
    .line 1074
    const-string v1, "!@*** GOODBYE!"

    .line 1075
    .line 1076
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .line 1078
    .line 1079
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 1080
    .line 1081
    if-nez v0, :cond_29

    .line 1082
    .line 1083
    const-string/jumbo v0, "framework_watchdog.fatal_count"

    .line 1084
    .line 1085
    .line 1086
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1091
    .line 1092
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

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    const/4 v1, 0x0

    .line 1101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    check-cast v0, Ljava/lang/Integer;

    .line 1110
    .line 1111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1112
    .line 1113
    .line 1114
    move-result v1

    .line 1115
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1116
    .line 1117
    const-string/jumbo v2, "framework_watchdog.fatal_window.second"

    .line 1118
    .line 1119
    .line 1120
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v2

    .line 1124
    :try_start_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1125
    .line 1126
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

    .line 1131
    .line 1132
    .line 1133
    move-result-object v2

    .line 1134
    const/4 v3, 0x0

    .line 1135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v5

    .line 1139
    invoke-virtual {v2, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v2

    .line 1143
    check-cast v2, Ljava/lang/Integer;

    .line 1144
    .line 1145
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1146
    .line 1147
    .line 1148
    move-result v2

    .line 1149
    int-to-long v2, v2

    .line 1150
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 1151
    .line 1152
    .line 1153
    move-result-wide v2

    .line 1154
    const-string v5, "Watchdog"

    .line 1155
    .line 1156
    if-eqz v1, :cond_1c

    .line 1157
    .line 1158
    const-wide/16 v6, 0x0

    .line 1159
    .line 1160
    cmp-long v0, v2, v6

    .line 1161
    .line 1162
    if-nez v0, :cond_1d

    .line 1163
    .line 1164
    :cond_1c
    const/4 v6, 0x0

    .line 1165
    const/4 v15, 0x2

    .line 1166
    goto/16 :goto_25

    .line 1167
    .line 1168
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1169
    .line 1170
    .line 1171
    move-result-wide v6

    .line 1172
    const/4 v8, 0x0

    .line 1173
    new-array v10, v8, [Ljava/lang/String;

    .line 1174
    .line 1175
    :try_start_8
    new-instance v8, Ljava/io/BufferedReader;

    .line 1176
    .line 1177
    new-instance v0, Ljava/io/FileReader;

    .line 1178
    .line 1179
    const-string v12, "/data/system/watchdog-timeout-history.txt"

    .line 1180
    .line 1181
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1182
    .line 1183
    invoke-direct {v0, v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1187
    .line 1188
    .line 1189
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1193
    if-nez v0, :cond_1e

    .line 1194
    .line 1195
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1196
    .line 1197
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

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    const-string v12, ":"

    .line 1208
    .line 1209
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    array-length v12, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1214
    const-string v13, ""

    .line 1215
    .line 1216
    if-lt v12, v4, :cond_1f

    .line 1217
    .line 1218
    const/4 v12, 0x0

    .line 1219
    :try_start_c
    aget-object v14, v0, v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1220
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

    .line 1230
    .line 1231
    :try_start_e
    aget-object v13, v0, v4

    .line 1232
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

    .line 1238
    .line 1239
    .line 1240
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v0

    .line 1248
    if-eqz v0, :cond_21

    .line 1249
    .line 1250
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    if-nez v0, :cond_21

    .line 1255
    .line 1256
    const-string v0, ","

    .line 1257
    .line 1258
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1262
    :try_start_f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1263
    .line 1264
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

    .line 1270
    .line 1271
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

    .line 1277
    .line 1278
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

    .line 1283
    .line 1284
    .line 1285
    :goto_1a
    throw v12
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 1286
    :goto_1b
    const-string v8, "Failed to read file /data/system/watchdog-timeout-history.txt"

    .line 1287
    .line 1288
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1289
    .line 1290
    .line 1291
    :catch_8
    :goto_1c
    new-instance v8, Ljava/util/ArrayList;

    .line 1292
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

    .line 1298
    .line 1299
    .line 1300
    move-result v0

    .line 1301
    array-length v12, v10

    .line 1302
    invoke-static {v10, v0, v12}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v0

    .line 1306
    check-cast v0, [Ljava/lang/String;

    .line 1307
    .line 1308
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1313
    .line 1314
    .line 1315
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    .line 1321
    .line 1322
    invoke-static {v8}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1323
    .line 1324
    .line 1325
    :try_start_12
    new-instance v0, Ljava/io/File;

    .line 1326
    .line 1327
    const-string v10, "/sys/class/android_usb/android0/state"

    .line 1328
    .line 1329
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    const/16 v10, 0x80

    .line 1333
    .line 1334
    invoke-static {v0, v10, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    const-string v10, "CONFIGURED"

    .line 1343
    .line 1344
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1345
    .line 1346
    .line 1347
    move-result v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 1348
    if-eqz v0, :cond_22

    .line 1349
    .line 1350
    goto/16 :goto_24

    .line 1351
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

    .line 1356
    .line 1357
    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    .line 1359
    .line 1360
    goto :goto_1d

    .line 1361
    :goto_1e
    :try_start_13
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v0

    .line 1365
    check-cast v0, Ljava/lang/String;

    .line 1366
    .line 1367
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1368
    .line 1369
    .line 1370
    move-result-wide v12
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_b

    .line 1371
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1372
    .line 1373
    .line 1374
    move-result v0

    .line 1375
    if-lt v0, v1, :cond_28

    .line 1376
    .line 1377
    sub-long/2addr v6, v12

    .line 1378
    cmp-long v0, v6, v2

    .line 1379
    .line 1380
    if-gez v0, :cond_28

    .line 1381
    .line 1382
    const-string/jumbo v0, "persist.debug.framework_watchdog.fatal_ignore"

    .line 1383
    .line 1384
    .line 1385
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v0

    .line 1389
    if-nez v0, :cond_23

    .line 1390
    .line 1391
    goto :goto_20

    .line 1392
    :cond_23
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1393
    .line 1394
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1399
    .line 1400
    .line 1401
    const/4 v1, -0x1

    .line 1402
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1403
    .line 1404
    .line 1405
    move-result v2

    .line 1406
    sparse-switch v2, :sswitch_data_0

    .line 1407
    .line 1408
    .line 1409
    goto :goto_1f

    .line 1410
    :sswitch_0
    const-string/jumbo v2, "false"

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1414
    .line 1415
    .line 1416
    move-result v0

    .line 1417
    if-nez v0, :cond_24

    .line 1418
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

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v0

    .line 1429
    if-nez v0, :cond_25

    .line 1430
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

    .line 1435
    .line 1436
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    if-nez v0, :cond_26

    .line 1441
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

    .line 1446
    .line 1447
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v0

    .line 1451
    if-nez v0, :cond_27

    .line 1452
    .line 1453
    goto :goto_1f

    .line 1454
    :cond_27
    const/4 v1, 0x0

    .line 1455
    :goto_1f
    packed-switch v1, :pswitch_data_0

    .line 1456
    .line 1457
    .line 1458
    goto :goto_20

    .line 1459
    :pswitch_0
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1460
    .line 1461
    goto :goto_20

    .line 1462
    :pswitch_1
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1463
    .line 1464
    :goto_20
    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v0

    .line 1468
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1469
    .line 1470
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v0

    .line 1474
    check-cast v0, Ljava/lang/Boolean;

    .line 1475
    .line 1476
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1477
    .line 1478
    .line 1479
    move-result v0

    .line 1480
    if-nez v0, :cond_28

    .line 1481
    .line 1482
    :try_start_14
    new-instance v1, Ljava/io/FileWriter;

    .line 1483
    .line 1484
    const-string v0, "/dev/kmsg_debug"

    .line 1485
    .line 1486
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1487
    .line 1488
    invoke-direct {v1, v0, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 1489
    .line 1490
    .line 1491
    :try_start_15
    const-string v0, "Fatal reset to escape the system_server crashing loop\n"

    .line 1492
    .line 1493
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 1494
    .line 1495
    .line 1496
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    .line 1497
    .line 1498
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

    .line 1505
    .line 1506
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

    .line 1511
    .line 1512
    .line 1513
    :goto_21
    throw v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    .line 1514
    :goto_22
    const-string v1, "Watchdog"

    .line 1515
    .line 1516
    const-string v2, "Failed to append to kmsg"

    .line 1517
    .line 1518
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1519
    .line 1520
    .line 1521
    :goto_23
    const/16 v0, 0x63

    .line 1522
    .line 1523
    invoke-static {v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1524
    .line 1525
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

    .line 1530
    .line 1531
    const-string v2, "Failed to parseLong "

    .line 1532
    .line 1533
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    const/4 v6, 0x0

    .line 1537
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v2

    .line 1541
    check-cast v2, Ljava/lang/String;

    .line 1542
    .line 1543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    .line 1545
    .line 1546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v1

    .line 1550
    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1551
    .line 1552
    .line 1553
    new-instance v0, Ljava/util/ArrayList;

    .line 1554
    .line 1555
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .line 1557
    .line 1558
    invoke-static {v0}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1559
    .line 1560
    .line 1561
    goto :goto_26

    .line 1562
    :goto_25
    int-to-long v0, v1

    .line 1563
    cmp-long v0, v0, v2

    .line 1564
    .line 1565
    if-eqz v0, :cond_2a

    .line 1566
    .line 1567
    const-string/jumbo v0, "sysprops \'framework_watchdog.fatal_count\' and \'framework_watchdog.fatal_window.second\' should be set or unset together"

    .line 1568
    .line 1569
    .line 1570
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    .line 1572
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

    .line 1577
    .line 1578
    .line 1579
    move-result v0

    .line 1580
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1581
    .line 1582
    .line 1583
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->exit(I)V

    .line 1584
    .line 1585
    .line 1586
    :goto_27
    move v3, v6

    .line 1587
    move v5, v3

    .line 1588
    move v2, v15

    .line 1589
    move-wide/from16 v13, v18

    .line 1590
    .line 1591
    const/4 v1, 0x3

    .line 1592
    const-wide/16 v9, 0x7d0

    .line 1593
    .line 1594
    goto/16 :goto_d

    .line 1595
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

    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
