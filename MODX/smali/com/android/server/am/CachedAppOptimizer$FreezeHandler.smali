.class public final Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

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
.method public final freezeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 14

    .line 1
    const-string v0, "Unable to freeze "

    .line 3
    const-string v1, "Unable to freeze binder for "

    .line 5
    const-string/jumbo v2, "freezing "

    .line 8
    const-string v3, "Skipping freeze for process "

    .line 10
    iget-object v12, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 12
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 14
    iget-object v5, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 16
    iget-object v5, v5, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 21
    monitor-enter v5

    .line 22
    :try_start_0
    iget-boolean v6, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 24
    if-nez v6, :cond_0

    .line 26
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_2

    .line 34
    :cond_0
    const/4 v6, 0x0

    .line 35
    :try_start_1
    iput-boolean v6, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 37
    iget v13, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 39
    iget-object v7, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 41
    iget-boolean v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    .line 43
    const/4 v8, 0x1

    .line 44
    if-eqz v7, :cond_1

    .line 46
    iput-boolean v8, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    .line 48
    const-string p0, "ActivityManager"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, " "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " curAdj = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 73
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string p1, "(override)"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 94
    return-void

    .line 95
    :cond_1
    :try_start_2
    iget-boolean v3, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 97
    if-eqz v3, :cond_2

    .line 99
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 103
    return-void

    .line 104
    :cond_2
    if-eqz v13, :cond_9

    .line 106
    :try_start_3
    iget-boolean v3, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 108
    if-eqz v3, :cond_3

    .line 110
    goto/16 :goto_1

    .line 112
    :cond_3
    const-string v3, "ActivityManager"

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, " "

    .line 124
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :try_start_4
    invoke-static {v13, v8, v6}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZI)I

    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_4

    .line 143
    const-string/jumbo v2, "outstanding txns"

    .line 146
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->handleBinderFreezerFailure(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 153
    return-void

    .line 154
    :catch_0
    :try_start_6
    const-string v2, "ActivityManager"

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, " "

    .line 166
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 181
    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 183
    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;

    .line 185
    const/4 v3, 0x0

    .line 186
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;I)V

    .line 189
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    :cond_4
    iget-wide v1, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 194
    :try_start_7
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 196
    const/4 v7, -0x1

    .line 197
    invoke-static {v13, v7, v3}, Lcom/android/server/am/CachedAppOptimizer;->traceAppFreeze(IILjava/lang/String;)V

    .line 200
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 202
    invoke-static {v13, v3, v8}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 208
    move-result-wide v9

    .line 209
    iput-wide v9, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 211
    iput-boolean v8, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 213
    iput-boolean v6, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 215
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 217
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 219
    invoke-virtual {v3, v13, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 222
    goto :goto_0

    .line 223
    :catch_1
    :try_start_8
    const-string v3, "ActivityManager"

    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, " "

    .line 235
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    iget-wide v6, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 250
    sub-long v0, v6, v1

    .line 252
    iget-boolean v2, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 254
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 256
    if-eqz v2, :cond_5

    .line 258
    if-eqz v3, :cond_5

    .line 260
    const/4 v4, 0x0

    .line 261
    invoke-virtual {v3, v4}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z

    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_5

    .line 267
    iput-boolean v8, v3, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    .line 269
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 271
    iget v3, v3, Lcom/android/server/am/UidRecord;->mUid:I

    .line 273
    invoke-virtual {v4, v3, v8}, Lcom/android/server/am/CachedAppOptimizer;->postUidFrozenMessage(IZ)V

    .line 276
    :cond_5
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 277
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 280
    if-nez v2, :cond_6

    .line 282
    return-void

    .line 283
    :cond_6
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    move-result-object v2

    .line 287
    filled-new-array {v2, v12}, [Ljava/lang/Object;

    .line 290
    move-result-object v2

    .line 291
    const/16 v3, 0x7574

    .line 293
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 296
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 298
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    .line 300
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    .line 303
    move-result v2

    .line 304
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 306
    iget v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 308
    cmpg-float v2, v2, v3

    .line 310
    if-gez v2, :cond_7

    .line 312
    const/16 v4, 0xfe

    .line 314
    const/4 v5, 0x1

    .line 315
    const/4 v10, 0x0

    .line 316
    const/4 v11, 0x0

    .line 317
    move v6, v13

    .line 318
    move-object v7, v12

    .line 319
    move-wide v8, v0

    .line 320
    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;JII)V

    .line 323
    :cond_7
    :try_start_9
    invoke-static {v13}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetBinderFreezeInfo(I)I

    .line 326
    move-result v0

    .line 327
    and-int/lit8 v0, v0, 0x4

    .line 329
    if-eqz v0, :cond_8

    .line 331
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 333
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 335
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 338
    monitor-enter v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 339
    :try_start_a
    const-string/jumbo v1, "new pending txns"

    .line 342
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->handleBinderFreezerFailure(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 345
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 346
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 349
    return-void

    .line 350
    :catchall_1
    move-exception v1

    .line 351
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 352
    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 355
    throw v1
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    .line 356
    :catch_2
    const-string v0, "ActivityManager"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    .line 360
    const-string v2, "Unable to freeze binder for "

    .line 362
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    const-string v2, " "

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object v1

    .line 380
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 385
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 387
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;

    .line 389
    const/4 v2, 0x1

    .line 390
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;I)V

    .line 393
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    :cond_8
    return-void

    .line 397
    :cond_9
    :goto_1
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 398
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 401
    return-void

    .line 402
    :goto_2
    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 403
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 406
    throw p0
.end method

.method public final handleBinderFreezerFailure(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x12

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 12
    invoke-virtual {p2, v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V

    .line 15
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 17
    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 19
    invoke-static {p1, v2, v3}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 29
    iget-wide v3, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    .line 31
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 33
    iget-wide v5, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    .line 35
    cmp-long v0, v3, v5

    .line 37
    const-string v3, " "

    .line 39
    const-string v4, "ActivityManager"

    .line 41
    if-gtz v0, :cond_1

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "Kill app due to repeated failure to freeze binder: "

    .line 47
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 60
    invoke-static {p2, v0, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 65
    iget-object p2, p2, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 67
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 69
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;

    .line 71
    const/4 v1, 0x2

    .line 72
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;I)V

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void

    .line 79
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 81
    iget-wide v5, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    .line 83
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 85
    iget-wide v7, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    .line 87
    div-long/2addr v5, v7

    .line 88
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 90
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    .line 92
    iget v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    .line 94
    mul-int/lit8 v0, v0, 0x2

    .line 96
    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    .line 99
    move-result v0

    .line 100
    iget-object v7, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 102
    iget v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    .line 104
    sub-int/2addr v0, v7

    .line 105
    int-to-long v7, v0

    .line 106
    add-long/2addr v5, v7

    .line 107
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 109
    iget-wide v7, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    .line 111
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 114
    move-result-wide v5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    const-string v7, "Reschedule freeze for process "

    .line 119
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 124
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 132
    const-string v7, " ("

    .line 134
    const-string v8, "), timeout="

    .line 136
    invoke-static {v0, v3, v7, p2, v8}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    const-string v3, "Reschedule freeze "

    .line 153
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v3, ":"

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v3, " timeout="

    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    const-string v3, ", reason="

    .line 181
    invoke-static {v0, v3, p2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object p2

    .line 185
    const-wide/16 v3, 0x40

    .line 187
    const-string v0, "Freezer"

    .line 189
    invoke-static {v3, v4, v0, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 194
    invoke-virtual {p2, v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 199
    invoke-virtual {p0, v5, v6, p1, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    .line 202
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x7

    .line 6
    if-eq v1, v2, :cond_8

    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq v1, v2, :cond_7

    .line 11
    const/4 v2, 0x6

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v1, v2, :cond_3

    .line 15
    if-eq v1, v3, :cond_2

    .line 17
    const/16 p1, 0x8

    .line 19
    if-eq v1, p1, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Landroid/util/IntArray;

    .line 24
    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 29
    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 37
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 42
    move-result v2

    .line 43
    :goto_0
    if-ge v4, v2, :cond_1

    .line 45
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 47
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 52
    move-result v3

    .line 53
    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    .line 56
    add-int/2addr v4, v0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 64
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 66
    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mbinderErrorInternal(Lcom/android/server/am/CachedAppOptimizer;Landroid/util/IntArray;)V

    .line 69
    goto/16 :goto_7

    .line 71
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 75
    throw p0

    .line 76
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 78
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    .line 80
    invoke-virtual {p1, p0}, Lcom/android/internal/os/ProcLocksReader;->handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    goto/16 :goto_7

    .line 85
    :catch_0
    const-string p0, "ActivityManager"

    .line 87
    const-string p1, "Unable to check file locks"

    .line 89
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto/16 :goto_7

    .line 94
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 96
    if-ne v1, v0, :cond_4

    .line 98
    move v1, v0

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    move v1, v4

    .line 101
    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    check-cast p1, Ljava/lang/Integer;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 108
    move-result p1

    .line 109
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 111
    sget-object v2, Lcom/android/server/am/CachedAppOptimizer;->KEY_USE_COMPACTION:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    filled-new-array {p1}, [I

    .line 119
    move-result-object p1

    .line 120
    if-eqz v1, :cond_5

    .line 122
    move v1, v0

    .line 123
    goto :goto_3

    .line 124
    :cond_5
    const/4 v1, 0x2

    .line 125
    :goto_3
    filled-new-array {v1}, [I

    .line 128
    move-result-object v1

    .line 129
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 131
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mUidFrozenStateChangedCallbackList:Landroid/os/RemoteCallbackList;

    .line 133
    monitor-enter v2

    .line 134
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mUidFrozenStateChangedCallbackList:Landroid/os/RemoteCallbackList;

    .line 136
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 139
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    :goto_4
    if-ge v4, v3, :cond_6

    .line 142
    :try_start_4
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService;->mUidFrozenStateChangedCallbackList:Landroid/os/RemoteCallbackList;

    .line 144
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Landroid/app/IUidFrozenStateChangedCallback;

    .line 150
    invoke-interface {v5, p1, v1}, Landroid/app/IUidFrozenStateChangedCallback;->onUidFrozenStateChanged([I[I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    goto :goto_5

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    goto :goto_6

    .line 156
    :catch_1
    :goto_5
    add-int/2addr v4, v0

    .line 157
    goto :goto_4

    .line 158
    :cond_6
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidFrozenStateChangedCallbackList:Landroid/os/RemoteCallbackList;

    .line 160
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 163
    monitor-exit v2

    .line 164
    goto :goto_7

    .line 165
    :goto_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    throw p0

    .line 167
    :cond_7
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 169
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 171
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    check-cast p1, Landroid/util/Pair;

    .line 175
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 177
    move-object v4, v0

    .line 178
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 180
    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 182
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 184
    check-cast p1, Ljava/lang/Integer;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 189
    move-result v8

    .line 190
    move-object v3, p0

    .line 191
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->reportUnfreeze(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;I)V

    .line 194
    goto :goto_7

    .line 195
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 199
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 201
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 203
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 206
    monitor-enter v0

    .line 207
    :try_start_6
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 209
    iget-boolean v1, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 211
    if-nez v1, :cond_9

    .line 213
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 214
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 217
    return-void

    .line 218
    :catchall_2
    move-exception p0

    .line 219
    goto :goto_8

    .line 220
    :cond_9
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->freezeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 223
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 224
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 227
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 229
    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 231
    if-eqz v0, :cond_a

    .line 233
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 235
    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->onProcessFrozen(Lcom/android/server/am/ProcessRecord;)V

    .line 238
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    const-wide/16 v0, 0x3e8

    .line 243
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 246
    goto :goto_7

    .line 247
    :cond_a
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 254
    iget-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 256
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 259
    monitor-enter p1

    .line 260
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->scheduleServiceTimeoutIfNeededLocked()V

    .line 263
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 264
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 267
    :goto_7
    return-void

    .line 268
    :catchall_3
    move-exception p0

    .line 269
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 270
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 273
    throw p0

    .line 274
    :goto_8
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 275
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 278
    throw p0
.end method

.method public final onBlockingFileLock(Landroid/util/IntArray;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 11
    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 16
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 24
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 32
    if-eqz v3, :cond_1

    .line 34
    const/4 v4, 0x1

    .line 35
    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 38
    move-result v5

    .line 39
    if-ge v4, v5, :cond_1

    .line 41
    invoke-virtual {p1, v4}, Landroid/util/IntArray;->get(I)I

    .line 44
    move-result v5

    .line 45
    iget-object v6, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 47
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 49
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 51
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    iget-object v7, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 54
    iget-object v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 56
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 58
    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 61
    move-result-object v7

    .line 62
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    if-eqz v7, :cond_0

    .line 65
    :try_start_3
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 67
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 69
    const/16 v8, 0x352

    .line 71
    if-ge v6, v8, :cond_0

    .line 73
    const-string p1, "ActivityManager"

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 82
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v6, " ("

    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v2, ") blocks "

    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v2, " ("

    .line 105
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v2, ")"

    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 125
    const/16 p1, 0x10

    .line 127
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    goto :goto_1

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    goto :goto_2

    .line 133
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 135
    goto :goto_0

    .line 136
    :catchall_1
    move-exception p0

    .line 137
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    :try_start_5
    throw p0

    .line 139
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 143
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 144
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 147
    return-void

    .line 148
    :catchall_2
    move-exception p0

    .line 149
    goto :goto_3

    .line 150
    :goto_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 151
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 154
    throw p0

    .line 155
    :goto_3
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 156
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 159
    throw p0
.end method

.method public final reportUnfreeze(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;I)V
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    filled-new-array {v0, p4, v1}, [Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x7575

    .line 15
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 18
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 20
    iget-object v1, v0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 22
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 24
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 29
    if-eqz v2, :cond_0

    .line 31
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 33
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 38
    move-result-wide v3

    .line 39
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object v5, v0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->onProcessUnfrozen(JLandroid/util/ArrayMap;)V

    .line 45
    monitor-exit v0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    throw p0

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 55
    iget-object v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 60
    monitor-enter v0

    .line 61
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->scheduleServiceTimeoutIfNeededLocked()V

    .line 64
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 70
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    .line 72
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 75
    move-result p1

    .line 76
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 78
    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 80
    cmpg-float p0, p1, p0

    .line 82
    if-gez p0, :cond_1

    .line 84
    int-to-long v4, p3

    .line 85
    const/16 v0, 0xfe

    .line 87
    const/4 v1, 0x2

    .line 88
    const/4 v6, 0x0

    .line 89
    move v2, p2

    .line 90
    move-object v3, p4

    .line 91
    move v7, p5

    .line 92
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;JII)V

    .line 95
    :cond_1
    return-void

    .line 96
    :catchall_2
    move-exception p0

    .line 97
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 98
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 101
    throw p0

    .line 102
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    throw p0
.end method
