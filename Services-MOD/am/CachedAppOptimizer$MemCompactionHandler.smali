.class public final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 3
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

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
    .locals 68

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "E|Compact d_rss="

    .line 7
    const-string v3, "B|Compact "

    .line 9
    const-string v4, "Compact "

    .line 11
    iget v5, v1, Landroid/os/Message;->what:I

    .line 13
    const/16 v6, 0x756f

    .line 15
    const-wide/16 v7, 0x40

    .line 17
    const/4 v9, 0x3

    .line 18
    const/4 v10, 0x2

    .line 19
    const/4 v11, 0x1

    .line 20
    const/4 v12, 0x0

    .line 21
    if-eq v5, v11, :cond_7

    .line 23
    const/4 v2, 0x5

    .line 24
    if-eq v5, v2, :cond_6

    .line 26
    const/16 v2, 0x6b

    .line 28
    if-eq v5, v2, :cond_0

    .line 30
    goto/16 :goto_19

    .line 32
    :cond_0
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 34
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 36
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 38
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v0, v2, v1, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 49
    move-result-object v1

    .line 50
    const-wide/16 v2, 0x7d0

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 55
    goto/16 :goto_19

    .line 57
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 59
    invoke-virtual {v2, v1}, Lcom/android/server/am/CachedAppOptimizer;->isProcessFrozen(I)Z

    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_3

    .line 65
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 67
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 69
    iget-object v3, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 71
    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 74
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_2

    .line 80
    iget-object v2, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 89
    move-result v2

    .line 90
    monitor-exit v3

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    monitor-exit v3

    .line 95
    move v2, v12

    .line 96
    :goto_0
    if-eqz v2, :cond_2c

    .line 98
    goto :goto_2

    .line 99
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw v0

    .line 101
    :cond_3
    :goto_2
    const-string v2, "ActivityManager"

    .line 103
    const-string v3, "FCA:Reclamation for pid: "

    .line 105
    invoke-static {v1, v3, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 110
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 112
    invoke-interface {v2, v1}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 115
    move-result-object v2

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 119
    move-result-wide v3

    .line 120
    invoke-static {v1, v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    .line 123
    move-result v5

    .line 124
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 126
    iget-object v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 128
    invoke-interface {v7, v1}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 131
    move-result-object v7

    .line 132
    aget-wide v13, v7, v12

    .line 134
    aget-wide v15, v2, v12

    .line 136
    sub-long/2addr v13, v15

    .line 137
    aget-wide v15, v7, v11

    .line 139
    aget-wide v17, v2, v11

    .line 141
    sub-long v15, v15, v17

    .line 143
    aget-wide v17, v7, v10

    .line 145
    aget-wide v19, v2, v10

    .line 147
    sub-long v17, v17, v19

    .line 149
    aget-wide v19, v7, v9

    .line 151
    aget-wide v21, v2, v9

    .line 153
    sub-long v19, v19, v21

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 158
    move-result-wide v21

    .line 159
    sub-long v21, v21, v3

    .line 161
    const-string v3, ""

    .line 163
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 165
    iget-object v4, v4, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 167
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 170
    monitor-enter v4

    .line 171
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 173
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 178
    move-result-object v0

    .line 179
    if-eqz v0, :cond_5

    .line 181
    if-nez v5, :cond_4

    .line 183
    aget-wide v7, v7, v11

    .line 185
    goto :goto_3

    .line 186
    :catchall_1
    move-exception v0

    .line 187
    goto :goto_4

    .line 188
    :cond_4
    :goto_3
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 190
    :cond_5
    move-object/from16 v24, v3

    .line 192
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    move-result-object v23

    .line 200
    const-string v25, "FCA:"

    .line 202
    aget-wide v0, v2, v12

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    move-result-object v26

    .line 208
    aget-wide v0, v2, v11

    .line 210
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    move-result-object v27

    .line 214
    aget-wide v0, v2, v10

    .line 216
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    move-result-object v28

    .line 220
    aget-wide v0, v2, v9

    .line 222
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    move-result-object v29

    .line 226
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    move-result-object v30

    .line 230
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    move-result-object v31

    .line 234
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 237
    move-result-object v32

    .line 238
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 241
    move-result-object v33

    .line 242
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 245
    move-result-object v34

    .line 246
    const-string v35, ""

    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    move-result-object v36

    .line 252
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    move-result-object v37

    .line 256
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    move-result-object v38

    .line 260
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object v39

    .line 264
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    move-result-object v40

    .line 268
    filled-new-array/range {v23 .. v40}, [Ljava/lang/Object;

    .line 271
    move-result-object v0

    .line 272
    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 275
    goto/16 :goto_19

    .line 277
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 281
    throw v0

    .line 282
    :cond_6
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 284
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 287
    move-result-object v3

    .line 288
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 290
    aget-object v1, v3, v1

    .line 292
    const-string v3, "ActivityManager"

    .line 294
    const-string v4, "Performing native compaction for pid="

    .line 296
    const-string v5, " type="

    .line 298
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v4

    .line 313
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string/jumbo v3, "compactSystem"

    .line 319
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 322
    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 324
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 326
    invoke-interface {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 329
    goto :goto_5

    .line 330
    :catch_0
    const-string v0, "ActivityManager"

    .line 332
    const-string v1, "Failed compacting native pid= "

    .line 334
    invoke-static {v2, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_5
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 340
    goto/16 :goto_19

    .line 342
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 345
    move-result-wide v13

    .line 346
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 348
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 350
    iget-object v15, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 352
    iget-object v15, v15, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 354
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 357
    monitor-enter v15

    .line 358
    :try_start_4
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 360
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 362
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 365
    move-result v6

    .line 366
    if-eqz v6, :cond_8

    .line 368
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 369
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 372
    return-void

    .line 373
    :catchall_2
    move-exception v0

    .line 374
    goto/16 :goto_1b

    .line 376
    :cond_8
    :try_start_5
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 378
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 380
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 383
    move-result-object v6

    .line 384
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 386
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 388
    iget-boolean v8, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    .line 390
    iput-boolean v12, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    .line 392
    iget v9, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 394
    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 396
    iput-boolean v12, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 398
    iget-object v12, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 400
    iget-object v10, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 402
    move/from16 v40, v5

    .line 404
    iget-object v5, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 406
    if-nez v5, :cond_9

    .line 408
    sget-object v5, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 410
    iput-object v5, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 412
    :cond_9
    iget-object v5, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 414
    move-object/from16 v16, v2

    .line 416
    move-object/from16 v17, v3

    .line 418
    iget-wide v2, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 420
    move-wide/from16 v41, v2

    .line 422
    iget v2, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    .line 424
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 425
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 428
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 430
    iget-object v15, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 432
    move-object/from16 v43, v5

    .line 434
    iget-object v5, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 436
    invoke-virtual {v5, v15}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-result-object v5

    .line 440
    check-cast v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 442
    if-nez v5, :cond_a

    .line 444
    new-instance v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 446
    invoke-direct {v5, v15}, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;-><init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V

    .line 449
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 451
    invoke-virtual {v3, v15, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_a
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 456
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    if-nez v11, :cond_b

    .line 461
    const-string v15, ""

    .line 463
    move-object/from16 p1, v7

    .line 465
    goto :goto_6

    .line 466
    :cond_b
    move-object/from16 p1, v7

    .line 468
    move-object v15, v11

    .line 469
    :goto_6
    iget-object v7, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 471
    invoke-virtual {v7, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    move-result-object v7

    .line 475
    check-cast v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 477
    if-nez v7, :cond_c

    .line 479
    new-instance v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 481
    invoke-direct {v7, v15}, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;-><init>(Ljava/lang/String;)V

    .line 484
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 486
    invoke-virtual {v3, v15, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_c
    const-wide/16 v18, 0x1

    .line 491
    if-nez v9, :cond_d

    .line 493
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 495
    add-long v0, v0, v18

    .line 497
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 499
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 501
    add-long v0, v0, v18

    .line 503
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 505
    return-void

    .line 506
    :cond_d
    const-wide/16 v20, 0x0

    .line 508
    if-nez v8, :cond_21

    .line 510
    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 512
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 514
    const/16 v15, 0xc8

    .line 516
    if-gt v3, v15, :cond_e

    .line 518
    const/4 v3, 0x1

    .line 519
    goto :goto_7

    .line 520
    :cond_e
    const/4 v3, 0x0

    .line 521
    :goto_7
    if-eqz v3, :cond_f

    .line 523
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 525
    add-long v0, v0, v18

    .line 527
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 529
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 531
    add-long v0, v0, v18

    .line 533
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 535
    return-void

    .line 536
    :cond_f
    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 538
    iget-object v15, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 540
    if-nez v15, :cond_10

    .line 542
    sget-object v15, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 544
    iput-object v15, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 546
    :cond_10
    iget-object v15, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 548
    move/from16 v31, v2

    .line 550
    iget-wide v2, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 552
    cmp-long v22, v2, v20

    .line 554
    if-eqz v22, :cond_18

    .line 556
    move/from16 v44, v8

    .line 558
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 560
    if-ne v12, v8, :cond_17

    .line 562
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 564
    move-object/from16 v29, v6

    .line 566
    sget-object v6, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 568
    if-ne v10, v8, :cond_15

    .line 570
    if-ne v15, v8, :cond_11

    .line 572
    sub-long v22, v13, v2

    .line 574
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 576
    move-object/from16 v55, v11

    .line 578
    move-object/from16 v30, v12

    .line 580
    iget-wide v11, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 582
    cmp-long v8, v22, v11

    .line 584
    if-ltz v8, :cond_12

    .line 586
    goto :goto_8

    .line 587
    :cond_11
    move-object/from16 v55, v11

    .line 589
    move-object/from16 v30, v12

    .line 591
    :goto_8
    if-ne v15, v6, :cond_14

    .line 593
    sub-long v2, v13, v2

    .line 595
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 597
    iget-wide v11, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 599
    cmp-long v2, v2, v11

    .line 601
    if-gez v2, :cond_14

    .line 603
    :cond_12
    move/from16 v45, v9

    .line 605
    :cond_13
    :goto_9
    const/4 v2, 0x1

    .line 606
    goto :goto_d

    .line 607
    :cond_14
    move/from16 v45, v9

    .line 609
    goto :goto_c

    .line 610
    :cond_15
    move-object/from16 v55, v11

    .line 612
    move-object/from16 v30, v12

    .line 614
    if-ne v10, v6, :cond_14

    .line 616
    if-ne v15, v8, :cond_16

    .line 618
    sub-long v11, v13, v2

    .line 620
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 622
    move/from16 v45, v9

    .line 624
    iget-wide v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 626
    cmp-long v8, v11, v8

    .line 628
    if-ltz v8, :cond_13

    .line 630
    goto :goto_a

    .line 631
    :cond_16
    move/from16 v45, v9

    .line 633
    :goto_a
    if-ne v15, v6, :cond_19

    .line 635
    sub-long v2, v13, v2

    .line 637
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 639
    iget-wide v8, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 641
    cmp-long v2, v2, v8

    .line 643
    if-gez v2, :cond_19

    .line 645
    goto :goto_9

    .line 646
    :cond_17
    move-object/from16 v29, v6

    .line 648
    :goto_b
    move/from16 v45, v9

    .line 650
    move-object/from16 v55, v11

    .line 652
    move-object/from16 v30, v12

    .line 654
    goto :goto_c

    .line 655
    :cond_18
    move-object/from16 v29, v6

    .line 657
    move/from16 v44, v8

    .line 659
    goto :goto_b

    .line 660
    :cond_19
    :goto_c
    const/4 v2, 0x0

    .line 661
    :goto_d
    if-eqz v2, :cond_1a

    .line 663
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 665
    add-long v0, v0, v18

    .line 667
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 669
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 671
    add-long v0, v0, v18

    .line 673
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 675
    return-void

    .line 676
    :cond_1a
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 678
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 683
    move-result-object v3

    .line 684
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 687
    move-result v2

    .line 688
    if-eqz v2, :cond_1b

    .line 690
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 692
    add-long v0, v0, v18

    .line 694
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 696
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 698
    add-long v0, v0, v18

    .line 700
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 702
    return-void

    .line 703
    :cond_1b
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 705
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 707
    move/from16 v3, v45

    .line 709
    invoke-interface {v2, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 712
    move-result-object v2

    .line 713
    const/4 v6, 0x2

    .line 714
    aget-wide v8, v2, v6

    .line 716
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 718
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 720
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 723
    move-result-object v11

    .line 724
    invoke-virtual {v6, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    move-result-object v6

    .line 728
    check-cast v6, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 730
    const/4 v11, 0x0

    .line 731
    aget-wide v22, v2, v11

    .line 733
    cmp-long v11, v22, v20

    .line 735
    if-nez v11, :cond_1c

    .line 737
    const/4 v11, 0x1

    .line 738
    aget-wide v22, v2, v11

    .line 740
    cmp-long v11, v22, v20

    .line 742
    if-nez v11, :cond_1c

    .line 744
    const/4 v11, 0x2

    .line 745
    aget-wide v22, v2, v11

    .line 747
    cmp-long v11, v22, v20

    .line 749
    if-nez v11, :cond_1c

    .line 751
    const/4 v11, 0x3

    .line 752
    aget-wide v22, v2, v11

    .line 754
    cmp-long v11, v22, v20

    .line 756
    if-nez v11, :cond_1c

    .line 758
    :goto_e
    const/4 v6, 0x1

    .line 759
    goto :goto_f

    .line 760
    :cond_1c
    sget-object v11, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 762
    if-ne v10, v11, :cond_1e

    .line 764
    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 766
    iget-wide v11, v11, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 768
    cmp-long v11, v11, v20

    .line 770
    if-lez v11, :cond_1d

    .line 772
    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 774
    iget-wide v11, v11, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 776
    cmp-long v8, v8, v11

    .line 778
    if-gez v8, :cond_1d

    .line 780
    goto :goto_e

    .line 781
    :cond_1d
    if-eqz v6, :cond_1e

    .line 783
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 785
    iget-wide v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 787
    cmp-long v8, v8, v20

    .line 789
    if-lez v8, :cond_1e

    .line 791
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRssAfterCompaction:[J

    .line 793
    const/4 v8, 0x1

    .line 794
    aget-wide v11, v2, v8

    .line 796
    aget-wide v22, v6, v8

    .line 798
    sub-long v11, v11, v22

    .line 800
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 803
    move-result-wide v8

    .line 804
    const/4 v11, 0x2

    .line 805
    aget-wide v22, v2, v11

    .line 807
    aget-wide v24, v6, v11

    .line 809
    sub-long v22, v22, v24

    .line 811
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    .line 814
    move-result-wide v11

    .line 815
    add-long/2addr v11, v8

    .line 816
    const/4 v8, 0x3

    .line 817
    aget-wide v22, v2, v8

    .line 819
    aget-wide v24, v6, v8

    .line 821
    sub-long v22, v22, v24

    .line 823
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    .line 826
    move-result-wide v8

    .line 827
    add-long/2addr v8, v11

    .line 828
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 830
    iget-wide v11, v6, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 832
    cmp-long v6, v8, v11

    .line 834
    if-gtz v6, :cond_1e

    .line 836
    goto :goto_e

    .line 837
    :cond_1e
    const/4 v6, 0x0

    .line 838
    :goto_f
    if-eqz v6, :cond_1f

    .line 840
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 842
    add-long v0, v0, v18

    .line 844
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 846
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 848
    add-long v0, v0, v18

    .line 850
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 852
    return-void

    .line 853
    :cond_1f
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 855
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    .line 857
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 860
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 863
    move-result v6

    .line 864
    if-eqz v6, :cond_20

    .line 866
    const-string/jumbo v0, "skip compaction for "

    .line 869
    const-string v1, "("

    .line 871
    const-string v2, ")"

    .line 873
    move-object/from16 v6, v55

    .line 875
    invoke-static {v3, v0, v6, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 878
    move-result-object v0

    .line 879
    const/4 v1, 0x1

    .line 880
    invoke-static {v0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 883
    return-void

    .line 884
    :cond_20
    move-object/from16 v6, v55

    .line 886
    goto :goto_10

    .line 887
    :cond_21
    move/from16 v31, v2

    .line 889
    move-object/from16 v29, v6

    .line 891
    move/from16 v44, v8

    .line 893
    move v3, v9

    .line 894
    move-object v6, v11

    .line 895
    move-object/from16 v30, v12

    .line 897
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 899
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 901
    invoke-interface {v2, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 904
    move-result-object v2

    .line 905
    :goto_10
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 907
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 910
    sget-object v9, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 912
    sget-object v11, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 914
    if-ne v10, v9, :cond_22

    .line 916
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    .line 919
    move-result-wide v22

    .line 920
    const-wide v24, 0x3fc999999999999aL    # 0.2

    .line 925
    cmpg-double v12, v22, v24

    .line 927
    if-gez v12, :cond_22

    .line 929
    move v12, v1

    .line 930
    move-object/from16 v45, v2

    .line 932
    iget-wide v1, v8, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionDowngrades:J

    .line 934
    add-long v1, v1, v18

    .line 936
    iput-wide v1, v8, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionDowngrades:J

    .line 938
    move-object v1, v11

    .line 939
    goto :goto_11

    .line 940
    :cond_22
    move v12, v1

    .line 941
    move-object/from16 v45, v2

    .line 943
    move-object v1, v10

    .line 944
    :goto_11
    if-ne v1, v11, :cond_23

    .line 946
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 948
    goto :goto_12

    .line 949
    :cond_23
    if-ne v1, v9, :cond_24

    .line 951
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 953
    :cond_24
    :goto_12
    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 955
    if-ne v1, v2, :cond_25

    .line 957
    return-void

    .line 958
    :cond_25
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 960
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 966
    move-result-object v4

    .line 967
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const-string v4, ": "

    .line 972
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v4, " lastOomAdjReason: "

    .line 980
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    move/from16 v4, v31

    .line 985
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 988
    const-string v8, " source: "

    .line 990
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 996
    move-result-object v8

    .line 997
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1003
    move-result-object v2

    .line 1004
    const-wide/16 v8, 0x40

    .line 1006
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1011
    move-object/from16 v8, v17

    .line 1013
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    const-string v8, "("

    .line 1021
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1027
    const-string v8, ")"

    .line 1029
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1035
    move-result-object v2

    .line 1036
    const/4 v8, 0x1

    .line 1037
    invoke-static {v2, v8}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1040
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    .line 1043
    move-result-wide v8

    .line 1044
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    .line 1047
    move-result-wide v22

    .line 1048
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1050
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 1052
    invoke-interface {v2, v1, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V

    .line 1055
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    .line 1058
    move-result-wide v24

    .line 1059
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1061
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 1063
    invoke-interface {v2, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 1066
    move-result-object v2

    .line 1067
    move-object/from16 v55, v10

    .line 1069
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1072
    move-result-wide v10

    .line 1073
    sub-long v13, v10, v13

    .line 1075
    sub-long v24, v24, v22

    .line 1077
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    .line 1080
    move-result-wide v46

    .line 1081
    const/4 v15, 0x0

    .line 1082
    aget-wide v22, v2, v15

    .line 1084
    aget-wide v26, v45, v15

    .line 1086
    sub-long v48, v22, v26

    .line 1088
    const/4 v15, 0x1

    .line 1089
    aget-wide v22, v2, v15

    .line 1091
    aget-wide v26, v45, v15

    .line 1093
    sub-long v50, v22, v26

    .line 1095
    const/4 v15, 0x2

    .line 1096
    aget-wide v22, v2, v15

    .line 1098
    aget-wide v26, v45, v15

    .line 1100
    move-wide/from16 v56, v10

    .line 1102
    sub-long v10, v22, v26

    .line 1104
    const/4 v15, 0x3

    .line 1105
    aget-wide v22, v2, v15

    .line 1107
    aget-wide v26, v45, v15

    .line 1109
    sub-long v52, v22, v26

    .line 1111
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1113
    move-wide/from16 v58, v13

    .line 1115
    move-object/from16 v13, v16

    .line 1117
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1120
    const/4 v13, 0x0

    .line 1121
    aget-wide v16, v2, v13

    .line 1123
    aget-wide v22, v45, v13

    .line 1125
    sub-long v13, v16, v22

    .line 1127
    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1130
    const-string v13, "KB"

    .line 1132
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    move-result-object v13

    .line 1139
    const/4 v14, 0x1

    .line 1140
    invoke-static {v13, v14}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1143
    move-object/from16 v13, p1

    .line 1145
    iget-object v15, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 1147
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 1150
    move-result v15

    .line 1151
    if-eq v15, v14, :cond_2a

    .line 1153
    const/4 v14, 0x3

    .line 1154
    if-eq v15, v14, :cond_26

    .line 1156
    const-string v0, "ActivityManager"

    .line 1158
    const-string v1, "Compaction: Unknown requested action"

    .line 1160
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1163
    const-wide/16 v1, 0x40

    .line 1165
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1168
    return-void

    .line 1169
    :catchall_3
    move-exception v0

    .line 1170
    const-wide/16 v1, 0x40

    .line 1172
    goto/16 :goto_1a

    .line 1174
    :catch_1
    move-exception v0

    .line 1175
    goto/16 :goto_18

    .line 1177
    :cond_26
    :try_start_7
    iget-wide v14, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1179
    add-long v14, v14, v18

    .line 1181
    iput-wide v14, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1183
    iget-wide v14, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1185
    add-long v14, v14, v18

    .line 1187
    iput-wide v14, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1189
    neg-long v14, v10

    .line 1190
    sub-long v16, v46, v8

    .line 1192
    sub-long v18, v14, v16

    .line 1194
    const-wide/32 v22, 0xf4240

    .line 1197
    div-long v31, v24, v22

    .line 1199
    const/16 v22, 0x2

    .line 1201
    aget-wide v60, v45, v22

    .line 1203
    cmp-long v22, v14, v20

    .line 1205
    if-lez v22, :cond_27

    .line 1207
    move-wide/from16 v62, v14

    .line 1209
    goto :goto_13

    .line 1210
    :cond_27
    move-wide/from16 v62, v20

    .line 1212
    :goto_13
    cmp-long v14, v16, v20

    .line 1214
    if-lez v14, :cond_28

    .line 1216
    move-wide/from16 v64, v16

    .line 1218
    goto :goto_14

    .line 1219
    :cond_28
    move-wide/from16 v64, v20

    .line 1221
    :goto_14
    cmp-long v14, v18, v20

    .line 1223
    if-lez v14, :cond_29

    .line 1225
    move-wide/from16 v66, v18

    .line 1227
    goto :goto_15

    .line 1228
    :cond_29
    move-wide/from16 v66, v20

    .line 1230
    :goto_15
    move-object/from16 v18, v7

    .line 1232
    move-wide/from16 v19, v62

    .line 1234
    move-wide/from16 v21, v64

    .line 1236
    move-wide/from16 v23, v66

    .line 1238
    move-wide/from16 v25, v60

    .line 1240
    move-wide/from16 v27, v31

    .line 1242
    invoke-virtual/range {v18 .. v28}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->addMemStats(JJJJJ)V

    .line 1245
    move-object/from16 v18, v5

    .line 1247
    move-wide/from16 v19, v62

    .line 1249
    move-wide/from16 v21, v64

    .line 1251
    move-wide/from16 v23, v66

    .line 1253
    move-wide/from16 v25, v60

    .line 1255
    move-wide/from16 v27, v31

    .line 1257
    invoke-virtual/range {v18 .. v28}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->addMemStats(JJJJJ)V

    .line 1260
    new-instance v5, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 1262
    move-object/from16 v7, v29

    .line 1264
    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1266
    move-object v15, v5

    .line 1267
    move-object/from16 v16, v2

    .line 1269
    move-object/from16 v17, v30

    .line 1271
    move-object/from16 v18, v6

    .line 1273
    move-wide/from16 v19, v62

    .line 1275
    move-wide/from16 v21, v64

    .line 1277
    move-wide/from16 v23, v66

    .line 1279
    move-wide/from16 v25, v60

    .line 1281
    move-wide/from16 v27, v31

    .line 1283
    move/from16 v29, v12

    .line 1285
    move/from16 v30, v40

    .line 1287
    move/from16 v31, v4

    .line 1289
    move/from16 v32, v7

    .line 1291
    invoke-direct/range {v15 .. v32}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;-><init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V

    .line 1294
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1296
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 1298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1301
    move-result-object v4

    .line 1302
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1307
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 1309
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1312
    move-result-object v4

    .line 1313
    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1318
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactionStatsHistory:Ljava/util/LinkedList;

    .line 1320
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1323
    if-nez v44, :cond_2b

    .line 1325
    invoke-virtual {v5}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->sendStat()V

    .line 1328
    goto :goto_16

    .line 1329
    :cond_2a
    iget-wide v14, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1331
    add-long v14, v14, v18

    .line 1333
    iput-wide v14, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1335
    iget-wide v4, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1337
    add-long v4, v4, v18

    .line 1339
    iput-wide v4, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1341
    :cond_2b
    :goto_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1344
    move-result-object v2

    .line 1345
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1348
    move-result-object v1

    .line 1349
    const/4 v3, 0x0

    .line 1350
    aget-wide v3, v45, v3

    .line 1352
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1355
    move-result-object v3

    .line 1356
    const/4 v4, 0x1

    .line 1357
    aget-wide v4, v45, v4

    .line 1359
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1362
    move-result-object v4

    .line 1363
    const/4 v5, 0x2

    .line 1364
    aget-wide v14, v45, v5

    .line 1366
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1369
    move-result-object v5

    .line 1370
    const/4 v7, 0x3

    .line 1371
    aget-wide v14, v45, v7

    .line 1373
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1376
    move-result-object v7

    .line 1377
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1380
    move-result-object v44

    .line 1381
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1384
    move-result-object v45

    .line 1385
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1388
    move-result-object v10

    .line 1389
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1392
    move-result-object v11

    .line 1393
    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1396
    move-result-object v48

    .line 1397
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1400
    move-result-object v49

    .line 1401
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1404
    move-result-object v50

    .line 1405
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1408
    move-result-object v51

    .line 1409
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1412
    move-result-object v52

    .line 1413
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1416
    move-result-object v53

    .line 1417
    sub-long v8, v8, v46

    .line 1419
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1422
    move-result-object v54

    .line 1423
    move-object/from16 v37, v2

    .line 1425
    move-object/from16 v38, v6

    .line 1427
    move-object/from16 v39, v1

    .line 1429
    move-object/from16 v40, v3

    .line 1431
    move-object/from16 v41, v4

    .line 1433
    move-object/from16 v42, v5

    .line 1435
    move-object/from16 v43, v7

    .line 1437
    move-object/from16 v46, v10

    .line 1439
    move-object/from16 v47, v11

    .line 1441
    filled-new-array/range {v37 .. v54}, [Ljava/lang/Object;

    .line 1444
    move-result-object v1

    .line 1445
    const/16 v2, 0x756f

    .line 1447
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1450
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1452
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 1454
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1457
    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1458
    move-wide/from16 v2, v56

    .line 1460
    :try_start_8
    iput-wide v2, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 1462
    move-object/from16 v0, v55

    .line 1464
    iput-object v0, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 1466
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1467
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1470
    const-wide/16 v1, 0x40

    .line 1472
    :goto_17
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1475
    goto :goto_19

    .line 1476
    :catchall_4
    move-exception v0

    .line 1477
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1478
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1481
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1482
    :goto_18
    :try_start_c
    const-string v1, "ActivityManager"

    .line 1484
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1486
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1489
    const-string v3, "Exception occurred while compacting pid: "

    .line 1491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    const-string v3, ". Exception:"

    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1505
    move-result-object v0

    .line 1506
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1512
    move-result-object v0

    .line 1513
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1516
    const-wide/16 v1, 0x40

    .line 1518
    goto :goto_17

    .line 1519
    :cond_2c
    :goto_19
    return-void

    .line 1520
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1523
    throw v0

    .line 1524
    :goto_1b
    :try_start_d
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1525
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1528
    throw v0
.end method
