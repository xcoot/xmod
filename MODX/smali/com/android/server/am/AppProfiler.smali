.class public final Lcom/android/server/am/AppProfiler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mAllowLowerMemLevel:Z

.field public mAppAgentMap:Ljava/util/Map;

.field public final mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

.field public final mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

.field public mChimera:Lcom/android/server/chimera/ChimeraManagerService;

.field public mFullPssOrRssPending:Z

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastFullPssTime:J

.field public mLastMemUsageReportTime:J

.field public mLastMemoryLevel:I

.field public mLastNumProcesses:I

.field public volatile mLastWriteTime:J

.field public final mLowMemDetector:Lcom/android/server/am/LowMemDetector;

.field public mLowRamStartTime:J

.field public mMemFactorOverride:I

.field public mMemWatchDumpPid:I

.field public mMemWatchDumpProcName:Ljava/lang/String;

.field public mMemWatchDumpUid:I

.field public mMemWatchDumpUri:Landroid/net/Uri;

.field public mMemWatchIsUserInitiated:Z

.field public final mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

.field public final mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

.field public final mPendingPssOrRssProfiles:Ljava/util/ArrayList;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mProcessCpuThread:Lcom/android/server/am/AppProfiler$ProcessCpuThread;

.field public final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public final mProcessesToGc:Ljava/util/ArrayList;

.field public final mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

.field public mProfileType:I

.field public final mProfilerLock:Ljava/lang/Object;

.field public volatile mPssDeferralTime:J

.field public final mPssDelayConfigListener:Lcom/android/server/am/AppProfiler$1;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mTestPssOrRssMode:Z


