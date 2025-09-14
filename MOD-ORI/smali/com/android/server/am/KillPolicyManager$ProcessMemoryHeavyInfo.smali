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

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v5

    .line 10
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 11
    .line 12
    const-wide v7, 0x3fd3333333333333L    # 0.3

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    iget-object v9, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 18
    .line 19
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    move-object/from16 v0, p2

    .line 24
    .line 25
    iget v0, v0, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 26
    .line 27
    mul-int/lit16 v0, v0, 0x400

    .line 28
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

    .line 35
    .line 36
    const/high16 v12, 0x100000

    .line 37
    .line 38
    mul-int/2addr v0, v12

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iget-object v0, v9, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo$1()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 47
    .line 48
    const-string v12, " mb"

    .line 49
    .line 50
    const-string v13, " mb, rss: "

    .line 51
    .line 52
    const-string v14, " mb, swap: "

    .line 53
    .line 54
    const-string v15, ", pss: "

    .line 55
    .line 56
    const-string v10, ", adj: "

    .line 57
    .line 58
    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    .line 59
    .line 60
    const-string v11, "ActivityManager_kpm"

    .line 61
    .line 62
    const-wide/16 v20, 0x0

    .line 63
    .line 64
    if-eqz v0, :cond_e

    .line 65
    .line 66
    check-cast v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-lez v0, :cond_e

    .line 73
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object v0, v9, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 86
    .line 87
    new-instance v9, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;

    .line 88
    .line 89
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    check-cast v0, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 98
    .line 99
    check-cast v0, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_e

    .line 110
    .line 111
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    move-object v3, v0

    .line 116
    check-cast v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 117
    .line 118
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v0, :cond_1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    const/4 v4, 0x5

    .line 130
    const/16 v23, 0x0

    .line 131
    .line 132
    if-ge v0, v4, :cond_2

    .line 133
    .line 134
    new-instance v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    iput-object v3, v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 145
    .line 146
    move-object v4, v0

    .line 147
    const/16 v24, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_2
    move-object/from16 v4, v23

    .line 151
    .line 152
    const/16 v24, 0x0

    .line 153
    .line 154
    :goto_3
    if-nez v24, :cond_4

    .line 155
    .line 156
    if-eqz p1, :cond_3

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_3
    move-object/from16 v26, v2

    .line 160
    .line 161
    move-wide/from16 v27, v5

    .line 162
    .line 163
    move-object/from16 v25, v9

    .line 164
    .line 165
    goto/16 :goto_d

    .line 166
    .line 167
    :cond_4
    :goto_4
    move-object/from16 v25, v9

    .line 168
    .line 169
    const/4 v9, 0x0

    .line 170
    :goto_5
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 174
    if-ge v9, v0, :cond_7

    .line 175
    .line 176
    :try_start_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 181
    .line 182
    if-eqz v0, :cond_5

    .line 183
    .line 184
    move-object/from16 v26, v2

    .line 185
    .line 186
    :try_start_2
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    .line 188
    move-wide/from16 v27, v5

    .line 189
    .line 190
    :try_start_3
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_6

    .line 197
    .line 198
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 201
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

    .line 209
    .line 210
    goto :goto_c

    .line 211
    :catch_3
    move-exception v0

    .line 212
    :goto_7
    move-wide/from16 v27, v5

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_5
    move-object/from16 v26, v2

    .line 216
    .line 217
    move-wide/from16 v27, v5

    .line 218
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

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :catch_5
    move-exception v0

    .line 226
    move-object/from16 v26, v2

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :goto_9
    :try_start_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto :goto_8

    .line 237
    :goto_a
    add-int/2addr v9, v2

    .line 238
    move-object/from16 v2, v26

    .line 239
    .line 240
    move-wide/from16 v5, v27

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_7
    move-object/from16 v26, v2

    .line 244
    .line 245
    move-wide/from16 v27, v5

    .line 246
    .line 247
    move-object/from16 v0, v23

    .line 248
    .line 249
    :goto_b
    if-eqz v24, :cond_8

    .line 250
    .line 251
    invoke-virtual {v1, v0, v4}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    iput-object v2, v4, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 259
    .line 260
    :cond_8
    if-eqz p1, :cond_9

    .line 261
    .line 262
    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 263
    .line 264
    .line 265
    goto :goto_d

    .line 266
    :goto_c
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    :cond_9
    :goto_d
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 274
    .line 275
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_a

    .line 282
    .line 283
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 284
    .line 285
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 286
    .line 287
    iget-wide v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 288
    .line 289
    move-wide/from16 v23, v7

    .line 290
    .line 291
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 292
    .line 293
    iget-wide v8, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 294
    .line 295
    move-object/from16 v29, v11

    .line 296
    .line 297
    const/4 v11, 0x3

    .line 298
    new-array v11, v11, [J

    .line 299
    .line 300
    const/16 v22, 0x0

    .line 301
    .line 302
    aput-wide v4, v11, v22

    .line 303
    .line 304
    const/4 v4, 0x1

    .line 305
    aput-wide v6, v11, v4

    .line 306
    .line 307
    const/4 v4, 0x2

    .line 308
    aput-wide v8, v11, v4

    .line 309
    .line 310
    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    const/4 v2, 0x2

    .line 314
    goto :goto_e

    .line 315
    :cond_a
    move-wide/from16 v23, v7

    .line 316
    .line 317
    move-object/from16 v29, v11

    .line 318
    .line 319
    const/16 v22, 0x0

    .line 320
    .line 321
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 322
    .line 323
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, [J

    .line 330
    .line 331
    aget-wide v4, v0, v22

    .line 332
    .line 333
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 334
    .line 335
    add-long/2addr v4, v6

    .line 336
    aput-wide v4, v0, v22

    .line 337
    .line 338
    const/4 v2, 0x1

    .line 339
    aget-wide v4, v0, v2

    .line 340
    .line 341
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 342
    .line 343
    add-long/2addr v4, v6

    .line 344
    aput-wide v4, v0, v2

    .line 345
    .line 346
    const/4 v2, 0x2

    .line 347
    aget-wide v4, v0, v2

    .line 348
    .line 349
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 350
    .line 351
    add-long/2addr v4, v6

    .line 352
    aput-wide v4, v0, v2

    .line 353
    .line 354
    :goto_e
    const-string/jumbo v0, "vis"

    .line 355
    .line 356
    .line 357
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_b

    .line 364
    .line 365
    const-string/jumbo v0, "percept"

    .line 366
    .line 367
    .line 368
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_b

    .line 375
    .line 376
    const-string/jumbo v0, "perceptl"

    .line 377
    .line 378
    .line 379
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-nez v0, :cond_b

    .line 386
    .line 387
    const-string/jumbo v0, "perceptm"

    .line 388
    .line 389
    .line 390
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_c

    .line 397
    .line 398
    :cond_b
    iget-wide v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 399
    .line 400
    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 401
    .line 402
    add-long/2addr v4, v6

    .line 403
    add-long v4, v4, v20

    .line 404
    .line 405
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 406
    .line 407
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-wide/from16 v20, v4

    .line 411
    .line 412
    :cond_c
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 413
    .line 414
    if-eqz v0, :cond_d

    .line 415
    .line 416
    const-string/jumbo v0, "getProcessMemoryDumpInformation() process : "

    .line 417
    .line 418
    .line 419
    const/16 v4, 0x80

    .line 420
    .line 421
    invoke-static {v4, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-wide v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 442
    .line 443
    long-to-double v4, v4

    .line 444
    div-double v4, v4, v18

    .line 445
    .line 446
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 447
    .line 448
    add-double/2addr v4, v6

    .line 449
    double-to-int v4, v4

    .line 450
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget-wide v4, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 457
    .line 458
    long-to-double v4, v4

    .line 459
    div-double v4, v4, v18

    .line 460
    .line 461
    add-double/2addr v4, v6

    .line 462
    double-to-int v4, v4

    .line 463
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 470
    .line 471
    long-to-double v3, v3

    .line 472
    div-double v3, v3, v18

    .line 473
    .line 474
    add-double/2addr v3, v6

    .line 475
    double-to-int v3, v3

    .line 476
    move-object/from16 v4, v29

    .line 477
    .line 478
    invoke-static {v0, v3, v12, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    goto :goto_f

    .line 482
    :cond_d
    move-object/from16 v4, v29

    .line 483
    .line 484
    :goto_f
    move-object v11, v4

    .line 485
    move-wide/from16 v7, v23

    .line 486
    .line 487
    move-object/from16 v9, v25

    .line 488
    .line 489
    move-object/from16 v2, v26

    .line 490
    .line 491
    move-wide/from16 v5, v27

    .line 492
    .line 493
    goto/16 :goto_2

    .line 494
    .line 495
    :cond_e
    move-wide/from16 v27, v5

    .line 496
    .line 497
    move-wide/from16 v23, v7

    .line 498
    .line 499
    move-object v4, v11

    .line 500
    const/16 v22, 0x0

    .line 501
    .line 502
    move-wide/from16 v2, v20

    .line 503
    .line 504
    const-string/jumbo v0, "fgsMemDumpList total size "

    .line 505
    .line 506
    .line 507
    const-string v5, " kb, Threshold(30%) "

    .line 508
    .line 509
    invoke-static {v0, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    move-wide/from16 v7, v23

    .line 514
    .line 515
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    const-string v5, " kb"

    .line 519
    .line 520
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 531
    .line 532
    if-eqz v0, :cond_12

    .line 533
    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 535
    .line 536
    .line 537
    move-result-wide v5

    .line 538
    sub-long v5, v5, v27

    .line 539
    .line 540
    cmp-long v0, v2, v7

    .line 541
    .line 542
    if-ltz v0, :cond_f

    .line 543
    .line 544
    move/from16 v0, v22

    .line 545
    .line 546
    :goto_10
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 547
    .line 548
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    if-ge v0, v2, :cond_f

    .line 553
    .line 554
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    check-cast v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 561
    .line 562
    const-string/jumbo v3, "fgsMemDumpList process : "

    .line 563
    .line 564
    .line 565
    const/16 v7, 0x80

    .line 566
    .line 567
    invoke-static {v7, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 572
    .line 573
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 588
    .line 589
    long-to-double v8, v8

    .line 590
    div-double v8, v8, v18

    .line 591
    .line 592
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 593
    .line 594
    add-double v8, v8, v16

    .line 595
    .line 596
    double-to-int v8, v8

    .line 597
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 604
    .line 605
    long-to-double v8, v8

    .line 606
    div-double v8, v8, v18

    .line 607
    .line 608
    add-double v8, v8, v16

    .line 609
    .line 610
    double-to-int v8, v8

    .line 611
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 618
    .line 619
    long-to-double v8, v8

    .line 620
    div-double v8, v8, v18

    .line 621
    .line 622
    add-double v8, v8, v16

    .line 623
    .line 624
    double-to-int v2, v8

    .line 625
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .line 637
    .line 638
    const/4 v2, 0x1

    .line 639
    add-int/2addr v0, v2

    .line 640
    goto :goto_10

    .line 641
    :cond_f
    if-eqz p1, :cond_11

    .line 642
    .line 643
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 644
    .line 645
    array-length v2, v0

    .line 646
    move/from16 v3, v22

    .line 647
    .line 648
    :goto_11
    if-ge v3, v2, :cond_11

    .line 649
    .line 650
    aget-object v7, v0, v3

    .line 651
    .line 652
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 653
    .line 654
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v8

    .line 658
    const-string v9, "[ADJ Label] : "

    .line 659
    .line 660
    if-eqz v8, :cond_10

    .line 661
    .line 662
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 663
    .line 664
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v8

    .line 668
    check-cast v8, Ljava/util/ArrayList;

    .line 669
    .line 670
    const-string v10, " - Top "

    .line 671
    .line 672
    invoke-static {v9, v7, v10}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 677
    .line 678
    .line 679
    move-result v9

    .line 680
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v7

    .line 687
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .line 689
    .line 690
    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    .line 691
    .line 692
    .line 693
    :goto_12
    const/4 v7, 0x1

    .line 694
    goto :goto_13

    .line 695
    :cond_10
    const-string v8, " - this ADJ not found"

    .line 696
    .line 697
    invoke-static {v9, v7, v8, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .line 699
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

    .line 704
    .line 705
    const-string/jumbo v1, "getProcessMemoryDumpInformation() elapsed time "

    .line 706
    .line 707
    .line 708
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v1, " ms"

    .line 715
    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    :cond_12
    return-void
.end method

.method public static -$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 6
    .line 7
    const-string v3, "ActivityManager_kpm"

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "dumpHeavyProcessByAdj is null"

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string/jumbo v0, "dumpHeavyProcessByAdj is 0 size"

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    const-wide/16 v6, 0x3e8

    .line 43
    .line 44
    div-long/2addr v4, v6

    .line 45
    const-wide/16 v6, 0x3c

    .line 46
    .line 47
    div-long/2addr v4, v6

    .line 48
    :try_start_0
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 49
    .line 50
    array-length v7, v6

    .line 51
    const/4 v9, 0x0

    .line 52
    :goto_0
    if-ge v9, v7, :cond_8

    .line 53
    .line 54
    aget-object v10, v6, v9

    .line 55
    .line 56
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-eqz v11, :cond_7

    .line 63
    .line 64
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    check-cast v11, Ljava/util/ArrayList;

    .line 71
    .line 72
    if-eqz v11, :cond_7

    .line 73
    .line 74
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-lez v12, :cond_7

    .line 79
    .line 80
    new-instance v12, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v10, "TF"

    .line 93
    .line 94
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    new-instance v12, Lorg/json/JSONArray;

    .line 102
    .line 103
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 104
    .line 105
    .line 106
    const/4 v13, 0x0

    .line 107
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    if-ge v13, v14, :cond_6

    .line 112
    .line 113
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    check-cast v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 118
    .line 119
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v16

    .line 135
    move-object/from16 v17, v6

    .line 136
    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    move/from16 v16, v7

    .line 142
    .line 143
    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 144
    .line 145
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    move-object/from16 v18, v11

    .line 152
    .line 153
    iget-object v11, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz v11, :cond_2

    .line 156
    .line 157
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    move-object/from16 v19, v10

    .line 162
    .line 163
    move/from16 v23, v11

    .line 164
    .line 165
    move v11, v9

    .line 166
    move/from16 v9, v23

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_2
    move v11, v9

    .line 170
    move-object/from16 v19, v10

    .line 171
    .line 172
    iget-wide v9, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 173
    .line 174
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    :goto_2
    add-int v10, v15, v8

    .line 183
    .line 184
    add-int/2addr v10, v6

    .line 185
    add-int/2addr v10, v7

    .line 186
    add-int/2addr v10, v9

    .line 187
    move/from16 v20, v11

    .line 188
    .line 189
    const/16 v11, 0x7e4

    .line 190
    .line 191
    if-le v10, v11, :cond_4

    .line 192
    .line 193
    sget-boolean v10, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 194
    .line 195
    if-eqz v10, :cond_3

    .line 196
    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const/16 v11, 0x80

    .line 200
    .line 201
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 202
    .line 203
    .line 204
    const-string/jumbo v11, "reportHeavyProcessTop5ByAdj "

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    :cond_3
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    .line 245
    .line 246
    .line 247
    new-instance v6, Lorg/json/JSONObject;

    .line 248
    .line 249
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 250
    .line 251
    .line 252
    move-object v2, v6

    .line 253
    :cond_4
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 254
    .line 255
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 258
    .line 259
    .line 260
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 261
    .line 262
    if-eqz v6, :cond_5

    .line 263
    .line 264
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_5
    iget-wide v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 269
    .line 270
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 275
    .line 276
    .line 277
    :goto_3
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 278
    .line 279
    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 280
    .line 281
    long-to-double v6, v6

    .line 282
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 283
    .line 284
    div-double/2addr v6, v8

    .line 285
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 286
    .line 287
    add-double/2addr v6, v10

    .line 288
    double-to-int v6, v6

    .line 289
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 294
    .line 295
    iget-wide v10, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 296
    .line 297
    long-to-double v10, v10

    .line 298
    div-double/2addr v10, v8

    .line 299
    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    .line 300
    .line 301
    add-double v10, v10, v21

    .line 302
    .line 303
    double-to-int v7, v10

    .line 304
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 309
    .line 310
    iget-wide v10, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 311
    .line 312
    long-to-double v10, v10

    .line 313
    div-double/2addr v10, v8

    .line 314
    add-double v10, v10, v21

    .line 315
    .line 316
    double-to-int v7, v10

    .line 317
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 318
    .line 319
    .line 320
    add-int/lit8 v13, v13, 0x1

    .line 321
    .line 322
    move/from16 v7, v16

    .line 323
    .line 324
    move-object/from16 v6, v17

    .line 325
    .line 326
    move-object/from16 v11, v18

    .line 327
    .line 328
    move-object/from16 v10, v19

    .line 329
    .line 330
    move/from16 v9, v20

    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_6
    move-object/from16 v17, v6

    .line 335
    .line 336
    move/from16 v16, v7

    .line 337
    .line 338
    move/from16 v20, v9

    .line 339
    .line 340
    move-object v6, v10

    .line 341
    invoke-virtual {v2, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_7
    move-object/from16 v17, v6

    .line 346
    .line 347
    move/from16 v16, v7

    .line 348
    .line 349
    move/from16 v20, v9

    .line 350
    .line 351
    :goto_4
    add-int/lit8 v9, v20, 0x1

    .line 352
    .line 353
    move/from16 v7, v16

    .line 354
    .line 355
    move-object/from16 v6, v17

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :catch_0
    const-string/jumbo v1, "failed to create the KPUT"

    .line 360
    .line 361
    .line 362
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    :cond_8
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    .line 366
    .line 367
    .line 368
    :goto_5
    return-void
.end method

.method public static -$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    aget-object v4, v0, v3

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const-string v6, "ActivityManager_kpm"

    .line 20
    .line 21
    const-string v7, "[ADJ Label] : "

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, [J

    .line 32
    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const/16 v9, 0x80

    .line 36
    .line 37
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, " - Pss: "

    .line 47
    .line 48
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    aget-wide v9, v5, v2

    .line 52
    .line 53
    long-to-double v9, v9

    .line 54
    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    .line 55
    .line 56
    div-double/2addr v9, v11

    .line 57
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 58
    .line 59
    add-double/2addr v9, v13

    .line 60
    double-to-int v4, v9

    .line 61
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v4, " mb, swapPss: "

    .line 65
    .line 66
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    aget-wide v9, v5, v4

    .line 71
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

    .line 77
    .line 78
    .line 79
    const-string v4, " mb, Rss: "

    .line 80
    .line 81
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/4 v4, 0x2

    .line 85
    aget-wide v4, v5, v4

    .line 86
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

    .line 92
    .line 93
    invoke-static {v8, v4, v5, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    const-string v5, " - this ADJ not found"

    .line 98
    .line 99
    invoke-static {v7, v4, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 103
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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 8
    .line 9
    const/16 p1, 0x3e9

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 36
    .line 37
    new-instance p1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 43
    .line 44
    new-instance p1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 50
    .line 51
    return-void
.end method

.method public static dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "null"

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x1

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    .line 30
    .line 31
    iget v3, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 32
    .line 33
    const/4 v4, -0x1

    .line 34
    if-ne v3, v4, :cond_1

    .line 35
    .line 36
    const-string/jumbo p0, "empty"

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 46
    .line 47
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    .line 48
    .line 49
    aget-object v4, v4, v5

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, "_"

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget-object v5, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 60
    .line 61
    iget v6, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    .line 62
    .line 63
    aget-object v5, v5, v6

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 72
    .line 73
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    .line 74
    .line 75
    aget-object v4, v4, v5

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const-string v4, ","

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v3, ":"

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 102
    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    .line 110
    .line 111
    int-to-double v4, v4

    .line 112
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 113
    .line 114
    div-double/2addr v4, v6

    .line 115
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 116
    .line 117
    add-double/2addr v4, v8

    .line 118
    double-to-int v4, v4

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    .line 126
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

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    .line 138
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

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    .line 150
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

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    .line 162
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

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    .line 174
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

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    .line 186
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

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    .line 198
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

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget v2, v2, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    .line 210
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

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    return-object p0
.end method

.method public static getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
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

    .line 13
    .line 14
    array-length v3, v3

    .line 15
    if-ge v2, v3, :cond_4

    .line 16
    .line 17
    move v3, v1

    .line 18
    :goto_1
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 19
    .line 20
    array-length v4, v4

    .line 21
    if-ge v3, v4, :cond_3

    .line 22
    .line 23
    move v4, v1

    .line 24
    :goto_2
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 25
    .line 26
    array-length v6, v5

    .line 27
    if-ge v4, v6, :cond_2

    .line 28
    .line 29
    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 30
    .line 31
    aget v6, v6, v2

    .line 32
    .line 33
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 34
    .line 35
    aget v7, v7, v3

    .line 36
    .line 37
    add-int/2addr v6, v7

    .line 38
    mul-int/lit8 v6, v6, 0x10

    .line 39
    .line 40
    aget v5, v5, v4

    .line 41
    .line 42
    add-int/2addr v6, v5

    .line 43
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    const-wide/16 v9, 0x0

    .line 48
    .line 49
    cmp-long v5, v7, v9

    .line 50
    .line 51
    if-lez v5, :cond_1

    .line 52
    .line 53
    new-instance v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput v2, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    .line 59
    .line 60
    iput v3, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    .line 61
    .line 62
    iput v4, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    .line 63
    .line 64
    long-to-int v7, v7

    .line 65
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 66
    .line 67
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    long-to-int v7, v7

    .line 72
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    .line 73
    .line 74
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    long-to-int v7, v7

    .line 79
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    .line 80
    .line 81
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    long-to-int v7, v7

    .line 86
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    .line 87
    .line 88
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v7

    .line 92
    long-to-int v7, v7

    .line 93
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    .line 94
    .line 95
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    long-to-int v7, v7

    .line 100
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    .line 101
    .line 102
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v7

    .line 106
    long-to-int v7, v7

    .line 107
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    .line 108
    .line 109
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v7

    .line 113
    long-to-int v7, v7

    .line 114
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    .line 115
    .line 116
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v7

    .line 120
    long-to-int v7, v7

    .line 121
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    .line 122
    .line 123
    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    long-to-int v6, v6

    .line 128
    iput v6, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    .line 129
    .line 130
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_5

    .line 148
    .line 149
    new-instance p0, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    .line 150
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    const/4 v1, -0x1

    .line 155
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_5
    return-object v0
.end method

.method public static showDebugHeavyProcess(Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    const-string v0, "ActivityManager_kpm"

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 23
    .line 24
    const/16 v3, 0x80

    .line 25
    .line 26
    const-string/jumbo v4, "showDebugHeavyProcess() process : "

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, ", ver: "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-wide v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 46
    .line 47
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    const-string v4, ", PackageName: "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    const-string v4, ", PackageVer: "

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_1
    const-string v4, ", adj: "

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v4, ", pss: "

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 96
    .line 97
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 98
    .line 99
    long-to-double v4, v4

    .line 100
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 101
    .line 102
    div-double/2addr v4, v6

    .line 103
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 104
    .line 105
    add-double/2addr v4, v8

    .line 106
    double-to-int v4, v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, " mb, swap: "

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 116
    .line 117
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 118
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

    .line 124
    .line 125
    .line 126
    const-string v4, " mb, rss: "

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 132
    .line 133
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 134
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

    .line 140
    .line 141
    .line 142
    const-string v4, " mb, "

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_2
    const-string p0, "ProcessMemoryHeavy not found"

    .line 168
    .line 169
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :cond_3
    return-void
.end method


# virtual methods
.method public final fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 32
    .line 33
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x5

    .line 58
    if-ge v1, v2, :cond_1

    .line 59
    .line 60
    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 69
    .line 70
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method public final fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 41
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

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    iput-wide p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :goto_0
    const-string p1, "ActivityManager_kpm"

    .line 58
    .line 59
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
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

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    const-string v1, "UPTM"

    .line 9
    .line 10
    invoke-virtual {p1, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x1

    .line 22
    sub-int/2addr p1, p2

    .line 23
    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string p1, "ActivityManager_kpm"

    .line 29
    .line 30
    const-string/jumbo p2, "failed to create the KPUT"

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-object p1, v0

    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
