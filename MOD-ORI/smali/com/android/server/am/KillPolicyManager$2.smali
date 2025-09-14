.class public final Lcom/android/server/am/KillPolicyManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public final synthetic val$triggerTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager$2;->val$triggerTime:J

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 4
    .line 5
    const-string v2, "ActivityManager_kpm"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v3, "report daily random sample time : "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-wide v3, v0, Lcom/android/server/am/KillPolicyManager$2;->val$triggerTime:J

    .line 18
    .line 19
    invoke-static {v1, v3, v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->readLmkdKillCount()V

    .line 36
    .line 37
    .line 38
    iget-object v6, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 39
    .line 40
    invoke-virtual {v6, v5}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateKillInfo()V

    .line 44
    .line 45
    .line 46
    iget-object v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iput-object v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 56
    .line 57
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 58
    .line 59
    const-string/jumbo v6, "yyyyMMdd_HHmmss"

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iput-object v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    iput-wide v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 84
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    iput-wide v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    .line 90
    .line 91
    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 92
    .line 93
    .line 94
    iget-object v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 95
    .line 96
    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager;->fillLmkdCounts([J)V

    .line 97
    .line 98
    .line 99
    array-length v6, v5

    .line 100
    sub-int/2addr v6, v4

    .line 101
    :goto_0
    if-ltz v6, :cond_2

    .line 102
    .line 103
    aget-wide v7, v5, v6

    .line 104
    .line 105
    iget-object v9, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    .line 106
    .line 107
    aget-wide v9, v9, v6

    .line 108
    .line 109
    sub-long/2addr v7, v9

    .line 110
    aput-wide v7, v5, v6

    .line 111
    .line 112
    add-int/lit8 v6, v6, -0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iput-boolean v4, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 116
    .line 117
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance v6, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    .line 123
    .line 124
    invoke-direct {v6, v5, v3}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 125
    .line 126
    .line 127
    iput-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcDumpMemThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 130
    .line 131
    .line 132
    const-string v5, "ChimeraManagerService"

    .line 133
    .line 134
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Lcom/android/server/chimera/ChimeraManagerService;

    .line 139
    .line 140
    if-eqz v5, :cond_3

    .line 141
    .line 142
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-eqz v5, :cond_3

    .line 147
    .line 148
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 149
    .line 150
    invoke-static {v5, v6}, Lcom/android/server/chimera/ChimeraDataInfo;->getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    iput-object v6, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 155
    .line 156
    iput-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 157
    .line 158
    :cond_3
    iget-object v3, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 159
    .line 160
    check-cast v3, Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 163
    .line 164
    .line 165
    iget v3, v1, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 166
    .line 167
    rem-int/lit8 v5, v3, 0x1e

    .line 168
    .line 169
    iput v5, v1, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 170
    .line 171
    add-int/2addr v3, v4

    .line 172
    iput v3, v1, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 173
    .line 174
    new-instance v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 175
    .line 176
    invoke-direct {v6, v1, v3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 180
    .line 181
    aput-object v6, v1, v5

    .line 182
    .line 183
    :goto_1
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    const-string v34, "RbinAlloced"

    .line 189
    .line 190
    const-string v35, "RbinPool"

    .line 191
    .line 192
    const-string v5, "MemFree"

    .line 193
    .line 194
    const-string v6, "MemAvailable"

    .line 195
    .line 196
    const-string v7, "Cached"

    .line 197
    .line 198
    const-string v8, "Active(file)"

    .line 199
    .line 200
    const-string v9, "Inactive(file)"

    .line 201
    .line 202
    const-string v10, "RbinFree"

    .line 203
    .line 204
    const-string v11, "RbinCached"

    .line 205
    .line 206
    const-string v12, "SwapTotal"

    .line 207
    .line 208
    const-string v13, "SwapFree"

    .line 209
    .line 210
    const-string v14, "KReclaimable"

    .line 211
    .line 212
    const-string v15, "SReclaimable"

    .line 213
    .line 214
    const-string v16, "SUnreclaim"

    .line 215
    .line 216
    const-string v17, "KgslShmemUsage"

    .line 217
    .line 218
    const-string v18, "GpuSwap"

    .line 219
    .line 220
    const-string/jumbo v19, "system"

    .line 221
    .line 222
    .line 223
    const-string/jumbo v20, "zram0"

    .line 224
    .line 225
    .line 226
    const-string v21, "GpuTotal"

    .line 227
    .line 228
    const-string v22, "PageTables"

    .line 229
    .line 230
    const-string v23, "VmallocUsed"

    .line 231
    .line 232
    const-string v24, "Active(anon)"

    .line 233
    .line 234
    const-string v25, "Inactive(anon)"

    .line 235
    .line 236
    const-string v26, "Mapped"

    .line 237
    .line 238
    const-string v27, "AnonPages"

    .line 239
    .line 240
    const-string v28, "Shmem"

    .line 241
    .line 242
    const-string v29, "MemTotal"

    .line 243
    .line 244
    const-string v30, "HugepagePool"

    .line 245
    .line 246
    const-string v31, "DmaHeapPool"

    .line 247
    .line 248
    const-string v32, "Unevictable"

    .line 249
    .line 250
    const-string/jumbo v33, "system-uncached"

    .line 251
    .line 252
    .line 253
    filled-new-array/range {v5 .. v35}, [Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    const-string/jumbo v20, "cma_alloc_fail"

    .line 258
    .line 259
    .line 260
    const-string v21, "allocstall_dma32"

    .line 261
    .line 262
    const-string/jumbo v5, "workingset_refault_anon"

    .line 263
    .line 264
    .line 265
    const-string/jumbo v6, "workingset_refault_file"

    .line 266
    .line 267
    .line 268
    const-string/jumbo v7, "pgpgin"

    .line 269
    .line 270
    .line 271
    const-string/jumbo v8, "pgpgout"

    .line 272
    .line 273
    .line 274
    const-string/jumbo v9, "pswpin"

    .line 275
    .line 276
    .line 277
    const-string/jumbo v10, "pswpout"

    .line 278
    .line 279
    .line 280
    const-string v11, "allocstall_normal"

    .line 281
    .line 282
    const-string v12, "allocstall_movable"

    .line 283
    .line 284
    const-string/jumbo v13, "pgfault"

    .line 285
    .line 286
    .line 287
    const-string/jumbo v14, "pgmajfault"

    .line 288
    .line 289
    .line 290
    const-string/jumbo v15, "pgsteal_kswapd"

    .line 291
    .line 292
    .line 293
    const-string/jumbo v16, "pgsteal_direct"

    .line 294
    .line 295
    .line 296
    const-string/jumbo v17, "pgscan_kswapd"

    .line 297
    .line 298
    .line 299
    const-string/jumbo v18, "pgscan_direct"

    .line 300
    .line 301
    .line 302
    const-string/jumbo v19, "oom_kill"

    .line 303
    .line 304
    .line 305
    filled-new-array/range {v5 .. v21}, [Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    const/4 v6, 0x0

    .line 310
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 311
    .line 312
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v8, "TYPE"

    .line 316
    .line 317
    const/4 v9, 0x4

    .line 318
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    .line 320
    .line 321
    const-string v8, "KVER"

    .line 322
    .line 323
    const-string v9, "4.7"

    .line 324
    .line 325
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    .line 327
    .line 328
    const-string v8, "DRAM"

    .line 329
    .line 330
    iget v9, v1, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    .line 331
    .line 332
    mul-int/lit16 v9, v9, 0x400

    .line 333
    .line 334
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    .line 336
    .line 337
    const-string v8, "SWPT"

    .line 338
    .line 339
    iget v9, v1, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 340
    .line 341
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    .line 343
    .line 344
    new-instance v8, Lorg/json/JSONArray;

    .line 345
    .line 346
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string v9, "/proc/meminfo"

    .line 350
    .line 351
    invoke-static {v9}, Lcom/android/server/am/KillPolicyManager;->getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    const/4 v10, 0x0

    .line 356
    move v11, v10

    .line 357
    :goto_2
    const/16 v12, 0x1f

    .line 358
    .line 359
    if-ge v11, v12, :cond_5

    .line 360
    .line 361
    aget-object v12, v3, v11

    .line 362
    .line 363
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v13

    .line 367
    if-eqz v13, :cond_4

    .line 368
    .line 369
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    check-cast v12, Ljava/lang/Long;

    .line 374
    .line 375
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 376
    .line 377
    .line 378
    move-result-wide v12

    .line 379
    const-wide/16 v14, 0x400

    .line 380
    .line 381
    div-long/2addr v12, v14

    .line 382
    invoke-virtual {v8, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 383
    .line 384
    .line 385
    goto :goto_3

    .line 386
    :cond_4
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 387
    .line 388
    .line 389
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 390
    .line 391
    goto :goto_2

    .line 392
    :cond_5
    const-string v3, "PMI"

    .line 393
    .line 394
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    .line 396
    .line 397
    new-instance v3, Lorg/json/JSONArray;

    .line 398
    .line 399
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string v8, "/proc/vmstat"

    .line 403
    .line 404
    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager;->getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    :goto_4
    const/16 v9, 0x11

    .line 409
    .line 410
    if-ge v10, v9, :cond_8

    .line 411
    .line 412
    aget-object v9, v5, v10

    .line 413
    .line 414
    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    .line 415
    .line 416
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v11

    .line 420
    const-wide/16 v12, 0x0

    .line 421
    .line 422
    if-eqz v11, :cond_6

    .line 423
    .line 424
    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    .line 425
    .line 426
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    check-cast v11, Ljava/lang/Long;

    .line 431
    .line 432
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 433
    .line 434
    .line 435
    move-result-wide v14

    .line 436
    goto :goto_5

    .line 437
    :cond_6
    move-wide v14, v12

    .line 438
    :goto_5
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v11

    .line 442
    if-eqz v11, :cond_7

    .line 443
    .line 444
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    check-cast v9, Ljava/lang/Long;

    .line 449
    .line 450
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 451
    .line 452
    .line 453
    move-result-wide v11

    .line 454
    sub-long v12, v11, v14

    .line 455
    .line 456
    :cond_7
    invoke-virtual {v3, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 457
    .line 458
    .line 459
    add-int/lit8 v10, v10, 0x1

    .line 460
    .line 461
    goto :goto_4

    .line 462
    :cond_8
    const-string v5, "VMSTAT"

    .line 463
    .line 464
    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    .line 466
    .line 467
    iput-object v8, v1, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    .line 468
    .line 469
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    sub-int/2addr v3, v4

    .line 478
    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    goto :goto_6

    .line 483
    :catch_0
    const-string/jumbo v3, "failed to create the KPUT"

    .line 484
    .line 485
    .line 486
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    move-object v3, v6

    .line 490
    :goto_6
    invoke-virtual {v1, v3}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 494
    .line 495
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 496
    .line 497
    if-eqz v0, :cond_9

    .line 498
    .line 499
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->report()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 500
    .line 501
    .line 502
    goto :goto_7

    .line 503
    :catch_1
    move-exception v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    :cond_9
    :goto_7
    return-void
.end method
