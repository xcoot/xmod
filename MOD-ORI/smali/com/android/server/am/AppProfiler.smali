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

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v17

    .line 10
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 14
    .line 15
    const/4 v15, 0x0

    .line 16
    const/4 v13, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iput-boolean v15, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 20
    .line 21
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_14

    .line 29
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

    .line 33
    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 40
    .line 41
    monitor-enter v1

    .line 42
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 43
    .line 44
    new-instance v4, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-direct {v4, v5}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 55
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 58
    .line 59
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    move v4, v15

    .line 68
    move-wide/from16 v5, v19

    .line 69
    .line 70
    :goto_1
    if-ge v4, v1, :cond_2

    .line 71
    .line 72
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 73
    .line 74
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 75
    .line 76
    monitor-enter v7

    .line 77
    :try_start_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 78
    .line 79
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 80
    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 86
    .line 87
    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 88
    .line 89
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v8, Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-ltz v8, :cond_1

    .line 98
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

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 109
    .line 110
    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 111
    .line 112
    invoke-static {v7, v13, v13}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    add-long/2addr v5, v7

    .line 117
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 118
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

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_3
    move-wide/from16 v30, v19

    .line 126
    .line 127
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 133
    .line 134
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 135
    .line 136
    monitor-enter v3

    .line 137
    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 138
    .line 139
    .line 140
    move-result-wide v22

    .line 141
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 142
    .line 143
    .line 144
    move-result-wide v24

    .line 145
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 146
    .line 147
    .line 148
    move-result-wide v26

    .line 149
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 150
    .line 151
    .line 152
    move-result-wide v28

    .line 153
    const-wide/16 v1, 0x400

    .line 154
    .line 155
    mul-long v32, v22, v1

    .line 156
    .line 157
    mul-long v34, v24, v1

    .line 158
    .line 159
    mul-long v36, v26, v1

    .line 160
    .line 161
    mul-long v38, v28, v1

    .line 162
    .line 163
    mul-long v40, v30, v1

    .line 164
    .line 165
    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 171
    .line 172
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 173
    .line 174
    move-object/from16 v21, v1

    .line 175
    .line 176
    invoke-virtual/range {v21 .. v31}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 177
    .line 178
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

    .line 189
    .line 190
    move v1, v15

    .line 191
    :goto_6
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 192
    .line 193
    monitor-enter v2

    .line 194
    :try_start_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-gtz v3, :cond_6

    .line 201
    .line 202
    iget-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 203
    .line 204
    if-nez v3, :cond_5

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_5
    const-string v3, "ActivityManager"

    .line 208
    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v5, "Collected pss of "

    .line 215
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, " processes in "

    .line 223
    .line 224
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v5

    .line 231
    sub-long v5, v5, v17

    .line 232
    .line 233
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string/jumbo v1, "ms"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    :goto_7
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    .line 253
    .line 254
    monitor-exit v2

    .line 255
    return-void

    .line 256
    :catchall_4
    move-exception v0

    .line 257
    goto/16 :goto_13

    .line 258
    .line 259
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    .line 266
    .line 267
    iget v12, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 268
    .line 269
    iget v10, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 270
    .line 271
    iget-wide v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 272
    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 274
    .line 275
    .line 276
    move-result-wide v6

    .line 277
    iget-object v8, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 278
    .line 279
    if-eqz v8, :cond_7

    .line 280
    .line 281
    iget v8, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 282
    .line 283
    if-ne v12, v8, :cond_7

    .line 284
    .line 285
    const-wide/16 v8, 0x3e8

    .line 286
    .line 287
    add-long/2addr v8, v4

    .line 288
    cmp-long v6, v8, v6

    .line 289
    .line 290
    if-gez v6, :cond_7

    .line 291
    .line 292
    iget v6, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 293
    .line 294
    move-object v11, v3

    .line 295
    move v8, v6

    .line 296
    goto :goto_8

    .line 297
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 298
    .line 299
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

    .line 304
    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 306
    .line 307
    .line 308
    move-result-wide v2

    .line 309
    iget-object v6, v11, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 310
    .line 311
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 312
    .line 313
    const/4 v9, 0x1

    .line 314
    if-eqz v7, :cond_a

    .line 315
    .line 316
    iget-boolean v15, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 317
    .line 318
    iget-boolean v13, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 319
    .line 320
    if-nez v13, :cond_8

    .line 321
    .line 322
    const/4 v15, 0x0

    .line 323
    goto :goto_9

    .line 324
    :cond_8
    iput-boolean v9, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 325
    .line 326
    :goto_9
    if-nez v15, :cond_9

    .line 327
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

    .line 332
    .line 333
    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 334
    .line 335
    iget-object v13, v7, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 336
    .line 337
    monitor-enter v13

    .line 338
    :try_start_7
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 339
    .line 340
    invoke-virtual {v7, v6}, Landroid/util/IntArray;->indexOf(I)I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-ltz v6, :cond_b

    .line 345
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

    .line 351
    .line 352
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 353
    .line 354
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 355
    .line 356
    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 357
    .line 358
    if-eqz v6, :cond_c

    .line 359
    .line 360
    goto :goto_a

    .line 361
    :cond_c
    const/4 v13, 0x0

    .line 362
    invoke-static {v8, v14, v13}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 363
    .line 364
    .line 365
    move-result-wide v6

    .line 366
    goto :goto_e

    .line 367
    :goto_d
    move-wide/from16 v6, v19

    .line 368
    .line 369
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 370
    .line 371
    .line 372
    move-result-wide v21

    .line 373
    iget-object v15, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 374
    .line 375
    monitor-enter v15

    .line 376
    cmp-long v23, v6, v19

    .line 377
    .line 378
    if-eqz v23, :cond_f

    .line 379
    .line 380
    :try_start_8
    iget-object v13, v11, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 381
    .line 382
    if-eqz v13, :cond_e

    .line 383
    .line 384
    iget v13, v11, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 385
    .line 386
    if-ne v13, v12, :cond_e

    .line 387
    .line 388
    iget v13, v11, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 389
    .line 390
    if-ne v13, v8, :cond_e

    .line 391
    .line 392
    move/from16 v24, v10

    .line 393
    .line 394
    iget-wide v9, v11, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 395
    .line 396
    cmp-long v4, v9, v4

    .line 397
    .line 398
    if-nez v4, :cond_e

    .line 399
    .line 400
    add-int/lit8 v26, v1, 0x1

    .line 401
    .line 402
    iget-object v1, v11, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 403
    .line 404
    iget v4, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 405
    .line 406
    if-ltz v4, :cond_d

    .line 407
    .line 408
    iget v5, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 409
    .line 410
    iget-object v9, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 411
    .line 412
    aput v5, v9, v4

    .line 413
    .line 414
    iget-object v9, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 415
    .line 416
    iget v10, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 417
    .line 418
    aput v10, v9, v4

    .line 419
    .line 420
    iput v5, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 421
    .line 422
    const/4 v4, -0x1

    .line 423
    iput v4, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 424
    .line 425
    :cond_d
    const/16 v16, 0x0

    .line 426
    .line 427
    aget-wide v9, v14, v16

    .line 428
    .line 429
    const/4 v1, 0x1

    .line 430
    aget-wide v27, v14, v1

    .line 431
    .line 432
    const/4 v1, 0x2

    .line 433
    aget-wide v29, v14, v1

    .line 434
    .line 435
    sub-long v21, v21, v2

    .line 436
    .line 437
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 438
    .line 439
    .line 440
    move-result-wide v31
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 441
    move-object/from16 v1, p0

    .line 442
    .line 443
    move-object v2, v11

    .line 444
    move v3, v12

    .line 445
    move-wide v4, v6

    .line 446
    move-wide/from16 v42, v6

    .line 447
    .line 448
    move-wide v6, v9

    .line 449
    move v13, v8

    .line 450
    move-wide/from16 v8, v27

    .line 451
    .line 452
    move-object/from16 v25, v11

    .line 453
    .line 454
    move-wide/from16 v10, v29

    .line 455
    .line 456
    move v0, v12

    .line 457
    move/from16 v12, v24

    .line 458
    .line 459
    move/from16 v44, v13

    .line 460
    .line 461
    move-object/from16 v24, v14

    .line 462
    .line 463
    const/16 v23, 0x0

    .line 464
    .line 465
    move-wide/from16 v13, v21

    .line 466
    .line 467
    move-object/from16 v22, v15

    .line 468
    .line 469
    move/from16 v21, v16

    .line 470
    .line 471
    move-wide/from16 v15, v31

    .line 472
    .line 473
    :try_start_9
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/am/AppProfiler;->recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V

    .line 474
    .line 475
    .line 476
    move/from16 v1, v26

    .line 477
    .line 478
    goto :goto_10

    .line 479
    :catchall_5
    move-exception v0

    .line 480
    goto/16 :goto_11

    .line 481
    .line 482
    :catchall_6
    move-exception v0

    .line 483
    move-object/from16 v22, v15

    .line 484
    .line 485
    goto/16 :goto_11

    .line 486
    .line 487
    :cond_e
    move-wide/from16 v42, v6

    .line 488
    .line 489
    move/from16 v44, v8

    .line 490
    .line 491
    move-object/from16 v25, v11

    .line 492
    .line 493
    move v0, v12

    .line 494
    move-object/from16 v24, v14

    .line 495
    .line 496
    move-object/from16 v22, v15

    .line 497
    .line 498
    const/16 v21, 0x0

    .line 499
    .line 500
    const/16 v23, 0x0

    .line 501
    .line 502
    goto :goto_f

    .line 503
    :cond_f
    move-wide/from16 v42, v6

    .line 504
    .line 505
    move/from16 v44, v8

    .line 506
    .line 507
    move-object/from16 v25, v11

    .line 508
    .line 509
    move v0, v12

    .line 510
    move-object/from16 v23, v13

    .line 511
    .line 512
    move-object/from16 v24, v14

    .line 513
    .line 514
    move-object/from16 v22, v15

    .line 515
    .line 516
    const/16 v21, 0x0

    .line 517
    .line 518
    :goto_f
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 519
    .line 520
    .line 521
    :goto_10
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 522
    const-wide/32 v2, 0x80000

    .line 523
    .line 524
    .line 525
    move-wide/from16 v6, v42

    .line 526
    .line 527
    cmp-long v2, v6, v2

    .line 528
    .line 529
    if-lez v2, :cond_11

    .line 530
    .line 531
    move-object/from16 v3, v25

    .line 532
    .line 533
    iget-object v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 534
    .line 535
    if-eqz v2, :cond_11

    .line 536
    .line 537
    iget v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 538
    .line 539
    if-ne v2, v0, :cond_11

    .line 540
    .line 541
    iget v0, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 542
    .line 543
    move/from16 v15, v44

    .line 544
    .line 545
    if-ne v0, v15, :cond_11

    .line 546
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    const-string v2, "GL mtrack="

    .line 550
    .line 551
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    iget-object v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 555
    .line 556
    new-instance v3, Landroid/os/Debug$MemoryInfo;

    .line 557
    .line 558
    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-static {v15, v3}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 562
    .line 563
    .line 564
    const/16 v4, 0xf

    .line 565
    .line 566
    invoke-virtual {v3, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    const-string v3, ", process="

    .line 574
    .line 575
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 579
    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    long-to-int v2, v6

    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    const/16 v3, 0x12

    .line 589
    .line 590
    invoke-static {v3, v15, v2, v0}, Landroid/util/PerfLog;->e(IIILjava/lang/String;)V

    .line 591
    .line 592
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

    .line 600
    .line 601
    move-object/from16 v24, v14

    .line 602
    .line 603
    move/from16 v21, v15

    .line 604
    .line 605
    :cond_11
    :goto_12
    move-object/from16 v0, p0

    .line 606
    .line 607
    move/from16 v15, v21

    .line 608
    .line 609
    move-object/from16 v13, v23

    .line 610
    .line 611
    move-object/from16 v14, v24

    .line 612
    .line 613
    goto/16 :goto_6

    .line 614
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

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v11

    .line 10
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 14
    .line 15
    const/4 v13, 0x0

    .line 16
    const/4 v14, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iput-boolean v13, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 20
    .line 21
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_15

    .line 29
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

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 41
    .line 42
    new-instance v4, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-direct {v4, v5}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 53
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 56
    .line 57
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    move v4, v13

    .line 66
    const-wide/16 v5, 0x0

    .line 67
    .line 68
    :goto_1
    if-ge v4, v1, :cond_2

    .line 69
    .line 70
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    .line 72
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 73
    .line 74
    monitor-enter v7

    .line 75
    :try_start_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 76
    .line 77
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 78
    .line 79
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 84
    .line 85
    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 86
    .line 87
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v8, Landroid/util/SparseArray;

    .line 90
    .line 91
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-ltz v8, :cond_1

    .line 96
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

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 107
    .line 108
    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 109
    .line 110
    invoke-static {v7, v14}, Landroid/os/Debug;->getRss(I[J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v7

    .line 114
    add-long/2addr v5, v7

    .line 115
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 116
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

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    const-wide/16 v26, 0x0

    .line 124
    .line 125
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 129
    .line 130
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 131
    .line 132
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 133
    .line 134
    monitor-enter v3

    .line 135
    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 136
    .line 137
    .line 138
    move-result-wide v18

    .line 139
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 140
    .line 141
    .line 142
    move-result-wide v20

    .line 143
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 144
    .line 145
    .line 146
    move-result-wide v22

    .line 147
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 148
    .line 149
    .line 150
    move-result-wide v24

    .line 151
    const-wide/16 v1, 0x400

    .line 152
    .line 153
    mul-long v28, v18, v1

    .line 154
    .line 155
    mul-long v30, v20, v1

    .line 156
    .line 157
    mul-long v32, v22, v1

    .line 158
    .line 159
    mul-long v34, v24, v1

    .line 160
    .line 161
    mul-long v36, v26, v1

    .line 162
    .line 163
    invoke-static/range {v28 .. v37}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 171
    .line 172
    move-object/from16 v17, v1

    .line 173
    .line 174
    invoke-virtual/range {v17 .. v27}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 175
    .line 176
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

    .line 187
    .line 188
    monitor-enter v2

    .line 189
    :try_start_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-gtz v3, :cond_6

    .line 196
    .line 197
    iget-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 198
    .line 199
    if-nez v3, :cond_5

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_5
    const-string v3, "ActivityManager"

    .line 203
    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v5, "Collected rss of "

    .line 210
    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, " processes in "

    .line 218
    .line 219
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v5

    .line 226
    sub-long/2addr v5, v11

    .line 227
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string/jumbo v1, "ms"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :goto_7
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    .line 247
    .line 248
    monitor-exit v2

    .line 249
    return-void

    .line 250
    :catchall_4
    move-exception v0

    .line 251
    goto/16 :goto_14

    .line 252
    .line 253
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    .line 260
    .line 261
    iget v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 262
    .line 263
    iget v6, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 264
    .line 265
    iget-wide v7, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 266
    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 268
    .line 269
    .line 270
    move-result-wide v9

    .line 271
    iget-object v5, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 272
    .line 273
    if-eqz v5, :cond_7

    .line 274
    .line 275
    iget v5, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 276
    .line 277
    if-ne v4, v5, :cond_7

    .line 278
    .line 279
    const-wide/16 v17, 0x3e8

    .line 280
    .line 281
    add-long v17, v7, v17

    .line 282
    .line 283
    cmp-long v5, v17, v9

    .line 284
    .line 285
    if-gez v5, :cond_7

    .line 286
    .line 287
    iget v5, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 291
    .line 292
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

    .line 297
    .line 298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v9

    .line 302
    iget-object v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 303
    .line 304
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 305
    .line 306
    if-eqz v13, :cond_a

    .line 307
    .line 308
    iget-boolean v14, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 309
    .line 310
    iget-boolean v15, v13, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 311
    .line 312
    if-nez v15, :cond_8

    .line 313
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

    .line 319
    .line 320
    :goto_9
    if-nez v14, :cond_9

    .line 321
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

    .line 327
    .line 328
    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 329
    .line 330
    iget-object v14, v13, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 331
    .line 332
    monitor-enter v14

    .line 333
    :try_start_7
    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 334
    .line 335
    invoke-virtual {v13, v2}, Landroid/util/IntArray;->indexOf(I)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-ltz v2, :cond_b

    .line 340
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

    .line 345
    .line 346
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 347
    .line 348
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 349
    .line 350
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 351
    .line 352
    if-eqz v2, :cond_c

    .line 353
    .line 354
    goto :goto_a

    .line 355
    :cond_c
    const/4 v13, 0x0

    .line 356
    invoke-static {v5, v13}, Landroid/os/Debug;->getRss(I[J)J

    .line 357
    .line 358
    .line 359
    move-result-wide v14

    .line 360
    goto :goto_e

    .line 361
    :goto_d
    const-wide/16 v14, 0x0

    .line 362
    .line 363
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 364
    .line 365
    .line 366
    move-result-wide v20

    .line 367
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 368
    .line 369
    monitor-enter v2

    .line 370
    const-wide/16 v18, 0x0

    .line 371
    .line 372
    cmp-long v16, v14, v18

    .line 373
    .line 374
    if-eqz v16, :cond_f

    .line 375
    .line 376
    :try_start_8
    iget-object v13, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 377
    .line 378
    if-eqz v13, :cond_f

    .line 379
    .line 380
    iget v13, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 381
    .line 382
    if-ne v13, v4, :cond_f

    .line 383
    .line 384
    iget v13, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 385
    .line 386
    if-ne v13, v5, :cond_f

    .line 387
    .line 388
    move-wide/from16 v22, v11

    .line 389
    .line 390
    iget-wide v11, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 391
    .line 392
    cmp-long v5, v11, v7

    .line 393
    .line 394
    if-nez v5, :cond_e

    .line 395
    .line 396
    add-int/lit8 v11, v1, 0x1

    .line 397
    .line 398
    iget-object v1, v3, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 399
    .line 400
    iget v5, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 401
    .line 402
    if-ltz v5, :cond_d

    .line 403
    .line 404
    iget v7, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 405
    .line 406
    iget-object v8, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 407
    .line 408
    aput v7, v8, v5

    .line 409
    .line 410
    iget-object v8, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 411
    .line 412
    iget v12, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 413
    .line 414
    aput v12, v8, v5

    .line 415
    .line 416
    iput v7, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 417
    .line 418
    const/4 v5, -0x1

    .line 419
    iput v5, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 420
    .line 421
    :cond_d
    sub-long v7, v20, v9

    .line 422
    .line 423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 424
    .line 425
    .line 426
    move-result-wide v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 427
    move-object/from16 v1, p0

    .line 428
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

    .line 434
    .line 435
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

    .line 446
    .line 447
    goto :goto_f

    .line 448
    :goto_10
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 449
    .line 450
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

    .line 459
    .line 460
    const-wide/16 v18, 0x0

    .line 461
    .line 462
    :goto_13
    move-wide/from16 v11, v22

    .line 463
    .line 464
    const/4 v13, 0x0

    .line 465
    const/4 v14, 0x0

    .line 466
    goto/16 :goto_6

    .line 467
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

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 27
    .line 28
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 29
    .line 30
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 31
    .line 32
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    iput v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 40
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 50
    .line 51
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 52
    .line 53
    new-instance v2, Lcom/android/server/am/AppProfiler$ProfileData;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 59
    .line 60
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    .line 61
    .line 62
    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 66
    .line 67
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    .line 68
    .line 69
    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 73
    .line 74
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    .line 76
    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    .line 81
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 90
    .line 91
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 95
    .line 96
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 97
    .line 98
    new-instance v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/Object;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 111
    .line 112
    new-instance v0, Lcom/android/server/am/AppProfiler$1;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$1;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Lcom/android/server/am/AppProfiler$1;

    .line 118
    .line 119
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 122
    .line 123
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 124
    .line 125
    new-instance p1, Lcom/android/server/am/AppProfiler$BgHandler;

    .line 126
    .line 127
    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppProfiler$BgHandler;-><init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 131
    .line 132
    iput-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 133
    .line 134
    new-instance p1, Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    .line 135
    .line 136
    invoke-direct {p1, p0}, Lcom/android/server/am/AppProfiler$ProcessCpuThread;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    .line 140
    .line 141
    new-instance p1, Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    .line 142
    .line 143
    const-string/jumbo p2, "onTrim"

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    .line 150
    .line 151
    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    .line 152
    .line 153
    return-void
.end method


# virtual methods
.method public final addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 20
    .line 21
    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 22
    .line 23
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 24
    .line 25
    iget-wide v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-gez v1, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public final clearProfilerLPf()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final doLowMemReportIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 22
    .line 23
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 28
    .line 29
    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 30
    .line 31
    const/16 v3, 0x10

    .line 32
    .line 33
    if-lt v2, v3, :cond_0

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    const/4 v7, 0x0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 49
    .line 50
    const-wide/32 v3, 0x493e0

    .line 51
    .line 52
    .line 53
    add-long/2addr v1, v3

    .line 54
    cmp-long v1, v5, v1

    .line 55
    .line 56
    if-gez v1, :cond_2

    .line 57
    .line 58
    move v0, v7

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iput-wide v5, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 61
    .line 62
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
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

    .line 84
    .line 85
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 89
    .line 90
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 91
    .line 92
    new-instance v10, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;

    .line 93
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

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v10, v7}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 102
    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 109
    .line 110
    const/16 v0, 0x21

    .line 111
    .line 112
    invoke-virtual {p1, v0, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 124
    .line 125
    monitor-enter p1

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 127
    .line 128
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

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_4

    .line 12
    .line 13
    const-string v0, "  Mem watch processes:"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    :goto_0
    if-ltz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/lit8 v4, v4, -0x1

    .line 49
    .line 50
    :goto_1
    if-ltz v4, :cond_2

    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v6, "    "

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v6, 0x2f

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Landroid/util/Pair;

    .line 88
    .line 89
    const-string v7, ": "

    .line 90
    .line 91
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v7, Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    invoke-static {v7, v8, v5}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 106
    .line 107
    if-eqz v7, :cond_1

    .line 108
    .line 109
    const-string v7, ", report to "

    .line 110
    .line 111
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v6, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v4, v4, -0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    const-string v0, "  mMemWatchDumpProcName="

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v0, "  mMemWatchDumpUri="

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const-string v0, "  mMemWatchDumpPid="

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 162
    .line 163
    .line 164
    const-string v0, "  mMemWatchDumpUid="

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 172
    .line 173
    .line 174
    const-string v0, "  mMemWatchIsUserInitiated="

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 180
    .line 181
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 182
    .line 183
    .line 184
    :cond_4
    return p2
.end method

.method public final dumpProcessesToGc(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_3

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v3, v2, :cond_3

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 34
    .line 35
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    if-nez v4, :cond_2

    .line 45
    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 49
    .line 50
    .line 51
    :cond_1
    const-string p3, "  Processes that are waiting to GC:"

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p3, 0x1

    .line 57
    move v4, p3

    .line 58
    :cond_2
    const-string v6, "    Process "

    .line 59
    .line 60
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 67
    .line 68
    const-string v6, "      lowMem="

    .line 69
    .line 70
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v6, v5, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 74
    .line 75
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 76
    .line 77
    .line 78
    const-string v6, ", last gced="

    .line 79
    .line 80
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-wide v6, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 84
    .line 85
    sub-long v6, v0, v6

    .line 86
    .line 87
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 88
    .line 89
    .line 90
    const-string v6, " ms ago, last lowMem="

    .line 91
    .line 92
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-wide v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 96
    .line 97
    sub-long v5, v0, v5

    .line 98
    .line 99
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 100
    .line 101
    .line 102
    const-string v5, " ms ago"

    .line 103
    .line 104
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 108
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
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

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 8
    .line 9
    return p0
.end method

.method public final getLowRamTimeSinceIdleLPr(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    sub-long v2, p1, v0

    .line 10
    .line 11
    :cond_0
    return-wide v2
.end method

.method public final handleAbortDumpHeap(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 21
    .line 22
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 23
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 9
    .line 10
    invoke-virtual {v3, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroid/util/Pair;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/util/Pair;

    .line 26
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

    .line 32
    .line 33
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v5, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    move-object v3, v4

    .line 49
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 50
    .line 51
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 52
    .line 53
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, -0x1

    .line 56
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 57
    .line 58
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 59
    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 65
    .line 66
    const-string/jumbo v4, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v4, "com.android.shell"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const-string v4, "android.intent.extra.UID"

    .line 79
    .line 80
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    const-string/jumbo v4, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string/jumbo v4, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    const-string/jumbo v4, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    const-string/jumbo v3, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 116
    .line 117
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

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    :cond_0
    return v2

    .line 12
    :cond_1
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 13
    .line 14
    if-gtz p0, :cond_2

    .line 15
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canGcNowLocked()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsLPf()V

    .line 13
    .line 14
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

    .line 20
    .line 21
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

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_5

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 28
    .line 29
    iget v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    .line 30
    .line 31
    const/16 v4, 0xc8

    .line 32
    .line 33
    if-gt v3, v4, :cond_1

    .line 34
    .line 35
    iget-boolean v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    :cond_1
    iget-wide v2, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 44
    .line 45
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 46
    .line 47
    add-long/2addr v2, v4

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    cmp-long v2, v2, v4

    .line 53
    .line 54
    if-gtz v2, :cond_4

    .line 55
    .line 56
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 57
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    iput-wide v2, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 63
    .line 64
    iget-object v2, v0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    iget-boolean v3, v0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    iput-boolean v1, v0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 73
    .line 74
    invoke-interface {v2}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {v2}, Landroid/app/IApplicationThread;->processInBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    :catch_0
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final printCurrentCpuState(Ljava/lang/StringBuilder;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
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

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(ILcom/android/server/am/ProcessRecord;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
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

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 32
    .line 33
    .line 34
    iput p4, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 35
    .line 36
    iget-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    .line 39
    .line 40
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

    .line 45
    .line 46
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 49
    .line 50
    invoke-interface {v0, p2, p3, p4}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_3
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 56
    .line 57
    iget-object p2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    .line 61
    .line 62
    :catch_1
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 65
    .line 66
    iput-object v1, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 67
    .line 68
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 69
    .line 70
    sget p1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 71
    .line 72
    if-ne p0, p1, :cond_2

    .line 73
    .line 74
    move-object p3, v1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {p0, p4, p1}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(ILcom/android/server/am/ProcessRecord;)V

    .line 77
    .line 78
    .line 79
    if-eqz p3, :cond_2

    .line 80
    .line 81
    iget-object p0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    :try_start_5
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    .line 87
    .line 88
    :catch_2
    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    .line 89
    .line 90
    iget-object p0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 91
    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 95
    .line 96
    .line 97
    :catch_3
    :cond_3
    return-void

    .line 98
    :catch_4
    :try_start_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string p1, "Process disappeared"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 106
    :goto_3
    if-eqz p3, :cond_4

    .line 107
    .line 108
    iget-object p1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 113
    .line 114
    .line 115
    :catch_5
    :cond_4
    throw p0
.end method

.method public final recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-wide/from16 v13, p3

    .line 6
    .line 7
    move-wide/from16 v10, p7

    .line 8
    .line 9
    move-wide/from16 v8, p9

    .line 10
    .line 11
    iget-object v15, v12, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 12
    .line 13
    iget v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 14
    .line 15
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 16
    .line 17
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 18
    .line 19
    const-wide/16 v4, 0x400

    .line 20
    .line 21
    mul-long v31, v13, v4

    .line 22
    .line 23
    mul-long v21, p5, v4

    .line 24
    .line 25
    mul-long v23, v10, v4

    .line 26
    .line 27
    mul-long v25, v8, v4

    .line 28
    .line 29
    move/from16 v16, v1

    .line 30
    .line 31
    move/from16 v17, v2

    .line 32
    .line 33
    move-object/from16 v18, v3

    .line 34
    .line 35
    move-wide/from16 v19, v31

    .line 36
    .line 37
    move/from16 v27, p11

    .line 38
    .line 39
    move/from16 v28, p2

    .line 40
    .line 41
    move-wide/from16 v29, p12

    .line 42
    .line 43
    invoke-static/range {v16 .. v30}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    .line 44
    .line 45
    .line 46
    move-wide/from16 v1, p14

    .line 47
    .line 48
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 49
    .line 50
    const/16 v16, 0x1

    .line 51
    .line 52
    move-object/from16 v1, p1

    .line 53
    .line 54
    move-wide/from16 v2, p3

    .line 55
    .line 56
    move-wide/from16 v4, p5

    .line 57
    .line 58
    move-wide/from16 v6, p9

    .line 59
    .line 60
    move/from16 v8, v16

    .line 61
    .line 62
    move/from16 v9, p11

    .line 63
    .line 64
    move-wide/from16 v10, p12

    .line 65
    .line 66
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 67
    .line 68
    .line 69
    iget-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 70
    .line 71
    const-wide/16 v3, 0x0

    .line 72
    .line 73
    cmp-long v1, v1, v3

    .line 74
    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 78
    .line 79
    :cond_0
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 80
    .line 81
    move-wide/from16 v1, p7

    .line 82
    .line 83
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    .line 84
    .line 85
    const/16 v3, 0xe

    .line 86
    .line 87
    move/from16 v4, p2

    .line 88
    .line 89
    if-lt v4, v3, :cond_1

    .line 90
    .line 91
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    .line 92
    .line 93
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    .line 94
    .line 95
    :cond_1
    move-wide/from16 v1, p9

    .line 96
    .line 97
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 98
    .line 99
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/util/SparseArray;

    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Landroid/util/Pair;

    .line 123
    .line 124
    if-nez v3, :cond_2

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    move-object v3, v1

    .line 131
    check-cast v3, Landroid/util/Pair;

    .line 132
    .line 133
    :cond_2
    if-eqz v3, :cond_3

    .line 134
    .line 135
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v1, Ljava/lang/Long;

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    const/4 v1, 0x0

    .line 141
    :goto_0
    if-eqz v1, :cond_6

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    cmp-long v3, v31, v3

    .line 148
    .line 149
    if-ltz v3, :cond_6

    .line 150
    .line 151
    iget-object v3, v12, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 152
    .line 153
    if-eqz v3, :cond_6

    .line 154
    .line 155
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 156
    .line 157
    if-nez v3, :cond_6

    .line 158
    .line 159
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 160
    .line 161
    const-string v4, " exceeded pss limit "

    .line 162
    .line 163
    const-string v5, "Process "

    .line 164
    .line 165
    const-string v6, "ActivityManager"

    .line 166
    .line 167
    if-nez v3, :cond_5

    .line 168
    .line 169
    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_4

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ", but debugging not enabled"

    .line 191
    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, "; reporting"

    .line 218
    .line 219
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v12, v2}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    .line 230
    .line 231
    .line 232
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mChimera:Lcom/android/server/chimera/ChimeraManagerService;

    .line 233
    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    iget v1, v15, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 237
    .line 238
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 239
    .line 240
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 241
    .line 242
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 243
    .line 244
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/chimera/ChimeraManagerService;->checkProcessInHeimdall(IILjava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_7
    return-void
.end method

.method public final recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-wide/from16 v13, p3

    .line 6
    .line 7
    iget-object v15, v12, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 8
    .line 9
    iget v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 10
    .line 11
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 12
    .line 13
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 14
    .line 15
    const-wide/16 v31, 0x400

    .line 16
    .line 17
    mul-long v25, v13, v31

    .line 18
    .line 19
    const-wide/16 v19, 0x0

    .line 20
    .line 21
    const-wide/16 v21, 0x0

    .line 22
    .line 23
    const-wide/16 v23, 0x0

    .line 24
    .line 25
    move/from16 v16, v1

    .line 26
    .line 27
    move/from16 v17, v2

    .line 28
    .line 29
    move-object/from16 v18, v3

    .line 30
    .line 31
    move/from16 v27, p5

    .line 32
    .line 33
    move/from16 v28, p2

    .line 34
    .line 35
    move-wide/from16 v29, p6

    .line 36
    .line 37
    invoke-static/range {v16 .. v30}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    .line 38
    .line 39
    .line 40
    move-wide/from16 v1, p8

    .line 41
    .line 42
    iput-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 43
    .line 44
    const/4 v8, 0x1

    .line 45
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .line 49
    move-object/from16 v1, p1

    .line 50
    .line 51
    move-wide/from16 v6, p3

    .line 52
    .line 53
    move/from16 v9, p5

    .line 54
    .line 55
    move-wide/from16 v10, p6

    .line 56
    .line 57
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 58
    .line 59
    .line 60
    iget-wide v1, v12, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 61
    .line 62
    const-wide/16 v3, 0x0

    .line 63
    .line 64
    cmp-long v1, v1, v3

    .line 65
    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 69
    .line 70
    :cond_0
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 71
    .line 72
    const/16 v1, 0xe

    .line 73
    .line 74
    move/from16 v2, p2

    .line 75
    .line 76
    if-lt v2, v1, :cond_1

    .line 77
    .line 78
    iput-wide v13, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    .line 79
    .line 80
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/util/SparseArray;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Landroid/util/Pair;

    .line 105
    .line 106
    if-nez v4, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    move-object v4, v1

    .line 113
    check-cast v4, Landroid/util/Pair;

    .line 114
    .line 115
    :cond_2
    if-eqz v4, :cond_3

    .line 116
    .line 117
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Ljava/lang/Long;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    move-object v1, v3

    .line 123
    :goto_0
    if-eqz v1, :cond_6

    .line 124
    .line 125
    iget v4, v12, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 126
    .line 127
    invoke-static {v4, v3, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    mul-long v3, v3, v31

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    cmp-long v3, v3, v5

    .line 138
    .line 139
    if-ltz v3, :cond_6

    .line 140
    .line 141
    iget-object v3, v12, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 142
    .line 143
    if-eqz v3, :cond_6

    .line 144
    .line 145
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 146
    .line 147
    if-nez v3, :cond_6

    .line 148
    .line 149
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 150
    .line 151
    const-string v4, " exceeded pss limit "

    .line 152
    .line 153
    const-string v5, "Process "

    .line 154
    .line 155
    const-string v6, "ActivityManager"

    .line 156
    .line 157
    if-nez v3, :cond_5

    .line 158
    .line 159
    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_4

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ", but debugging not enabled"

    .line 181
    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v1, "; reporting"

    .line 208
    .line 209
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v12, v2}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    .line 220
    .line 221
    .line 222
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mChimera:Lcom/android/server/chimera/ChimeraManagerService;

    .line 223
    .line 224
    if-eqz v0, :cond_7

    .line 225
    .line 226
    iget v1, v15, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 227
    .line 228
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 229
    .line 230
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 233
    .line 234
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/chimera/ChimeraManagerService;->checkProcessInHeimdall(IILjava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_7
    return-void
.end method

.method public final requestPssAllProcsLPr(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v1

    .line 14
    :goto_0
    if-ltz v2, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
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

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 55
    .line 56
    new-instance v3, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;

    .line 57
    .line 58
    invoke-direct {v3, p0, p3, p1, p2}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppProfiler;ZJ)V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    .line 77
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

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 33
    .line 34
    iget-wide v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 35
    .line 36
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 37
    .line 38
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 39
    .line 40
    add-long/2addr v2, v4

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 46
    .line 47
    iget-wide v6, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 48
    .line 49
    add-long v8, v4, v6

    .line 50
    .line 51
    cmp-long p0, v2, v8

    .line 52
    .line 53
    if-gez p0, :cond_0

    .line 54
    .line 55
    add-long v2, v4, v6

    .line 56
    .line 57
    :cond_0
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 58
    .line 59
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final setAgentAppLPf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/16 v1, 0x64

    .line 40
    .line 41
    if-lt v0, v1, :cond_2

    .line 42
    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v0, "App agent map has too many entries, cannot add "

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "/"

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "ActivityManager"

    .line 66
    .line 67
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    return-void
.end method

.method public final setTestPssMode(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZ)V

    .line 17
    .line 18
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

    .line 24
    .line 25
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

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final setupProfilerInfoLocked(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)Landroid/app/ProfilerInfo;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 15
    .line 16
    iget-object v6, v6, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v6, :cond_3

    .line 20
    .line 21
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_3

    .line 26
    .line 27
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 28
    .line 29
    invoke-virtual {v6, v2}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 30
    .line 31
    .line 32
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 33
    .line 34
    iget-object v6, v6, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 35
    .line 36
    if-eqz v6, :cond_4

    .line 37
    .line 38
    iget-object v8, v6, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 39
    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    iget-boolean v6, v6, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 43
    .line 44
    if-eqz v6, :cond_0

    .line 45
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

    .line 51
    .line 52
    :cond_1
    :goto_0
    new-instance v6, Landroid/app/ProfilerInfo;

    .line 53
    .line 54
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 55
    .line 56
    iget-object v8, v8, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 57
    .line 58
    invoke-direct {v6, v8}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 62
    .line 63
    iget-object v8, v8, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 64
    .line 65
    iget-object v8, v8, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    move-object v7, v8

    .line 70
    :cond_2
    :goto_2
    move-object/from16 v20, v7

    .line 71
    .line 72
    move-object v7, v6

    .line 73
    move-object/from16 v6, v20

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    if-eqz v3, :cond_4

    .line 77
    .line 78
    iget-object v6, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    new-instance v6, Landroid/app/ProfilerInfo;

    .line 83
    .line 84
    iget-object v9, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v14, 0x0

    .line 87
    const/4 v15, 0x0

    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    const/16 v17, 0x1

    .line 91
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

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object v6, v7

    .line 102
    :goto_3
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 103
    .line 104
    const/4 v9, 0x1

    .line 105
    if-eqz v8, :cond_6

    .line 106
    .line 107
    check-cast v8, Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_6

    .line 114
    .line 115
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_6

    .line 120
    .line 121
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 122
    .line 123
    check-cast v8, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    check-cast v8, Ljava/lang/String;

    .line 130
    .line 131
    if-nez v7, :cond_5

    .line 132
    .line 133
    new-instance v7, Landroid/app/ProfilerInfo;

    .line 134
    .line 135
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 136
    .line 137
    check-cast v8, Ljava/util/HashMap;

    .line 138
    .line 139
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    move-object/from16 v16, v8

    .line 144
    .line 145
    check-cast v16, Ljava/lang/String;

    .line 146
    .line 147
    const/4 v15, 0x0

    .line 148
    const/16 v17, 0x1

    .line 149
    .line 150
    const/16 v18, 0x0

    .line 151
    .line 152
    const/16 v19, 0x1

    .line 153
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

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_5
    iget-object v8, v7, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 164
    .line 165
    if-nez v8, :cond_6

    .line 166
    .line 167
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 168
    .line 169
    check-cast v8, Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    check-cast v8, Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v7, v8, v9}, Landroid/app/ProfilerInfo;->setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    .line 182
    .line 183
    iget-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 184
    .line 185
    if-eqz v8, :cond_7

    .line 186
    .line 187
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    iput-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 192
    .line 193
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 194
    .line 195
    iget-object v8, v8, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_7

    .line 202
    .line 203
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 204
    .line 205
    iget-object v4, v4, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 206
    .line 207
    if-eqz v4, :cond_7

    .line 208
    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 210
    .line 211
    .line 212
    :cond_7
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 214
    .line 215
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-lez v4, :cond_c

    .line 222
    .line 223
    if-nez v3, :cond_c

    .line 224
    .line 225
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 226
    .line 227
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    sub-int/2addr v3, v9

    .line 234
    :goto_5
    if-ltz v3, :cond_c

    .line 235
    .line 236
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 237
    .line 238
    if-nez v4, :cond_c

    .line 239
    .line 240
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 241
    .line 242
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Lcom/android/server/am/ActiveInstrumentation;

    .line 249
    .line 250
    iget-boolean v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    .line 251
    .line 252
    if-nez v5, :cond_b

    .line 253
    .line 254
    iget-object v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    .line 255
    .line 256
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 257
    .line 258
    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 259
    .line 260
    if-ne v5, v8, :cond_b

    .line 261
    .line 262
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 263
    .line 264
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 265
    .line 266
    .line 267
    monitor-enter v5

    .line 268
    :try_start_1
    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    .line 269
    .line 270
    array-length v9, v8

    .line 271
    if-nez v9, :cond_8

    .line 272
    .line 273
    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    .line 274
    .line 275
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 276
    .line 277
    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 278
    .line 279
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-eqz v8, :cond_a

    .line 286
    .line 287
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 288
    .line 289
    .line 290
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
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

    .line 301
    .line 302
    aget-object v11, v8, v10

    .line 303
    .line 304
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    if-eqz v11, :cond_9

    .line 311
    .line 312
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 313
    .line 314
    .line 315
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 322
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

    .line 326
    .line 327
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

    .line 331
    .line 332
    .line 333
    throw v0

    .line 334
    :cond_b
    :goto_9
    add-int/lit8 v3, v3, -0x1

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_c
    if-eqz v6, :cond_d

    .line 338
    .line 339
    invoke-interface {v1, v6}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-eqz v0, :cond_e

    .line 347
    .line 348
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 349
    .line 350
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 351
    .line 352
    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    .line 353
    .line 354
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

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "content://com.android.shell.heapdump/"

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "_javaheap.bin"

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 32
    .line 33
    iget v1, p1, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 34
    .line 35
    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 36
    .line 37
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 38
    .line 39
    iput v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 40
    .line 41
    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 42
    .line 43
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-string v1, "android"

    .line 48
    .line 49
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p2, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/android/server/am/AppProfiler$RecordPssRunnable;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {v1, p0, p1, v2, p2}, Lcom/android/server/am/AppProfiler$RecordPssRunnable;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    const-string p1, "android package not found."

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final stopProfilerLPf(ILcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 6
    .line 7
    if-ne p2, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p2, v0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    iget p1, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 14
    .line 15
    .line 16
    :cond_1
    if-nez p2, :cond_2

    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 22
    .line 23
    if-nez p0, :cond_3

    .line 24
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

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string p1, "Process disappeared"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final updateCpuStatsNow()V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string/jumbo v4, "settings_enable_monitor_phantom_procs"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v4}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
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

    .line 27
    .line 28
    monitor-enter v4

    .line 29
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    const-wide/16 v9, 0x1388

    .line 45
    .line 46
    sub-long v9, v5, v9

    .line 47
    .line 48
    cmp-long v7, v7, v9

    .line 49
    .line 50
    if-gez v7, :cond_3

    .line 51
    .line 52
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    .line 54
    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 55
    .line 56
    .line 57
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 60
    .line 61
    .line 62
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 63
    .line 64
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->hasGoodLastStats()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    const-string/jumbo v7, "true"

    .line 71
    .line 72
    .line 73
    const-string/jumbo v8, "events.cpu"

    .line 74
    .line 75
    .line 76
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 93
    .line 94
    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 99
    .line 100
    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 105
    .line 106
    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    iget-object v11, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 111
    .line 112
    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    iget-object v12, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 117
    .line 118
    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    add-int v13, v7, v8

    .line 123
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

    .line 129
    .line 130
    const/4 v12, 0x1

    .line 131
    :cond_1
    mul-int/lit8 v13, v13, 0x64

    .line 132
    .line 133
    div-int/2addr v13, v12

    .line 134
    mul-int/lit8 v7, v7, 0x64

    .line 135
    .line 136
    div-int/2addr v7, v12

    .line 137
    mul-int/lit8 v8, v8, 0x64

    .line 138
    .line 139
    div-int/2addr v8, v12

    .line 140
    mul-int/lit8 v9, v9, 0x64

    .line 141
    .line 142
    div-int/2addr v9, v12

    .line 143
    mul-int/lit8 v10, v10, 0x64

    .line 144
    .line 145
    div-int/2addr v10, v12

    .line 146
    mul-int/lit8 v11, v11, 0x64

    .line 147
    .line 148
    div-int/2addr v11, v12

    .line 149
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v16

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v17

    .line 165
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v18

    .line 169
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v19

    .line 173
    filled-new-array/range {v14 .. v19}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    const/16 v8, 0xaa1

    .line 178
    .line 179
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    goto/16 :goto_d

    .line 185
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

    .line 190
    .line 191
    if-eqz v7, :cond_4

    .line 192
    .line 193
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 194
    .line 195
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    .line 196
    .line 197
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 198
    .line 199
    invoke-virtual {v1, v8}, Lcom/android/server/am/PhantomProcessList;->updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V

    .line 200
    .line 201
    .line 202
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 203
    .line 204
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 205
    .line 206
    iget-object v1, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 207
    .line 208
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    if-eqz v7, :cond_f

    .line 210
    .line 211
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->startAddingCpuStatsLocked()Z

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-eqz v7, :cond_e

    .line 216
    .line 217
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 218
    .line 219
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 224
    .line 225
    .line 226
    move-result-wide v14

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v16

    .line 231
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 232
    .line 233
    iget-object v12, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 234
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

    .line 240
    .line 241
    :try_start_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 242
    .line 243
    invoke-virtual {v8, v13}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 244
    .line 245
    .line 246
    move-result-object v11

    .line 247
    iget-boolean v8, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 248
    .line 249
    if-nez v8, :cond_5

    .line 250
    .line 251
    move-wide/from16 v32, v5

    .line 252
    .line 253
    move/from16 v21, v7

    .line 254
    .line 255
    move-object/from16 v22, v12

    .line 256
    .line 257
    move/from16 v23, v13

    .line 258
    .line 259
    move-wide/from16 v30, v14

    .line 260
    .line 261
    goto/16 :goto_8

    .line 262
    .line 263
    :cond_5
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 264
    .line 265
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 266
    .line 267
    iget v3, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 268
    .line 269
    invoke-virtual {v8, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    iget v8, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 274
    .line 275
    add-int v19, v9, v8

    .line 276
    .line 277
    iget v8, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 278
    .line 279
    add-int v20, v10, v8

    .line 280
    .line 281
    if-eqz v3, :cond_9

    .line 282
    .line 283
    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 284
    .line 285
    iget-object v8, v10, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 286
    .line 287
    if-eqz v8, :cond_7

    .line 288
    .line 289
    iget-boolean v9, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 290
    .line 291
    if-nez v9, :cond_6

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_6
    move/from16 v21, v7

    .line 295
    .line 296
    move-object v7, v10

    .line 297
    move-object v2, v11

    .line 298
    move-object/from16 v22, v12

    .line 299
    .line 300
    move/from16 v23, v13

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :goto_4
    move-object/from16 v22, v12

    .line 304
    .line 305
    goto/16 :goto_9

    .line 306
    .line 307
    :cond_7
    :goto_5
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 308
    .line 309
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 310
    .line 311
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v1, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 314
    .line 315
    .line 316
    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 317
    move-object v8, v1

    .line 318
    move/from16 v21, v7

    .line 319
    .line 320
    move-object v7, v10

    .line 321
    move-object v2, v11

    .line 322
    move-wide v10, v14

    .line 323
    move-object/from16 v22, v12

    .line 324
    .line 325
    move/from16 v23, v13

    .line 326
    .line 327
    move-wide/from16 v12, v16

    .line 328
    .line 329
    :try_start_3
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    invoke-virtual {v8, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    iput-object v8, v7, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 338
    .line 339
    :goto_6
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 340
    .line 341
    iget v9, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 342
    .line 343
    iget-object v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 344
    .line 345
    iget-object v10, v10, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 346
    .line 347
    iget-boolean v10, v10, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 348
    .line 349
    if-eqz v10, :cond_8

    .line 350
    .line 351
    iget-wide v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 352
    .line 353
    int-to-long v12, v3

    .line 354
    add-long/2addr v10, v12

    .line 355
    iput-wide v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 356
    .line 357
    iget-wide v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 358
    .line 359
    int-to-long v12, v9

    .line 360
    add-long/2addr v10, v12

    .line 361
    iput-wide v10, v8, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 362
    .line 363
    :cond_8
    iget-object v8, v7, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 364
    .line 365
    add-int/2addr v3, v9

    .line 366
    int-to-long v9, v3

    .line 367
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 368
    .line 369
    .line 370
    move-result-wide v8

    .line 371
    iget-object v3, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 372
    .line 373
    const-wide/16 v10, 0x0

    .line 374
    .line 375
    invoke-virtual {v3, v10, v11, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 376
    .line 377
    .line 378
    goto :goto_7

    .line 379
    :catchall_1
    move-exception v0

    .line 380
    goto/16 :goto_9

    .line 381
    .line 382
    :catchall_2
    move-exception v0

    .line 383
    goto :goto_4

    .line 384
    :cond_9
    move/from16 v21, v7

    .line 385
    .line 386
    move-object v2, v11

    .line 387
    move-object/from16 v22, v12

    .line 388
    .line 389
    move/from16 v23, v13

    .line 390
    .line 391
    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    .line 392
    .line 393
    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 394
    .line 395
    if-eqz v3, :cond_a

    .line 396
    .line 397
    iget-boolean v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 398
    .line 399
    if-nez v7, :cond_b

    .line 400
    .line 401
    :cond_a
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 402
    .line 403
    iget-object v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    move-object v8, v1

    .line 410
    move-wide v10, v14

    .line 411
    move-wide/from16 v12, v16

    .line 412
    .line 413
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v3, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    iput-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    .line 422
    .line 423
    :cond_b
    iget v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 424
    .line 425
    iget v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 426
    .line 427
    iget-object v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 428
    .line 429
    iget-object v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 430
    .line 431
    iget-boolean v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 432
    .line 433
    if-eqz v9, :cond_c

    .line 434
    .line 435
    iget-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 436
    .line 437
    int-to-long v11, v7

    .line 438
    add-long/2addr v9, v11

    .line 439
    iput-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 440
    .line 441
    iget-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 442
    .line 443
    int-to-long v7, v8

    .line 444
    add-long/2addr v9, v7

    .line 445
    iput-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 446
    .line 447
    :cond_c
    :goto_7
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 448
    .line 449
    int-to-long v7, v3

    .line 450
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 451
    .line 452
    int-to-long v9, v3

    .line 453
    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 454
    .line 455
    iget-wide v11, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 456
    .line 457
    iget v13, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 458
    .line 459
    move-wide/from16 v30, v14

    .line 460
    .line 461
    int-to-long v13, v13

    .line 462
    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 463
    .line 464
    move-wide/from16 v32, v5

    .line 465
    .line 466
    int-to-long v5, v2

    .line 467
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 468
    .line 469
    .line 470
    move-result-object v24

    .line 471
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 472
    .line 473
    .line 474
    move-result-object v25

    .line 475
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 476
    .line 477
    .line 478
    move-result-object v27

    .line 479
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 480
    .line 481
    .line 482
    move-result-object v28

    .line 483
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 484
    .line 485
    .line 486
    move-result-object v29

    .line 487
    move-object/from16 v26, v3

    .line 488
    .line 489
    filled-new-array/range {v24 .. v29}, [Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    const/16 v3, 0x7598

    .line 494
    .line 495
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 496
    .line 497
    .line 498
    move/from16 v9, v19

    .line 499
    .line 500
    move/from16 v10, v20

    .line 501
    .line 502
    :goto_8
    add-int/lit8 v13, v23, 0x1

    .line 503
    .line 504
    move/from16 v7, v21

    .line 505
    .line 506
    move-object/from16 v12, v22

    .line 507
    .line 508
    move-wide/from16 v14, v30

    .line 509
    .line 510
    move-wide/from16 v5, v32

    .line 511
    .line 512
    const/4 v3, 0x0

    .line 513
    goto/16 :goto_3

    .line 514
    .line 515
    :cond_d
    move-wide/from16 v32, v5

    .line 516
    .line 517
    move-object/from16 v22, v12

    .line 518
    .line 519
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 520
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 521
    .line 522
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    .line 523
    .line 524
    .line 525
    move-result v11

    .line 526
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 527
    .line 528
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    .line 529
    .line 530
    .line 531
    move-result v12

    .line 532
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 533
    .line 534
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    .line 535
    .line 536
    .line 537
    move-result v13

    .line 538
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 539
    .line 540
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    .line 541
    .line 542
    .line 543
    move-result v14

    .line 544
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 545
    .line 546
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    .line 547
    .line 548
    .line 549
    move-result v15

    .line 550
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 551
    .line 552
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    .line 553
    .line 554
    .line 555
    move-result v16

    .line 556
    move-object v8, v1

    .line 557
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/power/stats/BatteryStatsImpl;->addCpuStatsLocked(IIIIIIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 558
    .line 559
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

    .line 566
    .line 567
    :goto_a
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mStepDetailsCalculator:Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;

    .line 568
    .line 569
    const/4 v3, 0x1

    .line 570
    iput-boolean v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    .line 571
    .line 572
    const/4 v3, 0x0

    .line 573
    iput-boolean v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    .line 574
    .line 575
    goto :goto_b

    .line 576
    :cond_f
    move-wide/from16 v32, v5

    .line 577
    .line 578
    :goto_b
    iget-wide v2, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 579
    .line 580
    const-wide/32 v5, 0x1b7740

    .line 581
    .line 582
    .line 583
    sub-long v5, v32, v5

    .line 584
    .line 585
    cmp-long v2, v2, v5

    .line 586
    .line 587
    if-gez v2, :cond_10

    .line 588
    .line 589
    move-wide/from16 v2, v32

    .line 590
    .line 591
    iput-wide v2, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 592
    .line 593
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 594
    .line 595
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 596
    .line 597
    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    .line 598
    .line 599
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

    .line 4
    .line 5
    .line 6
    if-nez p5, :cond_5

    .line 7
    .line 8
    iget-wide v4, p2, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    .line 9
    .line 10
    cmp-long p5, p3, v4

    .line 11
    .line 12
    if-gtz p5, :cond_1

    .line 13
    .line 14
    iget-wide v4, p2, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 15
    .line 16
    add-long/2addr v4, v2

    .line 17
    iget-wide v6, p2, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    .line 18
    .line 19
    iget-boolean p5, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 20
    .line 21
    sget v8, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 22
    .line 23
    if-eqz p5, :cond_0

    .line 24
    .line 25
    const-wide/16 v8, 0x2710

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/16 v8, 0x3a98

    .line 29
    .line 30
    :goto_0
    add-long/2addr v6, v8

    .line 31
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmp-long p5, p3, v4

    .line 36
    .line 37
    if-gtz p5, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p5

    .line 46
    if-eqz p5, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    if-nez p5, :cond_4

    .line 56
    .line 57
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 58
    .line 59
    const-wide/16 v6, 0x0

    .line 60
    .line 61
    cmp-long p5, v4, v6

    .line 62
    .line 63
    if-lez p5, :cond_3

    .line 64
    .line 65
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    .line 67
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 68
    .line 69
    .line 70
    move-result p5

    .line 71
    if-lez p5, :cond_3

    .line 72
    .line 73
    iget-wide v6, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 74
    .line 75
    :cond_3
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 76
    .line 77
    invoke-virtual {p5, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    .line 79
    .line 80
    :cond_4
    iput p1, p2, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 81
    .line 82
    iput v1, p2, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 83
    .line 84
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_5
    iget-boolean p5, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 94
    .line 95
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 98
    .line 99
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 100
    .line 101
    iget-object v4, p2, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 102
    .line 103
    iget-object v5, p2, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 104
    .line 105
    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerService;->mBootCompletedTimestamp:J

    .line 106
    .line 107
    iget-object v7, p2, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 108
    .line 109
    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerService;->mLastIdleTime:J

    .line 110
    .line 111
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 112
    .line 113
    .line 114
    move-result-wide v5

    .line 115
    iget-object v7, p2, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 116
    .line 117
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 118
    .line 119
    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 120
    .line 121
    add-long/2addr v5, v7

    .line 122
    sget-object v7, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 123
    .line 124
    aget p1, v7, p1

    .line 125
    .line 126
    const/high16 v7, 0x3f800000    # 1.0f

    .line 127
    .line 128
    if-eqz v4, :cond_9

    .line 129
    .line 130
    iget v8, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 131
    .line 132
    if-ge p1, v8, :cond_6

    .line 133
    .line 134
    move v8, p1

    .line 135
    :cond_6
    iget-object v9, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 136
    .line 137
    aget v9, v9, p1

    .line 138
    .line 139
    if-ge v8, v9, :cond_7

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_7
    move v0, v1

    .line 143
    :goto_1
    iput p1, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 144
    .line 145
    iput v8, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 146
    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    iput v7, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_8
    iget-object v1, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 153
    .line 154
    aget v7, v1, p1

    .line 155
    .line 156
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 157
    .line 158
    mul-float/2addr v1, v7

    .line 159
    iput v1, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 160
    .line 161
    :cond_9
    :goto_2
    if-eqz p5, :cond_b

    .line 162
    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    sget-object p0, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_a
    sget-object p0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_b
    if-eqz v0, :cond_d

    .line 172
    .line 173
    if-eqz p0, :cond_c

    .line 174
    .line 175
    sget-object p0, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_c
    sget-object p0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_d
    if-eqz p0, :cond_e

    .line 182
    .line 183
    sget-object p0, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_e
    sget-object p0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 187
    .line 188
    :goto_3
    aget-wide p0, p0, p1

    .line 189
    .line 190
    long-to-float p0, p0

    .line 191
    mul-float/2addr p0, v7

    .line 192
    float-to-long p0, p0

    .line 193
    cmp-long p5, p0, v2

    .line 194
    .line 195
    if-lez p5, :cond_f

    .line 196
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

    .line 201
    .line 202
    .line 203
    move-result-wide p0

    .line 204
    iput-wide p0, p2, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    .line 205
    .line 206
    return-void
.end method

.method public final writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_2

    .line 12
    .line 13
    const-wide v0, 0x10b00000020L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-wide v5, 0x10900000001L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    if-ge v3, v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Landroid/util/SparseArray;

    .line 51
    .line 52
    const-wide v8, 0x20b00000001L

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    add-int/lit8 v4, v4, -0x1

    .line 69
    .line 70
    :goto_1
    if-ltz v4, :cond_0

    .line 71
    .line 72
    const-wide v5, 0x20b00000002L

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    check-cast v10, Landroid/util/Pair;

    .line 86
    .line 87
    const-wide v11, 0x10500000001L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    invoke-virtual {p1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 97
    .line 98
    .line 99
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v11, Ljava/lang/Long;

    .line 102
    .line 103
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v11

    .line 107
    new-instance v13, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {v11, v12, v13}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    const-wide v12, 0x10900000002L

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v10, Ljava/lang/String;

    .line 127
    .line 128
    const-wide v11, 0x10900000003L

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v4, v4, -0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_0
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 143
    .line 144
    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_1
    const-wide v2, 0x10b00000002L

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 154
    .line 155
    .line 156
    move-result-wide v2

    .line 157
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 163
    .line 164
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    const-wide v5, 0x10900000006L

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-wide v4, 0x10500000003L

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 182
    .line 183
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 184
    .line 185
    .line 186
    const-wide v4, 0x10500000004L

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 192
    .line 193
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    .line 195
    .line 196
    const-wide v4, 0x10800000005L

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 202
    .line 203
    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 210
    .line 211
    .line 212
    :cond_2
    return-void
.end method

.method public final writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 33
    .line 34
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const-wide v5, 0x20b0000000cL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 53
    .line 54
    const/4 v8, -0x1

    .line 55
    const-wide v9, 0x10b00000001L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, p1, v9, v10, v8}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 61
    .line 62
    .line 63
    iget-boolean v4, v7, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 64
    .line 65
    const-wide v8, 0x10800000002L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 71
    .line 72
    .line 73
    const-wide v8, 0x10300000003L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v8, v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 79
    .line 80
    .line 81
    iget-wide v8, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 82
    .line 83
    const-wide v10, 0x10300000004L

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 89
    .line 90
    .line 91
    iget-wide v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 92
    .line 93
    const-wide v9, 0x10300000005L

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 102
    .line 103
    .line 104
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method
