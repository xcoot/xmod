.class public final Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public dumpHeavyProcessByAdj:Ljava/util/HashMap;

.field public dumpHeavyProcessList:Ljava/util/ArrayList;

.field public fgsMemDumpList:Ljava/util/ArrayList;

.field public isThreadRunning:Z

.field public mProcessMemoryDumpThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

.field public memoryUsageByAdj:Ljava/util/HashMap;

.field public peakLmkdKillAdj:I

.field public procMemDumpInfoList:Ljava/util/List;

.field public procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public static -$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v5

    .line 10
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 12
    const-wide v7, 0x3fd3333333333333L    # 0.3

    .line 17
    iget-object v9, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 19
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 21
    if-eqz v0, :cond_0

    .line 23
    move-object/from16 v0, p2

    .line 25
    iget v0, v0, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 27
    mul-int/lit16 v0, v0, 0x400

    .line 29
    :goto_0
    int-to-double v12, v0

    .line 30
    mul-double/2addr v12, v7

    .line 31
    add-double/2addr v12, v10

    .line 32
    double-to-long v7, v12

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget v0, v9, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    .line 36
    const/high16 v12, 0x100000

    .line 38
    mul-int/2addr v0, v12

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iget-object v0, v9, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 42
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo$1()Ljava/util/List;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 48
    const-string v12, " mb"

    .line 50
    const-string v13, " mb, rss: "

    .line 52
    const-string v14, " mb, swap: "

    .line 54
    const-string v15, ", pss: "

    .line 56
    const-string v10, ", adj: "

    .line 58
    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    .line 60
    const-string v11, "ActivityManager_kpm"

    .line 62
    const-wide/16 v20, 0x0

    .line 64
    if-eqz v0, :cond_e

    .line 66
    check-cast v0, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v0

    .line 72
    if-lez v0, :cond_e

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    .line 76
    iget-object v0, v9, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 78
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 80
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 82
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 87
    new-instance v9, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;

    .line 89
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 92
    check-cast v0, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 97
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 99
    check-cast v0, Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v9

    .line 105
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_e

    .line 111
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    move-object v3, v0

    .line 116
    check-cast v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 118
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 120
    if-nez v0, :cond_1

    .line 122
    goto :goto_2

    .line 123
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 128
    move-result v0

    .line 129
    const/4 v4, 0x5

    .line 130
    const/16 v23, 0x0

    .line 132
    if-ge v0, v4, :cond_2

    .line 134
    new-instance v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 136
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iput-object v3, v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 146
    move-object v4, v0

    .line 147
    const/16 v24, 0x1

    .line 149
    goto :goto_3

    .line 150
    :cond_2
    move-object/from16 v4, v23

    .line 152
    const/16 v24, 0x0

    .line 154
    :goto_3
    if-nez v24, :cond_4

    .line 156
    if-eqz p1, :cond_3

    .line 158
    goto :goto_4

    .line 159
    :cond_3
    move-object/from16 v26, v2

    .line 161
    move-wide/from16 v27, v5

    .line 163
    move-object/from16 v25, v9

    .line 165
    goto/16 :goto_d

    .line 167
    :cond_4
    :goto_4
    move-object/from16 v25, v9

    .line 169
    const/4 v9, 0x0

    .line 170
    :goto_5
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 173
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 174
    if-ge v9, v0, :cond_7

    .line 176
    :try_start_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 182
    if-eqz v0, :cond_5

    .line 184
    move-object/from16 v26, v2

    .line 186
    :try_start_2
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    move-wide/from16 v27, v5

    .line 190
    :try_start_3
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 192
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_6

    .line 198
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 200
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 202
    goto :goto_b

    .line 203
    :catch_0
    move-exception v0

    .line 204
    goto :goto_c

    .line 205
    :catch_1
    move-exception v0

    .line 206
    goto :goto_9

    .line 207
    :catch_2
    move-exception v0

    .line 208
    :goto_6
    move-wide/from16 v27, v5

    .line 210
    goto :goto_c

    .line 211
    :catch_3
    move-exception v0

    .line 212
    :goto_7
    move-wide/from16 v27, v5

    .line 214
    goto :goto_9

    .line 215
    :cond_5
    move-object/from16 v26, v2

    .line 217
    move-wide/from16 v27, v5

    .line 219
    :cond_6
    :goto_8
    const/4 v2, 0x1

    .line 220
    goto :goto_a

    .line 221
    :catch_4
    move-exception v0

    .line 222
    move-object/from16 v26, v2

    .line 224
    goto :goto_6

    .line 225
    :catch_5
    move-exception v0

    .line 226
    move-object/from16 v26, v2

    .line 228
    goto :goto_7

    .line 229
    :goto_9
    :try_start_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 233
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    goto :goto_8

    .line 237
    :goto_a
    add-int/2addr v9, v2

    .line 238
    move-object/from16 v2, v26

    .line 240
    move-wide/from16 v5, v27

    .line 242
    goto :goto_5

    .line 243
    :cond_7
    move-object/from16 v26, v2

    .line 245
    move-wide/from16 v27, v5

    .line 247
    move-object/from16 v0, v23

    .line 249
    :goto_b
    if-eqz v24, :cond_8

    .line 251
    invoke-virtual {v1, v0, v4}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 254
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    .line 257
    move-result-object v2

    .line 258
    iput-object v2, v4, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 260
    :cond_8
    if-eqz p1, :cond_9

    .line 262
    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 265
    goto :goto_d

    .line 266
    :goto_c
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 270
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_9
    :goto_d
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 275
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 277
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_a

    .line 283
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 285
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 287
    iget-wide v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 289
    move-wide/from16 v23, v7

    .line 291
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 293
    iget-wide v8, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 295
    move-object/from16 v29, v11

    .line 297
    const/4 v11, 0x3

    .line 298
    new-array v11, v11, [J

    .line 300
    const/16 v22, 0x0

    .line 302
    aput-wide v4, v11, v22

    .line 304
    const/4 v4, 0x1

    .line 305
    aput-wide v6, v11, v4

    .line 307
    const/4 v4, 0x2

    .line 308
    aput-wide v8, v11, v4

    .line 310
    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const/4 v2, 0x2

    .line 314
    goto :goto_e

    .line 315
    :cond_a
    move-wide/from16 v23, v7

    .line 317
    move-object/from16 v29, v11

    .line 319
    const/16 v22, 0x0

    .line 321
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 323
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 325
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    move-result-object v0

    .line 329
    check-cast v0, [J

    .line 331
    aget-wide v4, v0, v22

    .line 333
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 335
    add-long/2addr v4, v6

    .line 336
    aput-wide v4, v0, v22

    .line 338
    const/4 v2, 0x1

    .line 339
    aget-wide v4, v0, v2

    .line 341
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 343
    add-long/2addr v4, v6

    .line 344
    aput-wide v4, v0, v2

    .line 346
    const/4 v2, 0x2

    .line 347
    aget-wide v4, v0, v2

    .line 349
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 351
    add-long/2addr v4, v6

    .line 352
    aput-wide v4, v0, v2

    .line 354
    :goto_e
    const-string/jumbo v0, "vis"

    .line 357
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 359
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_b

    .line 365
    const-string/jumbo v0, "percept"

    .line 368
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 370
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_b

    .line 376
    const-string/jumbo v0, "perceptl"

    .line 379
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 381
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    move-result v0

    .line 385
    if-nez v0, :cond_b

    .line 387
    const-string/jumbo v0, "perceptm"

    .line 390
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 392
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_c

    .line 398
    :cond_b
    iget-wide v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 400
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 402
    add-long/2addr v4, v6

    .line 403
    add-long v4, v4, v20

    .line 405
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 407
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    move-wide/from16 v20, v4

    .line 412
    :cond_c
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 414
    if-eqz v0, :cond_d

    .line 416
    const-string/jumbo v0, "getProcessMemoryDumpInformation() process : "

    .line 419
    const/16 v4, 0x80

    .line 421
    invoke-static {v4, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    move-result-object v0

    .line 425
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 427
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-wide v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 443
    long-to-double v4, v4

    .line 444
    div-double v4, v4, v18

    .line 446
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 448
    add-double/2addr v4, v6

    .line 449
    double-to-int v4, v4

    .line 450
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-wide v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 458
    long-to-double v4, v4

    .line 459
    div-double v4, v4, v18

    .line 461
    add-double/2addr v4, v6

    .line 462
    double-to-int v4, v4

    .line 463
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 471
    long-to-double v3, v3

    .line 472
    div-double v3, v3, v18

    .line 474
    add-double/2addr v3, v6

    .line 475
    double-to-int v3, v3

    .line 476
    move-object/from16 v4, v29

    .line 478
    invoke-static {v0, v3, v12, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 481
    goto :goto_f

    .line 482
    :cond_d
    move-object/from16 v4, v29

    .line 484
    :goto_f
    move-object v11, v4

    .line 485
    move-wide/from16 v7, v23

    .line 487
    move-object/from16 v9, v25

    .line 489
    move-object/from16 v2, v26

    .line 491
    move-wide/from16 v5, v27

    .line 493
    goto/16 :goto_2

    .line 495
    :cond_e
    move-wide/from16 v27, v5

    .line 497
    move-wide/from16 v23, v7

    .line 499
    move-object v4, v11

    .line 500
    const/16 v22, 0x0

    .line 502
    move-wide/from16 v2, v20

    .line 504
    const-string/jumbo v0, "fgsMemDumpList total size "

    .line 507
    const-string v5, " kb, Threshold(30%) "

    .line 509
    invoke-static {v0, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    move-result-object v0

    .line 513
    move-wide/from16 v7, v23

    .line 515
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 518
    const-string v5, " kb"

    .line 520
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    move-result-object v0

    .line 527
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 532
    if-eqz v0, :cond_12

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 537
    move-result-wide v5

    .line 538
    sub-long v5, v5, v27

    .line 540
    cmp-long v0, v2, v7

    .line 542
    if-ltz v0, :cond_f

    .line 544
    move/from16 v0, v22

    .line 546
    :goto_10
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 548
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 551
    move-result v2

    .line 552
    if-ge v0, v2, :cond_f

    .line 554
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 559
    move-result-object v2

    .line 560
    check-cast v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 562
    const-string/jumbo v3, "fgsMemDumpList process : "

    .line 565
    const/16 v7, 0x80

    .line 567
    invoke-static {v7, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    move-result-object v3

    .line 571
    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 573
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 581
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 589
    long-to-double v8, v8

    .line 590
    div-double v8, v8, v18

    .line 592
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 594
    add-double v8, v8, v16

    .line 596
    double-to-int v8, v8

    .line 597
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 605
    long-to-double v8, v8

    .line 606
    div-double v8, v8, v18

    .line 608
    add-double v8, v8, v16

    .line 610
    double-to-int v8, v8

    .line 611
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 619
    long-to-double v8, v8

    .line 620
    div-double v8, v8, v18

    .line 622
    add-double v8, v8, v16

    .line 624
    double-to-int v2, v8

    .line 625
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    move-result-object v2

    .line 635
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v2, 0x1

    .line 639
    add-int/2addr v0, v2

    .line 640
    goto :goto_10

    .line 641
    :cond_f
    if-eqz p1, :cond_11

    .line 643
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 645
    array-length v2, v0

    .line 646
    move/from16 v3, v22

    .line 648
    :goto_11
    if-ge v3, v2, :cond_11

    .line 650
    aget-object v7, v0, v3

    .line 652
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 654
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 657
    move-result v8

    .line 658
    const-string v9, "[ADJ Label] : "

    .line 660
    if-eqz v8, :cond_10

    .line 662
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 664
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    move-result-object v8

    .line 668
    check-cast v8, Ljava/util/ArrayList;

    .line 670
    const-string v10, " - Top "

    .line 672
    invoke-static {v9, v7, v10}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    move-result-object v7

    .line 676
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 679
    move-result v9

    .line 680
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    move-result-object v7

    .line 687
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    .line 693
    :goto_12
    const/4 v7, 0x1

    .line 694
    goto :goto_13

    .line 695
    :cond_10
    const-string v8, " - this ADJ not found"

    .line 697
    invoke-static {v9, v7, v8, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    goto :goto_12

    .line 701
    :goto_13
    add-int/2addr v3, v7

    .line 702
    goto :goto_11

    .line 703
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 705
    const-string/jumbo v1, "getProcessMemoryDumpInformation() elapsed time "

    .line 708
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 714
    const-string v1, " ms"

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    move-result-object v0

    .line 723
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_12
    return-void
.end method

.method public static -$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, " "

    .line 5
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 7
    const-string v3, "ActivityManager_kpm"

    .line 9
    if-nez v2, :cond_0

    .line 11
    const-string/jumbo v0, "dumpHeavyProcessByAdj is null"

    .line 14
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    goto/16 :goto_5

    .line 19
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 25
    const-string/jumbo v0, "dumpHeavyProcessByAdj is 0 size"

    .line 28
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    goto/16 :goto_5

    .line 33
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    .line 35
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    move-result-wide v4

    .line 42
    const-wide/16 v6, 0x3e8

    .line 44
    div-long/2addr v4, v6

    .line 45
    const-wide/16 v6, 0x3c

    .line 47
    div-long/2addr v4, v6

    .line 48
    :try_start_0
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 50
    array-length v7, v6

    .line 51
    const/4 v9, 0x0

    .line 52
    :goto_0
    if-ge v9, v7, :cond_8

    .line 54
    aget-object v10, v6, v9

    .line 56
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 58
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 61
    move-result v11

    .line 62
    if-eqz v11, :cond_7

    .line 64
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 66
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v11

    .line 70
    check-cast v11, Ljava/util/ArrayList;

    .line 72
    if-eqz v11, :cond_7

    .line 74
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result v12

    .line 78
    if-lez v12, :cond_7

    .line 80
    new-instance v12, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v10, "TF"

    .line 94
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v10

    .line 101
    new-instance v12, Lorg/json/JSONArray;

    .line 103
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 106
    const/4 v13, 0x0

    .line 107
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 110
    move-result v14

    .line 111
    if-ge v13, v14, :cond_6

    .line 113
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v14

    .line 117
    check-cast v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 119
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 122
    move-result-object v15

    .line 123
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 126
    move-result v15

    .line 127
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 130
    move-result v8

    .line 131
    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 134
    move-result-object v16

    .line 135
    move-object/from16 v17, v6

    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    .line 140
    move-result v6

    .line 141
    move/from16 v16, v7

    .line 143
    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 145
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 147
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 150
    move-result v7

    .line 151
    move-object/from16 v18, v11

    .line 153
    iget-object v11, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 155
    if-eqz v11, :cond_2

    .line 157
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 160
    move-result v11

    .line 161
    move-object/from16 v19, v10

    .line 163
    move/from16 v23, v11

    .line 165
    move v11, v9

    .line 166
    move/from16 v9, v23

    .line 168
    goto :goto_2

    .line 169
    :cond_2
    move v11, v9

    .line 170
    move-object/from16 v19, v10

    .line 172
    iget-wide v9, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 174
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 181
    move-result v9

    .line 182
    :goto_2
    add-int v10, v15, v8

    .line 184
    add-int/2addr v10, v6

    .line 185
    add-int/2addr v10, v7

    .line 186
    add-int/2addr v10, v9

    .line 187
    move/from16 v20, v11

    .line 189
    const/16 v11, 0x7e4

    .line 191
    if-le v10, v11, :cond_4

    .line 193
    sget-boolean v10, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 195
    if-eqz v10, :cond_3

    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    .line 199
    const/16 v11, 0x80

    .line 201
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    const-string/jumbo v11, "reportHeavyProcessTop5ByAdj "

    .line 207
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v6

    .line 241
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    .line 247
    new-instance v6, Lorg/json/JSONObject;

    .line 249
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 252
    move-object v2, v6

    .line 253
    :cond_4
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 255
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 257
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 260
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 262
    if-eqz v6, :cond_5

    .line 264
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 267
    goto :goto_3

    .line 268
    :cond_5
    iget-wide v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 270
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 277
    :goto_3
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 279
    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 281
    long-to-double v6, v6

    .line 282
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 284
    div-double/2addr v6, v8

    .line 285
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 287
    add-double/2addr v6, v10

    .line 288
    double-to-int v6, v6

    .line 289
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 292
    move-result-object v6

    .line 293
    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 295
    iget-wide v10, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 297
    long-to-double v10, v10

    .line 298
    div-double/2addr v10, v8

    .line 299
    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    .line 301
    add-double v10, v10, v21

    .line 303
    double-to-int v7, v10

    .line 304
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 307
    move-result-object v6

    .line 308
    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 310
    iget-wide v10, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 312
    long-to-double v10, v10

    .line 313
    div-double/2addr v10, v8

    .line 314
    add-double v10, v10, v21

    .line 316
    double-to-int v7, v10

    .line 317
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 320
    add-int/lit8 v13, v13, 0x1

    .line 322
    move/from16 v7, v16

    .line 324
    move-object/from16 v6, v17

    .line 326
    move-object/from16 v11, v18

    .line 328
    move-object/from16 v10, v19

    .line 330
    move/from16 v9, v20

    .line 332
    goto/16 :goto_1

    .line 334
    :cond_6
    move-object/from16 v17, v6

    .line 336
    move/from16 v16, v7

    .line 338
    move/from16 v20, v9

    .line 340
    move-object v6, v10

    .line 341
    invoke-virtual {v2, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_4

    .line 345
    :cond_7
    move-object/from16 v17, v6

    .line 347
    move/from16 v16, v7

    .line 349
    move/from16 v20, v9

    .line 351
    :goto_4
    add-int/lit8 v9, v20, 0x1

    .line 353
    move/from16 v7, v16

    .line 355
    move-object/from16 v6, v17

    .line 357
    goto/16 :goto_0

    .line 359
    :catch_0
    const-string/jumbo v1, "failed to create the KPUT"

    .line 362
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_8
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    .line 368
    :goto_5
    return-void
.end method

.method public static -$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    aget-object v4, v0, v3

    .line 13
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v5

    .line 19
    const-string v6, "ActivityManager_kpm"

    .line 21
    const-string v7, "[ADJ Label] : "

    .line 23
    if-eqz v5, :cond_0

    .line 25
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    check-cast v5, [J

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    .line 35
    const/16 v9, 0x80

    .line 37
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v4, " - Pss: "

    .line 48
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    aget-wide v9, v5, v2

    .line 53
    long-to-double v9, v9

    .line 54
    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    .line 56
    div-double/2addr v9, v11

    .line 57
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 59
    add-double/2addr v9, v13

    .line 60
    double-to-int v4, v9

    .line 61
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v4, " mb, swapPss: "

    .line 66
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/4 v4, 0x1

    .line 70
    aget-wide v9, v5, v4

    .line 72
    long-to-double v9, v9

    .line 73
    div-double/2addr v9, v11

    .line 74
    add-double/2addr v9, v13

    .line 75
    double-to-int v4, v9

    .line 76
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v4, " mb, Rss: "

    .line 81
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/4 v4, 0x2

    .line 85
    aget-wide v4, v5, v4

    .line 87
    long-to-double v4, v4

    .line 88
    div-double/2addr v4, v11

    .line 89
    add-double/2addr v4, v13

    .line 90
    double-to-int v4, v4

    .line 91
    const-string v5, " mb"

    .line 93
    invoke-static {v8, v4, v5, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    const-string v5, " - this ADJ not found"

    .line 99
    invoke-static {v7, v4, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 9
    const/16 p1, 0x3e9

    .line 11
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 37
    new-instance p1, Ljava/util/HashMap;

    .line 39
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    .line 46
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public static dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x80

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    if-nez p0, :cond_0

    .line 10
    const-string/jumbo p0, "null"

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x1

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    .line 31
    iget v3, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 33
    const/4 v4, -0x1

    .line 34
    if-ne v3, v4, :cond_1

    .line 36
    const-string/jumbo p0, "empty"

    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 47
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    .line 49
    aget-object v4, v4, v5

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v4, "_"

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    sget-object v5, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 61
    iget v6, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    .line 63
    aget-object v5, v5, v6

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 73
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    .line 75
    aget-object v4, v4, v5

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    if-eqz v1, :cond_2

    .line 86
    const/4 v1, 0x0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const-string v4, ","

    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v3, ":"

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    .line 111
    int-to-double v4, v4

    .line 112
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 114
    div-double/2addr v4, v6

    .line 115
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 117
    add-double/2addr v4, v8

    .line 118
    double-to-int v4, v4

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    .line 127
    int-to-double v4, v4

    .line 128
    div-double/2addr v4, v6

    .line 129
    add-double/2addr v4, v8

    .line 130
    double-to-int v4, v4

    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    .line 139
    int-to-double v4, v4

    .line 140
    div-double/2addr v4, v6

    .line 141
    add-double/2addr v4, v8

    .line 142
    double-to-int v4, v4

    .line 143
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    .line 151
    int-to-double v4, v4

    .line 152
    div-double/2addr v4, v6

    .line 153
    add-double/2addr v4, v8

    .line 154
    double-to-int v4, v4

    .line 155
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    .line 163
    int-to-double v4, v4

    .line 164
    div-double/2addr v4, v6

    .line 165
    add-double/2addr v4, v8

    .line 166
    double-to-int v4, v4

    .line 167
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    .line 175
    int-to-double v4, v4

    .line 176
    div-double/2addr v4, v6

    .line 177
    add-double/2addr v4, v8

    .line 178
    double-to-int v4, v4

    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    .line 187
    int-to-double v4, v4

    .line 188
    div-double/2addr v4, v6

    .line 189
    add-double/2addr v4, v8

    .line 190
    double-to-int v4, v4

    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    .line 199
    int-to-double v4, v4

    .line 200
    div-double/2addr v4, v6

    .line 201
    add-double/2addr v4, v8

    .line 202
    double-to-int v4, v4

    .line 203
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget v2, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    .line 211
    int-to-double v2, v2

    .line 212
    div-double/2addr v2, v6

    .line 213
    add-double/2addr v2, v8

    .line 214
    double-to-int v2, v2

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    goto/16 :goto_0

    .line 220
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object p0

    .line 224
    return-object p0
.end method

.method public static getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 14
    array-length v3, v3

    .line 15
    if-ge v2, v3, :cond_4

    .line 17
    move v3, v1

    .line 18
    :goto_1
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 20
    array-length v4, v4

    .line 21
    if-ge v3, v4, :cond_3

    .line 23
    move v4, v1

    .line 24
    :goto_2
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 26
    array-length v6, v5

    .line 27
    if-ge v4, v6, :cond_2

    .line 29
    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 31
    aget v6, v6, v2

    .line 33
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 35
    aget v7, v7, v3

    .line 37
    add-int/2addr v6, v7

    .line 38
    mul-int/lit8 v6, v6, 0x10

    .line 40
    aget v5, v5, v4

    .line 42
    add-int/2addr v6, v5

    .line 43
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    .line 46
    move-result-wide v7

    .line 47
    const-wide/16 v9, 0x0

    .line 49
    cmp-long v5, v7, v9

    .line 51
    if-lez v5, :cond_1

    .line 53
    new-instance v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    .line 55
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    .line 60
    iput v3, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    .line 62
    iput v4, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    .line 64
    long-to-int v7, v7

    .line 65
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 67
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    .line 70
    move-result-wide v7

    .line 71
    long-to-int v7, v7

    .line 72
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    .line 74
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    .line 77
    move-result-wide v7

    .line 78
    long-to-int v7, v7

    .line 79
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    .line 81
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    .line 84
    move-result-wide v7

    .line 85
    long-to-int v7, v7

    .line 86
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    .line 88
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    .line 91
    move-result-wide v7

    .line 92
    long-to-int v7, v7

    .line 93
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    .line 95
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    .line 98
    move-result-wide v7

    .line 99
    long-to-int v7, v7

    .line 100
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    .line 102
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    .line 105
    move-result-wide v7

    .line 106
    long-to-int v7, v7

    .line 107
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    .line 109
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    .line 112
    move-result-wide v7

    .line 113
    long-to-int v7, v7

    .line 114
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    .line 116
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    .line 119
    move-result-wide v7

    .line 120
    long-to-int v7, v7

    .line 121
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    .line 123
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    .line 126
    move-result-wide v6

    .line 127
    long-to-int v6, v6

    .line 128
    iput v6, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    .line 130
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 141
    goto/16 :goto_0

    .line 143
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_5

    .line 149
    new-instance p0, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v1, -0x1

    .line 155
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 157
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_5
    return-object v0
.end method

.method public static showDebugHeavyProcess(Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    const-string v0, "ActivityManager_kpm"

    .line 3
    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_2

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_3

    .line 18
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 24
    const/16 v3, 0x80

    .line 26
    const-string/jumbo v4, "showDebugHeavyProcess() process : "

    .line 29
    invoke-static {v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v3

    .line 33
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 35
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v4, ", ver: "

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-wide v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 47
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 52
    if-eqz v4, :cond_0

    .line 54
    const-string v4, ", PackageName: "

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 66
    if-eqz v4, :cond_1

    .line 68
    const-string v4, ", PackageVer: "

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    const-string v4, ", adj: "

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 85
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v4, ", pss: "

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 97
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 99
    long-to-double v4, v4

    .line 100
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 102
    div-double/2addr v4, v6

    .line 103
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 105
    add-double/2addr v4, v8

    .line 106
    double-to-int v4, v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v4, " mb, swap: "

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 117
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 119
    long-to-double v4, v4

    .line 120
    div-double/2addr v4, v6

    .line 121
    add-double/2addr v4, v8

    .line 122
    double-to-int v4, v4

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v4, " mb, rss: "

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 133
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 135
    long-to-double v4, v4

    .line 136
    div-double/2addr v4, v6

    .line 137
    add-double/2addr v4, v8

    .line 138
    double-to-int v4, v4

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v4, " mb, "

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 149
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto/16 :goto_0

    .line 167
    :cond_2
    const-string p0, "ProcessMemoryHeavy not found"

    .line 169
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3
    return-void
.end method


# virtual methods
.method public final fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 3
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 18
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 33
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 36
    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 45
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x5

    .line 58
    if-ge v1, v2, :cond_1

    .line 60
    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 62
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 70
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 73
    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    .line 76
    move-result-object p0

    .line 77
    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method public final fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 15
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 21
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 23
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 37
    move-result-object p0

    .line 38
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 40
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    .line 48
    move-result-wide p0

    .line 49
    iput-wide p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 51
    const/4 p0, 0x0

    .line 52
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 54
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :goto_0
    const-string p1, "ActivityManager_kpm"

    .line 59
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    :goto_1
    return-void
.end method

.method public final sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "TYPE"

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string v1, "UPTM"

    .line 10
    invoke-virtual {p1, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x1

    .line 22
    sub-int/2addr p1, p2

    .line 23
    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string p1, "ActivityManager_kpm"

    .line 30
    const-string/jumbo p2, "failed to create the KPUT"

    .line 33
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    move-object p1, v0

    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    .line 42
    return-void
.end method
