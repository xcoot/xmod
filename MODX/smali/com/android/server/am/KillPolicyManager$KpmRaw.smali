.class public final Lcom/android/server/am/KillPolicyManager$KpmRaw;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public accMem:I

.field public accSwap:I

.field public appCnt:I

.field public avlMem:I

.field public cachedActTotalCnt:I

.field public cachedClientKillCount:I

.field public cachedEmptyKillCount:I

.field public cachedNormalKillCount:I

.field public cachedTotalCnt:I

.field public chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

.field public coldCount:I

.field public final createTime:J

.field public final curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public currentCachedActCnt:I

.field public final cycleNum:I

.field public dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

.field public dumpHeavyProcessList:Ljava/util/ArrayList;

.field public hotCount:I

.field public hotRatio:I

.field public isDailyBigdata:Z

.field public isGetPssDump:Z

.field public isStateChanged:Z

.field public isWarmUpCycle:Z

.field public killedPackageCount:I

.field public killedPackageRatio:I

.field public lastUpdateTime:J

.field public final launchedAndKilledPackageMap:Ljava/util/Map;

.field public launchedPackageCount:I

.field public lmkCnt:J

.field public final lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

.field public lmkdCric:J

.field public final lmkdCurrentCount:[J

.field public final lmkdKilledProcessInfo:Ljava/util/ArrayList;

.field public lmkdMed:J

.field public final lmkdPrevCount:[J

.field public lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public final lmkdStateCount:[J

.field public mProcessSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

.field public maxMem:I

.field public maxSwap:I

.field public minMem:I

.field public minSwap:I

.field public nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public peakLmkdKillAdj:I

.field public pickedActTotalCnt:I

.field public pickedTotalCnt:I

.field public final policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public prKilledRatio:I

.field public final prevLmkCnt:J

.field public final prevLmkdCric:J

.field public final prevLmkdMed:J

.field public prevTinyCachedNormalKillCount:I

.field public procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

.field public procsAdjPss:Ljava/util/HashMap;

.field public psiCpuMax:D

.field public psiCpuSum:D

.field public psiIoMax:D

.field public psiIoSum:D

.field public psiMemoryMax:D

.field public psiMemorySum:D

.field public resetStatus:I

.field public svKilledRatio:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public timeStamp:Ljava/lang/String;

.field public final tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

.field public uptimeMillis:J

.field public warmCount:I


# direct methods
.method public static -$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 5
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 7
    const-string v3, "ActivityManager_kpm"

    .line 9
    if-eqz v2, :cond_0

    .line 11
    const-string/jumbo v2, "checkMemCriticalLowTH() killRatio = "

    .line 14
    const-string v4, "%, killedPackageRatio = "

    .line 16
    invoke-static {v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v2

    .line 20
    iget v4, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 22
    const-string v5, "%"

    .line 24
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    sget v2, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 29
    const/4 v4, 0x1

    .line 30
    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 32
    const/4 v6, 0x0

    .line 33
    if-lt v1, v2, :cond_3

    .line 35
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    .line 37
    if-eqz v1, :cond_2

    .line 39
    iget v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 41
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    sget v2, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 46
    if-lt v1, v2, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 51
    if-eqz v1, :cond_3

    .line 53
    const-string/jumbo v1, "checkMemCriticalLowTH() killRatio is over thrshold but not occurred many apps, so result not accepted"

    .line 56
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    move v6, v4

    .line 61
    :cond_3
    :goto_1
    iput v6, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 63
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 65
    if-eqz v1, :cond_4

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v2, "checkMemCriticalLowTH() memory critical status is "

    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 77
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 80
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 83
    move-result-wide v1

    .line 84
    const-wide/16 v7, 0x1

    .line 86
    invoke-static {v7, v8}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v7}, Ljava/time/Duration;->toMillis()J

    .line 93
    move-result-wide v7

    .line 94
    cmp-long v1, v1, v7

    .line 96
    if-lez v1, :cond_5

    .line 98
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    const-string/jumbo v2, "persist.sys.kpm_cri_mem_detect"

    .line 105
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_5

    .line 115
    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 117
    if-nez v1, :cond_5

    .line 119
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    new-instance v1, Landroid/content/Intent;

    .line 124
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 127
    const-string/jumbo v2, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v2, "res"

    .line 136
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 142
    move-result-object v2

    .line 143
    const-string v7, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 145
    const-string/jumbo v8, "com.samsung.android.lool"

    .line 148
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v2, v5, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v2, "memory Critical Low intent RESULT : "

    .line 165
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_5
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    .line 180
    if-eqz v1, :cond_c

    .line 182
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 184
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 186
    if-eq v0, v1, :cond_6

    .line 188
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 190
    if-ne v0, v1, :cond_c

    .line 192
    :cond_6
    iget-object v0, v5, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 194
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 196
    check-cast v1, Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 201
    move-result v1

    .line 202
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 204
    const-string v6, " => "

    .line 206
    const-string v7, ", "

    .line 208
    if-lt v1, v2, :cond_7

    .line 210
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 212
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    .line 215
    move-result-object v1

    .line 216
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 218
    check-cast v2, Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 223
    move-result v2

    .line 224
    sub-int/2addr v2, v4

    .line 225
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 227
    check-cast v8, Ljava/lang/Double;

    .line 229
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 232
    move-result-wide v8

    .line 233
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 235
    check-cast v10, Ljava/lang/Double;

    .line 237
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 240
    move-result-wide v10

    .line 241
    int-to-double v12, v2

    .line 242
    mul-double/2addr v10, v12

    .line 243
    add-double/2addr v10, v8

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    const-string/jumbo v12, "nativeFactor : "

    .line 249
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 254
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 262
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v1

    .line 281
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v1, Landroid/util/Pair;

    .line 286
    double-to-int v2, v8

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    move-result-object v2

    .line 291
    double-to-int v8, v10

    .line 292
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    move-result-object v8

    .line 296
    invoke-direct {v1, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 301
    :cond_7
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 303
    check-cast v1, Ljava/util/ArrayList;

    .line 305
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 308
    move-result v1

    .line 309
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 311
    if-lt v1, v2, :cond_8

    .line 313
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 315
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    .line 318
    move-result-object v1

    .line 319
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 321
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    .line 324
    move-result-object v2

    .line 325
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 327
    check-cast v8, Ljava/util/ArrayList;

    .line 329
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 332
    move-result v8

    .line 333
    sub-int/2addr v8, v4

    .line 334
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 336
    check-cast v4, Ljava/lang/Double;

    .line 338
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 341
    move-result-wide v9

    .line 342
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 344
    check-cast v4, Ljava/lang/Double;

    .line 346
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 349
    move-result-wide v11

    .line 350
    add-double/2addr v11, v9

    .line 351
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 353
    check-cast v4, Ljava/lang/Double;

    .line 355
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 358
    move-result-wide v9

    .line 359
    int-to-double v13, v8

    .line 360
    mul-double/2addr v9, v13

    .line 361
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 363
    check-cast v4, Ljava/lang/Double;

    .line 365
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 368
    move-result-wide v15

    .line 369
    mul-double/2addr v15, v13

    .line 370
    add-double/2addr v15, v9

    .line 371
    add-double v8, v15, v11

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    .line 375
    const-string/jumbo v10, "sysFactor : "

    .line 378
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 383
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 391
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, " persFactor : "

    .line 396
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 401
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 409
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    move-result-object v1

    .line 428
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v1, Landroid/util/Pair;

    .line 433
    double-to-int v2, v11

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    move-result-object v2

    .line 438
    double-to-int v3, v8

    .line 439
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    move-result-object v3

    .line 443
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 448
    :cond_8
    iget-object v0, v5, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 450
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 452
    check-cast v1, Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 457
    move-result v1

    .line 458
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 460
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 462
    if-ge v1, v2, :cond_9

    .line 464
    goto :goto_2

    .line 465
    :cond_9
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 467
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 469
    check-cast v1, Ljava/lang/Integer;

    .line 471
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 474
    move-result v1

    .line 475
    int-to-double v1, v1

    .line 476
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 478
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 480
    check-cast v6, Ljava/lang/Integer;

    .line 482
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 485
    move-result v6

    .line 486
    int-to-double v6, v6

    .line 487
    sget v8, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 489
    add-int/lit8 v8, v8, 0x64

    .line 491
    int-to-double v8, v8

    .line 492
    mul-double/2addr v1, v8

    .line 493
    mul-double/2addr v6, v3

    .line 494
    cmpg-double v1, v1, v6

    .line 496
    if-gez v1, :cond_a

    .line 498
    const-string v0, "KERNEL"

    .line 500
    invoke-static {v5, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    .line 503
    goto :goto_3

    .line 504
    :cond_a
    :goto_2
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 506
    check-cast v1, Ljava/util/ArrayList;

    .line 508
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 511
    move-result v1

    .line 512
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 514
    if-ge v1, v2, :cond_b

    .line 516
    goto :goto_3

    .line 517
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 519
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 521
    check-cast v1, Ljava/lang/Integer;

    .line 523
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 526
    move-result v1

    .line 527
    int-to-double v1, v1

    .line 528
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 530
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 532
    check-cast v0, Ljava/lang/Integer;

    .line 534
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 537
    move-result v0

    .line 538
    int-to-double v6, v0

    .line 539
    sget v0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 541
    add-int/lit8 v0, v0, 0x64

    .line 543
    int-to-double v8, v0

    .line 544
    mul-double/2addr v1, v8

    .line 545
    mul-double/2addr v6, v3

    .line 546
    cmpg-double v0, v1, v6

    .line 548
    if-gez v0, :cond_c

    .line 550
    const-string v0, "PLATFORM"

    .line 552
    invoke-static {v5, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    .line 555
    :cond_c
    :goto_3
    return-void
.end method

.method public static -$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 15
    check-cast v0, Ljava/util/HashMap;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v0

    .line 27
    if-le v0, p2, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    check-cast v0, Ljava/util/HashMap;

    .line 37
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 42
    if-eqz v0, :cond_1

    .line 44
    const-string/jumbo v0, "markKilledPackage : "

    .line 47
    const-string v1, ", adj "

    .line 49
    const-string v2, ", killed adj : "

    .line 51
    invoke-static {p2, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object p2

    .line 55
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 57
    check-cast p0, Ljava/util/HashMap;

    .line 59
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    const-string p1, "ActivityManager_kpm"

    .line 72
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    move-result p1

    .line 19
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 21
    aget-wide v0, p0, p1

    .line 23
    const-wide/16 v2, 0x1

    .line 25
    add-long/2addr v0, v2

    .line 26
    aput-wide v0, p0, p1

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 7
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    new-array v1, v1, [J

    .line 14
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 16
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 19
    move-result-object v1

    .line 20
    array-length v1, v1

    .line 21
    new-array v1, v1, [J

    .line 23
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 25
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 28
    move-result-object v1

    .line 29
    array-length v1, v1

    .line 30
    new-array v1, v1, [J

    .line 32
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    .line 34
    const/16 v1, 0xa

    .line 36
    new-array v1, v1, [Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 38
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 40
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    .line 42
    const p2, 0x7fffffff

    .line 45
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 47
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 50
    const/high16 v2, -0x80000000

    .line 52
    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 54
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 56
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 58
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 60
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    .line 62
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 64
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 66
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 68
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 70
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 72
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 74
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 76
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 78
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 80
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 82
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 84
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    .line 86
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 88
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 90
    const-wide/16 v2, 0x0

    .line 92
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 94
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 96
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 98
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    .line 100
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 102
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 104
    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    .line 107
    move-result p2

    .line 108
    int-to-long v4, p2

    .line 109
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 111
    const/16 p2, 0xf

    .line 113
    invoke-static {v1, p2, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 116
    move-result p2

    .line 117
    int-to-long v4, p2

    .line 118
    iget-wide v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 120
    sub-long/2addr v4, v6

    .line 121
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 123
    const/16 p2, 0x2020

    .line 125
    filled-new-array {p2}, [I

    .line 128
    move-result-object p2

    .line 129
    new-array v4, v0, [J

    .line 131
    aput-wide v2, v4, v1

    .line 133
    const-string v5, "/sys/module/lowmemorykiller/parameters/lmkcount"

    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-static {v5, p2, v6, v4, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 139
    aget-wide v4, v4, v1

    .line 141
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    .line 143
    iget-object p2, p1, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 145
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 147
    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 149
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 151
    iget-object p2, p1, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 153
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 155
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    move-result-wide v4

    .line 161
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    .line 163
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 165
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 167
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 175
    const/16 p2, 0x3e9

    .line 177
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 179
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 181
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 183
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    .line 185
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    .line 187
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    .line 189
    const-wide/16 v4, 0x0

    .line 191
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 193
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 195
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 197
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 199
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 201
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 203
    new-instance p2, Lcom/android/server/chimera/ChimeraDataInfo;

    .line 205
    invoke-direct {p2}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 210
    sget-object p2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_0:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 212
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 214
    move p2, v1

    .line 215
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 217
    array-length v5, v4

    .line 218
    if-ge p2, v5, :cond_0

    .line 220
    aput-wide v2, v4, p2

    .line 222
    add-int/2addr p2, v0

    .line 223
    goto :goto_0

    .line 224
    :cond_0
    move p2, v1

    .line 225
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 227
    array-length v5, v4

    .line 228
    if-ge p2, v5, :cond_1

    .line 230
    aput-wide v2, v4, p2

    .line 232
    add-int/2addr p2, v0

    .line 233
    goto :goto_1

    .line 234
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    .line 236
    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager;->fillLmkdCounts([J)V

    .line 239
    new-instance p2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 241
    iget-object v2, p1, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 243
    invoke-direct {p2, p1, p0, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;-><init>(Lcom/android/server/am/KillPolicyManager;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 246
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 248
    new-instance p1, Ljava/util/HashMap;

    .line 250
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    .line 257
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 262
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 264
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 266
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 268
    :goto_2
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 270
    array-length p2, p1

    .line 271
    if-ge v1, p2, :cond_2

    .line 273
    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 275
    aput-object p2, p1, v1

    .line 277
    add-int/2addr v1, v0

    .line 278
    goto :goto_2

    .line 279
    :cond_2
    return-void
.end method


# virtual methods
.method public final getKpmData(I)Ljava/lang/StringBuilder;
    .locals 8

    .line 1
    const/16 v0, 0x80

    .line 3
    const-string v1, " "

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    .line 11
    if-ne v2, p1, :cond_0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 16
    if-nez p1, :cond_1

    .line 18
    const-string p0, "appCnt is 0"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, ","

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 34
    int-to-double v2, v2

    .line 35
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 37
    int-to-double v4, v4

    .line 38
    div-double/2addr v2, v4

    .line 39
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 41
    add-double/2addr v2, v4

    .line 42
    double-to-int v2, v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 51
    int-to-double v2, v2

    .line 52
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 54
    int-to-double v6, v6

    .line 55
    div-double/2addr v2, v6

    .line 56
    add-double/2addr v2, v4

    .line 57
    double-to-int v2, v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 66
    int-to-double v2, v2

    .line 67
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 69
    int-to-double v6, v6

    .line 70
    div-double/2addr v2, v6

    .line 71
    add-double/2addr v2, v4

    .line 72
    double-to-int v2, v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 89
    iget v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    .line 123
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 131
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 139
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 147
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 155
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 163
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 187
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 190
    move-result v2

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 199
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 202
    move-result v2

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 211
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 214
    move-result v2

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 223
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 225
    int-to-double v6, v6

    .line 226
    div-double/2addr v2, v6

    .line 227
    add-double/2addr v2, v4

    .line 228
    double-to-int v2, v2

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 237
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 239
    int-to-double v6, v6

    .line 240
    div-double/2addr v2, v6

    .line 241
    add-double/2addr v2, v4

    .line 242
    double-to-int v2, v2

    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 251
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 253
    int-to-double v6, v6

    .line 254
    div-double/2addr v2, v6

    .line 255
    add-double/2addr v2, v4

    .line 256
    double-to-int v2, v2

    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 265
    add-double/2addr v2, v4

    .line 266
    double-to-int v2, v2

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 275
    add-double/2addr v2, v4

    .line 276
    double-to-int v2, v2

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 285
    add-double/2addr v2, v4

    .line 286
    double-to-int v2, v2

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 303
    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 306
    move-result p1

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string p1, ",["

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 317
    const/4 v2, 0x0

    .line 318
    aget-wide v3, p1, v2

    .line 320
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    const/4 v3, 0x1

    .line 324
    move v4, v3

    .line 325
    :goto_0
    array-length v5, p1

    .line 326
    if-ge v4, v5, :cond_2

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    aget-wide v5, p1, v4

    .line 333
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v4, v4, 0x1

    .line 338
    goto :goto_0

    .line 339
    :cond_2
    const-string p1, "],["

    .line 341
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 346
    aget-wide v5, v4, v2

    .line 348
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 351
    move v5, v3

    .line 352
    :goto_1
    array-length v6, v4

    .line 353
    if-ge v5, v6, :cond_3

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    aget-wide v6, v4, v5

    .line 360
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v5, v5, 0x1

    .line 365
    goto :goto_1

    .line 366
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 371
    aget-object v2, p1, v2

    .line 373
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 376
    move-result v2

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    :goto_2
    array-length v2, p1

    .line 381
    if-ge v3, v2, :cond_4

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    aget-object v2, p1, v3

    .line 388
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 391
    move-result v2

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 397
    goto :goto_2

    .line 398
    :cond_4
    const-string p1, "],"

    .line 400
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 405
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    return-object v0
.end method

.method public final getKpmHeavyPssData()Ljava/lang/StringBuilder;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/16 v1, 0x80

    .line 5
    const-string v2, " "

    .line 7
    invoke-static {v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v1

    .line 11
    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 18
    if-nez v3, :cond_0

    .line 20
    const-string v0, ",didn\'t happen Previous App Kill by LMKD"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    goto/16 :goto_6

    .line 27
    :cond_0
    const-string v3, ","

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 39
    const-string v4, ", [null]"

    .line 41
    const-string v5, "]"

    .line 43
    const-string v6, ",["

    .line 45
    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 47
    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 54
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 64
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 74
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 84
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 94
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 104
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 114
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 124
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget v3, v7, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 142
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 152
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 162
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 172
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v3, " 0 "

    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 184
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuSwap:I

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 194
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemCached:I

    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 204
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 214
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuTotal:I

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 224
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 234
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemUncached:I

    .line 236
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 248
    const/4 v8, 0x0

    .line 249
    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    .line 251
    if-eqz v3, :cond_4

    .line 253
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 258
    array-length v4, v3

    .line 259
    move v13, v8

    .line 260
    :goto_1
    if-ge v13, v4, :cond_3

    .line 262
    aget-object v14, v3, v13

    .line 264
    iget-object v15, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 266
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 269
    move-result v15

    .line 270
    if-eqz v15, :cond_2

    .line 272
    iget-object v15, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 274
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    move-result-object v14

    .line 278
    check-cast v14, [J

    .line 280
    const-string/jumbo v15, "{"

    .line 283
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v15, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 288
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    aget-wide v9, v14, v8

    .line 293
    long-to-double v9, v9

    .line 294
    div-double/2addr v9, v11

    .line 295
    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    .line 297
    add-double/2addr v9, v15

    .line 298
    double-to-int v9, v9

    .line 299
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v9, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 307
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const/4 v9, 0x1

    .line 311
    aget-wide v9, v14, v9

    .line 313
    long-to-double v9, v9

    .line 314
    div-double/2addr v9, v11

    .line 315
    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    .line 317
    add-double/2addr v9, v15

    .line 318
    double-to-int v9, v9

    .line 319
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v9, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 327
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const/4 v9, 0x2

    .line 331
    aget-wide v9, v14, v9

    .line 333
    long-to-double v9, v9

    .line 334
    div-double/2addr v9, v11

    .line 335
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .line 337
    add-double/2addr v9, v14

    .line 338
    double-to-int v9, v9

    .line 339
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    const-string/jumbo v9, "}"

    .line 345
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    goto :goto_2

    .line 349
    :cond_2
    const-string/jumbo v9, "{-1 -1 -1}"

    .line 352
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 357
    goto :goto_1

    .line 358
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    goto :goto_3

    .line 362
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 367
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 370
    move-result v2

    .line 371
    if-ge v8, v2, :cond_7

    .line 373
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 375
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 381
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 386
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 388
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v3, ", ver: "

    .line 393
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-wide v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 398
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 401
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 403
    if-eqz v3, :cond_5

    .line 405
    const-string v3, ", PackageName: "

    .line 407
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 412
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    goto :goto_4

    .line 416
    :cond_5
    const-string v3, ", PackageName: null"

    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :goto_4
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 423
    if-eqz v3, :cond_6

    .line 425
    const-string v3, ", PackageVer: "

    .line 427
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 432
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    goto :goto_5

    .line 436
    :cond_6
    const-string v3, ", PackageVer: null"

    .line 438
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :goto_5
    const-string v3, ", adj: "

    .line 443
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 448
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 450
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v3, ", pss: "

    .line 455
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 460
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 462
    long-to-double v3, v3

    .line 463
    div-double/2addr v3, v11

    .line 464
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 466
    add-double/2addr v3, v9

    .line 467
    double-to-int v3, v3

    .line 468
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    const-string v3, " mb, swap: "

    .line 473
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 478
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 480
    long-to-double v3, v3

    .line 481
    div-double/2addr v3, v11

    .line 482
    add-double/2addr v3, v9

    .line 483
    double-to-int v3, v3

    .line 484
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    const-string v3, " mb, rss: "

    .line 489
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 494
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 496
    long-to-double v3, v3

    .line 497
    div-double/2addr v3, v11

    .line 498
    add-double/2addr v3, v9

    .line 499
    double-to-int v3, v3

    .line 500
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    const-string v3, " mb, "

    .line 505
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-object v3, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 510
    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    add-int/lit8 v8, v8, 0x1

    .line 527
    goto/16 :goto_3

    .line 529
    :cond_7
    :goto_6
    return-object v1
.end method

.method public final updateKillInfo()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    .line 5
    move-result v1

    .line 6
    int-to-long v1, v1

    .line 7
    const/16 v3, 0xf

    .line 9
    invoke-static {v0, v3, v0, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 12
    move-result v3

    .line 13
    int-to-long v3, v3

    .line 14
    sub-long/2addr v3, v1

    .line 15
    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 17
    sub-long/2addr v1, v5

    .line 18
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 20
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 22
    sub-long/2addr v3, v1

    .line 23
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 25
    const/16 v1, 0x2020

    .line 27
    filled-new-array {v1}, [I

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    new-array v2, v2, [J

    .line 34
    const-wide/16 v3, 0x0

    .line 36
    aput-wide v3, v2, v0

    .line 38
    const-string v3, "/sys/module/lowmemorykiller/parameters/lmkcount"

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v3, v1, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 44
    aget-wide v0, v2, v0

    .line 46
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    .line 48
    sub-long/2addr v0, v2

    .line 49
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 51
    return-void
.end method

.method public final updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 3
    iget v1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 8
    iget v1, v1, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 10
    iget v2, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 12
    sub-int/2addr v1, v2

    .line 13
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 15
    add-int/2addr v2, v0

    .line 16
    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 18
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 20
    add-int/2addr v2, v1

    .line 21
    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 23
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 25
    iget p1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 27
    add-int/2addr v2, p1

    .line 28
    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 30
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 32
    if-le p1, v0, :cond_0

    .line 34
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 36
    :cond_0
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 38
    if-ge p1, v0, :cond_1

    .line 40
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 42
    :cond_1
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 44
    if-le p1, v1, :cond_2

    .line 46
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 48
    :cond_2
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    .line 50
    if-ge p1, v1, :cond_3

    .line 52
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    .line 54
    :cond_3
    return-void
.end method

.method public final updateProcessStateInfo(ILjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p1

    .line 5
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 7
    add-int/lit8 v2, v2, 0x1

    .line 9
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 11
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 13
    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 15
    const-string v3, "ActivityManager_kpm"

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 21
    check-cast v4, Ljava/util/HashMap;

    .line 23
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 29
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 31
    const/16 v5, 0x3e8

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v5

    .line 37
    check-cast v4, Ljava/util/HashMap;

    .line 39
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 44
    if-eqz v4, :cond_0

    .line 46
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 48
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 51
    move-result-object v4

    .line 52
    if-ne v1, v4, :cond_0

    .line 54
    const-string v4, "add addLaunchedPackage : "

    .line 56
    const-string v5, ", cur count : "

    .line 58
    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v2

    .line 62
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 64
    check-cast v4, Ljava/util/HashMap;

    .line 66
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 69
    move-result v4

    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 82
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 84
    iget-object v4, v4, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 91
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 93
    sub-long/2addr v5, v7

    .line 94
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    .line 96
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 98
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 100
    sub-long/2addr v5, v7

    .line 101
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    .line 103
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 105
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 107
    sub-long/2addr v5, v7

    .line 108
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    .line 110
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 112
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    .line 114
    sub-long/2addr v5, v7

    .line 115
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 117
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 119
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    .line 121
    sub-long/2addr v5, v7

    .line 122
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    .line 124
    const-wide/16 v7, 0x0

    .line 126
    cmp-long v5, v5, v7

    .line 128
    iget-object v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 130
    iget-object v9, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 132
    const/16 v10, 0x2bc

    .line 134
    if-lez v5, :cond_1

    .line 136
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 140
    iput v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 142
    if-eqz v9, :cond_1

    .line 144
    iget-object v5, v6, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 146
    invoke-static {v9, v5, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    .line 149
    :cond_1
    iget-wide v11, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 151
    cmp-long v5, v11, v7

    .line 153
    if-lez v5, :cond_2

    .line 155
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 157
    add-int/lit8 v5, v5, 0x1

    .line 159
    iput v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 161
    if-eqz v9, :cond_2

    .line 163
    iget-object v5, v6, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 165
    const/16 v7, 0x320

    .line 167
    invoke-static {v9, v5, v7}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    .line 170
    :cond_2
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 172
    const/4 v7, 0x0

    .line 173
    const/16 v8, 0x80

    .line 175
    const-string v11, ")"

    .line 177
    if-eqz v5, :cond_3

    .line 179
    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 182
    move-result-object v5

    .line 183
    if-ne v9, v5, :cond_3

    .line 185
    const-string/jumbo v5, "prevKillCount : (pE : "

    .line 188
    invoke-static {v8, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    move-result-object v5

    .line 192
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 194
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    const-string v6, ", pPr : "

    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    .line 204
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    const-string v6, ", pSv : "

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    .line 214
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    const-string v6, ", pPi : "

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 224
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 227
    const-string v6, ", pCm : "

    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 234
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v6

    .line 244
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 250
    const-string/jumbo v6, "currentKillCount : (cE : "

    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    .line 258
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    const-string v6, ", cPr : "

    .line 263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    .line 268
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    const-string v6, ", cSv : "

    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 278
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    const-string v6, ", cPi : "

    .line 283
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    .line 288
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    const-string v6, ", cCm : "

    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    .line 298
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v5

    .line 308
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 313
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 315
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 317
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 319
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 321
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 323
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 325
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    .line 327
    iget-wide v4, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 329
    iput-wide v4, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    .line 331
    const/16 v2, 0x9

    .line 333
    if-ne v0, v2, :cond_4

    .line 335
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 337
    add-int/lit8 v2, v2, 0x1

    .line 339
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    .line 343
    const-string v4, "HOT("

    .line 345
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    move-result-object v0

    .line 362
    goto :goto_0

    .line 363
    :cond_4
    const/16 v2, 0x8

    .line 365
    if-ne v0, v2, :cond_5

    .line 367
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 369
    add-int/lit8 v2, v2, 0x1

    .line 371
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    const-string v4, "WARM("

    .line 377
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object v0

    .line 394
    goto :goto_0

    .line 395
    :cond_5
    const/4 v2, 0x7

    .line 396
    if-ne v0, v2, :cond_6

    .line 398
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 400
    add-int/lit8 v2, v2, 0x1

    .line 402
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    .line 406
    const-string v4, "COLD("

    .line 408
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    move-result-object v0

    .line 425
    goto :goto_0

    .line 426
    :cond_6
    const-string v0, ""

    .line 428
    :goto_0
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 430
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 432
    iget v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 434
    add-int/2addr v4, v2

    .line 435
    add-int/2addr v4, v5

    .line 436
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 438
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 440
    if-lez v4, :cond_7

    .line 442
    int-to-double v14, v2

    .line 443
    mul-double/2addr v14, v12

    .line 444
    int-to-double v7, v4

    .line 445
    div-double/2addr v14, v7

    .line 446
    add-double/2addr v14, v5

    .line 447
    double-to-int v4, v14

    .line 448
    goto :goto_1

    .line 449
    :cond_7
    const/4 v4, 0x0

    .line 450
    :goto_1
    iput v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    .line 452
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 454
    if-eqz v4, :cond_8

    .line 456
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 458
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 461
    move-result-object v4

    .line 462
    if-ne v1, v4, :cond_8

    .line 464
    const-string/jumbo v4, "updateLaunchState() pkg "

    .line 467
    const-string v7, " type "

    .line 469
    move-object/from16 v8, p2

    .line 471
    invoke-static {v4, v8, v7, v0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_8
    const/4 v4, 0x0

    .line 475
    const/4 v7, 0x0

    .line 476
    const/4 v8, 0x0

    .line 477
    const/4 v14, 0x0

    .line 478
    const/4 v15, 0x0

    .line 479
    :goto_2
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 481
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 483
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 485
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 487
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 490
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    if-ge v4, v0, :cond_e

    .line 493
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 495
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 497
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 499
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 501
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 504
    move-result-object v0

    .line 505
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 507
    if-eqz v0, :cond_d

    .line 509
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 511
    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 513
    const/16 v9, 0x384

    .line 515
    if-lt v2, v9, :cond_9

    .line 517
    const/16 v9, 0x3e7

    .line 519
    if-gt v2, v9, :cond_9

    .line 521
    add-int/lit8 v7, v7, 0x1

    .line 523
    :cond_9
    const/16 v9, 0x352

    .line 525
    if-ne v2, v9, :cond_a

    .line 527
    add-int/lit8 v8, v8, 0x1

    .line 529
    :cond_a
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 531
    iget-boolean v10, v10, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 533
    if-nez v10, :cond_b

    .line 535
    goto :goto_3

    .line 536
    :cond_b
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 538
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 540
    const/16 v10, 0x10

    .line 542
    if-ne v0, v10, :cond_d

    .line 544
    if-ne v2, v9, :cond_c

    .line 546
    add-int/lit8 v15, v15, 0x1

    .line 548
    goto :goto_3

    .line 549
    :cond_c
    add-int/lit8 v14, v14, 0x1

    .line 551
    goto :goto_3

    .line 552
    :catch_0
    move-exception v0

    .line 553
    goto :goto_4

    .line 554
    :catch_1
    move-exception v0

    .line 555
    :try_start_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 558
    move-result-object v0

    .line 559
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 562
    :cond_d
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 564
    const/16 v10, 0x2bc

    .line 566
    goto :goto_2

    .line 567
    :goto_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 570
    move-result-object v0

    .line 571
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_e
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 576
    add-int/2addr v0, v7

    .line 577
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 579
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 581
    add-int/2addr v0, v8

    .line 582
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 584
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 586
    add-int/2addr v0, v14

    .line 587
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 589
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 591
    add-int/2addr v0, v15

    .line 592
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 594
    iput v14, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    .line 596
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 598
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 600
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 602
    if-lez v0, :cond_f

    .line 604
    int-to-double v7, v4

    .line 605
    mul-double/2addr v7, v12

    .line 606
    int-to-double v9, v0

    .line 607
    div-double/2addr v7, v9

    .line 608
    add-double/2addr v7, v5

    .line 609
    double-to-int v4, v7

    .line 610
    goto :goto_5

    .line 611
    :cond_f
    const/4 v4, 0x0

    .line 612
    :goto_5
    iput v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 614
    iget v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 616
    if-lez v0, :cond_10

    .line 618
    int-to-double v7, v2

    .line 619
    mul-double/2addr v7, v12

    .line 620
    int-to-double v9, v0

    .line 621
    div-double/2addr v7, v9

    .line 622
    add-double/2addr v7, v5

    .line 623
    double-to-int v2, v7

    .line 624
    goto :goto_6

    .line 625
    :cond_10
    const/4 v2, 0x0

    .line 626
    :goto_6
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 628
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 630
    check-cast v0, Ljava/util/HashMap;

    .line 632
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 635
    move-result v0

    .line 636
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 638
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 640
    check-cast v0, Ljava/util/HashMap;

    .line 642
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 645
    move-result-object v0

    .line 646
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 649
    move-result-object v0

    .line 650
    const/4 v2, 0x0

    .line 651
    :cond_11
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 654
    move-result v4

    .line 655
    if-eqz v4, :cond_12

    .line 657
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 660
    move-result-object v4

    .line 661
    check-cast v4, Ljava/lang/String;

    .line 663
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 665
    check-cast v7, Ljava/util/HashMap;

    .line 667
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    move-result-object v4

    .line 671
    check-cast v4, Ljava/lang/Integer;

    .line 673
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 676
    move-result v4

    .line 677
    const/16 v7, 0x2bc

    .line 679
    if-gt v4, v7, :cond_11

    .line 681
    add-int/lit8 v2, v2, 0x1

    .line 683
    goto :goto_7

    .line 684
    :cond_12
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 686
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 688
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 690
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    if-lez v0, :cond_13

    .line 695
    int-to-double v7, v2

    .line 696
    mul-double/2addr v7, v12

    .line 697
    int-to-double v9, v0

    .line 698
    div-double/2addr v7, v9

    .line 699
    add-double/2addr v7, v5

    .line 700
    double-to-int v2, v7

    .line 701
    goto :goto_8

    .line 702
    :cond_13
    const/4 v2, 0x0

    .line 703
    :goto_8
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 705
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 707
    if-eqz v0, :cond_14

    .line 709
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 711
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 714
    move-result-object v0

    .line 715
    if-ne v1, v0, :cond_14

    .line 717
    const-string/jumbo v0, "updateProcessStateInfo() appCnt - "

    .line 720
    const/16 v2, 0x80

    .line 722
    invoke-static {v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    move-result-object v0

    .line 726
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 728
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    const-string v2, " launch total - "

    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 738
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 740
    add-int/2addr v2, v4

    .line 741
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 743
    add-int/2addr v2, v4

    .line 744
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    const-string v2, " hot launch("

    .line 749
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    .line 754
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 757
    const-string v2, "%) hot - "

    .line 759
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 764
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    const-string v2, " warm - "

    .line 769
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    const-string v2, " cold - "

    .line 779
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 784
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 790
    move-result-object v2

    .line 791
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v2, 0x0

    .line 795
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 798
    const-string/jumbo v4, "cur previousKillRatio = "

    .line 801
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 806
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 809
    const-string v4, "%, serviceKillRatio = "

    .line 811
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 816
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 819
    const-string v4, "%, killedPackageRatio = "

    .line 821
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 826
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 829
    const-string v4, "%"

    .line 831
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    move-result-object v4

    .line 838
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/4 v2, 0x0

    .line 842
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 845
    const-string/jumbo v2, "updateRawProcessCount() Average Cached (T:"

    .line 848
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 853
    int-to-double v7, v2

    .line 854
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 856
    int-to-double v9, v2

    .line 857
    div-double/2addr v7, v9

    .line 858
    add-double/2addr v7, v5

    .line 859
    double-to-int v2, v7

    .line 860
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 863
    const-string v2, "/A:"

    .line 865
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 870
    int-to-double v7, v4

    .line 871
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 873
    int-to-double v9, v4

    .line 874
    div-double/2addr v7, v9

    .line 875
    add-double/2addr v7, v5

    .line 876
    double-to-int v4, v7

    .line 877
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 880
    const-string v4, "), Picked (T:"

    .line 882
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 887
    int-to-double v7, v4

    .line 888
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 890
    int-to-double v9, v4

    .line 891
    div-double/2addr v7, v9

    .line 892
    add-double/2addr v7, v5

    .line 893
    double-to-int v4, v7

    .line 894
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 902
    int-to-double v7, v2

    .line 903
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 905
    int-to-double v1, v1

    .line 906
    div-double/2addr v7, v1

    .line 907
    add-double/2addr v7, v5

    .line 908
    double-to-int v1, v7

    .line 909
    invoke-static {v0, v1, v11, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_14
    return-void
.end method

.method public final updatePsiInfo(DDD)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 3
    add-double/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 6
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 8
    add-double/2addr v0, p3

    .line 9
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 11
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 13
    add-double/2addr v0, p5

    .line 14
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 16
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 18
    cmpg-double v0, v0, p1

    .line 20
    if-gez v0, :cond_0

    .line 22
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 24
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 26
    cmpg-double v0, v0, p3

    .line 28
    if-gez v0, :cond_1

    .line 30
    iput-wide p3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 32
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 34
    cmpg-double v0, v0, p5

    .line 36
    if-gez v0, :cond_2

    .line 38
    iput-wide p5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 40
    :cond_2
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 42
    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 46
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 49
    move-result-object v0

    .line 50
    if-ne p0, v0, :cond_3

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    const-string v0, "Psi info cpu : "

    .line 56
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 62
    const-string p1, ", memory : "

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 70
    const-string p1, ", io : "

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    const-string p1, "ActivityManager_kpm"

    .line 84
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_3
    return-void
.end method
