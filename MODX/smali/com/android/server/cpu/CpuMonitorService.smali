.class public final Lcom/android/server/cpu/CpuMonitorService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CACHE_DURATION_MILLISECONDS:J

.field public static final DEBUG:Z

.field public static final DEBUG_MONITORING_INTERVAL_MILLISECONDS:J

.field public static final LATEST_AVAILABILITY_DURATION_MILLISECONDS:J

.field public static final NORMAL_MONITORING_INTERVAL_MILLISECONDS:J


# instance fields
.field public final mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

.field public final mCpusetInfosByCpuset:Landroid/util/SparseArray;

.field public mCurrentMonitoringIntervalMillis:J

.field public final mDebugMonitoringIntervalMillis:J

.field public mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLatestAvailabilityDurationMillis:J

.field public final mLocalService:Lcom/android/server/cpu/CpuMonitorService$1;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

.field public final mNormalMonitoringIntervalMillis:J

.field public final mShouldDebugMonitor:Z


# direct methods
.method public static -$$Nest$mdoDump(Lcom/android/server/cpu/CpuMonitorService;Landroid/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "*%s*\n"

    .line 6
    const-string v1, "CpuMonitorService"

    .line 8
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 15
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 18
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string v1, "CpuInfoReader"

    .line 25
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "*%s*\n"

    .line 31
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 34
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 37
    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "mCpusetDir = %s\n"

    .line 50
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 53
    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    const-string/jumbo v2, "mCpuFreqDir = %s\n"

    .line 66
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 69
    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 79
    const-string/jumbo v2, "mProcStatFile = %s\n"

    .line 82
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 85
    iget-boolean v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    .line 87
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    move-result-object v1

    .line 91
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    const-string/jumbo v2, "mIsEnabled = %s\n"

    .line 98
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 101
    iget-boolean v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    move-result-object v1

    .line 107
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    const-string/jumbo v2, "mHasTimeInStateFile = %s\n"

    .line 114
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 117
    iget-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    .line 119
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    move-result-object v1

    .line 123
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 126
    move-result-object v1

    .line 127
    const-string/jumbo v2, "mLastReadUptimeMillis = %d\n"

    .line 130
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 133
    iget-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    .line 135
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    move-result-object v1

    .line 139
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 142
    move-result-object v1

    .line 143
    const-string/jumbo v2, "mMinReadIntervalMillis = %d\n"

    .line 146
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 149
    const/4 v1, 0x0

    .line 150
    new-array v2, v1, [Ljava/lang/Object;

    .line 152
    const-string v3, "Cpuset categories by CPU core:\n"

    .line 154
    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 157
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 160
    move v2, v1

    .line 161
    :goto_0
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 163
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 166
    move-result v3

    .line 167
    const-string v4, "CPU core id = %d, %s\n"

    .line 169
    if-ge v2, v3, :cond_0

    .line 171
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 173
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 176
    move-result v3

    .line 177
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    move-result-object v3

    .line 181
    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 183
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 186
    move-result v5

    .line 187
    invoke-static {v5}, Lcom/android/server/cpu/CpuInfoReader;->toCpusetCategoriesStr(I)Ljava/lang/String;

    .line 190
    move-result-object v5

    .line 191
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {p1, v4, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 200
    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 204
    const-string v2, "Cpu frequency policy directories by policy id:"

    .line 206
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 212
    move v2, v1

    .line 213
    :goto_1
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 215
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 218
    move-result v3

    .line 219
    if-ge v2, v3, :cond_1

    .line 221
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 223
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 226
    move-result v3

    .line 227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    move-result-object v3

    .line 231
    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 233
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 236
    move-result-object v5

    .line 237
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 240
    move-result-object v3

    .line 241
    const-string v5, "Policy id = %d, Dir = %s\n"

    .line 243
    invoke-virtual {p1, v5, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 248
    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 252
    const-string v2, "Static cpu frequency policy infos by policy id:"

    .line 254
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 260
    move v2, v1

    .line 261
    :goto_2
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 263
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 266
    move-result v3

    .line 267
    if-ge v2, v3, :cond_2

    .line 269
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 271
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 274
    move-result v3

    .line 275
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    move-result-object v3

    .line 279
    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 281
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 284
    move-result-object v5

    .line 285
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 288
    move-result-object v3

    .line 289
    const-string v5, "Policy id = %d, %s\n"

    .line 291
    invoke-virtual {p1, v5, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 294
    add-int/lit8 v2, v2, 0x1

    .line 296
    goto :goto_2

    .line 297
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 300
    const-string v2, "Cpu time in frequency state by policy id:"

    .line 302
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 308
    move v2, v1

    .line 309
    :goto_3
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 311
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 314
    move-result v3

    .line 315
    if-ge v2, v3, :cond_3

    .line 317
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 319
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 322
    move-result v3

    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    move-result-object v3

    .line 327
    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 329
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 332
    move-result-object v5

    .line 333
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 336
    move-result-object v3

    .line 337
    const-string v5, "Policy id = %d, Time(millis) in state by CPU frequency(KHz) = %s\n"

    .line 339
    invoke-virtual {p1, v5, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 342
    add-int/lit8 v2, v2, 0x1

    .line 344
    goto :goto_3

    .line 345
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 348
    const-string v2, "Last read CPU infos:"

    .line 350
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 356
    move v2, v1

    .line 357
    :goto_4
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 359
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 362
    move-result v3

    .line 363
    if-ge v2, v3, :cond_4

    .line 365
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 367
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 370
    move-result-object v3

    .line 371
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 374
    move-result-object v3

    .line 375
    const-string v5, "%s\n"

    .line 377
    invoke-virtual {p1, v5, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 380
    add-int/lit8 v2, v2, 0x1

    .line 382
    goto :goto_4

    .line 383
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 386
    const-string v2, "Latest cumulative CPU usage stats by CPU core:"

    .line 388
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 394
    move v2, v1

    .line 395
    :goto_5
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 397
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 400
    move-result v3

    .line 401
    if-ge v2, v3, :cond_5

    .line 403
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 405
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 408
    move-result v3

    .line 409
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    move-result-object v3

    .line 413
    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 415
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 418
    move-result-object v5

    .line 419
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {p1, v4, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 426
    add-int/lit8 v2, v2, 0x1

    .line 428
    goto :goto_5

    .line 429
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 432
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 435
    const-string/jumbo v0, "mShouldDebugMonitor = %s\n"

    .line 438
    iget-boolean v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    .line 440
    if-eqz v2, :cond_6

    .line 442
    const-string v2, "Yes"

    .line 444
    goto :goto_6

    .line 445
    :cond_6
    const-string v2, "No"

    .line 447
    :goto_6
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 454
    const-string/jumbo v0, "mNormalMonitoringIntervalMillis = %d\n"

    .line 457
    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mNormalMonitoringIntervalMillis:J

    .line 459
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 462
    move-result-object v2

    .line 463
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 466
    move-result-object v2

    .line 467
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 470
    const-string/jumbo v0, "mDebugMonitoringIntervalMillis = %d\n"

    .line 473
    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mDebugMonitoringIntervalMillis:J

    .line 475
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 478
    move-result-object v2

    .line 479
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 486
    const-string/jumbo v0, "mLatestAvailabilityDurationMillis = %d\n"

    .line 489
    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mLatestAvailabilityDurationMillis:J

    .line 491
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 494
    move-result-object v2

    .line 495
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 502
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    .line 504
    monitor-enter v0

    .line 505
    :try_start_0
    const-string/jumbo v2, "mCurrentMonitoringIntervalMillis = %d\n"

    .line 508
    iget-wide v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 510
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 513
    move-result-object v3

    .line 514
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 517
    move-result-object v3

    .line 518
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 521
    move v2, v1

    .line 522
    :goto_7
    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 524
    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 527
    move-result v3

    .line 528
    if-ge v2, v3, :cond_8

    .line 530
    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 532
    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 535
    move-result v3

    .line 536
    if-lez v3, :cond_7

    .line 538
    const-string v2, "CPU availability change callbacks:"

    .line 540
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 546
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 548
    new-instance v3, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda1;

    .line 550
    invoke-direct {v3, p1}, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 553
    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 556
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 559
    goto :goto_8

    .line 560
    :catchall_0
    move-exception p0

    .line 561
    goto :goto_a

    .line 562
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 564
    goto :goto_7

    .line 565
    :cond_8
    :goto_8
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 567
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 570
    move-result v2

    .line 571
    if-lez v2, :cond_a

    .line 573
    const-string v2, "Cpuset infos:"

    .line 575
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 581
    :goto_9
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 583
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 586
    move-result v2

    .line 587
    if-ge v1, v2, :cond_9

    .line 589
    const-string v2, "%s\n"

    .line 591
    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 593
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 596
    move-result-object v3

    .line 597
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 600
    move-result-object v3

    .line 601
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 604
    add-int/lit8 v1, v1, 0x1

    .line 606
    goto :goto_9

    .line 607
    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 610
    :cond_a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 614
    return-void

    .line 615
    :goto_a
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "CpuMonitorService"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    const-wide/16 v1, 0x5

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 17
    move-result-wide v1

    .line 18
    sput-wide v1, Lcom/android/server/cpu/CpuMonitorService;->NORMAL_MONITORING_INTERVAL_MILLISECONDS:J

    .line 20
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 22
    const-wide/16 v2, 0x1

    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 27
    move-result-wide v2

    .line 28
    sput-wide v2, Lcom/android/server/cpu/CpuMonitorService;->DEBUG_MONITORING_INTERVAL_MILLISECONDS:J

    .line 30
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 32
    const-wide/16 v3, 0x1e

    .line 34
    if-nez v2, :cond_1

    .line 36
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    .line 38
    if-eqz v2, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-wide/16 v5, 0xa

    .line 43
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 46
    move-result-wide v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 51
    move-result-wide v1

    .line 52
    :goto_1
    sput-wide v1, Lcom/android/server/cpu/CpuMonitorService;->CACHE_DURATION_MILLISECONDS:J

    .line 54
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 57
    move-result-wide v0

    .line 58
    sput-wide v0, Lcom/android/server/cpu/CpuMonitorService;->LATEST_AVAILABILITY_DURATION_MILLISECONDS:J

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    new-instance v6, Lcom/android/server/cpu/CpuInfoReader;

    .line 2
    new-instance v1, Ljava/io/File;

    const-string v0, "/dev/cpuset"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v0, "/sys/devices/system/cpu/cpufreq"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v0, "/proc/stat"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cpu/CpuInfoReader;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;J)V

    .line 3
    new-instance v3, Lcom/android/server/ServiceThread;

    const-string v0, "CpuMonitorService"

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v3, v1, v0, v2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    sget-wide v7, Lcom/android/server/cpu/CpuMonitorService;->DEBUG_MONITORING_INTERVAL_MILLISECONDS:J

    sget-wide v9, Lcom/android/server/cpu/CpuMonitorService;->LATEST_AVAILABILITY_DURATION_MILLISECONDS:J

    sget-wide v11, Lcom/android/server/cpu/CpuMonitorService;->NORMAL_MONITORING_INTERVAL_MILLISECONDS:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-wide v5, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/cpu/CpuMonitorService;-><init>(Landroid/content/Context;Lcom/android/server/cpu/CpuInfoReader;Landroid/os/HandlerThread;ZJJJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cpu/CpuInfoReader;Landroid/os/HandlerThread;ZJJJ)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/cpu/CpuMonitorService;)V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 8
    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$1;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLocalService:Lcom/android/server/cpu/CpuMonitorService$1;

    .line 11
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mContext:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 13
    iput-boolean p4, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    .line 14
    iput-wide p5, p0, Lcom/android/server/cpu/CpuMonitorService;->mNormalMonitoringIntervalMillis:J

    .line 15
    iput-wide p7, p0, Lcom/android/server/cpu/CpuMonitorService;->mDebugMonitoringIntervalMillis:J

    .line 16
    iput-wide p9, p0, Lcom/android/server/cpu/CpuMonitorService;->mLatestAvailabilityDurationMillis:J

    .line 17
    iput-object p2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    .line 18
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 19
    new-instance p3, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;-><init>(I)V

    invoke-virtual {p1, p4, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 20
    new-instance p3, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    invoke-direct {p3, p2}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 21
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    return-void
.end method


# virtual methods
.method public final checkClientThresholdsAndNotifyLocked(Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    const/4 v0, -0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 21
    invoke-virtual {v0}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->getAverageAvailableCpuFreqPercent()I

    .line 24
    move-result v0

    .line 25
    :goto_0
    iget-object v1, p1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 27
    if-eqz v1, :cond_3

    .line 29
    if-ltz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 33
    iget p1, p1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 35
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    move v0, p1

    .line 44
    :goto_1
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 46
    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 49
    move-result v1

    .line 50
    if-ge v0, v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 54
    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 57
    move-result v1

    .line 58
    if-gtz v1, :cond_2

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 65
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 72
    const/4 p0, 0x0

    .line 73
    throw p0

    .line 74
    :cond_3
    :goto_2
    return-void
.end method

.method public getCurrentMonitoringIntervalMillis()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 6
    monitor-exit v0

    .line 7
    return-wide v1

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final onStart()V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    .line 5
    iget-object v3, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v3

    .line 11
    const-string v4, "CpuMonitorService"

    .line 13
    const/4 v5, 0x0

    .line 14
    if-lez v3, :cond_0

    .line 16
    const-string v0, "Ignoring duplicate CpuInfoReader init request"

    .line 18
    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-boolean v0, v2, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    .line 23
    goto/16 :goto_c

    .line 25
    :cond_0
    iget-object v3, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 27
    new-instance v6, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {v6, v1}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    .line 32
    invoke-virtual {v3, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_14

    .line 38
    array-length v6, v3

    .line 39
    if-nez v6, :cond_1

    .line 41
    goto/16 :goto_b

    .line 43
    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/server/cpu/CpuInfoReader;->populateCpuFreqPolicyDirsById([Ljava/io/File;)V

    .line 46
    iget-object v6, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_2

    .line 54
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    const-string v2, "Failed to parse CPU frequency policy directory paths: %s"

    .line 64
    invoke-static {v4, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_0
    move v0, v5

    .line 68
    goto/16 :goto_c

    .line 70
    :cond_2
    move v6, v5

    .line 71
    :goto_1
    iget-object v7, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 76
    move-result v7

    .line 77
    if-ge v6, v7, :cond_6

    .line 79
    iget-object v7, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 84
    move-result v7

    .line 85
    iget-object v8, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Ljava/io/File;

    .line 93
    new-instance v9, Ljava/io/File;

    .line 95
    const-string/jumbo v10, "related_cpus"

    .line 98
    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-static {v9}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    .line 104
    move-result-object v8

    .line 105
    if-eqz v8, :cond_4

    .line 107
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    .line 110
    move-result v10

    .line 111
    if-nez v10, :cond_3

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    new-instance v9, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;

    .line 116
    invoke-direct {v9, v8}, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;-><init>(Landroid/util/IntArray;)V

    .line 119
    iget-object v8, v2, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 121
    invoke-virtual {v8, v7, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 124
    sget-boolean v8, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 126
    if-eqz v8, :cond_5

    .line 128
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v7

    .line 132
    filled-new-array {v9, v7}, [Ljava/lang/Object;

    .line 135
    move-result-object v7

    .line 136
    const-string v8, "Added static policy info %s for policy id %d"

    .line 138
    invoke-static {v4, v8, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    goto :goto_3

    .line 142
    :cond_4
    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 145
    move-result-object v7

    .line 146
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 149
    move-result-object v7

    .line 150
    const-string v8, "Failed to read related CPU cores from %s"

    .line 152
    invoke-static {v4, v8, v7}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_5
    :goto_3
    add-int/2addr v6, v1

    .line 156
    goto :goto_1

    .line 157
    :cond_6
    iget-object v6, v2, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 159
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 162
    move-result v6

    .line 163
    if-nez v6, :cond_7

    .line 165
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 173
    const-string v2, "Failed to read static CPU frequency policy info from policy dirs: %s"

    .line 175
    invoke-static {v4, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    goto :goto_0

    .line 179
    :cond_7
    iget-object v3, v2, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 184
    move-result v3

    .line 185
    if-nez v3, :cond_8

    .line 187
    iget-object v0, v2, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 196
    move-result-object v0

    .line 197
    const-string v2, "Missing proc stat file at %s"

    .line 199
    invoke-static {v4, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    goto/16 :goto_0

    .line 204
    :cond_8
    iget-object v3, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    .line 206
    new-instance v6, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    .line 208
    invoke-direct {v6, v0}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    .line 211
    invoke-virtual {v3, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 214
    move-result-object v3

    .line 215
    if-nez v3, :cond_9

    .line 217
    iget-object v0, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 226
    move-result-object v0

    .line 227
    const-string v3, "Missing cpuset directories at %s"

    .line 229
    invoke-static {v4, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    goto/16 :goto_9

    .line 234
    :cond_9
    move v6, v5

    .line 235
    :goto_4
    array-length v7, v3

    .line 236
    if-ge v6, v7, :cond_10

    .line 238
    aget-object v7, v3, v6

    .line 240
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 243
    move-result-object v8

    .line 244
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    const-string v9, "background"

    .line 249
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    move-result v9

    .line 253
    if-nez v9, :cond_b

    .line 255
    const-string/jumbo v9, "top-app"

    .line 258
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    move-result v8

    .line 262
    if-nez v8, :cond_a

    .line 264
    goto :goto_8

    .line 265
    :cond_a
    move v8, v1

    .line 266
    goto :goto_5

    .line 267
    :cond_b
    move v8, v0

    .line 268
    :goto_5
    new-instance v9, Ljava/io/File;

    .line 270
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 273
    move-result-object v7

    .line 274
    const-string/jumbo v10, "cpus"

    .line 277
    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {v9}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    .line 283
    move-result-object v7

    .line 284
    if-eqz v7, :cond_e

    .line 286
    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    .line 289
    move-result v10

    .line 290
    if-nez v10, :cond_c

    .line 292
    goto :goto_7

    .line 293
    :cond_c
    move v9, v5

    .line 294
    :goto_6
    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    .line 297
    move-result v10

    .line 298
    if-ge v9, v10, :cond_f

    .line 300
    iget-object v10, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 302
    invoke-virtual {v7, v9}, Landroid/util/IntArray;->get(I)I

    .line 305
    move-result v11

    .line 306
    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 309
    move-result v10

    .line 310
    or-int/2addr v10, v8

    .line 311
    iget-object v11, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 313
    invoke-virtual {v7, v9}, Landroid/util/IntArray;->get(I)I

    .line 316
    move-result v12

    .line 317
    invoke-virtual {v11, v12, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-boolean v11, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 322
    if-eqz v11, :cond_d

    .line 324
    invoke-virtual {v7, v9}, Landroid/util/IntArray;->get(I)I

    .line 327
    move-result v11

    .line 328
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    move-result-object v11

    .line 332
    invoke-static {v10}, Lcom/android/server/cpu/CpuInfoReader;->toCpusetCategoriesStr(I)Ljava/lang/String;

    .line 335
    move-result-object v10

    .line 336
    filled-new-array {v11, v10}, [Ljava/lang/Object;

    .line 339
    move-result-object v10

    .line 340
    const-string v11, "Mapping CPU core id %d with cpuset categories [%s]"

    .line 342
    invoke-static {v4, v11, v10}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :cond_d
    add-int/2addr v9, v1

    .line 346
    goto :goto_6

    .line 347
    :cond_e
    :goto_7
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 350
    move-result-object v7

    .line 351
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 354
    move-result-object v7

    .line 355
    const-string v8, "Failed to read CPU cores from %s"

    .line 357
    invoke-static {v4, v8, v7}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_f
    :goto_8
    add-int/2addr v6, v1

    .line 361
    goto :goto_4

    .line 362
    :cond_10
    :goto_9
    iget-object v0, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 364
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_11

    .line 370
    iget-object v0, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 375
    move-result-object v0

    .line 376
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 379
    move-result-object v0

    .line 380
    const-string v2, "Failed to read cpuset information from %s"

    .line 382
    invoke-static {v4, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    goto/16 :goto_0

    .line 387
    :cond_11
    move v0, v5

    .line 388
    :goto_a
    iget-object v3, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 390
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 393
    move-result v3

    .line 394
    if-ge v0, v3, :cond_12

    .line 396
    iget-boolean v3, v2, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    .line 398
    if-nez v3, :cond_12

    .line 400
    new-instance v6, Ljava/io/File;

    .line 402
    iget-object v7, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 404
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 407
    move-result-object v7

    .line 408
    check-cast v7, Ljava/io/File;

    .line 410
    const-string/jumbo v8, "stats/time_in_state"

    .line 413
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 419
    move-result v6

    .line 420
    or-int/2addr v3, v6

    .line 421
    iput-boolean v3, v2, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    .line 423
    add-int/2addr v0, v1

    .line 424
    goto :goto_a

    .line 425
    :cond_12
    iget-boolean v0, v2, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    .line 427
    if-nez v0, :cond_13

    .line 429
    const-string v0, "Time in state file not available for any cpufreq policy"

    .line 431
    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_13
    iput-boolean v1, v2, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    .line 436
    move v0, v1

    .line 437
    goto :goto_c

    .line 438
    :cond_14
    :goto_b
    iget-object v0, v2, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 440
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 443
    move-result-object v0

    .line 444
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 447
    move-result-object v0

    .line 448
    const-string v2, "Missing CPU frequency policy directories at %s"

    .line 450
    invoke-static {v4, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    goto/16 :goto_0

    .line 455
    :goto_c
    if-eqz v0, :cond_17

    .line 457
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    .line 459
    invoke-virtual {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuInfos()Landroid/util/SparseArray;

    .line 462
    move-result-object v0

    .line 463
    if-nez v0, :cond_15

    .line 465
    goto :goto_f

    .line 466
    :cond_15
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 468
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 471
    new-instance v0, Landroid/os/Handler;

    .line 473
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 475
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 478
    move-result-object v2

    .line 479
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 482
    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    .line 484
    const-class v0, Lcom/android/server/cpu/CpuMonitorService$1;

    .line 486
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mLocalService:Lcom/android/server/cpu/CpuMonitorService$1;

    .line 488
    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 491
    const-string/jumbo v0, "cpu_monitor"

    .line 494
    new-instance v2, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    .line 496
    invoke-direct {v2, p0}, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;-><init>(Lcom/android/server/cpu/CpuMonitorService;)V

    .line 499
    invoke-virtual {p0, v0, v2, v5, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 502
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 505
    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    .line 508
    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 511
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    .line 513
    monitor-enter v0

    .line 514
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    .line 516
    if-eqz v1, :cond_16

    .line 518
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    .line 520
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    .line 522
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 525
    move-result v1

    .line 526
    if-nez v1, :cond_16

    .line 528
    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mDebugMonitoringIntervalMillis:J

    .line 530
    iput-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 532
    const-string v1, "CpuMonitorService"

    .line 534
    const-string v2, "Starting debug monitoring"

    .line 536
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    .line 541
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    .line 543
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 546
    goto :goto_d

    .line 547
    :catchall_0
    move-exception p0

    .line 548
    goto :goto_e

    .line 549
    :cond_16
    :goto_d
    monitor-exit v0

    .line 550
    return-void

    .line 551
    :goto_e
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    throw p0

    .line 553
    :cond_17
    :goto_f
    const-string p0, "CpuMonitorService"

    .line 555
    const-string v0, "Failed to initialize CPU info reader. This happens when the CPU frequency stats are not available or the sysfs interface has changed in the Kernel. Cannot monitor CPU without these stats. Terminating CPU monitor service"

    .line 557
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method public final stopMonitoringCpuStatsLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    .line 29
    const/4 v2, 0x0

    .line 30
    iput-object v2, v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 32
    iget-object v1, v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 34
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method
