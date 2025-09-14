.class public final Lcom/android/server/am/ActivityManagerService$MainHandler$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

.field public final synthetic val$memInfos:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService$UiHandler;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v5, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Lcom/android/server/am/ProcessMemInfo;

    .line 35
    .line 36
    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->pid:I

    .line 37
    .line 38
    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x4

    .line 48
    new-array v3, v3, [J

    .line 49
    .line 50
    const/4 v5, 0x2

    .line 51
    new-array v6, v5, [J

    .line 52
    .line 53
    new-instance v7, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;

    .line 54
    .line 55
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 59
    .line 60
    monitor-enter v8

    .line 61
    :try_start_0
    iget-object v9, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 62
    .line 63
    new-instance v10, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;

    .line 64
    .line 65
    invoke-direct {v10, v7}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v10}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 73
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    const-wide/16 v9, 0x0

    .line 78
    .line 79
    move-wide v12, v9

    .line 80
    move-wide v14, v12

    .line 81
    const/4 v11, 0x0

    .line 82
    :goto_1
    if-ge v11, v8, :cond_2

    .line 83
    .line 84
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v16

    .line 88
    move-object/from16 v4, v16

    .line 89
    .line 90
    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 91
    .line 92
    iget v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 93
    .line 94
    move-object/from16 v18, v7

    .line 95
    .line 96
    move/from16 v19, v8

    .line 97
    .line 98
    invoke-static {v5, v6, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    cmp-long v5, v7, v9

    .line 103
    .line 104
    if-lez v5, :cond_1

    .line 105
    .line 106
    iget v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 107
    .line 108
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-gez v5, :cond_1

    .line 113
    .line 114
    new-instance v5, Lcom/android/server/am/ProcessMemInfo;

    .line 115
    .line 116
    iget-object v9, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 117
    .line 118
    iget v4, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 119
    .line 120
    const-string/jumbo v24, "native"

    .line 121
    .line 122
    .line 123
    const/16 v26, -0x1

    .line 124
    .line 125
    const/16 v25, 0x0

    .line 126
    .line 127
    const/16 v22, -0x3e8

    .line 128
    .line 129
    move-object/from16 v20, v5

    .line 130
    .line 131
    move/from16 v21, v4

    .line 132
    .line 133
    move-object/from16 v23, v9

    .line 134
    .line 135
    invoke-direct/range {v20 .. v26}, Lcom/android/server/am/ProcessMemInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    iput-wide v7, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    aget-wide v7, v6, v4

    .line 142
    .line 143
    iput-wide v7, v5, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 144
    .line 145
    const/4 v7, 0x0

    .line 146
    aget-wide v8, v3, v7

    .line 147
    .line 148
    iput-wide v8, v5, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 149
    .line 150
    aget-wide v7, v3, v4

    .line 151
    .line 152
    add-long/2addr v12, v7

    .line 153
    const/4 v4, 0x2

    .line 154
    aget-wide v7, v3, v4

    .line 155
    .line 156
    add-long/2addr v14, v7

    .line 157
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 161
    .line 162
    move-object/from16 v7, v18

    .line 163
    .line 164
    move/from16 v8, v19

    .line 165
    .line 166
    const-wide/16 v9, 0x0

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    const/4 v4, 0x0

    .line 174
    const-wide/16 v7, 0x0

    .line 175
    .line 176
    const-wide/16 v9, 0x0

    .line 177
    .line 178
    const-wide/16 v18, 0x0

    .line 179
    .line 180
    :goto_2
    if-ge v4, v2, :cond_4

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    .line 187
    .line 188
    move-object v11, v1

    .line 189
    move/from16 v20, v2

    .line 190
    .line 191
    iget-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 192
    .line 193
    const-wide/16 v21, 0x0

    .line 194
    .line 195
    cmp-long v1, v1, v21

    .line 196
    .line 197
    if-nez v1, :cond_3

    .line 198
    .line 199
    iget v1, v5, Lcom/android/server/am/ProcessMemInfo;->pid:I

    .line 200
    .line 201
    invoke-static {v1, v6, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 202
    .line 203
    .line 204
    move-result-wide v1

    .line 205
    iput-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 206
    .line 207
    move-wide/from16 v21, v9

    .line 208
    .line 209
    const/4 v1, 0x1

    .line 210
    aget-wide v9, v6, v1

    .line 211
    .line 212
    iput-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 213
    .line 214
    const/4 v2, 0x0

    .line 215
    aget-wide v9, v3, v2

    .line 216
    .line 217
    iput-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 218
    .line 219
    aget-wide v9, v3, v1

    .line 220
    .line 221
    add-long/2addr v12, v9

    .line 222
    const/4 v1, 0x2

    .line 223
    aget-wide v9, v3, v1

    .line 224
    .line 225
    add-long/2addr v14, v9

    .line 226
    goto :goto_3

    .line 227
    :cond_3
    move-wide/from16 v21, v9

    .line 228
    .line 229
    :goto_3
    iget-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 230
    .line 231
    add-long/2addr v7, v1

    .line 232
    iget-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 233
    .line 234
    add-long v18, v18, v1

    .line 235
    .line 236
    iget-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 237
    .line 238
    add-long v9, v21, v1

    .line 239
    .line 240
    add-int/lit8 v4, v4, 0x1

    .line 241
    .line 242
    move-object v1, v11

    .line 243
    move/from16 v2, v20

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_4
    move-object v11, v1

    .line 247
    move-wide/from16 v21, v9

    .line 248
    .line 249
    new-instance v1, Lcom/android/server/am/AppProfiler$2;

    .line 250
    .line 251
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 255
    .line 256
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const/16 v2, 0x80

    .line 260
    .line 261
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    .line 263
    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 267
    .line 268
    .line 269
    const-string v2, "Low on memory -- "

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string/jumbo v2, "total"

    .line 275
    .line 276
    .line 277
    const/4 v4, 0x0

    .line 278
    invoke-static {v1, v7, v8, v2, v4}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 279
    .line 280
    .line 281
    const-string/jumbo v2, "total"

    .line 282
    .line 283
    .line 284
    const/4 v4, 0x1

    .line 285
    invoke-static {v3, v7, v8, v2, v4}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 286
    .line 287
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const/16 v4, 0x400

    .line 291
    .line 292
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 293
    .line 294
    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 298
    .line 299
    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    const/high16 v10, -0x80000000

    .line 310
    .line 311
    move-object/from16 v26, v11

    .line 312
    .line 313
    const/4 v4, 0x0

    .line 314
    const/16 v20, 0x1

    .line 315
    .line 316
    const-wide/16 v24, 0x0

    .line 317
    .line 318
    const-wide/16 v32, 0x0

    .line 319
    .line 320
    const-wide/16 v37, 0x0

    .line 321
    .line 322
    :goto_4
    if-ge v4, v9, :cond_13

    .line 323
    .line 324
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v29

    .line 328
    move-object/from16 v11, v29

    .line 329
    .line 330
    check-cast v11, Lcom/android/server/am/ProcessMemInfo;

    .line 331
    .line 332
    move-wide/from16 v39, v14

    .line 333
    .line 334
    iget v14, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 335
    .line 336
    const/16 v15, 0x384

    .line 337
    .line 338
    move-wide/from16 v41, v12

    .line 339
    .line 340
    if-lt v14, v15, :cond_5

    .line 341
    .line 342
    iget-wide v12, v11, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 343
    .line 344
    add-long v24, v24, v12

    .line 345
    .line 346
    :cond_5
    const/16 v12, -0x3e8

    .line 347
    .line 348
    if-eq v14, v12, :cond_f

    .line 349
    .line 350
    const/16 v13, 0x1f4

    .line 351
    .line 352
    if-lt v14, v13, :cond_6

    .line 353
    .line 354
    const/16 v13, 0x258

    .line 355
    .line 356
    if-eq v14, v13, :cond_6

    .line 357
    .line 358
    const/16 v13, 0x2bc

    .line 359
    .line 360
    if-ne v14, v13, :cond_f

    .line 361
    .line 362
    :cond_6
    if-eq v10, v14, :cond_a

    .line 363
    .line 364
    if-gtz v14, :cond_7

    .line 365
    .line 366
    const-string v10, " / "

    .line 367
    .line 368
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    :cond_7
    iget v10, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 372
    .line 373
    if-ltz v10, :cond_9

    .line 374
    .line 375
    if-eqz v20, :cond_8

    .line 376
    .line 377
    const-string v10, ":"

    .line 378
    .line 379
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const/16 v20, 0x0

    .line 383
    .line 384
    :cond_8
    const-string v10, "\n\t at "

    .line 385
    .line 386
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    :goto_5
    move v10, v14

    .line 390
    goto :goto_6

    .line 391
    :cond_9
    const-string v10, "$"

    .line 392
    .line 393
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_a
    const-string v13, " "

    .line 398
    .line 399
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v13, "$"

    .line 403
    .line 404
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    :goto_6
    iget v13, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 408
    .line 409
    if-gtz v13, :cond_b

    .line 410
    .line 411
    iget-wide v13, v11, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 412
    .line 413
    iget-object v15, v11, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    .line 414
    .line 415
    const/4 v12, 0x0

    .line 416
    invoke-static {v1, v13, v14, v15, v12}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 417
    .line 418
    .line 419
    :cond_b
    iget-wide v12, v11, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 420
    .line 421
    iget-object v14, v11, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    .line 422
    .line 423
    const/4 v15, 0x1

    .line 424
    invoke-static {v3, v12, v13, v14, v15}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 425
    .line 426
    .line 427
    iget v12, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 428
    .line 429
    if-ltz v12, :cond_f

    .line 430
    .line 431
    add-int/lit8 v12, v4, 0x1

    .line 432
    .line 433
    if-ge v12, v9, :cond_c

    .line 434
    .line 435
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    check-cast v12, Lcom/android/server/am/ProcessMemInfo;

    .line 440
    .line 441
    iget v12, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 442
    .line 443
    if-eq v12, v10, :cond_f

    .line 444
    .line 445
    :cond_c
    const-string v12, "("

    .line 446
    .line 447
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const/4 v12, 0x0

    .line 451
    :goto_7
    sget-object v13, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    .line 452
    .line 453
    array-length v14, v13

    .line 454
    if-ge v12, v14, :cond_e

    .line 455
    .line 456
    aget v14, v13, v12

    .line 457
    .line 458
    iget v15, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 459
    .line 460
    if-ne v14, v15, :cond_d

    .line 461
    .line 462
    sget-object v14, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    .line 463
    .line 464
    aget-object v14, v14, v12

    .line 465
    .line 466
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v14, ":"

    .line 470
    .line 471
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    aget v13, v13, v12

    .line 475
    .line 476
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    :cond_d
    add-int/lit8 v12, v12, 0x1

    .line 480
    .line 481
    goto :goto_7

    .line 482
    :cond_e
    const-string v12, ")"

    .line 483
    .line 484
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    :cond_f
    invoke-static {v2, v11}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 488
    .line 489
    .line 490
    iget v12, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 491
    .line 492
    const/16 v13, -0x3e8

    .line 493
    .line 494
    if-ne v12, v13, :cond_11

    .line 495
    .line 496
    iget-wide v12, v11, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 497
    .line 498
    const-wide/16 v14, 0x200

    .line 499
    .line 500
    cmp-long v14, v12, v14

    .line 501
    .line 502
    if-ltz v14, :cond_10

    .line 503
    .line 504
    invoke-static {v5, v11}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 505
    .line 506
    .line 507
    goto :goto_8

    .line 508
    :cond_10
    add-long v32, v32, v12

    .line 509
    .line 510
    iget-wide v11, v11, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 511
    .line 512
    add-long v37, v37, v11

    .line 513
    .line 514
    goto :goto_8

    .line 515
    :cond_11
    const-wide/16 v12, 0x0

    .line 516
    .line 517
    cmp-long v14, v32, v12

    .line 518
    .line 519
    if-lez v14, :cond_12

    .line 520
    .line 521
    const-string v36, "(Other native)"

    .line 522
    .line 523
    const/16 v30, -0x3e8

    .line 524
    .line 525
    const/16 v31, -0x1

    .line 526
    .line 527
    move-object/from16 v29, v5

    .line 528
    .line 529
    move-wide/from16 v34, v37

    .line 530
    .line 531
    invoke-static/range {v29 .. v36}, Lcom/android/server/am/ActivityManagerService;->appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJLjava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const/16 v12, 0xa

    .line 535
    .line 536
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-wide/16 v32, 0x0

    .line 540
    .line 541
    :cond_12
    invoke-static {v6, v11}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 542
    .line 543
    .line 544
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 545
    .line 546
    move-wide/from16 v14, v39

    .line 547
    .line 548
    move-wide/from16 v12, v41

    .line 549
    .line 550
    goto/16 :goto_4

    .line 551
    .line 552
    :cond_13
    move-wide/from16 v41, v12

    .line 553
    .line 554
    move-wide/from16 v39, v14

    .line 555
    .line 556
    const-string v0, "           "

    .line 557
    .line 558
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-static {v6, v7, v8}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 562
    .line 563
    .line 564
    const-string v0, ": TOTAL"

    .line 565
    .line 566
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-wide/16 v9, 0x0

    .line 570
    .line 571
    cmp-long v0, v21, v9

    .line 572
    .line 573
    if-lez v0, :cond_14

    .line 574
    .line 575
    const-string v0, " ("

    .line 576
    .line 577
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v0, " memtrack)"

    .line 588
    .line 589
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    :cond_14
    const-string v0, "\n"

    .line 593
    .line 594
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 598
    .line 599
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    new-instance v9, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    const/16 v10, 0x400

    .line 612
    .line 613
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 614
    .line 615
    .line 616
    invoke-static {v4}, Landroid/os/Debug;->getMemInfo([J)V

    .line 617
    .line 618
    .line 619
    const-string v10, "  MemInfo: "

    .line 620
    .line 621
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    const/16 v10, 0x9

    .line 625
    .line 626
    aget-wide v10, v4, v10

    .line 627
    .line 628
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v10

    .line 632
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v10, " slab, "

    .line 636
    .line 637
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    const/16 v10, 0x8

    .line 641
    .line 642
    aget-wide v10, v4, v10

    .line 643
    .line 644
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v10

    .line 648
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    const-string v10, " shmem, "

    .line 652
    .line 653
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const/16 v10, 0x10

    .line 657
    .line 658
    aget-wide v10, v4, v10

    .line 659
    .line 660
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v10

    .line 664
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    const-string v10, " vm alloc, "

    .line 668
    .line 669
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    const/16 v10, 0x11

    .line 673
    .line 674
    aget-wide v10, v4, v10

    .line 675
    .line 676
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v10

    .line 680
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    const-string v10, " page tables "

    .line 684
    .line 685
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    const/16 v10, 0x12

    .line 689
    .line 690
    aget-wide v10, v4, v10

    .line 691
    .line 692
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v10

    .line 696
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    const-string v10, " kernel stack\n           "

    .line 700
    .line 701
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    const/4 v10, 0x2

    .line 705
    aget-wide v11, v4, v10

    .line 706
    .line 707
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v10

    .line 711
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v10, " buffers, "

    .line 715
    .line 716
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    const/4 v10, 0x3

    .line 720
    aget-wide v11, v4, v10

    .line 721
    .line 722
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v11

    .line 726
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    const-string v11, " cached, "

    .line 730
    .line 731
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    const/16 v11, 0xf

    .line 735
    .line 736
    aget-wide v11, v4, v11

    .line 737
    .line 738
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v11

    .line 742
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    const-string v11, " mapped, "

    .line 746
    .line 747
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const/4 v11, 0x1

    .line 751
    aget-wide v12, v4, v11

    .line 752
    .line 753
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v11

    .line 757
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    const-string v11, " free\n"

    .line 761
    .line 762
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    const/16 v11, 0xe

    .line 766
    .line 767
    aget-wide v12, v4, v11

    .line 768
    .line 769
    const-wide/16 v14, 0x0

    .line 770
    .line 771
    cmp-long v12, v12, v14

    .line 772
    .line 773
    if-eqz v12, :cond_15

    .line 774
    .line 775
    const-string v12, "  ZRAM: "

    .line 776
    .line 777
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    aget-wide v11, v4, v11

    .line 781
    .line 782
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v11

    .line 786
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    const-string v11, " RAM, "

    .line 790
    .line 791
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    const/16 v11, 0xc

    .line 795
    .line 796
    aget-wide v11, v4, v11

    .line 797
    .line 798
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v11

    .line 802
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    const-string v11, " swap total, "

    .line 806
    .line 807
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    const/16 v11, 0xd

    .line 811
    .line 812
    aget-wide v11, v4, v11

    .line 813
    .line 814
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    const-string v4, " swap free\n"

    .line 822
    .line 823
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    :cond_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    const/4 v11, 0x1

    .line 831
    aget-wide v12, v4, v11

    .line 832
    .line 833
    const-wide/16 v14, 0x0

    .line 834
    .line 835
    cmp-long v11, v12, v14

    .line 836
    .line 837
    if-nez v11, :cond_16

    .line 838
    .line 839
    const/4 v11, 0x0

    .line 840
    aget-wide v12, v4, v11

    .line 841
    .line 842
    cmp-long v11, v12, v14

    .line 843
    .line 844
    if-nez v11, :cond_16

    .line 845
    .line 846
    const/4 v11, 0x2

    .line 847
    aget-wide v12, v4, v11

    .line 848
    .line 849
    cmp-long v11, v12, v14

    .line 850
    .line 851
    if-nez v11, :cond_16

    .line 852
    .line 853
    aget-wide v11, v4, v10

    .line 854
    .line 855
    cmp-long v11, v11, v14

    .line 856
    .line 857
    if-eqz v11, :cond_17

    .line 858
    .line 859
    :cond_16
    const-string v11, "  KSM: "

    .line 860
    .line 861
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    const/4 v11, 0x1

    .line 865
    aget-wide v11, v4, v11

    .line 866
    .line 867
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v11

    .line 871
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    const-string v11, " saved from shared "

    .line 875
    .line 876
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    const/4 v11, 0x0

    .line 880
    aget-wide v12, v4, v11

    .line 881
    .line 882
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v11

    .line 886
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    const-string v11, "\n       "

    .line 890
    .line 891
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    const/4 v11, 0x2

    .line 895
    aget-wide v11, v4, v11

    .line 896
    .line 897
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v11

    .line 901
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    const-string v11, " unshared; "

    .line 905
    .line 906
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    aget-wide v10, v4, v10

    .line 910
    .line 911
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v4

    .line 915
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    const-string v4, " volatile\n"

    .line 919
    .line 920
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    :cond_17
    const-string v4, "  Free RAM: "

    .line 924
    .line 925
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 929
    .line 930
    .line 931
    move-result-wide v10

    .line 932
    add-long v10, v10, v24

    .line 933
    .line 934
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 935
    .line 936
    .line 937
    move-result-wide v12

    .line 938
    add-long/2addr v12, v10

    .line 939
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v4

    .line 943
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    const-string v4, "\n"

    .line 947
    .line 948
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 952
    .line 953
    .line 954
    move-result-wide v10

    .line 955
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    .line 956
    .line 957
    .line 958
    move-result-wide v12

    .line 959
    invoke-static {}, Landroid/os/Debug;->getIonPoolsSizeKb()J

    .line 960
    .line 961
    .line 962
    move-result-wide v14

    .line 963
    invoke-static {}, Landroid/os/Debug;->getDmabufMappedSizeKb()J

    .line 964
    .line 965
    .line 966
    move-result-wide v20

    .line 967
    const-wide/16 v27, 0x0

    .line 968
    .line 969
    cmp-long v4, v12, v27

    .line 970
    .line 971
    if-ltz v4, :cond_18

    .line 972
    .line 973
    cmp-long v4, v14, v27

    .line 974
    .line 975
    if-ltz v4, :cond_18

    .line 976
    .line 977
    sub-long v29, v12, v20

    .line 978
    .line 979
    const-string v4, "       ION: "

    .line 980
    .line 981
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    add-long/2addr v12, v14

    .line 985
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v4

    .line 989
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    const-string v4, "\n"

    .line 993
    .line 994
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    add-long v10, v10, v29

    .line 998
    .line 999
    sub-long v7, v7, v41

    .line 1000
    .line 1001
    add-long v7, v7, v20

    .line 1002
    .line 1003
    goto :goto_9

    .line 1004
    :cond_18
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    .line 1005
    .line 1006
    .line 1007
    move-result-wide v12

    .line 1008
    const-wide/16 v14, 0x0

    .line 1009
    .line 1010
    cmp-long v4, v12, v14

    .line 1011
    .line 1012
    if-ltz v4, :cond_19

    .line 1013
    .line 1014
    sub-long v14, v12, v20

    .line 1015
    .line 1016
    const-string v4, "DMA-BUF: "

    .line 1017
    .line 1018
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    const-string v4, "\n"

    .line 1029
    .line 1030
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    add-long/2addr v10, v14

    .line 1034
    sub-long v7, v7, v41

    .line 1035
    .line 1036
    add-long v7, v7, v20

    .line 1037
    .line 1038
    :cond_19
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    .line 1039
    .line 1040
    .line 1041
    move-result-wide v12

    .line 1042
    const-wide/16 v14, 0x0

    .line 1043
    .line 1044
    cmp-long v4, v12, v14

    .line 1045
    .line 1046
    if-ltz v4, :cond_1a

    .line 1047
    .line 1048
    const-string v4, "DMA-BUF Heap: "

    .line 1049
    .line 1050
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v4

    .line 1057
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    const-string v4, "\n"

    .line 1061
    .line 1062
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    :cond_1a
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapPoolsSizeKb()J

    .line 1066
    .line 1067
    .line 1068
    move-result-wide v12

    .line 1069
    cmp-long v4, v12, v14

    .line 1070
    .line 1071
    if-ltz v4, :cond_1b

    .line 1072
    .line 1073
    const-string v4, "DMA-BUF Heaps pool: "

    .line 1074
    .line 1075
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v4

    .line 1082
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    const-string v4, "\n"

    .line 1086
    .line 1087
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    :cond_1b
    :goto_9
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v12

    .line 1094
    const-wide/16 v14, 0x0

    .line 1095
    .line 1096
    cmp-long v4, v12, v14

    .line 1097
    .line 1098
    if-ltz v4, :cond_1d

    .line 1099
    .line 1100
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    .line 1101
    .line 1102
    .line 1103
    move-result-wide v20

    .line 1104
    cmp-long v4, v20, v14

    .line 1105
    .line 1106
    if-ltz v4, :cond_1c

    .line 1107
    .line 1108
    sub-long v14, v12, v20

    .line 1109
    .line 1110
    const-string v4, "      GPU: "

    .line 1111
    .line 1112
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v4

    .line 1119
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    const-string v4, " ("

    .line 1123
    .line 1124
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    .line 1127
    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v4

    .line 1131
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    const-string v4, " dmabuf + "

    .line 1135
    .line 1136
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    invoke-static/range {v20 .. v21}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v4

    .line 1143
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    const-string v4, " private)\n"

    .line 1147
    .line 1148
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    sub-long v7, v7, v39

    .line 1152
    .line 1153
    add-long v10, v10, v20

    .line 1154
    .line 1155
    goto :goto_a

    .line 1156
    :cond_1c
    const-string v4, "       GPU: "

    .line 1157
    .line 1158
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v4

    .line 1165
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    const-string v4, "\n"

    .line 1169
    .line 1170
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    :cond_1d
    :goto_a
    const-string v4, "  Used RAM: "

    .line 1174
    .line 1175
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    .line 1178
    sub-long v12, v7, v24

    .line 1179
    .line 1180
    add-long/2addr v12, v10

    .line 1181
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v4

    .line 1185
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    const-string v4, "\n  Lost RAM: "

    .line 1189
    .line 1190
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v12

    .line 1197
    sub-long v7, v7, v18

    .line 1198
    .line 1199
    sub-long/2addr v12, v7

    .line 1200
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 1201
    .line 1202
    .line 1203
    move-result-wide v7

    .line 1204
    sub-long/2addr v12, v7

    .line 1205
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 1206
    .line 1207
    .line 1208
    move-result-wide v7

    .line 1209
    sub-long/2addr v12, v7

    .line 1210
    sub-long/2addr v12, v10

    .line 1211
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 1212
    .line 1213
    .line 1214
    move-result-wide v7

    .line 1215
    sub-long/2addr v12, v7

    .line 1216
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    const-string v0, "\n"

    .line 1224
    .line 1225
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    const-string v0, "ActivityManager"

    .line 1229
    .line 1230
    const-string v4, "Low on memory:"

    .line 1231
    .line 1232
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    .line 1234
    .line 1235
    const-string v0, "ActivityManager"

    .line 1236
    .line 1237
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v4

    .line 1241
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    .line 1243
    .line 1244
    const-string v0, "ActivityManager"

    .line 1245
    .line 1246
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v4

    .line 1250
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    .line 1252
    .line 1253
    const-string v0, "ActivityManager"

    .line 1254
    .line 1255
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v4

    .line 1259
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    .line 1261
    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    const/16 v4, 0x400

    .line 1265
    .line 1266
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1267
    .line 1268
    .line 1269
    const-string v4, "Low on memory:"

    .line 1270
    .line 1271
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    .line 1277
    const/16 v3, 0xa

    .line 1278
    .line 1279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    new-instance v2, Ljava/io/StringWriter;

    .line 1298
    .line 1299
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1300
    .line 1301
    .line 1302
    move-object/from16 v3, v26

    .line 1303
    .line 1304
    iget-object v4, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1305
    .line 1306
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1307
    .line 1308
    .line 1309
    monitor-enter v4

    .line 1310
    :try_start_1
    new-instance v15, Lcom/android/internal/util/FastPrintWriter;

    .line 1311
    .line 1312
    const/16 v5, 0x100

    .line 1313
    .line 1314
    const/4 v6, 0x0

    .line 1315
    invoke-direct {v15, v2, v6, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1316
    .line 1317
    .line 1318
    new-array v13, v6, [Ljava/lang/String;

    .line 1319
    .line 1320
    invoke-virtual {v15}, Ljava/io/PrintWriter;->println()V

    .line 1321
    .line 1322
    .line 1323
    iget-object v14, v3, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 1324
    .line 1325
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1326
    .line 1327
    .line 1328
    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1329
    :try_start_2
    iget-object v5, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1330
    .line 1331
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1332
    .line 1333
    const/4 v12, -0x1

    .line 1334
    const/4 v6, 0x0

    .line 1335
    const/4 v9, 0x0

    .line 1336
    const/4 v10, 0x0

    .line 1337
    const/4 v11, 0x0

    .line 1338
    move-object v7, v15

    .line 1339
    move-object v8, v13

    .line 1340
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ProcessList;->dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V

    .line 1341
    .line 1342
    .line 1343
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1344
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v15}, Ljava/io/PrintWriter;->println()V

    .line 1348
    .line 1349
    .line 1350
    iget-object v5, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1351
    .line 1352
    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1353
    .line 1354
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1355
    .line 1356
    .line 1357
    new-instance v14, Lcom/android/server/am/ActiveServices$ServiceDumper;

    .line 1358
    .line 1359
    const/4 v7, 0x0

    .line 1360
    const/4 v10, 0x0

    .line 1361
    const/4 v11, 0x0

    .line 1362
    const/4 v12, 0x0

    .line 1363
    move-object v5, v14

    .line 1364
    move-object v8, v15

    .line 1365
    move-object v9, v13

    .line 1366
    invoke-direct/range {v5 .. v12}, Lcom/android/server/am/ActiveServices$ServiceDumper;-><init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v14}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpLocked()V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v15}, Ljava/io/PrintWriter;->println()V

    .line 1373
    .line 1374
    .line 1375
    iget-object v5, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1376
    .line 1377
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1378
    .line 1379
    const-string v6, "activities"

    .line 1380
    .line 1381
    const/4 v7, 0x0

    .line 1382
    const/4 v10, 0x0

    .line 1383
    const/4 v11, 0x0

    .line 1384
    const/4 v12, 0x0

    .line 1385
    const/4 v14, 0x0

    .line 1386
    const/16 v16, -0x1

    .line 1387
    .line 1388
    move-object v8, v15

    .line 1389
    move-object v9, v13

    .line 1390
    move-object v13, v14

    .line 1391
    move/from16 v14, v16

    .line 1392
    .line 1393
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;I)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v15}, Ljava/io/PrintWriter;->flush()V

    .line 1397
    .line 1398
    .line 1399
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1400
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v2

    .line 1407
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    .line 1409
    .line 1410
    const/16 v2, 0x51

    .line 1411
    .line 1412
    invoke-static {v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 1413
    .line 1414
    .line 1415
    iget-object v4, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1416
    .line 1417
    const-string/jumbo v5, "lowmem"

    .line 1418
    .line 1419
    .line 1420
    const-string/jumbo v7, "system_server"

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v11

    .line 1427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v12

    .line 1431
    const/16 v17, 0x0

    .line 1432
    .line 1433
    const/16 v18, 0x0

    .line 1434
    .line 1435
    const/4 v6, 0x0

    .line 1436
    const/4 v8, 0x0

    .line 1437
    const/4 v9, 0x0

    .line 1438
    const/4 v10, 0x0

    .line 1439
    const/4 v13, 0x0

    .line 1440
    const/4 v14, 0x0

    .line 1441
    const/4 v15, 0x0

    .line 1442
    const/16 v16, 0x0

    .line 1443
    .line 1444
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    .line 1445
    .line 1446
    .line 1447
    iget-object v1, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1448
    .line 1449
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1450
    .line 1451
    .line 1452
    monitor-enter v1

    .line 1453
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1454
    .line 1455
    .line 1456
    move-result-wide v4

    .line 1457
    iget-wide v6, v3, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1458
    .line 1459
    cmp-long v0, v6, v4

    .line 1460
    .line 1461
    if-gez v0, :cond_1e

    .line 1462
    .line 1463
    iput-wide v4, v3, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1464
    .line 1465
    goto :goto_b

    .line 1466
    :catchall_0
    move-exception v0

    .line 1467
    goto :goto_c

    .line 1468
    :cond_1e
    :goto_b
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1469
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1470
    .line 1471
    .line 1472
    return-void

    .line 1473
    :goto_c
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1474
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1475
    .line 1476
    .line 1477
    throw v0

    .line 1478
    :catchall_1
    move-exception v0

    .line 1479
    goto :goto_d

    .line 1480
    :catchall_2
    move-exception v0

    .line 1481
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1482
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1483
    .line 1484
    .line 1485
    throw v0

    .line 1486
    :goto_d
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1487
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1488
    .line 1489
    .line 1490
    throw v0

    .line 1491
    :catchall_3
    move-exception v0

    .line 1492
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1493
    throw v0
.end method
