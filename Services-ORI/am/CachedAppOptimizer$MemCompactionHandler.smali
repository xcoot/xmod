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

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 68

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "E|Compact d_rss="

    .line 6
    .line 7
    const-string v3, "B|Compact "

    .line 8
    .line 9
    const-string v4, "Compact "

    .line 10
    .line 11
    iget v5, v1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/16 v6, 0x756f

    .line 14
    .line 15
    const-wide/16 v7, 0x40

    .line 16
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

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    if-eq v5, v2, :cond_6

    .line 25
    .line 26
    const/16 v2, 0x6b

    .line 27
    .line 28
    if-eq v5, v2, :cond_0

    .line 29
    .line 30
    goto/16 :goto_19

    .line 31
    .line 32
    :cond_0
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-wide/16 v2, 0x7d0

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    .line 54
    .line 55
    goto/16 :goto_19

    .line 56
    .line 57
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Lcom/android/server/am/CachedAppOptimizer;->isProcessFrozen(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 66
    .line 67
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 68
    .line 69
    iget-object v3, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 70
    .line 71
    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_2

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
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

    .line 97
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

    .line 102
    .line 103
    const-string v3, "FCA:Reclamation for pid: "

    .line 104
    .line 105
    invoke-static {v1, v3, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 111
    .line 112
    invoke-interface {v2, v1}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    invoke-static {v1, v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 125
    .line 126
    iget-object v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 127
    .line 128
    invoke-interface {v7, v1}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    aget-wide v13, v7, v12

    .line 133
    .line 134
    aget-wide v15, v2, v12

    .line 135
    .line 136
    sub-long/2addr v13, v15

    .line 137
    aget-wide v15, v7, v11

    .line 138
    .line 139
    aget-wide v17, v2, v11

    .line 140
    .line 141
    sub-long v15, v15, v17

    .line 142
    .line 143
    aget-wide v17, v7, v10

    .line 144
    .line 145
    aget-wide v19, v2, v10

    .line 146
    .line 147
    sub-long v17, v17, v19

    .line 148
    .line 149
    aget-wide v19, v7, v9

    .line 150
    .line 151
    aget-wide v21, v2, v9

    .line 152
    .line 153
    sub-long v19, v19, v21

    .line 154
    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v21

    .line 159
    sub-long v21, v21, v3

    .line 160
    .line 161
    const-string v3, ""

    .line 162
    .line 163
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 164
    .line 165
    iget-object v4, v4, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 166
    .line 167
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 168
    .line 169
    .line 170
    monitor-enter v4

    .line 171
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 172
    .line 173
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    if-nez v5, :cond_4

    .line 182
    .line 183
    aget-wide v7, v7, v11

    .line 184
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

    .line 189
    .line 190
    :cond_5
    move-object/from16 v24, v3

    .line 191
    .line 192
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v23

    .line 200
    const-string v25, "FCA:"

    .line 201
    .line 202
    aget-wide v0, v2, v12

    .line 203
    .line 204
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v26

    .line 208
    aget-wide v0, v2, v11

    .line 209
    .line 210
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v27

    .line 214
    aget-wide v0, v2, v10

    .line 215
    .line 216
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object v28

    .line 220
    aget-wide v0, v2, v9

    .line 221
    .line 222
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 223
    .line 224
    .line 225
    move-result-object v29

    .line 226
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    .line 228
    .line 229
    move-result-object v30

    .line 230
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v31

    .line 234
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v32

    .line 238
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v33

    .line 242
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object v34

    .line 246
    const-string v35, ""

    .line 247
    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v36

    .line 252
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v37

    .line 256
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v38

    .line 260
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v39

    .line 264
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v40

    .line 268
    filled-new-array/range {v23 .. v40}, [Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 273
    .line 274
    .line 275
    goto/16 :goto_19

    .line 276
    .line 277
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :cond_6
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 283
    .line 284
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 289
    .line 290
    aget-object v1, v3, v1

    .line 291
    .line 292
    const-string v3, "ActivityManager"

    .line 293
    .line 294
    const-string v4, "Performing native compaction for pid="

    .line 295
    .line 296
    const-string v5, " type="

    .line 297
    .line 298
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    const-string/jumbo v3, "compactSystem"

    .line 317
    .line 318
    .line 319
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 323
    .line 324
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 325
    .line 326
    invoke-interface {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 327
    .line 328
    .line 329
    goto :goto_5

    .line 330
    :catch_0
    const-string v0, "ActivityManager"

    .line 331
    .line 332
    const-string v1, "Failed compacting native pid= "

    .line 333
    .line 334
    invoke-static {v2, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :goto_5
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_19

    .line 341
    .line 342
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 343
    .line 344
    .line 345
    move-result-wide v13

    .line 346
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 347
    .line 348
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 349
    .line 350
    iget-object v15, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 351
    .line 352
    iget-object v15, v15, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 353
    .line 354
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 355
    .line 356
    .line 357
    monitor-enter v15

    .line 358
    :try_start_4
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 359
    .line 360
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-eqz v6, :cond_8

    .line 367
    .line 368
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 369
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :catchall_2
    move-exception v0

    .line 374
    goto/16 :goto_1b

    .line 375
    .line 376
    :cond_8
    :try_start_5
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 377
    .line 378
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 385
    .line 386
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 387
    .line 388
    iget-boolean v8, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    .line 389
    .line 390
    iput-boolean v12, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    .line 391
    .line 392
    iget v9, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 393
    .line 394
    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 395
    .line 396
    iput-boolean v12, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 397
    .line 398
    iget-object v12, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 399
    .line 400
    iget-object v10, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 401
    .line 402
    move/from16 v40, v5

    .line 403
    .line 404
    iget-object v5, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 405
    .line 406
    if-nez v5, :cond_9

    .line 407
    .line 408
    sget-object v5, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 409
    .line 410
    iput-object v5, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 411
    .line 412
    :cond_9
    iget-object v5, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 413
    .line 414
    move-object/from16 v16, v2

    .line 415
    .line 416
    move-object/from16 v17, v3

    .line 417
    .line 418
    iget-wide v2, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 419
    .line 420
    move-wide/from16 v41, v2

    .line 421
    .line 422
    iget v2, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    .line 423
    .line 424
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 425
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 426
    .line 427
    .line 428
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 429
    .line 430
    iget-object v15, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 431
    .line 432
    move-object/from16 v43, v5

    .line 433
    .line 434
    iget-object v5, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 435
    .line 436
    invoke-virtual {v5, v15}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    check-cast v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 441
    .line 442
    if-nez v5, :cond_a

    .line 443
    .line 444
    new-instance v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 445
    .line 446
    invoke-direct {v5, v15}, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;-><init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V

    .line 447
    .line 448
    .line 449
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 450
    .line 451
    invoke-virtual {v3, v15, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    :cond_a
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    if-nez v11, :cond_b

    .line 460
    .line 461
    const-string v15, ""

    .line 462
    .line 463
    move-object/from16 p1, v7

    .line 464
    .line 465
    goto :goto_6

    .line 466
    :cond_b
    move-object/from16 p1, v7

    .line 467
    .line 468
    move-object v15, v11

    .line 469
    :goto_6
    iget-object v7, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 470
    .line 471
    invoke-virtual {v7, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    check-cast v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 476
    .line 477
    if-nez v7, :cond_c

    .line 478
    .line 479
    new-instance v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 480
    .line 481
    invoke-direct {v7, v15}, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 485
    .line 486
    invoke-virtual {v3, v15, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    :cond_c
    const-wide/16 v18, 0x1

    .line 490
    .line 491
    if-nez v9, :cond_d

    .line 492
    .line 493
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 494
    .line 495
    add-long v0, v0, v18

    .line 496
    .line 497
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 498
    .line 499
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 500
    .line 501
    add-long v0, v0, v18

    .line 502
    .line 503
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 504
    .line 505
    return-void

    .line 506
    :cond_d
    const-wide/16 v20, 0x0

    .line 507
    .line 508
    if-nez v8, :cond_21

    .line 509
    .line 510
    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 511
    .line 512
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 513
    .line 514
    const/16 v15, 0xc8

    .line 515
    .line 516
    if-gt v3, v15, :cond_e

    .line 517
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

    .line 522
    .line 523
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 524
    .line 525
    add-long v0, v0, v18

    .line 526
    .line 527
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 528
    .line 529
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 530
    .line 531
    add-long v0, v0, v18

    .line 532
    .line 533
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 534
    .line 535
    return-void

    .line 536
    :cond_f
    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 537
    .line 538
    iget-object v15, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 539
    .line 540
    if-nez v15, :cond_10

    .line 541
    .line 542
    sget-object v15, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 543
    .line 544
    iput-object v15, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 545
    .line 546
    :cond_10
    iget-object v15, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 547
    .line 548
    move/from16 v31, v2

    .line 549
    .line 550
    iget-wide v2, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 551
    .line 552
    cmp-long v22, v2, v20

    .line 553
    .line 554
    if-eqz v22, :cond_18

    .line 555
    .line 556
    move/from16 v44, v8

    .line 557
    .line 558
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 559
    .line 560
    if-ne v12, v8, :cond_17

    .line 561
    .line 562
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 563
    .line 564
    move-object/from16 v29, v6

    .line 565
    .line 566
    sget-object v6, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 567
    .line 568
    if-ne v10, v8, :cond_15

    .line 569
    .line 570
    if-ne v15, v8, :cond_11

    .line 571
    .line 572
    sub-long v22, v13, v2

    .line 573
    .line 574
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 575
    .line 576
    move-object/from16 v55, v11

    .line 577
    .line 578
    move-object/from16 v30, v12

    .line 579
    .line 580
    iget-wide v11, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 581
    .line 582
    cmp-long v8, v22, v11

    .line 583
    .line 584
    if-ltz v8, :cond_12

    .line 585
    .line 586
    goto :goto_8

    .line 587
    :cond_11
    move-object/from16 v55, v11

    .line 588
    .line 589
    move-object/from16 v30, v12

    .line 590
    .line 591
    :goto_8
    if-ne v15, v6, :cond_14

    .line 592
    .line 593
    sub-long v2, v13, v2

    .line 594
    .line 595
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 596
    .line 597
    iget-wide v11, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 598
    .line 599
    cmp-long v2, v2, v11

    .line 600
    .line 601
    if-gez v2, :cond_14

    .line 602
    .line 603
    :cond_12
    move/from16 v45, v9

    .line 604
    .line 605
    :cond_13
    :goto_9
    const/4 v2, 0x1

    .line 606
    goto :goto_d

    .line 607
    :cond_14
    move/from16 v45, v9

    .line 608
    .line 609
    goto :goto_c

    .line 610
    :cond_15
    move-object/from16 v55, v11

    .line 611
    .line 612
    move-object/from16 v30, v12

    .line 613
    .line 614
    if-ne v10, v6, :cond_14

    .line 615
    .line 616
    if-ne v15, v8, :cond_16

    .line 617
    .line 618
    sub-long v11, v13, v2

    .line 619
    .line 620
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 621
    .line 622
    move/from16 v45, v9

    .line 623
    .line 624
    iget-wide v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 625
    .line 626
    cmp-long v8, v11, v8

    .line 627
    .line 628
    if-ltz v8, :cond_13

    .line 629
    .line 630
    goto :goto_a

    .line 631
    :cond_16
    move/from16 v45, v9

    .line 632
    .line 633
    :goto_a
    if-ne v15, v6, :cond_19

    .line 634
    .line 635
    sub-long v2, v13, v2

    .line 636
    .line 637
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 638
    .line 639
    iget-wide v8, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 640
    .line 641
    cmp-long v2, v2, v8

    .line 642
    .line 643
    if-gez v2, :cond_19

    .line 644
    .line 645
    goto :goto_9

    .line 646
    :cond_17
    move-object/from16 v29, v6

    .line 647
    .line 648
    :goto_b
    move/from16 v45, v9

    .line 649
    .line 650
    move-object/from16 v55, v11

    .line 651
    .line 652
    move-object/from16 v30, v12

    .line 653
    .line 654
    goto :goto_c

    .line 655
    :cond_18
    move-object/from16 v29, v6

    .line 656
    .line 657
    move/from16 v44, v8

    .line 658
    .line 659
    goto :goto_b

    .line 660
    :cond_19
    :goto_c
    const/4 v2, 0x0

    .line 661
    :goto_d
    if-eqz v2, :cond_1a

    .line 662
    .line 663
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 664
    .line 665
    add-long v0, v0, v18

    .line 666
    .line 667
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 668
    .line 669
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 670
    .line 671
    add-long v0, v0, v18

    .line 672
    .line 673
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 674
    .line 675
    return-void

    .line 676
    :cond_1a
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 677
    .line 678
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 679
    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v2

    .line 688
    if-eqz v2, :cond_1b

    .line 689
    .line 690
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 691
    .line 692
    add-long v0, v0, v18

    .line 693
    .line 694
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 695
    .line 696
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 697
    .line 698
    add-long v0, v0, v18

    .line 699
    .line 700
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 701
    .line 702
    return-void

    .line 703
    :cond_1b
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 704
    .line 705
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 706
    .line 707
    move/from16 v3, v45

    .line 708
    .line 709
    invoke-interface {v2, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    const/4 v6, 0x2

    .line 714
    aget-wide v8, v2, v6

    .line 715
    .line 716
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 717
    .line 718
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 719
    .line 720
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 721
    .line 722
    .line 723
    move-result-object v11

    .line 724
    invoke-virtual {v6, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v6

    .line 728
    check-cast v6, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 729
    .line 730
    const/4 v11, 0x0

    .line 731
    aget-wide v22, v2, v11

    .line 732
    .line 733
    cmp-long v11, v22, v20

    .line 734
    .line 735
    if-nez v11, :cond_1c

    .line 736
    .line 737
    const/4 v11, 0x1

    .line 738
    aget-wide v22, v2, v11

    .line 739
    .line 740
    cmp-long v11, v22, v20

    .line 741
    .line 742
    if-nez v11, :cond_1c

    .line 743
    .line 744
    const/4 v11, 0x2

    .line 745
    aget-wide v22, v2, v11

    .line 746
    .line 747
    cmp-long v11, v22, v20

    .line 748
    .line 749
    if-nez v11, :cond_1c

    .line 750
    .line 751
    const/4 v11, 0x3

    .line 752
    aget-wide v22, v2, v11

    .line 753
    .line 754
    cmp-long v11, v22, v20

    .line 755
    .line 756
    if-nez v11, :cond_1c

    .line 757
    .line 758
    :goto_e
    const/4 v6, 0x1

    .line 759
    goto :goto_f

    .line 760
    :cond_1c
    sget-object v11, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 761
    .line 762
    if-ne v10, v11, :cond_1e

    .line 763
    .line 764
    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 765
    .line 766
    iget-wide v11, v11, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 767
    .line 768
    cmp-long v11, v11, v20

    .line 769
    .line 770
    if-lez v11, :cond_1d

    .line 771
    .line 772
    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 773
    .line 774
    iget-wide v11, v11, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 775
    .line 776
    cmp-long v8, v8, v11

    .line 777
    .line 778
    if-gez v8, :cond_1d

    .line 779
    .line 780
    goto :goto_e

    .line 781
    :cond_1d
    if-eqz v6, :cond_1e

    .line 782
    .line 783
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 784
    .line 785
    iget-wide v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 786
    .line 787
    cmp-long v8, v8, v20

    .line 788
    .line 789
    if-lez v8, :cond_1e

    .line 790
    .line 791
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRssAfterCompaction:[J

    .line 792
    .line 793
    const/4 v8, 0x1

    .line 794
    aget-wide v11, v2, v8

    .line 795
    .line 796
    aget-wide v22, v6, v8

    .line 797
    .line 798
    sub-long v11, v11, v22

    .line 799
    .line 800
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 801
    .line 802
    .line 803
    move-result-wide v8

    .line 804
    const/4 v11, 0x2

    .line 805
    aget-wide v22, v2, v11

    .line 806
    .line 807
    aget-wide v24, v6, v11

    .line 808
    .line 809
    sub-long v22, v22, v24

    .line 810
    .line 811
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    .line 812
    .line 813
    .line 814
    move-result-wide v11

    .line 815
    add-long/2addr v11, v8

    .line 816
    const/4 v8, 0x3

    .line 817
    aget-wide v22, v2, v8

    .line 818
    .line 819
    aget-wide v24, v6, v8

    .line 820
    .line 821
    sub-long v22, v22, v24

    .line 822
    .line 823
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    .line 824
    .line 825
    .line 826
    move-result-wide v8

    .line 827
    add-long/2addr v8, v11

    .line 828
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 829
    .line 830
    iget-wide v11, v6, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 831
    .line 832
    cmp-long v6, v8, v11

    .line 833
    .line 834
    if-gtz v6, :cond_1e

    .line 835
    .line 836
    goto :goto_e

    .line 837
    :cond_1e
    const/4 v6, 0x0

    .line 838
    :goto_f
    if-eqz v6, :cond_1f

    .line 839
    .line 840
    iget-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 841
    .line 842
    add-long v0, v0, v18

    .line 843
    .line 844
    iput-wide v0, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 845
    .line 846
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 847
    .line 848
    add-long v0, v0, v18

    .line 849
    .line 850
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 851
    .line 852
    return-void

    .line 853
    :cond_1f
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 854
    .line 855
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    .line 856
    .line 857
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 858
    .line 859
    .line 860
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 861
    .line 862
    .line 863
    move-result v6

    .line 864
    if-eqz v6, :cond_20

    .line 865
    .line 866
    const-string/jumbo v0, "skip compaction for "

    .line 867
    .line 868
    .line 869
    const-string v1, "("

    .line 870
    .line 871
    const-string v2, ")"

    .line 872
    .line 873
    move-object/from16 v6, v55

    .line 874
    .line 875
    invoke-static {v3, v0, v6, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    const/4 v1, 0x1

    .line 880
    invoke-static {v0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 881
    .line 882
    .line 883
    return-void

    .line 884
    :cond_20
    move-object/from16 v6, v55

    .line 885
    .line 886
    goto :goto_10

    .line 887
    :cond_21
    move/from16 v31, v2

    .line 888
    .line 889
    move-object/from16 v29, v6

    .line 890
    .line 891
    move/from16 v44, v8

    .line 892
    .line 893
    move v3, v9

    .line 894
    move-object v6, v11

    .line 895
    move-object/from16 v30, v12

    .line 896
    .line 897
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 898
    .line 899
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 900
    .line 901
    invoke-interface {v2, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    :goto_10
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 906
    .line 907
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 908
    .line 909
    .line 910
    sget-object v9, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 911
    .line 912
    sget-object v11, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 913
    .line 914
    if-ne v10, v9, :cond_22

    .line 915
    .line 916
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    .line 917
    .line 918
    .line 919
    move-result-wide v22

    .line 920
    const-wide v24, 0x3fc999999999999aL    # 0.2

    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    cmpg-double v12, v22, v24

    .line 926
    .line 927
    if-gez v12, :cond_22

    .line 928
    .line 929
    move v12, v1

    .line 930
    move-object/from16 v45, v2

    .line 931
    .line 932
    iget-wide v1, v8, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionDowngrades:J

    .line 933
    .line 934
    add-long v1, v1, v18

    .line 935
    .line 936
    iput-wide v1, v8, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionDowngrades:J

    .line 937
    .line 938
    move-object v1, v11

    .line 939
    goto :goto_11

    .line 940
    :cond_22
    move v12, v1

    .line 941
    move-object/from16 v45, v2

    .line 942
    .line 943
    move-object v1, v10

    .line 944
    :goto_11
    if-ne v1, v11, :cond_23

    .line 945
    .line 946
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 947
    .line 948
    goto :goto_12

    .line 949
    :cond_23
    if-ne v1, v9, :cond_24

    .line 950
    .line 951
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 952
    .line 953
    :cond_24
    :goto_12
    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 954
    .line 955
    if-ne v1, v2, :cond_25

    .line 956
    .line 957
    return-void

    .line 958
    :cond_25
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 959
    .line 960
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v4

    .line 967
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    const-string v4, ": "

    .line 971
    .line 972
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    const-string v4, " lastOomAdjReason: "

    .line 979
    .line 980
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    move/from16 v4, v31

    .line 984
    .line 985
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    const-string v8, " source: "

    .line 989
    .line 990
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v8

    .line 997
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    const-wide/16 v8, 0x40

    .line 1005
    .line 1006
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    move-object/from16 v8, v17

    .line 1012
    .line 1013
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    const-string v8, "("

    .line 1020
    .line 1021
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    const-string v8, ")"

    .line 1028
    .line 1029
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v2

    .line 1036
    const/4 v8, 0x1

    .line 1037
    invoke-static {v2, v8}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1038
    .line 1039
    .line 1040
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    .line 1041
    .line 1042
    .line 1043
    move-result-wide v8

    .line 1044
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    .line 1045
    .line 1046
    .line 1047
    move-result-wide v22

    .line 1048
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1049
    .line 1050
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 1051
    .line 1052
    invoke-interface {v2, v1, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V

    .line 1053
    .line 1054
    .line 1055
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    .line 1056
    .line 1057
    .line 1058
    move-result-wide v24

    .line 1059
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1060
    .line 1061
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 1062
    .line 1063
    invoke-interface {v2, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 1064
    .line 1065
    .line 1066
    move-result-object v2

    .line 1067
    move-object/from16 v55, v10

    .line 1068
    .line 1069
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1070
    .line 1071
    .line 1072
    move-result-wide v10

    .line 1073
    sub-long v13, v10, v13

    .line 1074
    .line 1075
    sub-long v24, v24, v22

    .line 1076
    .line 1077
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    .line 1078
    .line 1079
    .line 1080
    move-result-wide v46

    .line 1081
    const/4 v15, 0x0

    .line 1082
    aget-wide v22, v2, v15

    .line 1083
    .line 1084
    aget-wide v26, v45, v15

    .line 1085
    .line 1086
    sub-long v48, v22, v26

    .line 1087
    .line 1088
    const/4 v15, 0x1

    .line 1089
    aget-wide v22, v2, v15

    .line 1090
    .line 1091
    aget-wide v26, v45, v15

    .line 1092
    .line 1093
    sub-long v50, v22, v26

    .line 1094
    .line 1095
    const/4 v15, 0x2

    .line 1096
    aget-wide v22, v2, v15

    .line 1097
    .line 1098
    aget-wide v26, v45, v15

    .line 1099
    .line 1100
    move-wide/from16 v56, v10

    .line 1101
    .line 1102
    sub-long v10, v22, v26

    .line 1103
    .line 1104
    const/4 v15, 0x3

    .line 1105
    aget-wide v22, v2, v15

    .line 1106
    .line 1107
    aget-wide v26, v45, v15

    .line 1108
    .line 1109
    sub-long v52, v22, v26

    .line 1110
    .line 1111
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    move-wide/from16 v58, v13

    .line 1114
    .line 1115
    move-object/from16 v13, v16

    .line 1116
    .line 1117
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    const/4 v13, 0x0

    .line 1121
    aget-wide v16, v2, v13

    .line 1122
    .line 1123
    aget-wide v22, v45, v13

    .line 1124
    .line 1125
    sub-long v13, v16, v22

    .line 1126
    .line 1127
    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    .line 1130
    const-string v13, "KB"

    .line 1131
    .line 1132
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v13

    .line 1139
    const/4 v14, 0x1

    .line 1140
    invoke-static {v13, v14}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1141
    .line 1142
    .line 1143
    move-object/from16 v13, p1

    .line 1144
    .line 1145
    iget-object v15, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 1146
    .line 1147
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 1148
    .line 1149
    .line 1150
    move-result v15

    .line 1151
    if-eq v15, v14, :cond_2a

    .line 1152
    .line 1153
    const/4 v14, 0x3

    .line 1154
    if-eq v15, v14, :cond_26

    .line 1155
    .line 1156
    const-string v0, "ActivityManager"

    .line 1157
    .line 1158
    const-string v1, "Compaction: Unknown requested action"

    .line 1159
    .line 1160
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1161
    .line 1162
    .line 1163
    const-wide/16 v1, 0x40

    .line 1164
    .line 1165
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1166
    .line 1167
    .line 1168
    return-void

    .line 1169
    :catchall_3
    move-exception v0

    .line 1170
    const-wide/16 v1, 0x40

    .line 1171
    .line 1172
    goto/16 :goto_1a

    .line 1173
    .line 1174
    :catch_1
    move-exception v0

    .line 1175
    goto/16 :goto_18

    .line 1176
    .line 1177
    :cond_26
    :try_start_7
    iget-wide v14, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1178
    .line 1179
    add-long v14, v14, v18

    .line 1180
    .line 1181
    iput-wide v14, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1182
    .line 1183
    iget-wide v14, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1184
    .line 1185
    add-long v14, v14, v18

    .line 1186
    .line 1187
    iput-wide v14, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1188
    .line 1189
    neg-long v14, v10

    .line 1190
    sub-long v16, v46, v8

    .line 1191
    .line 1192
    sub-long v18, v14, v16

    .line 1193
    .line 1194
    const-wide/32 v22, 0xf4240

    .line 1195
    .line 1196
    .line 1197
    div-long v31, v24, v22

    .line 1198
    .line 1199
    const/16 v22, 0x2

    .line 1200
    .line 1201
    aget-wide v60, v45, v22

    .line 1202
    .line 1203
    cmp-long v22, v14, v20

    .line 1204
    .line 1205
    if-lez v22, :cond_27

    .line 1206
    .line 1207
    move-wide/from16 v62, v14

    .line 1208
    .line 1209
    goto :goto_13

    .line 1210
    :cond_27
    move-wide/from16 v62, v20

    .line 1211
    .line 1212
    :goto_13
    cmp-long v14, v16, v20

    .line 1213
    .line 1214
    if-lez v14, :cond_28

    .line 1215
    .line 1216
    move-wide/from16 v64, v16

    .line 1217
    .line 1218
    goto :goto_14

    .line 1219
    :cond_28
    move-wide/from16 v64, v20

    .line 1220
    .line 1221
    :goto_14
    cmp-long v14, v18, v20

    .line 1222
    .line 1223
    if-lez v14, :cond_29

    .line 1224
    .line 1225
    move-wide/from16 v66, v18

    .line 1226
    .line 1227
    goto :goto_15

    .line 1228
    :cond_29
    move-wide/from16 v66, v20

    .line 1229
    .line 1230
    :goto_15
    move-object/from16 v18, v7

    .line 1231
    .line 1232
    move-wide/from16 v19, v62

    .line 1233
    .line 1234
    move-wide/from16 v21, v64

    .line 1235
    .line 1236
    move-wide/from16 v23, v66

    .line 1237
    .line 1238
    move-wide/from16 v25, v60

    .line 1239
    .line 1240
    move-wide/from16 v27, v31

    .line 1241
    .line 1242
    invoke-virtual/range {v18 .. v28}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->addMemStats(JJJJJ)V

    .line 1243
    .line 1244
    .line 1245
    move-object/from16 v18, v5

    .line 1246
    .line 1247
    move-wide/from16 v19, v62

    .line 1248
    .line 1249
    move-wide/from16 v21, v64

    .line 1250
    .line 1251
    move-wide/from16 v23, v66

    .line 1252
    .line 1253
    move-wide/from16 v25, v60

    .line 1254
    .line 1255
    move-wide/from16 v27, v31

    .line 1256
    .line 1257
    invoke-virtual/range {v18 .. v28}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->addMemStats(JJJJJ)V

    .line 1258
    .line 1259
    .line 1260
    new-instance v5, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 1261
    .line 1262
    move-object/from16 v7, v29

    .line 1263
    .line 1264
    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1265
    .line 1266
    move-object v15, v5

    .line 1267
    move-object/from16 v16, v2

    .line 1268
    .line 1269
    move-object/from16 v17, v30

    .line 1270
    .line 1271
    move-object/from16 v18, v6

    .line 1272
    .line 1273
    move-wide/from16 v19, v62

    .line 1274
    .line 1275
    move-wide/from16 v21, v64

    .line 1276
    .line 1277
    move-wide/from16 v23, v66

    .line 1278
    .line 1279
    move-wide/from16 v25, v60

    .line 1280
    .line 1281
    move-wide/from16 v27, v31

    .line 1282
    .line 1283
    move/from16 v29, v12

    .line 1284
    .line 1285
    move/from16 v30, v40

    .line 1286
    .line 1287
    move/from16 v31, v4

    .line 1288
    .line 1289
    move/from16 v32, v7

    .line 1290
    .line 1291
    invoke-direct/range {v15 .. v32}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;-><init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V

    .line 1292
    .line 1293
    .line 1294
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1295
    .line 1296
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 1297
    .line 1298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v4

    .line 1302
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1306
    .line 1307
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 1308
    .line 1309
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v4

    .line 1313
    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1317
    .line 1318
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactionStatsHistory:Ljava/util/LinkedList;

    .line 1319
    .line 1320
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1321
    .line 1322
    .line 1323
    if-nez v44, :cond_2b

    .line 1324
    .line 1325
    invoke-virtual {v5}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->sendStat()V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_16

    .line 1329
    :cond_2a
    iget-wide v14, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1330
    .line 1331
    add-long v14, v14, v18

    .line 1332
    .line 1333
    iput-wide v14, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1334
    .line 1335
    iget-wide v4, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1336
    .line 1337
    add-long v4, v4, v18

    .line 1338
    .line 1339
    iput-wide v4, v7, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1340
    .line 1341
    :cond_2b
    :goto_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v2

    .line 1345
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v1

    .line 1349
    const/4 v3, 0x0

    .line 1350
    aget-wide v3, v45, v3

    .line 1351
    .line 1352
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v3

    .line 1356
    const/4 v4, 0x1

    .line 1357
    aget-wide v4, v45, v4

    .line 1358
    .line 1359
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v4

    .line 1363
    const/4 v5, 0x2

    .line 1364
    aget-wide v14, v45, v5

    .line 1365
    .line 1366
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v5

    .line 1370
    const/4 v7, 0x3

    .line 1371
    aget-wide v14, v45, v7

    .line 1372
    .line 1373
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v7

    .line 1377
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v44

    .line 1381
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v45

    .line 1385
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v10

    .line 1389
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v11

    .line 1393
    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v48

    .line 1397
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v49

    .line 1401
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v50

    .line 1405
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v51

    .line 1409
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v52

    .line 1413
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v53

    .line 1417
    sub-long v8, v8, v46

    .line 1418
    .line 1419
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v54

    .line 1423
    move-object/from16 v37, v2

    .line 1424
    .line 1425
    move-object/from16 v38, v6

    .line 1426
    .line 1427
    move-object/from16 v39, v1

    .line 1428
    .line 1429
    move-object/from16 v40, v3

    .line 1430
    .line 1431
    move-object/from16 v41, v4

    .line 1432
    .line 1433
    move-object/from16 v42, v5

    .line 1434
    .line 1435
    move-object/from16 v43, v7

    .line 1436
    .line 1437
    move-object/from16 v46, v10

    .line 1438
    .line 1439
    move-object/from16 v47, v11

    .line 1440
    .line 1441
    filled-new-array/range {v37 .. v54}, [Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v1

    .line 1445
    const/16 v2, 0x756f

    .line 1446
    .line 1447
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1448
    .line 1449
    .line 1450
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1451
    .line 1452
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 1453
    .line 1454
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1455
    .line 1456
    .line 1457
    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1458
    move-wide/from16 v2, v56

    .line 1459
    .line 1460
    :try_start_8
    iput-wide v2, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 1461
    .line 1462
    move-object/from16 v0, v55

    .line 1463
    .line 1464
    iput-object v0, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 1465
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

    .line 1468
    .line 1469
    .line 1470
    const-wide/16 v1, 0x40

    .line 1471
    .line 1472
    :goto_17
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1473
    .line 1474
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

    .line 1479
    .line 1480
    .line 1481
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1482
    :goto_18
    :try_start_c
    const-string v1, "ActivityManager"

    .line 1483
    .line 1484
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1485
    .line 1486
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1487
    .line 1488
    .line 1489
    const-string v3, "Exception occurred while compacting pid: "

    .line 1490
    .line 1491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    .line 1496
    .line 1497
    const-string v3, ". Exception:"

    .line 1498
    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v0

    .line 1506
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v0

    .line 1513
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1514
    .line 1515
    .line 1516
    const-wide/16 v1, 0x40

    .line 1517
    .line 1518
    goto :goto_17

    .line 1519
    :cond_2c
    :goto_19
    return-void

    .line 1520
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1521
    .line 1522
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

    .line 1526
    .line 1527
    .line 1528
    throw v0
.end method