# direct methods
.method public static -$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v17

    .line 10
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 15
    const/4 v15, 0x0

    .line 16
    const/4 v13, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iput-boolean v15, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 21
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    .line 23
    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_14

    .line 30
    :cond_0
    move-object v2, v13

    .line 31
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const-wide/16 v19, 0x0

    .line 34
    if-eqz v2, :cond_4

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 39
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 41
    monitor-enter v1

    .line 42
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 44
    new-instance v4, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-direct {v4, v5}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>(I)V

    .line 50
    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    .line 53
    move-result-object v3

    .line 54
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 55
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 59
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 61
    if-nez v1, :cond_3

    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 66
    move-result v1

    .line 67
    move v4, v15

    .line 68
    move-wide/from16 v5, v19

    .line 70
    :goto_1
    if-ge v4, v1, :cond_2

    .line 72
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 74
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 76
    monitor-enter v7

    .line 77
    :try_start_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 79
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 87
    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 89
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 91
    check-cast v8, Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 96
    move-result v8

    .line 97
    if-ltz v8, :cond_1

    .line 99
    monitor-exit v7

    .line 100
    goto :goto_2

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    goto :goto_3

    .line 103
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v7

    .line 108
    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 110
    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 112
    invoke-static {v7, v13, v13}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 115
    move-result-wide v7

    .line 116
    add-long/2addr v5, v7

    .line 117
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 119
    goto :goto_1

    .line 120
    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    throw v0

    .line 122
    :cond_2
    move-wide/from16 v30, v5

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    move-wide/from16 v30, v19

    .line 127
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 130
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 132
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 134
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 136
    monitor-enter v3

    .line 137
    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 140
    move-result-wide v22

    .line 141
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 144
    move-result-wide v24

    .line 145
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 148
    move-result-wide v26

    .line 149
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 152
    move-result-wide v28

    .line 153
    const-wide/16 v1, 0x400

    .line 155
    mul-long v32, v22, v1

    .line 157
    mul-long v34, v24, v1

    .line 159
    mul-long v36, v26, v1

    .line 161
    mul-long v38, v28, v1

    .line 163
    mul-long v40, v30, v1

    .line 165
    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 168
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 170
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 172
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 174
    move-object/from16 v21, v1

    .line 176
    invoke-virtual/range {v21 .. v31}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 179
    monitor-exit v3

    .line 180
    goto :goto_5

    .line 181
    :catchall_2
    move-exception v0

    .line 182
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 183
    throw v0

    .line 184
    :catchall_3
    move-exception v0

    .line 185
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 186
    throw v0

    .line 187
    :cond_4
    :goto_5
    const/4 v1, 0x3

    .line 188
    new-array v14, v1, [J

    .line 190
    move v1, v15

    .line 191
    :goto_6
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 193
    monitor-enter v2

    .line 194
    :try_start_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 199
    move-result v3

    .line 200
    if-gtz v3, :cond_6

    .line 202
    iget-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 204
    if-nez v3, :cond_5

    .line 206
    goto :goto_7

    .line 207
    :cond_5
    const-string v3, "ActivityManager"

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    const-string v5, "Collected pss of "

    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, " processes in "

    .line 224
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 230
    move-result-wide v5

    .line 231
    sub-long v5, v5, v17

    .line 233
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    const-string/jumbo v1, "ms"

    .line 239
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_7
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    monitor-exit v2

    .line 255
    return-void

    .line 256
    :catchall_4
    move-exception v0

    .line 257
    goto/16 :goto_13

    .line 259
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 261
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    .line 267
    iget v12, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 269
    iget v10, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 271
    iget-wide v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 276
    move-result-wide v6

    .line 277
    iget-object v8, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 279
    if-eqz v8, :cond_7

    .line 281
    iget v8, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 283
    if-ne v12, v8, :cond_7

    .line 285
    const-wide/16 v8, 0x3e8

    .line 287
    add-long/2addr v8, v4

    .line 288
    cmp-long v6, v8, v6

    .line 290
    if-gez v6, :cond_7

    .line 292
    iget v6, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 294
    move-object v11, v3

    .line 295
    move v8, v6

    .line 296
    goto :goto_8

    .line 297
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 300
    move-object v11, v13

    .line 301
    move v8, v15

    .line 302
    :goto_8
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 303
    if-eqz v11, :cond_10

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 308
    move-result-wide v2

    .line 309
    iget-object v6, v11, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 311
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 313
    const/4 v9, 0x1

    .line 314
    if-eqz v7, :cond_a

    .line 316
    iget-boolean v15, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 318
    iget-boolean v13, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 320
    if-nez v13, :cond_8

    .line 322
    const/4 v15, 0x0

    .line 323
    goto :goto_9

    .line 324
    :cond_8
    iput-boolean v9, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 326
    :goto_9
    if-nez v15, :cond_9

    .line 328
    goto :goto_b

    .line 329
    :cond_9
    :goto_a
    const/4 v13, 0x0

    .line 330
    goto :goto_d

    .line 331
    :cond_a
    :goto_b
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 333
    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 335
    iget-object v13, v7, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 337
    monitor-enter v13

    .line 338
    :try_start_7
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 340
    invoke-virtual {v7, v6}, Landroid/util/IntArray;->indexOf(I)I

    .line 343
    move-result v6

    .line 344
    if-ltz v6, :cond_b

    .line 346
    move v6, v9

    .line 347
    goto :goto_c

    .line 348
    :cond_b
    const/4 v6, 0x0

    .line 349
    :goto_c
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 350
    if-nez v6, :cond_9

    .line 352
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 354
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 356
    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 358
    if-eqz v6, :cond_c

    .line 360
    goto :goto_a

    .line 361
    :cond_c
    const/4 v13, 0x0

    .line 362
    invoke-static {v8, v14, v13}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 365
    move-result-wide v6

    .line 366
    goto :goto_e

    .line 367
    :goto_d
    move-wide/from16 v6, v19

    .line 369
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 372
    move-result-wide v21

    .line 373
    iget-object v15, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 375
    monitor-enter v15

    .line 376
    cmp-long v23, v6, v19

    .line 378
    if-eqz v23, :cond_f

    .line 380
    :try_start_8
    iget-object v13, v11, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 382
    if-eqz v13, :cond_e

    .line 384
    iget v13, v11, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 386
    if-ne v13, v12, :cond_e

    .line 388
    iget v13, v11, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 390
    if-ne v13, v8, :cond_e

    .line 392
    move/from16 v24, v10

    .line 394
    iget-wide v9, v11, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 396
    cmp-long v4, v9, v4

    .line 398
    if-nez v4, :cond_e

    .line 400
    add-int/lit8 v26, v1, 0x1

    .line 402
    iget-object v1, v11, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 404
    iget v4, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 406
    if-ltz v4, :cond_d

    .line 408
    iget v5, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 410
    iget-object v9, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 412
    aput v5, v9, v4

    .line 414
    iget-object v9, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 416
    iget v10, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 418
    aput v10, v9, v4

    .line 420
    iput v5, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 422
    const/4 v4, -0x1

    .line 423
    iput v4, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 425
    :cond_d
    const/16 v16, 0x0

    .line 427
    aget-wide v9, v14, v16

    .line 429
    const/4 v1, 0x1

    .line 430
    aget-wide v27, v14, v1

    .line 432
    const/4 v1, 0x2

    .line 433
    aget-wide v29, v14, v1

    .line 435
    sub-long v21, v21, v2

    .line 437
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 440
    move-result-wide v31
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 441
    move-object/from16 v1, p0

    .line 443
    move-object v2, v11

    .line 444
    move v3, v12

    .line 445
    move-wide v4, v6

    .line 446
    move-wide/from16 v42, v6

    .line 448
    move-wide v6, v9

    .line 449
    move v13, v8

    .line 450
    move-wide/from16 v8, v27

    .line 452
    move-object/from16 v25, v11

    .line 454
    move-wide/from16 v10, v29

    .line 456
    move v0, v12

    .line 457
    move/from16 v12, v24

    .line 459
    move/from16 v44, v13

    .line 461
    move-object/from16 v24, v14

    .line 463
    const/16 v23, 0x0

    .line 465
    move-wide/from16 v13, v21

    .line 467
    move-object/from16 v22, v15

    .line 469
    move/from16 v21, v16

    .line 471
    move-wide/from16 v15, v31

    .line 473
    :try_start_9
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/am/AppProfiler;->recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V

    .line 476
    move/from16 v1, v26

    .line 478
    goto :goto_10

    .line 479
    :catchall_5
    move-exception v0

    .line 480
    goto/16 :goto_11

    .line 482
    :catchall_6
    move-exception v0

    .line 483
    move-object/from16 v22, v15

    .line 485
    goto/16 :goto_11

    .line 487
    :cond_e
    move-wide/from16 v42, v6

    .line 489
    move/from16 v44, v8

    .line 491
    move-object/from16 v25, v11

    .line 493
    move v0, v12

    .line 494
    move-object/from16 v24, v14

    .line 496
    move-object/from16 v22, v15

    .line 498
    const/16 v21, 0x0

    .line 500
    const/16 v23, 0x0

    .line 502
    goto :goto_f

    .line 503
    :cond_f
    move-wide/from16 v42, v6

    .line 505
    move/from16 v44, v8

    .line 507
    move-object/from16 v25, v11

    .line 509
    move v0, v12

    .line 510
    move-object/from16 v23, v13

    .line 512
    move-object/from16 v24, v14

    .line 514
    move-object/from16 v22, v15

    .line 516
    const/16 v21, 0x0

    .line 518
    :goto_f
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 521
    :goto_10
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 522
    const-wide/32 v2, 0x80000

    .line 525
    move-wide/from16 v6, v42

    .line 527
    cmp-long v2, v6, v2

    .line 529
    if-lez v2, :cond_11

    .line 531
    move-object/from16 v3, v25

    .line 533
    iget-object v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 535
    if-eqz v2, :cond_11

    .line 537
    iget v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 539
    if-ne v2, v0, :cond_11

    .line 541
    iget v0, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 543
    move/from16 v15, v44

    .line 545
    if-ne v0, v15, :cond_11

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    .line 549
    const-string v2, "GL mtrack="

    .line 551
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    iget-object v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 556
    new-instance v3, Landroid/os/Debug$MemoryInfo;

    .line 558
    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 561
    invoke-static {v15, v3}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 564
    const/16 v4, 0xf

    .line 566
    invoke-virtual {v3, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 569
    move-result v3

    .line 570
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    const-string v3, ", process="

    .line 575
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    long-to-int v2, v6

    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    move-result-object v0

    .line 588
    const/16 v3, 0x12

    .line 590
    invoke-static {v3, v15, v2, v0}, Landroid/util/PerfLog;->e(IIILjava/lang/String;)V

    .line 593
    goto :goto_12

    .line 594
    :goto_11
    :try_start_a
    monitor-exit v22
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 595
    throw v0

    .line 596
    :catchall_7
    move-exception v0

    .line 597
    :try_start_b
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 598
    throw v0

    .line 599
    :cond_10
    move-object/from16 v23, v13

    .line 601
    move-object/from16 v24, v14

    .line 603
    move/from16 v21, v15

    .line 605
    :cond_11
    :goto_12
    move-object/from16 v0, p0

    .line 607
    move/from16 v15, v21

    .line 609
    move-object/from16 v13, v23

    .line 611
    move-object/from16 v14, v24

    .line 613
    goto/16 :goto_6

    .line 615
    :goto_13
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 616
    throw v0

    .line 617
    :goto_14
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 618
    throw v0
.end method

.method public static -$$Nest$mcollectRssInBackground(Lcom/android/server/am/AppProfiler;)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v11

    .line 10
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 15
    const/4 v13, 0x0

    .line 16
    const/4 v14, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iput-boolean v13, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 21
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    .line 23
    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_15

    .line 30
    :cond_0
    move-object v2, v14

    .line 31
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz v2, :cond_4

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 37
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 39
    monitor-enter v1

    .line 40
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 42
    new-instance v4, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-direct {v4, v5}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>(I)V

    .line 48
    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    .line 51
    move-result-object v3

    .line 52
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 53
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 55
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 57
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 59
    if-nez v1, :cond_3

    .line 61
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 64
    move-result v1

    .line 65
    move v4, v13

    .line 66
    const-wide/16 v5, 0x0

    .line 68
    :goto_1
    if-ge v4, v1, :cond_2

    .line 70
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 72
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 74
    monitor-enter v7

    .line 75
    :try_start_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 77
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 79
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 85
    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 87
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 89
    check-cast v8, Landroid/util/SparseArray;

    .line 91
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 94
    move-result v8

    .line 95
    if-ltz v8, :cond_1

    .line 97
    monitor-exit v7

    .line 98
    goto :goto_2

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    goto :goto_3

    .line 101
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 108
    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 110
    invoke-static {v7, v14}, Landroid/os/Debug;->getRss(I[J)J

    .line 113
    move-result-wide v7

    .line 114
    add-long/2addr v5, v7

    .line 115
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 117
    goto :goto_1

    .line 118
    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    throw v0

    .line 120
    :cond_2
    move-wide/from16 v26, v5

    .line 122
    goto :goto_4

    .line 123
    :cond_3
    const-wide/16 v26, 0x0

    .line 125
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 128
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 130
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 132
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 134
    monitor-enter v3

    .line 135
    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 138
    move-result-wide v18

    .line 139
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 142
    move-result-wide v20

    .line 143
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 146
    move-result-wide v22

    .line 147
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 150
    move-result-wide v24

    .line 151
    const-wide/16 v1, 0x400

    .line 153
    mul-long v28, v18, v1

    .line 155
    mul-long v30, v20, v1

    .line 157
    mul-long v32, v22, v1

    .line 159
    mul-long v34, v24, v1

    .line 161
    mul-long v36, v26, v1

    .line 163
    invoke-static/range {v28 .. v37}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 166
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 168
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 170
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 172
    move-object/from16 v17, v1

    .line 174
    invoke-virtual/range {v17 .. v27}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 177
    monitor-exit v3

    .line 178
    goto :goto_5

    .line 179
    :catchall_2
    move-exception v0

    .line 180
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 181
    throw v0

    .line 182
    :catchall_3
    move-exception v0

    .line 183
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 184
    throw v0

    .line 185
    :cond_4
    :goto_5
    move v1, v13

    .line 186
    :goto_6
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 188
    monitor-enter v2

    .line 189
    :try_start_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 194
    move-result v3

    .line 195
    if-gtz v3, :cond_6

    .line 197
    iget-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 199
    if-nez v3, :cond_5

    .line 201
    goto :goto_7

    .line 202
    :cond_5
    const-string v3, "ActivityManager"

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    const-string v5, "Collected rss of "

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, " processes in "

    .line 219
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 225
    move-result-wide v5

    .line 226
    sub-long/2addr v5, v11

    .line 227
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    const-string/jumbo v1, "ms"

    .line 233
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v1

    .line 240
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_7
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    monitor-exit v2

    .line 249
    return-void

    .line 250
    :catchall_4
    move-exception v0

    .line 251
    goto/16 :goto_14

    .line 253
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    .line 261
    iget v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 263
    iget v6, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 265
    iget-wide v7, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 270
    move-result-wide v9

    .line 271
    iget-object v5, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 273
    if-eqz v5, :cond_7

    .line 275
    iget v5, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 277
    if-ne v4, v5, :cond_7

    .line 279
    const-wide/16 v17, 0x3e8

    .line 281
    add-long v17, v7, v17

    .line 283
    cmp-long v5, v17, v9

    .line 285
    if-gez v5, :cond_7

    .line 287
    iget v5, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 289
    goto :goto_8

    .line 290
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 293
    move v5, v13

    .line 294
    move-object v3, v14

    .line 295
    :goto_8
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 296
    if-eqz v3, :cond_10

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 301
    move-result-wide v9

    .line 302
    iget-object v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 304
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 306
    if-eqz v13, :cond_a

    .line 308
    iget-boolean v14, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 310
    iget-boolean v15, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 312
    if-nez v15, :cond_8

    .line 314
    const/4 v14, 0x0

    .line 315
    const/4 v15, 0x1

    .line 316
    goto :goto_9

    .line 317
    :cond_8
    const/4 v15, 0x1

    .line 318
    iput-boolean v15, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 320
    :goto_9
    if-nez v14, :cond_9

    .line 322
    goto :goto_b

    .line 323
    :cond_9
    :goto_a
    const/4 v13, 0x0

    .line 324
    goto :goto_d

    .line 325
    :cond_a
    const/4 v15, 0x1

    .line 326
    :goto_b
    iget-object v13, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 328
    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 330
    iget-object v14, v13, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 332
    monitor-enter v14

    .line 333
    :try_start_7
    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 335
    invoke-virtual {v13, v2}, Landroid/util/IntArray;->indexOf(I)I

    .line 338
    move-result v2

    .line 339
    if-ltz v2, :cond_b

    .line 341
    goto :goto_c

    .line 342
    :cond_b
    const/4 v15, 0x0

    .line 343
    :goto_c
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 344
    if-nez v15, :cond_9

    .line 346
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 348
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 350
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 352
    if-eqz v2, :cond_c

    .line 354
    goto :goto_a

    .line 355
    :cond_c
    const/4 v13, 0x0

    .line 356
    invoke-static {v5, v13}, Landroid/os/Debug;->getRss(I[J)J

    .line 359
    move-result-wide v14

    .line 360
    goto :goto_e

    .line 361
    :goto_d
    const-wide/16 v14, 0x0

    .line 363
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 366
    move-result-wide v20

    .line 367
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 369
    monitor-enter v2

    .line 370
    const-wide/16 v18, 0x0

    .line 372
    cmp-long v16, v14, v18

    .line 374
    if-eqz v16, :cond_f

    .line 376
    :try_start_8
    iget-object v13, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 378
    if-eqz v13, :cond_f

    .line 380
    iget v13, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 382
    if-ne v13, v4, :cond_f

    .line 384
    iget v13, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 386
    if-ne v13, v5, :cond_f

    .line 388
    move-wide/from16 v22, v11

    .line 390
    iget-wide v11, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 392
    cmp-long v5, v11, v7

    .line 394
    if-nez v5, :cond_e

    .line 396
    add-int/lit8 v11, v1, 0x1

    .line 398
    iget-object v1, v3, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 400
    iget v5, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 402
    if-ltz v5, :cond_d

    .line 404
    iget v7, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 406
    iget-object v8, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 408
    aput v7, v8, v5

    .line 410
    iget-object v8, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 412
    iget v12, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 414
    aput v12, v8, v5

    .line 416
    iput v7, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 418
    const/4 v5, -0x1

    .line 419
    iput v5, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 421
    :cond_d
    sub-long v7, v20, v9

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 426
    move-result-wide v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 427
    move-object/from16 v1, p0

    .line 429
    move-object v12, v2

    .line 430
    move-object v2, v3

    .line 431
    move v3, v4

    .line 432
    move-wide v4, v14

    .line 433
    :try_start_9
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/AppProfiler;->recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V

    .line 436
    move v1, v11

    .line 437
    goto :goto_11

    .line 438
    :catchall_5
    move-exception v0

    .line 439
    goto :goto_12

    .line 440
    :catchall_6
    move-exception v0

    .line 441
    move-object v12, v2

    .line 442
    goto :goto_12

    .line 443
    :cond_e
    :goto_f
    move-object v12, v2

    .line 444
    goto :goto_10

    .line 445
    :cond_f
    move-wide/from16 v22, v11

    .line 447
    goto :goto_f

    .line 448
    :goto_10
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 451
    :goto_11
    monitor-exit v12

    .line 452
    goto :goto_13

    .line 453
    :goto_12
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 454
    throw v0

    .line 455
    :catchall_7
    move-exception v0

    .line 456
    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 457
    throw v0

    .line 458
    :cond_10
    move-wide/from16 v22, v11

    .line 460
    const-wide/16 v18, 0x0

    .line 462
    :goto_13
    move-wide/from16 v11, v22

    .line 464
    const/4 v13, 0x0

    .line 465
    const/4 v14, 0x0

    .line 466
    goto/16 :goto_6

    .line 468
    :goto_14
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 469
    throw v0

    .line 470
    :goto_15
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 471
    throw v0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;Lcom/android/server/am/LowMemDetector;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 15
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 21
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 28
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 30
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 32
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 34
    const/4 v2, -0x1

    .line 35
    iput v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 37
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 39
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 48
    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 51
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 53
    new-instance v2, Lcom/android/server/am/AppProfiler$ProfileData;

    .line 55
    invoke-direct {v2, p0}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 58
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 60
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    .line 62
    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 65
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 67
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    .line 69
    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 72
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 74
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 79
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 81
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    const/4 v3, 0x1

    .line 84
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 87
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 91
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 94
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 96
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 98
    new-instance v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 100
    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 103
    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 105
    new-instance v0, Ljava/lang/Object;

    .line 107
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/android/server/am/AppProfiler$1;

    .line 114
    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$1;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 117
    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Lcom/android/server/am/AppProfiler$1;

    .line 119
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 121
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 125
    new-instance p1, Lcom/android/server/am/AppProfiler$BgHandler;

    .line 127
    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppProfiler$BgHandler;-><init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V

    .line 130
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 132
    iput-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 134
    new-instance p1, Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    .line 136
    invoke-direct {p1, p0}, Lcom/android/server/am/AppProfiler$ProcessCpuThread;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 139
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    .line 141
    new-instance p1, Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    .line 143
    const-string/jumbo p2, "onTrim"

    .line 146
    invoke-direct {p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    .line 151
    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    .line 153
    return-void
.end method


# virtual methods
.method public final addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 19
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 21
    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 23
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 25
    iget-wide v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 27
    cmp-long v1, v1, v3

    .line 29
    if-gez v1, :cond_0

    .line 31
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 35
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 48
    :goto_1
    return-void
.end method

.method public final clearProfilerLPf()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 3
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 24
    return-void
.end method

.method public final doLowMemReportIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 5
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 15
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 23
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 25
    if-eqz v3, :cond_0

    .line 27
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 29
    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 31
    const/16 v3, 0x10

    .line 33
    if-lt v2, v3, :cond_0

    .line 35
    goto :goto_4

    .line 36
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    move-result-wide v5

    .line 45
    const/4 v7, 0x0

    .line 46
    if-eqz v0, :cond_3

    .line 48
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 50
    const-wide/32 v3, 0x493e0

    .line 53
    add-long/2addr v1, v3

    .line 54
    cmp-long v1, v5, v1

    .line 56
    if-gez v1, :cond_2

    .line 58
    move v0, v7

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iput-wide v5, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 62
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 64
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 66
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v1

    .line 72
    if-eqz v0, :cond_4

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    :goto_2
    move-object v8, v2

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    const/4 v2, 0x0

    .line 82
    goto :goto_2

    .line 83
    :goto_3
    const/16 v2, 0x7541

    .line 85
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 88
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 90
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 92
    new-instance v10, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;

    .line 94
    move-object v1, v10

    .line 95
    move-object v2, p0

    .line 96
    move-object v3, p1

    .line 97
    move-object v4, v8

    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V

    .line 101
    invoke-virtual {v9, v10, v7}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 104
    if-eqz v0, :cond_5

    .line 106
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 108
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 110
    const/16 v0, 0x21

    .line 112
    invoke-virtual {p1, v0, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 115
    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 118
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 125
    monitor-enter p1

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 129
    monitor-exit p1

    .line 130
    return-void

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    throw p0
.end method

.method public final dumpMemWatchProcessesLPf(Ljava/io/PrintWriter;Z)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_4

    .line 13
    const-string v0, "  Mem watch processes:"

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 20
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 27
    move-result v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 30
    :goto_0
    if-ltz v1, :cond_3

    .line 32
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 47
    move-result v4

    .line 48
    add-int/lit8 v4, v4, -0x1

    .line 50
    :goto_1
    if-ltz v4, :cond_2

    .line 52
    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 57
    const/4 p2, 0x0

    .line 58
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v6, "    "

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/16 v6, 0x2f

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 79
    move-result v6

    .line 80
    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 83
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Landroid/util/Pair;

    .line 89
    const-string v7, ": "

    .line 91
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 96
    check-cast v7, Ljava/lang/Long;

    .line 98
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 101
    move-result-wide v7

    .line 102
    invoke-static {v7, v8, v5}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 105
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 107
    if-eqz v7, :cond_1

    .line 109
    const-string v7, ", report to "

    .line 111
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 116
    check-cast v6, Ljava/lang/String;

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    add-int/lit8 v4, v4, -0x1

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    const-string v0, "  mMemWatchDumpProcName="

    .line 136
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string v0, "  mMemWatchDumpUri="

    .line 146
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 151
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 154
    const-string v0, "  mMemWatchDumpPid="

    .line 156
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 164
    const-string v0, "  mMemWatchDumpUid="

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 171
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 174
    const-string v0, "  mMemWatchIsUserInitiated="

    .line 176
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 181
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 184
    :cond_4
    return p2
.end method

.method public final dumpProcessesToGc(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_3

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v3, v2, :cond_3

    .line 23
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 31
    if-eqz p2, :cond_0

    .line 33
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 35
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 37
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    if-nez v4, :cond_2

    .line 46
    if-eqz p3, :cond_1

    .line 48
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 51
    :cond_1
    const-string p3, "  Processes that are waiting to GC:"

    .line 53
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const/4 p3, 0x1

    .line 57
    move v4, p3

    .line 58
    :cond_2
    const-string v6, "    Process "

    .line 60
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 66
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 68
    const-string v6, "      lowMem="

    .line 70
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    iget-boolean v6, v5, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 75
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 78
    const-string v6, ", last gced="

    .line 80
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget-wide v6, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 85
    sub-long v6, v0, v6

    .line 87
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 90
    const-string v6, " ms ago, last lowMem="

    .line 92
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    iget-wide v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 97
    sub-long v5, v0, v5

    .line 99
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 102
    const-string v5, " ms ago"

    .line 104
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    return-void
.end method

.method public final forAllCpuStats(Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 6
    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 15
    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 18
    move-result-object v3

    .line 19
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final getLastMemoryLevelLocked()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 9
    return p0
.end method

.method public final getLowRamTimeSinceIdleLPr(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long p0, v0, v2

    .line 7
    if-lez p0, :cond_0

    .line 9
    sub-long v2, p1, v0

    .line 11
    :cond_0
    return-wide v2
.end method

.method public final handleAbortDumpHeap(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 22
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_2
    return-void
.end method

.method public final handlePostDumpHeapNotification()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 6
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 10
    invoke-virtual {v3, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroid/util/Pair;

    .line 16
    if-nez v3, :cond_0

    .line 18
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/util/Pair;

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 31
    if-eqz v3, :cond_1

    .line 33
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    check-cast v5, Ljava/lang/Long;

    .line 37
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 40
    move-result-wide v5

    .line 41
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-wide/16 v5, 0x0

    .line 48
    move-object v3, v4

    .line 49
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 51
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 53
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 55
    const/4 v4, -0x1

    .line 56
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 58
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-nez v2, :cond_2

    .line 63
    return-void

    .line 64
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 66
    const-string/jumbo v4, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    .line 69
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v4, "com.android.shell"

    .line 75
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v4, "android.intent.extra.UID"

    .line 80
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string/jumbo v4, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    .line 86
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const-string/jumbo v4, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    .line 92
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 95
    const-string/jumbo v4, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    .line 98
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v3, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    .line 104
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 109
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 118
    return-void

    .line 119
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p0
.end method

.method public final isLastMemoryLevelNormal()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    if-gtz v0, :cond_0

    .line 10
    move v2, v3

    .line 11
    :cond_0
    return v2

    .line 12
    :cond_1
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 14
    if-gtz p0, :cond_2

    .line 16
    move v2, v3

    .line 17
    :cond_2
    return v2
.end method

.method public final isProfilingPss()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->removeAppProfilerPssCollection()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 11
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    .line 13
    if-eqz p0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public final performAppGcsIfAppropriateLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canGcNowLocked()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsLPf()V

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final performAppGcsLPf()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 27
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 29
    iget v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    .line 31
    const/16 v4, 0xc8

    .line 33
    if-gt v3, v4, :cond_1

    .line 35
    iget-boolean v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 37
    if-eqz v3, :cond_0

    .line 39
    :cond_1
    iget-wide v2, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 41
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 43
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 45
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 47
    add-long/2addr v2, v4

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    move-result-wide v4

    .line 52
    cmp-long v2, v2, v4

    .line 54
    if-gtz v2, :cond_4

    .line 56
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 61
    move-result-wide v2

    .line 62
    iput-wide v2, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 64
    iget-object v2, v0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 66
    if-eqz v2, :cond_3

    .line 68
    iget-boolean v3, v0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 70
    if-eqz v3, :cond_2

    .line 72
    iput-boolean v1, v0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 74
    invoke-interface {v2}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {v2}, Landroid/app/IApplicationThread;->processInBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 84
    return-void

    .line 85
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 91
    return-void
.end method

.method public final printCurrentCpuState(Ljava/lang/StringBuilder;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 6
    const/16 v1, 0xa

    .line 8
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final profileControlLPf(Lcom/android/server/am/ProcessRecord;ZLandroid/app/ProfilerInfo;I)V
    .locals 5

    .line 1
    if-eqz p2, :cond_1

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(ILcom/android/server/am/ProcessRecord;)V

    .line 8
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 10
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 12
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 14
    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 16
    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    .line 21
    move-result-object v4

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    move-object v4, v1

    .line 26
    :goto_0
    invoke-virtual {v0, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 29
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 34
    iput p4, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 36
    iget-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    .line 41
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-object v0, v1

    .line 44
    :goto_1
    :try_start_2
    iput-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 46
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 48
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 50
    invoke-interface {v0, p2, p3, p4}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 55
    iget-object p2, p2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 57
    iget-object p2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 59
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :catch_1
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 64
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 66
    iput-object v1, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 68
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 70
    sget p1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 72
    if-ne p0, p1, :cond_2

    .line 74
    move-object p3, v1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {p0, p4, p1}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(ILcom/android/server/am/ProcessRecord;)V

    .line 79
    if-eqz p3, :cond_2

    .line 81
    iget-object p0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    if-eqz p0, :cond_2

    .line 85
    :try_start_5
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    :catch_2
    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    .line 90
    iget-object p0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 92
    if-eqz p0, :cond_3

    .line 94
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 97
    :catch_3
    :cond_3
    return-void

    .line 98
    :catch_4
    :try_start_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 100
    const-string p1, "Process disappeared"

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 106
    :goto_3
    if-eqz p3, :cond_4

    .line 108
    iget-object p1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 110
    if-eqz p1, :cond_4

    .line 112
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 115
    :catch_5
    :cond_4
    throw p0
.end method

.method public final recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v12, p1

    .line 5
    move-wide/from16 v13, p3

    .line 7
    move-wide/from16 v10, p7

    .line 9
    move-wide/from16 v8, p9

    .line 11
    iget-object v15, v12, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 13
    iget v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 15
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 17
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 19
    const-wide/16 v4, 0x400

    .line 21
    mul-long v31, v13, v4

    .line 23
    mul-long v21, p5, v4

    .line 25
    mul-long v23, v10, v4

    .line 27
    mul-long v25, v8, v4

    .line 29
    move/from16 v16, v1

    .line 31
    move/from16 v17, v2

    .line 33
    move-object/from16 v18, v3

    .line 35
    move-wide/from16 v19, v31

    .line 37
    move/from16 v27, p11

    .line 39
    move/from16 v28, p2

    .line 41
    move-wide/from16 v29, p12

    .line 43
    invoke-static/range {v16 .. v30}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    .line 46
    move-wide/from16 v1, p14

    .line 48
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 50
    const/16 v16, 0x1

    .line 52
    move-object/from16 v1, p1

    .line 54
    move-wide/from16 v2, p3

    .line 56
    move-wide/from16 v4, p5

    .line 58
    move-wide/from16 v6, p9

    .line 60
    move/from16 v8, v16

    .line 62
    move/from16 v9, p11

    .line 64
    move-wide/from16 v10, p12

    .line 66
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 69
    iget-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 71
    const-wide/16 v3, 0x0

    .line 73
    cmp-long v1, v1, v3

    .line 75
    if-nez v1, :cond_0

    .line 77
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 79
    :cond_0
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 81
    move-wide/from16 v1, p7

    .line 83
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    .line 85
    const/16 v3, 0xe

    .line 87
    move/from16 v4, p2

    .line 89
    if-lt v4, v3, :cond_1

    .line 91
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    .line 93
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    .line 95
    :cond_1
    move-wide/from16 v1, p9

    .line 97
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 99
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 101
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 104
    move-result-object v1

    .line 105
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/util/SparseArray;

    .line 113
    const/4 v2, 0x0

    .line 114
    if-eqz v1, :cond_3

    .line 116
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 118
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Landroid/util/Pair;

    .line 124
    if-nez v3, :cond_2

    .line 126
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v1

    .line 130
    move-object v3, v1

    .line 131
    check-cast v3, Landroid/util/Pair;

    .line 133
    :cond_2
    if-eqz v3, :cond_3

    .line 135
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 137
    check-cast v1, Ljava/lang/Long;

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    const/4 v1, 0x0

    .line 141
    :goto_0
    if-eqz v1, :cond_6

    .line 143
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 146
    move-result-wide v3

    .line 147
    cmp-long v3, v31, v3

    .line 149
    if-ltz v3, :cond_6

    .line 151
    iget-object v3, v12, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 153
    if-eqz v3, :cond_6

    .line 155
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 157
    if-nez v3, :cond_6

    .line 159
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 161
    const-string v4, " exceeded pss limit "

    .line 163
    const-string v5, "Process "

    .line 165
    const-string v6, "ActivityManager"

    .line 167
    if-nez v3, :cond_5

    .line 169
    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_4

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, ", but debugging not enabled"

    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v1

    .line 199
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    goto :goto_2

    .line 203
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "; reporting"

    .line 219
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v0, v12, v2}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    .line 232
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mChimera:Lcom/android/server/chimera/ChimeraManagerService;

    .line 234
    if-eqz v0, :cond_7

    .line 236
    iget v1, v15, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 238
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 240
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 242
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 244
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 246
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/chimera/ChimeraManagerService;->checkProcessInHeimdall(IILjava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_7
    return-void
.end method

.method public final recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v12, p1

    .line 5
    move-wide/from16 v13, p3

    .line 7
    iget-object v15, v12, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 9
    iget v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 11
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 13
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 15
    const-wide/16 v31, 0x400

    .line 17
    mul-long v25, v13, v31

    .line 19
    const-wide/16 v19, 0x0

    .line 21
    const-wide/16 v21, 0x0

    .line 23
    const-wide/16 v23, 0x0

    .line 25
    move/from16 v16, v1

    .line 27
    move/from16 v17, v2

    .line 29
    move-object/from16 v18, v3

    .line 31
    move/from16 v27, p5

    .line 33
    move/from16 v28, p2

    .line 35
    move-wide/from16 v29, p6

    .line 37
    invoke-static/range {v16 .. v30}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    .line 40
    move-wide/from16 v1, p8

    .line 42
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 44
    const/4 v8, 0x1

    .line 45
    const-wide/16 v2, 0x0

    .line 47
    const-wide/16 v4, 0x0

    .line 49
    move-object/from16 v1, p1

    .line 51
    move-wide/from16 v6, p3

    .line 53
    move/from16 v9, p5

    .line 55
    move-wide/from16 v10, p6

    .line 57
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 60
    iget-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 62
    const-wide/16 v3, 0x0

    .line 64
    cmp-long v1, v1, v3

    .line 66
    if-nez v1, :cond_0

    .line 68
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 70
    :cond_0
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 72
    const/16 v1, 0xe

    .line 74
    move/from16 v2, p2

    .line 76
    if-lt v2, v1, :cond_1

    .line 78
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    .line 80
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 82
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 85
    move-result-object v1

    .line 86
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/util/SparseArray;

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    if-eqz v1, :cond_3

    .line 98
    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 100
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Landroid/util/Pair;

    .line 106
    if-nez v4, :cond_2

    .line 108
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v1

    .line 112
    move-object v4, v1

    .line 113
    check-cast v4, Landroid/util/Pair;

    .line 115
    :cond_2
    if-eqz v4, :cond_3

    .line 117
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 119
    check-cast v1, Ljava/lang/Long;

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    move-object v1, v3

    .line 123
    :goto_0
    if-eqz v1, :cond_6

    .line 125
    iget v4, v12, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 127
    invoke-static {v4, v3, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 130
    move-result-wide v3

    .line 131
    mul-long v3, v3, v31

    .line 133
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 136
    move-result-wide v5

    .line 137
    cmp-long v3, v3, v5

    .line 139
    if-ltz v3, :cond_6

    .line 141
    iget-object v3, v12, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 143
    if-eqz v3, :cond_6

    .line 145
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 147
    if-nez v3, :cond_6

    .line 149
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 151
    const-string v4, " exceeded pss limit "

    .line 153
    const-string v5, "Process "

    .line 155
    const-string v6, "ActivityManager"

    .line 157
    if-nez v3, :cond_5

    .line 159
    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_4

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ", but debugging not enabled"

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    goto :goto_2

    .line 193
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "; reporting"

    .line 209
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 216
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v0, v12, v2}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    .line 222
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mChimera:Lcom/android/server/chimera/ChimeraManagerService;

    .line 224
    if-eqz v0, :cond_7

    .line 226
    iget v1, v15, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 228
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 230
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 232
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 234
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 236
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/chimera/ChimeraManagerService;->checkProcessInHeimdall(IILjava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_7
    return-void
.end method

.method public final requestPssAllProcsLPr(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 7
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v1

    .line 14
    :goto_0
    if-ltz v2, :cond_0

    .line 16
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    .line 24
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 34
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 36
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 38
    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 47
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 54
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 56
    new-instance v3, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;

    .line 58
    invoke-direct {v3, p0, p3, p1, p2}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppProfiler;ZJ)V

    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 65
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_1

    .line 73
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 75
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    :cond_1
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final scheduleAppGcsLPf()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 26
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 31
    move-result-object v1

    .line 32
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 34
    iget-wide v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 36
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 38
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 40
    add-long/2addr v2, v4

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    move-result-wide v4

    .line 45
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 47
    iget-wide v6, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 49
    add-long v8, v4, v6

    .line 51
    cmp-long p0, v2, v8

    .line 53
    if-gez p0, :cond_0

    .line 55
    add-long v2, v4, v6

    .line 57
    :cond_0
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 59
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 62
    :cond_1
    return-void
.end method

.method public final setAgentAppLPf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 5
    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_3

    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 24
    if-nez v0, :cond_1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 38
    move-result v0

    .line 39
    const/16 v1, 0x64

    .line 41
    if-lt v0, v1, :cond_2

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "App agent map has too many entries, cannot add "

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, "/"

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    const-string p1, "ActivityManager"

    .line 67
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 73
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    :goto_0
    return-void
.end method

.method public final setTestPssMode(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v1

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZ)V

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 31
    throw p0
.end method

.method public final setupProfilerInfoLocked(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)Landroid/app/ProfilerInfo;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 11
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 16
    iget-object v6, v6, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v6, :cond_3

    .line 21
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_3

    .line 27
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 29
    invoke-virtual {v6, v2}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 32
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 34
    iget-object v6, v6, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 36
    if-eqz v6, :cond_4

    .line 38
    iget-object v8, v6, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 40
    if-nez v8, :cond_1

    .line 42
    iget-boolean v6, v6, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 44
    if-eqz v6, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v6, v7

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto/16 :goto_a

    .line 52
    :cond_1
    :goto_0
    new-instance v6, Landroid/app/ProfilerInfo;

    .line 54
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 56
    iget-object v8, v8, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 58
    invoke-direct {v6, v8}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    .line 61
    :goto_1
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 63
    iget-object v8, v8, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 65
    iget-object v8, v8, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 67
    if-eqz v8, :cond_2

    .line 69
    move-object v7, v8

    .line 70
    :cond_2
    :goto_2
    move-object/from16 v20, v7

    .line 72
    move-object v7, v6

    .line 73
    move-object/from16 v6, v20

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    if-eqz v3, :cond_4

    .line 78
    iget-object v6, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    .line 80
    if-eqz v6, :cond_4

    .line 82
    new-instance v6, Landroid/app/ProfilerInfo;

    .line 84
    iget-object v9, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    .line 86
    const/4 v14, 0x0

    .line 87
    const/4 v15, 0x0

    .line 88
    const/16 v16, 0x0

    .line 90
    const/16 v17, 0x1

    .line 92
    const/4 v10, 0x0

    .line 93
    const/4 v11, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    move-object v8, v6

    .line 97
    invoke-direct/range {v8 .. v17}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object v6, v7

    .line 102
    :goto_3
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 104
    const/4 v9, 0x1

    .line 105
    if-eqz v8, :cond_6

    .line 107
    check-cast v8, Ljava/util/HashMap;

    .line 109
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_6

    .line 115
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_6

    .line 121
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 123
    check-cast v8, Ljava/util/HashMap;

    .line 125
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object v8

    .line 129
    check-cast v8, Ljava/lang/String;

    .line 131
    if-nez v7, :cond_5

    .line 133
    new-instance v7, Landroid/app/ProfilerInfo;

    .line 135
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 137
    check-cast v8, Ljava/util/HashMap;

    .line 139
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object v8

    .line 143
    move-object/from16 v16, v8

    .line 145
    check-cast v16, Ljava/lang/String;

    .line 147
    const/4 v15, 0x0

    .line 148
    const/16 v17, 0x1

    .line 150
    const/16 v18, 0x0

    .line 152
    const/16 v19, 0x1

    .line 154
    const/4 v11, 0x0

    .line 155
    const/4 v12, 0x0

    .line 156
    const/4 v13, 0x0

    .line 157
    const/4 v14, 0x0

    .line 158
    move-object v10, v7

    .line 159
    invoke-direct/range {v10 .. v19}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    .line 162
    goto :goto_4

    .line 163
    :cond_5
    iget-object v8, v7, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 165
    if-nez v8, :cond_6

    .line 167
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 169
    check-cast v8, Ljava/util/HashMap;

    .line 171
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    move-result-object v8

    .line 175
    check-cast v8, Ljava/lang/String;

    .line 177
    invoke-virtual {v7, v8, v9}, Landroid/app/ProfilerInfo;->setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;

    .line 180
    move-result-object v7

    .line 181
    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    .line 183
    iget-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 185
    if-eqz v8, :cond_7

    .line 187
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    .line 190
    move-result-object v8

    .line 191
    iput-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 193
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 195
    iget-object v8, v8, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 197
    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_7

    .line 203
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 205
    iget-object v4, v4, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 207
    if-eqz v4, :cond_7

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 212
    :cond_7
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 215
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 217
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 220
    move-result v4

    .line 221
    if-lez v4, :cond_c

    .line 223
    if-nez v3, :cond_c

    .line 225
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 227
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 232
    move-result v3

    .line 233
    sub-int/2addr v3, v9

    .line 234
    :goto_5
    if-ltz v3, :cond_c

    .line 236
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 238
    if-nez v4, :cond_c

    .line 240
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 242
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Lcom/android/server/am/ActiveInstrumentation;

    .line 250
    iget-boolean v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    .line 252
    if-nez v5, :cond_b

    .line 254
    iget-object v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    .line 256
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 258
    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 260
    if-ne v5, v8, :cond_b

    .line 262
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 264
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 267
    monitor-enter v5

    .line 268
    :try_start_1
    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    .line 270
    array-length v9, v8

    .line 271
    if-nez v9, :cond_8

    .line 273
    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    .line 275
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 277
    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 279
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 281
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    move-result v8

    .line 285
    if-eqz v8, :cond_a

    .line 287
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 290
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    goto :goto_7

    .line 296
    :catchall_1
    move-exception v0

    .line 297
    goto :goto_8

    .line 298
    :cond_8
    array-length v9, v8

    .line 299
    const/4 v10, 0x0

    .line 300
    :goto_6
    if-ge v10, v9, :cond_a

    .line 302
    aget-object v11, v8, v10

    .line 304
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 306
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result v11

    .line 310
    if-eqz v11, :cond_9

    .line 312
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 315
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    .line 317
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    goto :goto_7

    .line 321
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 323
    goto :goto_6

    .line 324
    :cond_a
    :goto_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 328
    goto :goto_9

    .line 329
    :goto_8
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 333
    throw v0

    .line 334
    :cond_b
    :goto_9
    add-int/lit8 v3, v3, -0x1

    .line 336
    goto :goto_5

    .line 337
    :cond_c
    if-eqz v6, :cond_d

    .line 339
    invoke-interface {v1, v6}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 342
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 345
    move-result v0

    .line 346
    if-eqz v0, :cond_e

    .line 348
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 350
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 352
    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    .line 355
    :cond_e
    return-object v7

    .line 356
    :goto_a
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    throw v0
.end method

.method public final startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 3
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v3, "content://com.android.shell.heapdump/"

    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "_javaheap.bin"

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 33
    iget v1, p1, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 35
    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 37
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 39
    iput v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 41
    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 43
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 45
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 47
    const-string v1, "android"

    .line 49
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 52
    move-result-object v0

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p2, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 57
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/android/server/am/AppProfiler$RecordPssRunnable;

    .line 64
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object p2

    .line 70
    invoke-direct {v1, p0, p1, v2, p2}, Lcom/android/server/am/AppProfiler$RecordPssRunnable;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void

    .line 77
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 79
    const-string p1, "android package not found."

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
.end method

.method public final stopProfilerLPf(ILcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 3
    if-eqz p2, :cond_0

    .line 5
    iget-object v1, v0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 7
    if-ne p2, v1, :cond_1

    .line 9
    :cond_0
    iget-object p2, v0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 11
    iget p1, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 13
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 16
    :cond_1
    if-nez p2, :cond_2

    .line 18
    return-void

    .line 19
    :cond_2
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 21
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 23
    if-nez p0, :cond_3

    .line 25
    return-void

    .line 26
    :cond_3
    const/4 p2, 0x0

    .line 27
    const/4 v0, 0x0

    .line 28
    :try_start_0
    invoke-interface {p0, p2, v0, p1}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 32
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    const-string p1, "Process disappeared"

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0
.end method

.method public final updateCpuStatsNow()V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 14
    const-string/jumbo v4, "settings_enable_monitor_phantom_procs"

    .line 17
    invoke-static {v1, v4}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 28
    monitor-enter v4

    .line 29
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 37
    move-result-wide v5

    .line 38
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 43
    move-result-wide v7

    .line 44
    const-wide/16 v9, 0x1388

    .line 46
    sub-long v9, v5, v9

    .line 48
    cmp-long v7, v7, v9

    .line 50
    if-gez v7, :cond_3

    .line 52
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 54
    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 57
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 59
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 62
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 64
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->hasGoodLastStats()Z

    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 70
    const-string/jumbo v7, "true"

    .line 73
    const-string/jumbo v8, "events.cpu"

    .line 76
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_2

    .line 86
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 88
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    .line 91
    move-result v7

    .line 92
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 94
    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    .line 97
    move-result v8

    .line 98
    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 100
    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    .line 103
    move-result v9

    .line 104
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 106
    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    .line 109
    move-result v10

    .line 110
    iget-object v11, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 112
    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    .line 115
    move-result v11

    .line 116
    iget-object v12, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 118
    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    .line 121
    move-result v12

    .line 122
    add-int v13, v7, v8

    .line 124
    add-int/2addr v13, v9

    .line 125
    add-int/2addr v13, v10

    .line 126
    add-int/2addr v13, v11

    .line 127
    add-int/2addr v12, v13

    .line 128
    if-nez v12, :cond_1

    .line 130
    const/4 v12, 0x1

    .line 131
    :cond_1
    mul-int/lit8 v13, v13, 0x64

    .line 133
    div-int/2addr v13, v12

    .line 134
    mul-int/lit8 v7, v7, 0x64

    .line 136
    div-int/2addr v7, v12

    .line 137
    mul-int/lit8 v8, v8, 0x64

    .line 139
    div-int/2addr v8, v12

    .line 140
    mul-int/lit8 v9, v9, 0x64

    .line 142
    div-int/2addr v9, v12

    .line 143
    mul-int/lit8 v10, v10, 0x64

    .line 145
    div-int/2addr v10, v12

    .line 146
    mul-int/lit8 v11, v11, 0x64

    .line 148
    div-int/2addr v11, v12

    .line 149
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v14

    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v15

    .line 157
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v16

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object v17

    .line 165
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v18

    .line 169
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v19

    .line 173
    filled-new-array/range {v14 .. v19}, [Ljava/lang/Object;

    .line 176
    move-result-object v7

    .line 177
    const/16 v8, 0xaa1

    .line 179
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 182
    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    goto/16 :goto_d

    .line 186
    :cond_2
    :goto_1
    const/4 v7, 0x1

    .line 187
    goto :goto_2

    .line 188
    :cond_3
    move v7, v3

    .line 189
    :goto_2
    if-eqz v1, :cond_4

    .line 191
    if-eqz v7, :cond_4

    .line 193
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 195
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    .line 197
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 199
    invoke-virtual {v1, v8}, Lcom/android/server/am/PhantomProcessList;->updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V

    .line 202
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 204
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 206
    iget-object v1, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 208
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    if-eqz v7, :cond_f

    .line 211
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->startAddingCpuStatsLocked()Z

    .line 214
    move-result v7

    .line 215
    if-eqz v7, :cond_e

    .line 217
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 219
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    .line 222
    move-result v7

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 226
    move-result-wide v14

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 230
    move-result-wide v16

    .line 231
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 233
    iget-object v12, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 235
    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 236
    move v9, v3

    .line 237
    move v10, v9

    .line 238
    move v13, v10

    .line 239
    :goto_3
    if-ge v13, v7, :cond_d

    .line 241
    :try_start_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 243
    invoke-virtual {v8, v13}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 246
    move-result-object v11

    .line 247
    iget-boolean v8, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 249
    if-nez v8, :cond_5

    .line 251
    move-wide/from16 v32, v5

    .line 253
    move/from16 v21, v7

    .line 255
    move-object/from16 v22, v12

    .line 257
    move/from16 v23, v13

    .line 259
    move-wide/from16 v30, v14

    .line 261
    goto/16 :goto_8

    .line 263
    :cond_5
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 265
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 267
    iget v3, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 269
    invoke-virtual {v8, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 272
    move-result-object v3

    .line 273
    iget v8, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 275
    add-int v19, v9, v8

    .line 277
    iget v8, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 279
    add-int v20, v10, v8

    .line 281
    if-eqz v3, :cond_9

    .line 283
    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 285
    iget-object v8, v10, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 287
    if-eqz v8, :cond_7

    .line 289
    iget-boolean v9, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 291
    if-nez v9, :cond_6

    .line 293
    goto :goto_5

    .line 294
    :cond_6
    move/from16 v21, v7

    .line 296
    move-object v7, v10

    .line 297
    move-object v2, v11

    .line 298
    move-object/from16 v22, v12

    .line 300
    move/from16 v23, v13

    .line 302
    goto :goto_6

    .line 303
    :goto_4
    move-object/from16 v22, v12

    .line 305
    goto/16 :goto_9

    .line 307
    :cond_7
    :goto_5
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 309
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 311
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 313
    invoke-virtual {v1, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 316
    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 317
    move-object v8, v1

    .line 318
    move/from16 v21, v7

    .line 320
    move-object v7, v10

    .line 321
    move-object v2, v11

    .line 322
    move-wide v10, v14

    .line 323
    move-object/from16 v22, v12

    .line 325
    move/from16 v23, v13

    .line 327
    move-wide/from16 v12, v16

    .line 329
    :try_start_3
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 332
    move-result-object v8

    .line 333
    invoke-virtual {v8, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 336
    move-result-object v8

    .line 337
    iput-object v8, v7, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 339
    :goto_6
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 341
    iget v9, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 343
    iget-object v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 345
    iget-object v10, v10, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 347
    iget-boolean v10, v10, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 349
    if-eqz v10, :cond_8

    .line 351
    iget-wide v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 353
    int-to-long v12, v3

    .line 354
    add-long/2addr v10, v12

    .line 355
    iput-wide v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 357
    iget-wide v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 359
    int-to-long v12, v9

    .line 360
    add-long/2addr v10, v12

    .line 361
    iput-wide v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 363
    :cond_8
    iget-object v8, v7, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 365
    add-int/2addr v3, v9

    .line 366
    int-to-long v9, v3

    .line 367
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 370
    move-result-wide v8

    .line 371
    iget-object v3, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 373
    const-wide/16 v10, 0x0

    .line 375
    invoke-virtual {v3, v10, v11, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 378
    goto :goto_7

    .line 379
    :catchall_1
    move-exception v0

    .line 380
    goto/16 :goto_9

    .line 382
    :catchall_2
    move-exception v0

    .line 383
    goto :goto_4

    .line 384
    :cond_9
    move/from16 v21, v7

    .line 386
    move-object v2, v11

    .line 387
    move-object/from16 v22, v12

    .line 389
    move/from16 v23, v13

    .line 391
    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    .line 393
    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 395
    if-eqz v3, :cond_a

    .line 397
    iget-boolean v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 399
    if-nez v7, :cond_b

    .line 401
    :cond_a
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 403
    iget-object v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 405
    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 408
    move-result v9

    .line 409
    move-object v8, v1

    .line 410
    move-wide v10, v14

    .line 411
    move-wide/from16 v12, v16

    .line 413
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v3, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 420
    move-result-object v3

    .line 421
    iput-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    .line 423
    :cond_b
    iget v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 425
    iget v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 427
    iget-object v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 429
    iget-object v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 431
    iget-boolean v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 433
    if-eqz v9, :cond_c

    .line 435
    iget-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 437
    int-to-long v11, v7

    .line 438
    add-long/2addr v9, v11

    .line 439
    iput-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 441
    iget-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 443
    int-to-long v7, v8

    .line 444
    add-long/2addr v9, v7

    .line 445
    iput-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 447
    :cond_c
    :goto_7
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 449
    int-to-long v7, v3

    .line 450
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 452
    int-to-long v9, v3

    .line 453
    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 455
    iget-wide v11, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 457
    iget v13, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 459
    move-wide/from16 v30, v14

    .line 461
    int-to-long v13, v13

    .line 462
    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 464
    move-wide/from16 v32, v5

    .line 466
    int-to-long v5, v2

    .line 467
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 470
    move-result-object v24

    .line 471
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 474
    move-result-object v25

    .line 475
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 478
    move-result-object v27

    .line 479
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 482
    move-result-object v28

    .line 483
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 486
    move-result-object v29

    .line 487
    move-object/from16 v26, v3

    .line 489
    filled-new-array/range {v24 .. v29}, [Ljava/lang/Object;

    .line 492
    move-result-object v2

    .line 493
    const/16 v3, 0x7598

    .line 495
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 498
    move/from16 v9, v19

    .line 500
    move/from16 v10, v20

    .line 502
    :goto_8
    add-int/lit8 v13, v23, 0x1

    .line 504
    move/from16 v7, v21

    .line 506
    move-object/from16 v12, v22

    .line 508
    move-wide/from16 v14, v30

    .line 510
    move-wide/from16 v5, v32

    .line 512
    const/4 v3, 0x0

    .line 513
    goto/16 :goto_3

    .line 515
    :cond_d
    move-wide/from16 v32, v5

    .line 517
    move-object/from16 v22, v12

    .line 519
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 520
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 522
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    .line 525
    move-result v11

    .line 526
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 528
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    .line 531
    move-result v12

    .line 532
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 534
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    .line 537
    move-result v13

    .line 538
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 540
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    .line 543
    move-result v14

    .line 544
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 546
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    .line 549
    move-result v15

    .line 550
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 552
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    .line 555
    move-result v16

    .line 556
    move-object v8, v1

    .line 557
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/power/stats/BatteryStatsImpl;->addCpuStatsLocked(IIIIIIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 560
    goto :goto_a

    .line 561
    :catchall_3
    move-exception v0

    .line 562
    goto :goto_c

    .line 563
    :goto_9
    :try_start_5
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 564
    :try_start_6
    throw v0

    .line 565
    :cond_e
    move-wide/from16 v32, v5

    .line 567
    :goto_a
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mStepDetailsCalculator:Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;

    .line 569
    const/4 v3, 0x1

    .line 570
    iput-boolean v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    .line 572
    const/4 v3, 0x0

    .line 573
    iput-boolean v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    .line 575
    goto :goto_b

    .line 576
    :cond_f
    move-wide/from16 v32, v5

    .line 578
    :goto_b
    iget-wide v2, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 580
    const-wide/32 v5, 0x1b7740

    .line 583
    sub-long v5, v32, v5

    .line 585
    cmp-long v2, v2, v5

    .line 587
    if-gez v2, :cond_10

    .line 589
    move-wide/from16 v2, v32

    .line 591
    iput-wide v2, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 593
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 595
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 597
    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    .line 600
    :cond_10
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 601
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 602
    return-void

    .line 603
    :goto_c
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 604
    :try_start_9
    throw v0

    .line 605
    :goto_d
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 606
    throw v0
.end method

.method public final updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/32 v2, 0x36ee80

    .line 6
    if-nez p5, :cond_5

    .line 8
    iget-wide v4, p2, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    .line 10
    cmp-long p5, p3, v4

    .line 12
    if-gtz p5, :cond_1

    .line 14
    iget-wide v4, p2, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 16
    add-long/2addr v4, v2

    .line 17
    iget-wide v6, p2, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    .line 19
    iget-boolean p5, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 21
    sget v8, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 23
    if-eqz p5, :cond_0

    .line 25
    const-wide/16 v8, 0x2710

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/16 v8, 0x3a98

    .line 30
    :goto_0
    add-long/2addr v6, v8

    .line 31
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 34
    move-result-wide v4

    .line 35
    cmp-long p5, p3, v4

    .line 37
    if-gtz p5, :cond_1

    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 45
    move-result p5

    .line 46
    if-eqz p5, :cond_2

    .line 48
    return-void

    .line 49
    :cond_2
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result p5

    .line 55
    if-nez p5, :cond_4

    .line 57
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 59
    const-wide/16 v6, 0x0

    .line 61
    cmp-long p5, v4, v6

    .line 63
    if-lez p5, :cond_3

    .line 65
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 70
    move-result p5

    .line 71
    if-lez p5, :cond_3

    .line 73
    iget-wide v6, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 75
    :cond_3
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 77
    invoke-virtual {p5, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    :cond_4
    iput p1, p2, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 82
    iput v1, p2, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 84
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_5
    iget-boolean p5, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 91
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 93
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 95
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 97
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 99
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 101
    iget-object v4, p2, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 103
    iget-object v5, p2, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 105
    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerService;->mBootCompletedTimestamp:J

    .line 107
    iget-object v7, p2, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 109
    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerService;->mLastIdleTime:J

    .line 111
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 114
    move-result-wide v5

    .line 115
    iget-object v7, p2, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 117
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 119
    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 121
    add-long/2addr v5, v7

    .line 122
    sget-object v7, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 124
    aget p1, v7, p1

    .line 126
    const/high16 v7, 0x3f800000    # 1.0f

    .line 128
    if-eqz v4, :cond_9

    .line 130
    iget v8, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 132
    if-ge p1, v8, :cond_6

    .line 134
    move v8, p1

    .line 135
    :cond_6
    iget-object v9, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 137
    aget v9, v9, p1

    .line 139
    if-ge v8, v9, :cond_7

    .line 141
    goto :goto_1

    .line 142
    :cond_7
    move v0, v1

    .line 143
    :goto_1
    iput p1, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 145
    iput v8, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 147
    if-eqz v0, :cond_8

    .line 149
    iput v7, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 151
    goto :goto_2

    .line 152
    :cond_8
    iget-object v1, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 154
    aget v7, v1, p1

    .line 156
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 158
    mul-float/2addr v1, v7

    .line 159
    iput v1, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 161
    :cond_9
    :goto_2
    if-eqz p5, :cond_b

    .line 163
    if-eqz v0, :cond_a

    .line 165
    sget-object p0, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 167
    goto :goto_3

    .line 168
    :cond_a
    sget-object p0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    .line 170
    goto :goto_3

    .line 171
    :cond_b
    if-eqz v0, :cond_d

    .line 173
    if-eqz p0, :cond_c

    .line 175
    sget-object p0, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 177
    goto :goto_3

    .line 178
    :cond_c
    sget-object p0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 180
    goto :goto_3

    .line 181
    :cond_d
    if-eqz p0, :cond_e

    .line 183
    sget-object p0, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 185
    goto :goto_3

    .line 186
    :cond_e
    sget-object p0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 188
    :goto_3
    aget-wide p0, p0, p1

    .line 190
    long-to-float p0, p0

    .line 191
    mul-float/2addr p0, v7

    .line 192
    float-to-long p0, p0

    .line 193
    cmp-long p5, p0, v2

    .line 195
    if-lez p5, :cond_f

    .line 197
    goto :goto_4

    .line 198
    :cond_f
    move-wide v2, p0

    .line 199
    :goto_4
    add-long/2addr p3, v2

    .line 200
    invoke-static {p3, p4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 203
    move-result-wide p0

    .line 204
    iput-wide p0, p2, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    .line 206
    return-void
.end method

.method public final writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_2

    .line 13
    const-wide v0, 0x10b00000020L

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 24
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 32
    move-result v4

    .line 33
    const-wide v5, 0x10900000001L

    .line 38
    if-ge v3, v4, :cond_1

    .line 40
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Landroid/util/SparseArray;

    .line 52
    const-wide v8, 0x20b00000001L

    .line 57
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 60
    move-result-wide v8

    .line 61
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 64
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 67
    move-result v4

    .line 68
    add-int/lit8 v4, v4, -0x1

    .line 70
    :goto_1
    if-ltz v4, :cond_0

    .line 72
    const-wide v5, 0x20b00000002L

    .line 77
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 80
    move-result-wide v5

    .line 81
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 84
    move-result-object v10

    .line 85
    check-cast v10, Landroid/util/Pair;

    .line 87
    const-wide v11, 0x10500000001L

    .line 92
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 95
    move-result v13

    .line 96
    invoke-virtual {p1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 99
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 101
    check-cast v11, Ljava/lang/Long;

    .line 103
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 106
    move-result-wide v11

    .line 107
    new-instance v13, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-static {v11, v12, v13}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 115
    move-result-object v11

    .line 116
    const-wide v12, 0x10900000002L

    .line 121
    invoke-virtual {p1, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 124
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 126
    check-cast v10, Ljava/lang/String;

    .line 128
    const-wide v11, 0x10900000003L

    .line 133
    invoke-virtual {p1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 136
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 139
    add-int/lit8 v4, v4, -0x1

    .line 141
    goto :goto_1

    .line 142
    :cond_0
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 147
    goto :goto_0

    .line 148
    :cond_1
    const-wide v2, 0x10b00000002L

    .line 153
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 156
    move-result-wide v2

    .line 157
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 159
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 164
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 167
    move-result-object v4

    .line 168
    const-wide v5, 0x10900000006L

    .line 173
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 176
    const-wide v4, 0x10500000003L

    .line 181
    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 183
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 186
    const-wide v4, 0x10500000004L

    .line 191
    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 193
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 196
    const-wide v4, 0x10800000005L

    .line 201
    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 203
    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 206
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 209
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 212
    :cond_2
    return-void
.end method

.method public final writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 22
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 30
    if-eqz p2, :cond_0

    .line 32
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 34
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const-wide v5, 0x20b0000000cL

    .line 48
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 51
    move-result-wide v5

    .line 52
    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 54
    const/4 v8, -0x1

    .line 55
    const-wide v9, 0x10b00000001L

    .line 60
    invoke-virtual {v4, p1, v9, v10, v8}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 63
    iget-boolean v4, v7, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 65
    const-wide v8, 0x10800000002L

    .line 70
    invoke-virtual {p1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 73
    const-wide v8, 0x10300000003L

    .line 78
    invoke-virtual {p1, v8, v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 81
    iget-wide v8, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 83
    const-wide v10, 0x10300000004L

    .line 88
    invoke-virtual {p1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 91
    iget-wide v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 93
    const-wide v9, 0x10300000005L

    .line 98
    invoke-virtual {p1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 101
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 104
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method
