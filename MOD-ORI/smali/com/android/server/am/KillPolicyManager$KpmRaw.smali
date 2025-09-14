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

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 6
    .line 7
    const-string v3, "ActivityManager_kpm"

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string/jumbo v2, "checkMemCriticalLowTH() killRatio = "

    .line 12
    .line 13
    .line 14
    const-string v4, "%, killedPackageRatio = "

    .line 15
    .line 16
    invoke-static {v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v4, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 21
    .line 22
    const-string v5, "%"

    .line 23
    .line 24
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget v2, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    if-lt v1, v2, :cond_3

    .line 34
    .line 35
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget v2, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 45
    .line 46
    if-lt v1, v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    const-string/jumbo v1, "checkMemCriticalLowTH() killRatio is over thrshold but not occurred many apps, so result not accepted"

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
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

    .line 62
    .line 63
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v2, "checkMemCriticalLowTH() memory critical status is "

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 76
    .line 77
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    const-wide/16 v7, 0x1

    .line 85
    .line 86
    invoke-static {v7, v8}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v7}, Ljava/time/Duration;->toMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    cmp-long v1, v1, v7

    .line 95
    .line 96
    if-lez v1, :cond_5

    .line 97
    .line 98
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string/jumbo v2, "persist.sys.kpm_cri_mem_detect"

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 116
    .line 117
    if-nez v1, :cond_5

    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance v1, Landroid/content/Intent;

    .line 123
    .line 124
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string/jumbo v2, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    const-string/jumbo v2, "res"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const-string v7, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 144
    .line 145
    const-string/jumbo v8, "com.samsung.android.lool"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    iget-object v2, v5, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string/jumbo v2, "memory Critical Low intent RESULT : "

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    :cond_5
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    .line 179
    .line 180
    if-eqz v1, :cond_c

    .line 181
    .line 182
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 183
    .line 184
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 185
    .line 186
    if-eq v0, v1, :cond_6

    .line 187
    .line 188
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 189
    .line 190
    if-ne v0, v1, :cond_c

    .line 191
    .line 192
    :cond_6
    iget-object v0, v5, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 193
    .line 194
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 195
    .line 196
    check-cast v1, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 203
    .line 204
    const-string v6, " => "

    .line 205
    .line 206
    const-string v7, ", "

    .line 207
    .line 208
    if-lt v1, v2, :cond_7

    .line 209
    .line 210
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 211
    .line 212
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 217
    .line 218
    check-cast v2, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    sub-int/2addr v2, v4

    .line 225
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v8, Ljava/lang/Double;

    .line 228
    .line 229
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 230
    .line 231
    .line 232
    move-result-wide v8

    .line 233
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v10, Ljava/lang/Double;

    .line 236
    .line 237
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 238
    .line 239
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

    .line 245
    .line 246
    const-string/jumbo v12, "nativeFactor : "

    .line 247
    .line 248
    .line 249
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 253
    .line 254
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 261
    .line 262
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    new-instance v1, Landroid/util/Pair;

    .line 285
    .line 286
    double-to-int v2, v8

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    double-to-int v8, v10

    .line 292
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    invoke-direct {v1, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 300
    .line 301
    :cond_7
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 302
    .line 303
    check-cast v1, Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 310
    .line 311
    if-lt v1, v2, :cond_8

    .line 312
    .line 313
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 314
    .line 315
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 320
    .line 321
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 326
    .line 327
    check-cast v8, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    sub-int/2addr v8, v4

    .line 334
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v4, Ljava/lang/Double;

    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 339
    .line 340
    .line 341
    move-result-wide v9

    .line 342
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v4, Ljava/lang/Double;

    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 347
    .line 348
    .line 349
    move-result-wide v11

    .line 350
    add-double/2addr v11, v9

    .line 351
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v4, Ljava/lang/Double;

    .line 354
    .line 355
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 356
    .line 357
    .line 358
    move-result-wide v9

    .line 359
    int-to-double v13, v8

    .line 360
    mul-double/2addr v9, v13

    .line 361
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v4, Ljava/lang/Double;

    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 366
    .line 367
    .line 368
    move-result-wide v15

    .line 369
    mul-double/2addr v15, v13

    .line 370
    add-double/2addr v15, v9

    .line 371
    add-double v8, v15, v11

    .line 372
    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    const-string/jumbo v10, "sysFactor : "

    .line 376
    .line 377
    .line 378
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 382
    .line 383
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 390
    .line 391
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v1, " persFactor : "

    .line 395
    .line 396
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 400
    .line 401
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 408
    .line 409
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    new-instance v1, Landroid/util/Pair;

    .line 432
    .line 433
    double-to-int v2, v11

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    double-to-int v3, v8

    .line 439
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 447
    .line 448
    :cond_8
    iget-object v0, v5, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 449
    .line 450
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 451
    .line 452
    check-cast v1, Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 459
    .line 460
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 461
    .line 462
    if-ge v1, v2, :cond_9

    .line 463
    .line 464
    goto :goto_2

    .line 465
    :cond_9
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 466
    .line 467
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v1, Ljava/lang/Integer;

    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    int-to-double v1, v1

    .line 476
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 477
    .line 478
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v6, Ljava/lang/Integer;

    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    int-to-double v6, v6

    .line 487
    sget v8, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 488
    .line 489
    add-int/lit8 v8, v8, 0x64

    .line 490
    .line 491
    int-to-double v8, v8

    .line 492
    mul-double/2addr v1, v8

    .line 493
    mul-double/2addr v6, v3

    .line 494
    cmpg-double v1, v1, v6

    .line 495
    .line 496
    if-gez v1, :cond_a

    .line 497
    .line 498
    const-string v0, "KERNEL"

    .line 499
    .line 500
    invoke-static {v5, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    goto :goto_3

    .line 504
    :cond_a
    :goto_2
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 505
    .line 506
    check-cast v1, Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 513
    .line 514
    if-ge v1, v2, :cond_b

    .line 515
    .line 516
    goto :goto_3

    .line 517
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 518
    .line 519
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v1, Ljava/lang/Integer;

    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    int-to-double v1, v1

    .line 528
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 529
    .line 530
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v0, Ljava/lang/Integer;

    .line 533
    .line 534
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    int-to-double v6, v0

    .line 539
    sget v0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 540
    .line 541
    add-int/lit8 v0, v0, 0x64

    .line 542
    .line 543
    int-to-double v8, v0

    .line 544
    mul-double/2addr v1, v8

    .line 545
    mul-double/2addr v6, v3

    .line 546
    cmpg-double v0, v1, v6

    .line 547
    .line 548
    if-gez v0, :cond_c

    .line 549
    .line 550
    const-string v0, "PLATFORM"

    .line 551
    .line 552
    invoke-static {v5, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    :cond_c
    :goto_3
    return-void
.end method

.method public static -$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 14
    .line 15
    check-cast v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-le v0, p2, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string/jumbo v0, "markKilledPackage : "

    .line 45
    .line 46
    .line 47
    const-string v1, ", adj "

    .line 48
    .line 49
    const-string v2, ", killed adj : "

    .line 50
    .line 51
    invoke-static {p2, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 56
    .line 57
    check-cast p0, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "ActivityManager_kpm"

    .line 71
    .line 72
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 20
    .line 21
    aget-wide v0, p0, p1

    .line 22
    .line 23
    const-wide/16 v2, 0x1

    .line 24
    .line 25
    add-long/2addr v0, v2

    .line 26
    aput-wide v0, p0, p1

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    array-length v1, v1

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    array-length v1, v1

    .line 30
    new-array v1, v1, [J

    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    .line 33
    .line 34
    const/16 v1, 0xa

    .line 35
    .line 36
    new-array v1, v1, [Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 39
    .line 40
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    .line 41
    .line 42
    const p2, 0x7fffffff

    .line 43
    .line 44
    .line 45
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 49
    .line 50
    const/high16 v2, -0x80000000

    .line 51
    .line 52
    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 53
    .line 54
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 55
    .line 56
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 57
    .line 58
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 59
    .line 60
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    .line 61
    .line 62
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 63
    .line 64
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 65
    .line 66
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 67
    .line 68
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 69
    .line 70
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 71
    .line 72
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 73
    .line 74
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 75
    .line 76
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 77
    .line 78
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 79
    .line 80
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 81
    .line 82
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 83
    .line 84
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    .line 85
    .line 86
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 87
    .line 88
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 89
    .line 90
    const-wide/16 v2, 0x0

    .line 91
    .line 92
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 93
    .line 94
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 95
    .line 96
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 97
    .line 98
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    .line 99
    .line 100
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 101
    .line 102
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 103
    .line 104
    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    int-to-long v4, p2

    .line 109
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 110
    .line 111
    const/16 p2, 0xf

    .line 112
    .line 113
    invoke-static {v1, p2, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    int-to-long v4, p2

    .line 118
    iget-wide v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 119
    .line 120
    sub-long/2addr v4, v6

    .line 121
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 122
    .line 123
    const/16 p2, 0x2020

    .line 124
    .line 125
    filled-new-array {p2}, [I

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    new-array v4, v0, [J

    .line 130
    .line 131
    aput-wide v2, v4, v1

    .line 132
    .line 133
    const-string v5, "/sys/module/lowmemorykiller/parameters/lmkcount"

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-static {v5, p2, v6, v4, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 137
    .line 138
    .line 139
    aget-wide v4, v4, v1

    .line 140
    .line 141
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    .line 142
    .line 143
    iget-object p2, p1, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 144
    .line 145
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 146
    .line 147
    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 148
    .line 149
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 150
    .line 151
    iget-object p2, p1, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 152
    .line 153
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 154
    .line 155
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 156
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v4

    .line 161
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    .line 162
    .line 163
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 164
    .line 165
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 166
    .line 167
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 168
    .line 169
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 170
    .line 171
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 172
    .line 173
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 174
    .line 175
    const/16 p2, 0x3e9

    .line 176
    .line 177
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 178
    .line 179
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 180
    .line 181
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 182
    .line 183
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    .line 184
    .line 185
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    .line 186
    .line 187
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    .line 188
    .line 189
    const-wide/16 v4, 0x0

    .line 190
    .line 191
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 192
    .line 193
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 194
    .line 195
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 196
    .line 197
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 198
    .line 199
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 200
    .line 201
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 202
    .line 203
    new-instance p2, Lcom/android/server/chimera/ChimeraDataInfo;

    .line 204
    .line 205
    invoke-direct {p2}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 206
    .line 207
    .line 208
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 209
    .line 210
    sget-object p2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_0:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 211
    .line 212
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 213
    .line 214
    move p2, v1

    .line 215
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 216
    .line 217
    array-length v5, v4

    .line 218
    if-ge p2, v5, :cond_0

    .line 219
    .line 220
    aput-wide v2, v4, p2

    .line 221
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

    .line 226
    .line 227
    array-length v5, v4

    .line 228
    if-ge p2, v5, :cond_1

    .line 229
    .line 230
    aput-wide v2, v4, p2

    .line 231
    .line 232
    add-int/2addr p2, v0

    .line 233
    goto :goto_1

    .line 234
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    .line 235
    .line 236
    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager;->fillLmkdCounts([J)V

    .line 237
    .line 238
    .line 239
    new-instance p2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 240
    .line 241
    iget-object v2, p1, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 242
    .line 243
    invoke-direct {p2, p1, p0, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;-><init>(Lcom/android/server/am/KillPolicyManager;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 244
    .line 245
    .line 246
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 247
    .line 248
    new-instance p1, Ljava/util/HashMap;

    .line 249
    .line 250
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 254
    .line 255
    new-instance p1, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 261
    .line 262
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 263
    .line 264
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 265
    .line 266
    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 267
    .line 268
    :goto_2
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 269
    .line 270
    array-length p2, p1

    .line 271
    if-ge v1, p2, :cond_2

    .line 272
    .line 273
    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 274
    .line 275
    aput-object p2, p1, v1

    .line 276
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

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    .line 10
    .line 11
    if-ne v2, p1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string p0, "appCnt is 0"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, ","

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 33
    .line 34
    int-to-double v2, v2

    .line 35
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 36
    .line 37
    int-to-double v4, v4

    .line 38
    div-double/2addr v2, v4

    .line 39
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 40
    .line 41
    add-double/2addr v2, v4

    .line 42
    double-to-int v2, v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 50
    .line 51
    int-to-double v2, v2

    .line 52
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 53
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

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 65
    .line 66
    int-to-double v2, v2

    .line 67
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 68
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

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 88
    .line 89
    iget v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    .line 122
    .line 123
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 130
    .line 131
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 138
    .line 139
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 146
    .line 147
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 154
    .line 155
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 162
    .line 163
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 222
    .line 223
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 224
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

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 236
    .line 237
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 238
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

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 250
    .line 251
    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 252
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

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 264
    .line 265
    add-double/2addr v2, v4

    .line 266
    double-to-int v2, v2

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 274
    .line 275
    add-double/2addr v2, v4

    .line 276
    double-to-int v2, v2

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 284
    .line 285
    add-double/2addr v2, v4

    .line 286
    double-to-int v2, v2

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string p1, ",["

    .line 311
    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 316
    .line 317
    const/4 v2, 0x0

    .line 318
    aget-wide v3, p1, v2

    .line 319
    .line 320
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const/4 v3, 0x1

    .line 324
    move v4, v3

    .line 325
    :goto_0
    array-length v5, p1

    .line 326
    if-ge v4, v5, :cond_2

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    aget-wide v5, p1, v4

    .line 332
    .line 333
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    add-int/lit8 v4, v4, 0x1

    .line 337
    .line 338
    goto :goto_0

    .line 339
    :cond_2
    const-string p1, "],["

    .line 340
    .line 341
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 345
    .line 346
    aget-wide v5, v4, v2

    .line 347
    .line 348
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    move v5, v3

    .line 352
    :goto_1
    array-length v6, v4

    .line 353
    if-ge v5, v6, :cond_3

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    aget-wide v6, v4, v5

    .line 359
    .line 360
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    add-int/lit8 v5, v5, 0x1

    .line 364
    .line 365
    goto :goto_1

    .line 366
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 370
    .line 371
    aget-object v2, p1, v2

    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    :goto_2
    array-length v2, p1

    .line 381
    if-ge v3, v2, :cond_4

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    aget-object v2, p1, v3

    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 396
    .line 397
    goto :goto_2

    .line 398
    :cond_4
    const-string p1, "],"

    .line 399
    .line 400
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    return-object v0
.end method

.method public final getKpmHeavyPssData()Ljava/lang/StringBuilder;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    const-string v2, " "

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v0, ",didn\'t happen Previous App Kill by LMKD"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_0
    const-string v3, ","

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 38
    .line 39
    const-string v4, ", [null]"

    .line 40
    .line 41
    const-string v5, "]"

    .line 42
    .line 43
    const-string v6, ",["

    .line 44
    .line 45
    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 53
    .line 54
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 63
    .line 64
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 73
    .line 74
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 83
    .line 84
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 93
    .line 94
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 103
    .line 104
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 113
    .line 114
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 123
    .line 124
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v3, v7, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 141
    .line 142
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 151
    .line 152
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 161
    .line 162
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 171
    .line 172
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v3, " 0 "

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 183
    .line 184
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuSwap:I

    .line 185
    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 193
    .line 194
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemCached:I

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 203
    .line 204
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    .line 205
    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 213
    .line 214
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuTotal:I

    .line 215
    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 223
    .line 224
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    .line 225
    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 233
    .line 234
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemUncached:I

    .line 235
    .line 236
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 247
    .line 248
    const/4 v8, 0x0

    .line 249
    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    .line 250
    .line 251
    if-eqz v3, :cond_4

    .line 252
    .line 253
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 257
    .line 258
    array-length v4, v3

    .line 259
    move v13, v8

    .line 260
    :goto_1
    if-ge v13, v4, :cond_3

    .line 261
    .line 262
    aget-object v14, v3, v13

    .line 263
    .line 264
    iget-object v15, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 265
    .line 266
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    if-eqz v15, :cond_2

    .line 271
    .line 272
    iget-object v15, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 273
    .line 274
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    check-cast v14, [J

    .line 279
    .line 280
    const-string/jumbo v15, "{"

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget-object v15, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 287
    .line 288
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    aget-wide v9, v14, v8

    .line 292
    .line 293
    long-to-double v9, v9

    .line 294
    div-double/2addr v9, v11

    .line 295
    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    .line 296
    .line 297
    add-double/2addr v9, v15

    .line 298
    double-to-int v9, v9

    .line 299
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget-object v9, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 306
    .line 307
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    const/4 v9, 0x1

    .line 311
    aget-wide v9, v14, v9

    .line 312
    .line 313
    long-to-double v9, v9

    .line 314
    div-double/2addr v9, v11

    .line 315
    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    .line 316
    .line 317
    add-double/2addr v9, v15

    .line 318
    double-to-int v9, v9

    .line 319
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    iget-object v9, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 326
    .line 327
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    const/4 v9, 0x2

    .line 331
    aget-wide v9, v14, v9

    .line 332
    .line 333
    long-to-double v9, v9

    .line 334
    div-double/2addr v9, v11

    .line 335
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .line 336
    .line 337
    add-double/2addr v9, v14

    .line 338
    double-to-int v9, v9

    .line 339
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string/jumbo v9, "}"

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    goto :goto_2

    .line 349
    :cond_2
    const-string/jumbo v9, "{-1 -1 -1}"

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 356
    .line 357
    goto :goto_1

    .line 358
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-ge v8, v2, :cond_7

    .line 372
    .line 373
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 380
    .line 381
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 385
    .line 386
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v3, ", ver: "

    .line 392
    .line 393
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget-wide v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 397
    .line 398
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 402
    .line 403
    if-eqz v3, :cond_5

    .line 404
    .line 405
    const-string v3, ", PackageName: "

    .line 406
    .line 407
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_5
    const-string v3, ", PackageName: null"

    .line 417
    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    :goto_4
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 422
    .line 423
    if-eqz v3, :cond_6

    .line 424
    .line 425
    const-string v3, ", PackageVer: "

    .line 426
    .line 427
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_6
    const-string v3, ", PackageVer: null"

    .line 437
    .line 438
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    :goto_5
    const-string v3, ", adj: "

    .line 442
    .line 443
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 447
    .line 448
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v3, ", pss: "

    .line 454
    .line 455
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 459
    .line 460
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 461
    .line 462
    long-to-double v3, v3

    .line 463
    div-double/2addr v3, v11

    .line 464
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 465
    .line 466
    add-double/2addr v3, v9

    .line 467
    double-to-int v3, v3

    .line 468
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v3, " mb, swap: "

    .line 472
    .line 473
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 477
    .line 478
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 479
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

    .line 485
    .line 486
    .line 487
    const-string v3, " mb, rss: "

    .line 488
    .line 489
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 493
    .line 494
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 495
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

    .line 501
    .line 502
    .line 503
    const-string v3, " mb, "

    .line 504
    .line 505
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget-object v3, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 509
    .line 510
    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    add-int/lit8 v8, v8, 0x1

    .line 526
    .line 527
    goto/16 :goto_3

    .line 528
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

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    int-to-long v1, v1

    .line 7
    const/16 v3, 0xf

    .line 8
    .line 9
    invoke-static {v0, v3, v0, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    int-to-long v3, v3

    .line 14
    sub-long/2addr v3, v1

    .line 15
    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 16
    .line 17
    sub-long/2addr v1, v5

    .line 18
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 19
    .line 20
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 21
    .line 22
    sub-long/2addr v3, v1

    .line 23
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 24
    .line 25
    const/16 v1, 0x2020

    .line 26
    .line 27
    filled-new-array {v1}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    const-wide/16 v3, 0x0

    .line 35
    .line 36
    aput-wide v3, v2, v0

    .line 37
    .line 38
    const-string v3, "/sys/module/lowmemorykiller/parameters/lmkcount"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v3, v1, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 42
    .line 43
    .line 44
    aget-wide v0, v2, v0

    .line 45
    .line 46
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    .line 47
    .line 48
    sub-long/2addr v0, v2

    .line 49
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 50
    .line 51
    return-void
.end method

.method public final updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 7
    .line 8
    iget v1, v1, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 9
    .line 10
    iget v2, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 14
    .line 15
    add-int/2addr v2, v0

    .line 16
    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 17
    .line 18
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 19
    .line 20
    add-int/2addr v2, v1

    .line 21
    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 22
    .line 23
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 24
    .line 25
    iget p1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 26
    .line 27
    add-int/2addr v2, p1

    .line 28
    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 29
    .line 30
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 31
    .line 32
    if-le p1, v0, :cond_0

    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 35
    .line 36
    :cond_0
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 37
    .line 38
    if-ge p1, v0, :cond_1

    .line 39
    .line 40
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 41
    .line 42
    :cond_1
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 43
    .line 44
    if-le p1, v1, :cond_2

    .line 45
    .line 46
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 47
    .line 48
    :cond_2
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    .line 49
    .line 50
    if-ge p1, v1, :cond_3

    .line 51
    .line 52
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public final updateProcessStateInfo(ILjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 6
    .line 7
    add-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "ActivityManager_kpm"

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 20
    .line 21
    check-cast v4, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 30
    .line 31
    const/16 v5, 0x3e8

    .line 32
    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v4, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-ne v1, v4, :cond_0

    .line 53
    .line 54
    const-string v4, "add addLaunchedPackage : "

    .line 55
    .line 56
    const-string v5, ", cur count : "

    .line 57
    .line 58
    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 63
    .line 64
    check-cast v4, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 81
    .line 82
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 83
    .line 84
    iget-object v4, v4, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 90
    .line 91
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 92
    .line 93
    sub-long/2addr v5, v7

    .line 94
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    .line 95
    .line 96
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 97
    .line 98
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 99
    .line 100
    sub-long/2addr v5, v7

    .line 101
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    .line 102
    .line 103
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 104
    .line 105
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 106
    .line 107
    sub-long/2addr v5, v7

    .line 108
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    .line 109
    .line 110
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 111
    .line 112
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    .line 113
    .line 114
    sub-long/2addr v5, v7

    .line 115
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 116
    .line 117
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 118
    .line 119
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    .line 120
    .line 121
    sub-long/2addr v5, v7

    .line 122
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    .line 123
    .line 124
    const-wide/16 v7, 0x0

    .line 125
    .line 126
    cmp-long v5, v5, v7

    .line 127
    .line 128
    iget-object v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 129
    .line 130
    iget-object v9, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 131
    .line 132
    const/16 v10, 0x2bc

    .line 133
    .line 134
    if-lez v5, :cond_1

    .line 135
    .line 136
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 137
    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    iput v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 141
    .line 142
    if-eqz v9, :cond_1

    .line 143
    .line 144
    iget-object v5, v6, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v9, v5, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    :cond_1
    iget-wide v11, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 150
    .line 151
    cmp-long v5, v11, v7

    .line 152
    .line 153
    if-lez v5, :cond_2

    .line 154
    .line 155
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 156
    .line 157
    add-int/lit8 v5, v5, 0x1

    .line 158
    .line 159
    iput v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 160
    .line 161
    if-eqz v9, :cond_2

    .line 162
    .line 163
    iget-object v5, v6, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 164
    .line 165
    const/16 v7, 0x320

    .line 166
    .line 167
    invoke-static {v9, v5, v7}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    :cond_2
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 171
    .line 172
    const/4 v7, 0x0

    .line 173
    const/16 v8, 0x80

    .line 174
    .line 175
    const-string v11, ")"

    .line 176
    .line 177
    if-eqz v5, :cond_3

    .line 178
    .line 179
    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    if-ne v9, v5, :cond_3

    .line 184
    .line 185
    const-string/jumbo v5, "prevKillCount : (pE : "

    .line 186
    .line 187
    .line 188
    invoke-static {v8, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 193
    .line 194
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v6, ", pPr : "

    .line 198
    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    .line 203
    .line 204
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v6, ", pSv : "

    .line 208
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    .line 213
    .line 214
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v6, ", pPi : "

    .line 218
    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 223
    .line 224
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v6, ", pCm : "

    .line 228
    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 233
    .line 234
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 248
    .line 249
    .line 250
    const-string/jumbo v6, "currentKillCount : (cE : "

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    .line 257
    .line 258
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v6, ", cPr : "

    .line 262
    .line 263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    .line 267
    .line 268
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v6, ", cSv : "

    .line 272
    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 277
    .line 278
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v6, ", cPi : "

    .line 282
    .line 283
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    .line 287
    .line 288
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v6, ", cCm : "

    .line 292
    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    .line 297
    .line 298
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    :cond_3
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 312
    .line 313
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 314
    .line 315
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 316
    .line 317
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 318
    .line 319
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 320
    .line 321
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 322
    .line 323
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 324
    .line 325
    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    .line 326
    .line 327
    iget-wide v4, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 328
    .line 329
    iput-wide v4, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    .line 330
    .line 331
    const/16 v2, 0x9

    .line 332
    .line 333
    if-ne v0, v2, :cond_4

    .line 334
    .line 335
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 336
    .line 337
    add-int/lit8 v2, v2, 0x1

    .line 338
    .line 339
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 340
    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v4, "HOT("

    .line 344
    .line 345
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    goto :goto_0

    .line 363
    :cond_4
    const/16 v2, 0x8

    .line 364
    .line 365
    if-ne v0, v2, :cond_5

    .line 366
    .line 367
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 368
    .line 369
    add-int/lit8 v2, v2, 0x1

    .line 370
    .line 371
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 372
    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    const-string v4, "WARM("

    .line 376
    .line 377
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    goto :goto_0

    .line 395
    :cond_5
    const/4 v2, 0x7

    .line 396
    if-ne v0, v2, :cond_6

    .line 397
    .line 398
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 399
    .line 400
    add-int/lit8 v2, v2, 0x1

    .line 401
    .line 402
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 403
    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string v4, "COLD("

    .line 407
    .line 408
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    goto :goto_0

    .line 426
    :cond_6
    const-string v0, ""

    .line 427
    .line 428
    :goto_0
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 429
    .line 430
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 431
    .line 432
    iget v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 433
    .line 434
    add-int/2addr v4, v2

    .line 435
    add-int/2addr v4, v5

    .line 436
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 437
    .line 438
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 439
    .line 440
    if-lez v4, :cond_7

    .line 441
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

    .line 451
    .line 452
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 453
    .line 454
    if-eqz v4, :cond_8

    .line 455
    .line 456
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 457
    .line 458
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    if-ne v1, v4, :cond_8

    .line 463
    .line 464
    const-string/jumbo v4, "updateLaunchState() pkg "

    .line 465
    .line 466
    .line 467
    const-string v7, " type "

    .line 468
    .line 469
    move-object/from16 v8, p2

    .line 470
    .line 471
    invoke-static {v4, v8, v7, v0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
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

    .line 480
    .line 481
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 482
    .line 483
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 484
    .line 485
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 488
    .line 489
    .line 490
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    if-ge v4, v0, :cond_e

    .line 492
    .line 493
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 494
    .line 495
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 496
    .line 497
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 498
    .line 499
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 506
    .line 507
    if-eqz v0, :cond_d

    .line 508
    .line 509
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 510
    .line 511
    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 512
    .line 513
    const/16 v9, 0x384

    .line 514
    .line 515
    if-lt v2, v9, :cond_9

    .line 516
    .line 517
    const/16 v9, 0x3e7

    .line 518
    .line 519
    if-gt v2, v9, :cond_9

    .line 520
    .line 521
    add-int/lit8 v7, v7, 0x1

    .line 522
    .line 523
    :cond_9
    const/16 v9, 0x352

    .line 524
    .line 525
    if-ne v2, v9, :cond_a

    .line 526
    .line 527
    add-int/lit8 v8, v8, 0x1

    .line 528
    .line 529
    :cond_a
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 530
    .line 531
    iget-boolean v10, v10, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 532
    .line 533
    if-nez v10, :cond_b

    .line 534
    .line 535
    goto :goto_3

    .line 536
    :cond_b
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 537
    .line 538
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 539
    .line 540
    const/16 v10, 0x10

    .line 541
    .line 542
    if-ne v0, v10, :cond_d

    .line 543
    .line 544
    if-ne v2, v9, :cond_c

    .line 545
    .line 546
    add-int/lit8 v15, v15, 0x1

    .line 547
    .line 548
    goto :goto_3

    .line 549
    :cond_c
    add-int/lit8 v14, v14, 0x1

    .line 550
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

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 560
    .line 561
    .line 562
    :cond_d
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 563
    .line 564
    const/16 v10, 0x2bc

    .line 565
    .line 566
    goto :goto_2

    .line 567
    :goto_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    :cond_e
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 575
    .line 576
    add-int/2addr v0, v7

    .line 577
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 578
    .line 579
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 580
    .line 581
    add-int/2addr v0, v8

    .line 582
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 583
    .line 584
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 585
    .line 586
    add-int/2addr v0, v14

    .line 587
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 588
    .line 589
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 590
    .line 591
    add-int/2addr v0, v15

    .line 592
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 593
    .line 594
    iput v14, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    .line 595
    .line 596
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 597
    .line 598
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 599
    .line 600
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 601
    .line 602
    if-lez v0, :cond_f

    .line 603
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

    .line 613
    .line 614
    iget v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 615
    .line 616
    if-lez v0, :cond_10

    .line 617
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

    .line 627
    .line 628
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 629
    .line 630
    check-cast v0, Ljava/util/HashMap;

    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 637
    .line 638
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 639
    .line 640
    check-cast v0, Ljava/util/HashMap;

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    const/4 v2, 0x0

    .line 651
    :cond_11
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    .line 653
    .line 654
    move-result v4

    .line 655
    if-eqz v4, :cond_12

    .line 656
    .line 657
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    check-cast v4, Ljava/lang/String;

    .line 662
    .line 663
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 664
    .line 665
    check-cast v7, Ljava/util/HashMap;

    .line 666
    .line 667
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    check-cast v4, Ljava/lang/Integer;

    .line 672
    .line 673
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 674
    .line 675
    .line 676
    move-result v4

    .line 677
    const/16 v7, 0x2bc

    .line 678
    .line 679
    if-gt v4, v7, :cond_11

    .line 680
    .line 681
    add-int/lit8 v2, v2, 0x1

    .line 682
    .line 683
    goto :goto_7

    .line 684
    :cond_12
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 685
    .line 686
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 687
    .line 688
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 689
    .line 690
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    if-lez v0, :cond_13

    .line 694
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

    .line 704
    .line 705
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 706
    .line 707
    if-eqz v0, :cond_14

    .line 708
    .line 709
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 710
    .line 711
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    if-ne v1, v0, :cond_14

    .line 716
    .line 717
    const-string/jumbo v0, "updateProcessStateInfo() appCnt - "

    .line 718
    .line 719
    .line 720
    const/16 v2, 0x80

    .line 721
    .line 722
    invoke-static {v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 727
    .line 728
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v2, " launch total - "

    .line 732
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 737
    .line 738
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 739
    .line 740
    add-int/2addr v2, v4

    .line 741
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 742
    .line 743
    add-int/2addr v2, v4

    .line 744
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    const-string v2, " hot launch("

    .line 748
    .line 749
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    .line 753
    .line 754
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v2, "%) hot - "

    .line 758
    .line 759
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 763
    .line 764
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    const-string v2, " warm - "

    .line 768
    .line 769
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 773
    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    const-string v2, " cold - "

    .line 778
    .line 779
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 783
    .line 784
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .line 793
    .line 794
    const/4 v2, 0x0

    .line 795
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 796
    .line 797
    .line 798
    const-string/jumbo v4, "cur previousKillRatio = "

    .line 799
    .line 800
    .line 801
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 805
    .line 806
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    const-string v4, "%, serviceKillRatio = "

    .line 810
    .line 811
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 815
    .line 816
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    const-string v4, "%, killedPackageRatio = "

    .line 820
    .line 821
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 825
    .line 826
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    const-string v4, "%"

    .line 830
    .line 831
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v4

    .line 838
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .line 840
    .line 841
    const/4 v2, 0x0

    .line 842
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 843
    .line 844
    .line 845
    const-string/jumbo v2, "updateRawProcessCount() Average Cached (T:"

    .line 846
    .line 847
    .line 848
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 852
    .line 853
    int-to-double v7, v2

    .line 854
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 855
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

    .line 861
    .line 862
    .line 863
    const-string v2, "/A:"

    .line 864
    .line 865
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 869
    .line 870
    int-to-double v7, v4

    .line 871
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 872
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

    .line 878
    .line 879
    .line 880
    const-string v4, "), Picked (T:"

    .line 881
    .line 882
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 886
    .line 887
    int-to-double v7, v4

    .line 888
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 889
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

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 901
    .line 902
    int-to-double v7, v2

    .line 903
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 904
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

    .line 910
    .line 911
    .line 912
    :cond_14
    return-void
.end method

.method public final updatePsiInfo(DDD)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 2
    .line 3
    add-double/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 7
    .line 8
    add-double/2addr v0, p3

    .line 9
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 12
    .line 13
    add-double/2addr v0, p5

    .line 14
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 17
    .line 18
    cmpg-double v0, v0, p1

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    .line 22
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 23
    .line 24
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 25
    .line 26
    cmpg-double v0, v0, p3

    .line 27
    .line 28
    if-gez v0, :cond_1

    .line 29
    .line 30
    iput-wide p3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 31
    .line 32
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 33
    .line 34
    cmpg-double v0, v0, p5

    .line 35
    .line 36
    if-gez v0, :cond_2

    .line 37
    .line 38
    iput-wide p5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 39
    .line 40
    :cond_2
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-ne p0, v0, :cond_3

    .line 51
    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "Psi info cpu : "

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ", memory : "

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, ", io : "

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "ActivityManager_kpm"

    .line 83
    .line 84
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method
