.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[Landroid/os/Debug$MemoryInfo;

.field public final synthetic f$10:[J

.field public final synthetic f$11:[J

.field public final synthetic f$12:[J

.field public final synthetic f$13:[J

.field public final synthetic f$14:[J

.field public final synthetic f$15:[J

.field public final synthetic f$16:[J

.field public final synthetic f$17:[J

.field public final synthetic f$18:[Ljava/util/ArrayList;

.field public final synthetic f$19:[J

.field public final synthetic f$2:Z

.field public final synthetic f$20:[J

.field public final synthetic f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

.field public final synthetic f$4:[J

.field public final synthetic f$5:[J

.field public final synthetic f$6:[J

.field public final synthetic f$7:Ljava/util/ArrayList;

.field public final synthetic f$8:[J

.field public final synthetic f$9:[J


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J[J)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$0:Landroid/util/SparseArray;

    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$1:[Landroid/os/Debug$MemoryInfo;

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$2:Z

    .line 14
    move-object v1, p3

    .line 15
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    .line 17
    move-object v1, p4

    .line 18
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$4:[J

    .line 20
    move-object v1, p5

    .line 21
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$5:[J

    .line 23
    move-object v1, p6

    .line 24
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$6:[J

    .line 26
    move-object v1, p7

    .line 27
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$7:Ljava/util/ArrayList;

    .line 29
    move-object v1, p8

    .line 30
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$8:[J

    .line 32
    move-object v1, p9

    .line 33
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$9:[J

    .line 35
    move-object v1, p10

    .line 36
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$10:[J

    .line 38
    move-object v1, p11

    .line 39
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$11:[J

    .line 41
    move-object v1, p12

    .line 42
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$12:[J

    .line 44
    move-object v1, p13

    .line 45
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$13:[J

    .line 47
    move-object/from16 v1, p14

    .line 49
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$14:[J

    .line 51
    move-object/from16 v1, p15

    .line 53
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$15:[J

    .line 55
    move-object/from16 v1, p16

    .line 57
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$16:[J

    .line 59
    move-object/from16 v1, p17

    .line 61
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$17:[J

    .line 63
    move-object/from16 v1, p18

    .line 65
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$18:[Ljava/util/ArrayList;

    .line 67
    move-object/from16 v1, p19

    .line 69
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$19:[J

    .line 71
    move-object/from16 v1, p20

    .line 73
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$20:[J

    .line 75
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$0:Landroid/util/SparseArray;

    .line 5
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$1:[Landroid/os/Debug$MemoryInfo;

    .line 7
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$2:Z

    .line 9
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    .line 11
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$4:[J

    .line 13
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$5:[J

    .line 15
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$6:[J

    .line 17
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$7:Ljava/util/ArrayList;

    .line 19
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$8:[J

    .line 21
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$9:[J

    .line 23
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$10:[J

    .line 25
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$11:[J

    .line 27
    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$12:[J

    .line 29
    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$13:[J

    .line 31
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$14:[J

    .line 33
    move-object/from16 v16, v15

    .line 35
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$15:[J

    .line 37
    move-object/from16 v17, v15

    .line 39
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$16:[J

    .line 41
    move-object/from16 v18, v15

    .line 43
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$17:[J

    .line 45
    move-object/from16 v19, v15

    .line 47
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$18:[Ljava/util/ArrayList;

    .line 49
    move-object/from16 v20, v15

    .line 51
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$19:[J

    .line 53
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda36;->f$20:[J

    .line 55
    move-object/from16 p0, v0

    .line 57
    move-object/from16 v0, p1

    .line 59
    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 61
    move-object/from16 v21, v14

    .line 63
    move-object/from16 v22, v15

    .line 65
    iget-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 67
    const-wide/16 v23, 0x0

    .line 69
    cmp-long v14, v14, v23

    .line 71
    if-lez v14, :cond_7

    .line 73
    iget v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 75
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 78
    move-result v1

    .line 79
    if-gez v1, :cond_7

    .line 81
    const/4 v1, 0x0

    .line 82
    aget-object v14, v2, v1

    .line 84
    if-nez v14, :cond_0

    .line 86
    new-instance v14, Landroid/os/Debug$MemoryInfo;

    .line 88
    invoke-direct {v14}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 91
    aput-object v14, v2, v1

    .line 93
    :cond_0
    aget-object v2, v2, v1

    .line 95
    const/4 v14, 0x1

    .line 96
    const/16 v15, 0xe

    .line 98
    const/16 v25, 0x2

    .line 100
    if-nez v3, :cond_2

    .line 102
    iget-boolean v3, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 104
    if-nez v3, :cond_2

    .line 106
    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 108
    invoke-static {v3, v2}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_1

    .line 114
    goto/16 :goto_3

    .line 116
    :cond_1
    invoke-virtual {v2, v15}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    .line 119
    move-result v3

    .line 120
    int-to-long v3, v3

    .line 121
    const/16 v5, 0xf

    .line 123
    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    .line 126
    move-result v5

    .line 127
    int-to-long v5, v5

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 131
    invoke-static {v3, v5, v6}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 134
    move-result-wide v3

    .line 135
    cmp-long v23, v3, v23

    .line 137
    if-nez v23, :cond_3

    .line 139
    goto/16 :goto_3

    .line 141
    :cond_3
    long-to-int v3, v3

    .line 142
    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 144
    aget-wide v3, v5, v1

    .line 146
    long-to-int v3, v3

    .line 147
    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 149
    aget-wide v3, v5, v25

    .line 151
    long-to-int v3, v3

    .line 152
    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 154
    aget-wide v3, v6, v14

    .line 156
    aget-wide v5, v6, v25

    .line 158
    :goto_0
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 161
    move-result v14

    .line 162
    move-object/from16 v23, v13

    .line 164
    int-to-long v13, v14

    .line 165
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    .line 168
    move-result v1

    .line 169
    move-object/from16 v40, v11

    .line 171
    move-object/from16 v41, v12

    .line 173
    int-to-long v11, v1

    .line 174
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    .line 177
    move-result v1

    .line 178
    move-object/from16 v42, v9

    .line 180
    move-object/from16 v43, v10

    .line 182
    int-to-long v9, v1

    .line 183
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    .line 186
    move-result v1

    .line 187
    move-object/from16 v44, v2

    .line 189
    int-to-long v1, v1

    .line 190
    const/16 v26, 0xc

    .line 192
    aget-wide v27, v7, v26

    .line 194
    add-long v27, v27, v13

    .line 196
    aput-wide v27, v7, v26

    .line 198
    const/16 v26, 0xd

    .line 200
    aget-wide v27, v7, v26

    .line 202
    add-long v27, v27, v11

    .line 204
    aput-wide v27, v7, v26

    .line 206
    aget-wide v26, v7, v15

    .line 208
    add-long v26, v26, v9

    .line 210
    aput-wide v26, v7, v15

    .line 212
    const/16 v15, 0x10

    .line 214
    aget-wide v26, v7, v15

    .line 216
    add-long v26, v26, v13

    .line 218
    aput-wide v26, v7, v15

    .line 220
    const/16 v15, 0x11

    .line 222
    aget-wide v26, v7, v15

    .line 224
    add-long v26, v26, v3

    .line 226
    aput-wide v26, v7, v15

    .line 228
    const/16 v3, 0x12

    .line 230
    aget-wide v26, v7, v3

    .line 232
    add-long v26, v26, v5

    .line 234
    aput-wide v26, v7, v3

    .line 236
    new-instance v3, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v5, " (pid "

    .line 250
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 255
    const-string v6, ")"

    .line 257
    invoke-static {v5, v4, v6}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    move-result-object v27

    .line 261
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 263
    invoke-virtual/range {v44 .. v44}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    .line 266
    move-result v5

    .line 267
    int-to-long v5, v5

    .line 268
    iget v15, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 270
    iget v0, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 272
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 275
    move-result v38

    .line 276
    const/16 v39, 0x0

    .line 278
    move-object/from16 v26, v3

    .line 280
    move-object/from16 v28, v4

    .line 282
    move-wide/from16 v29, v13

    .line 284
    move-wide/from16 v31, v5

    .line 286
    move-wide/from16 v33, v9

    .line 288
    move-wide/from16 v35, v1

    .line 290
    move/from16 v37, v15

    .line 292
    invoke-direct/range {v26 .. v39}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V

    .line 295
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const/4 v0, 0x0

    .line 299
    aget-wide v4, v7, v0

    .line 301
    move-object/from16 v6, v44

    .line 303
    iget v8, v6, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 305
    move-wide/from16 v26, v1

    .line 307
    int-to-long v1, v8

    .line 308
    add-long/2addr v4, v1

    .line 309
    aput-wide v4, v7, v0

    .line 311
    const/4 v0, 0x1

    .line 312
    aget-wide v1, v7, v0

    .line 314
    iget v4, v6, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 316
    int-to-long v4, v4

    .line 317
    add-long/2addr v1, v4

    .line 318
    aput-wide v1, v7, v0

    .line 320
    aget-wide v0, v7, v25

    .line 322
    iget v2, v6, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 324
    int-to-long v4, v2

    .line 325
    add-long/2addr v0, v4

    .line 326
    aput-wide v0, v7, v25

    .line 328
    const/4 v0, 0x3

    .line 329
    aget-wide v1, v7, v0

    .line 331
    iget v4, v6, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 333
    int-to-long v4, v4

    .line 334
    add-long/2addr v1, v4

    .line 335
    aput-wide v1, v7, v0

    .line 337
    const/4 v0, 0x4

    .line 338
    aget-wide v1, v7, v0

    .line 340
    iget v4, v6, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 342
    int-to-long v4, v4

    .line 343
    add-long/2addr v1, v4

    .line 344
    aput-wide v1, v7, v0

    .line 346
    const/4 v0, 0x5

    .line 347
    aget-wide v1, v7, v0

    .line 349
    iget v4, v6, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    .line 351
    int-to-long v4, v4

    .line 352
    add-long/2addr v1, v4

    .line 353
    aput-wide v1, v7, v0

    .line 355
    const/4 v0, 0x6

    .line 356
    aget-wide v1, v7, v0

    .line 358
    iget v4, v6, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 360
    int-to-long v4, v4

    .line 361
    add-long/2addr v1, v4

    .line 362
    aput-wide v1, v7, v0

    .line 364
    const/4 v0, 0x7

    .line 365
    aget-wide v1, v7, v0

    .line 367
    iget v4, v6, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 369
    int-to-long v4, v4

    .line 370
    add-long/2addr v1, v4

    .line 371
    aput-wide v1, v7, v0

    .line 373
    move-object/from16 v1, v42

    .line 375
    const/4 v0, 0x0

    .line 376
    :goto_1
    array-length v2, v1

    .line 377
    if-ge v0, v2, :cond_4

    .line 379
    aget-wide v4, v1, v0

    .line 381
    add-int/lit8 v2, v0, 0x11

    .line 383
    invoke-virtual {v6, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 386
    move-result v8

    .line 387
    move-wide/from16 v28, v9

    .line 389
    int-to-long v8, v8

    .line 390
    add-long/2addr v4, v8

    .line 391
    aput-wide v4, v1, v0

    .line 393
    aget-wide v4, v43, v0

    .line 395
    invoke-virtual {v6, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    .line 398
    move-result v8

    .line 399
    int-to-long v8, v8

    .line 400
    add-long/2addr v4, v8

    .line 401
    aput-wide v4, v43, v0

    .line 403
    aget-wide v4, v40, v0

    .line 405
    invoke-virtual {v6, v2}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    .line 408
    move-result v8

    .line 409
    int-to-long v8, v8

    .line 410
    add-long/2addr v4, v8

    .line 411
    aput-wide v4, v40, v0

    .line 413
    aget-wide v4, v41, v0

    .line 415
    invoke-virtual {v6, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    .line 418
    move-result v2

    .line 419
    int-to-long v8, v2

    .line 420
    add-long/2addr v4, v8

    .line 421
    aput-wide v4, v41, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    .line 425
    move-wide/from16 v9, v28

    .line 427
    goto :goto_1

    .line 428
    :cond_4
    move-wide/from16 v28, v9

    .line 430
    const/16 v0, 0x8

    .line 432
    aget-wide v1, v7, v0

    .line 434
    iget v4, v6, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 436
    int-to-long v4, v4

    .line 437
    add-long/2addr v1, v4

    .line 438
    aput-wide v1, v7, v0

    .line 440
    const/16 v1, 0x9

    .line 442
    aget-wide v4, v7, v1

    .line 444
    iget v2, v6, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 446
    int-to-long v8, v2

    .line 447
    add-long/2addr v4, v8

    .line 448
    aput-wide v4, v7, v1

    .line 450
    const/16 v2, 0xa

    .line 452
    aget-wide v4, v7, v2

    .line 454
    iget v8, v6, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 456
    int-to-long v8, v8

    .line 457
    add-long/2addr v4, v8

    .line 458
    aput-wide v4, v7, v2

    .line 460
    const/16 v4, 0xb

    .line 462
    aget-wide v8, v7, v4

    .line 464
    iget v5, v6, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 466
    move-object/from16 p1, v3

    .line 468
    int-to-long v2, v5

    .line 469
    add-long/2addr v8, v2

    .line 470
    aput-wide v8, v7, v4

    .line 472
    const/4 v2, 0x0

    .line 473
    const/16 v3, 0x11

    .line 475
    :goto_2
    if-ge v2, v3, :cond_5

    .line 477
    invoke-virtual {v6, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 480
    move-result v5

    .line 481
    int-to-long v8, v5

    .line 482
    aget-wide v30, v23, v2

    .line 484
    add-long v30, v30, v8

    .line 486
    aput-wide v30, v23, v2

    .line 488
    aget-wide v30, v7, v0

    .line 490
    sub-long v30, v30, v8

    .line 492
    aput-wide v30, v7, v0

    .line 494
    invoke-virtual {v6, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    .line 497
    move-result v5

    .line 498
    int-to-long v8, v5

    .line 499
    aget-wide v30, v21, v2

    .line 501
    add-long v30, v30, v8

    .line 503
    aput-wide v30, v21, v2

    .line 505
    aget-wide v30, v7, v1

    .line 507
    sub-long v30, v30, v8

    .line 509
    aput-wide v30, v7, v1

    .line 511
    invoke-virtual {v6, v2}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    .line 514
    move-result v5

    .line 515
    int-to-long v8, v5

    .line 516
    aget-wide v30, v16, v2

    .line 518
    add-long v30, v30, v8

    .line 520
    aput-wide v30, v16, v2

    .line 522
    const/16 v5, 0xa

    .line 524
    aget-wide v30, v7, v5

    .line 526
    sub-long v30, v30, v8

    .line 528
    aput-wide v30, v7, v5

    .line 530
    invoke-virtual {v6, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    .line 533
    move-result v8

    .line 534
    int-to-long v8, v8

    .line 535
    aget-wide v30, v17, v2

    .line 537
    add-long v30, v30, v8

    .line 539
    aput-wide v30, v17, v2

    .line 541
    aget-wide v30, v7, v4

    .line 543
    sub-long v30, v30, v8

    .line 545
    aput-wide v30, v7, v4

    .line 547
    add-int/lit8 v2, v2, 0x1

    .line 549
    goto :goto_2

    .line 550
    :cond_5
    const/4 v2, 0x0

    .line 551
    aget-wide v0, v18, v2

    .line 553
    add-long/2addr v0, v13

    .line 554
    aput-wide v0, v18, v2

    .line 556
    aget-wide v0, v19, v2

    .line 558
    add-long/2addr v0, v11

    .line 559
    aput-wide v0, v19, v2

    .line 561
    aget-object v0, v20, v2

    .line 563
    if-nez v0, :cond_6

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    .line 567
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 570
    aput-object v0, v20, v2

    .line 572
    :cond_6
    aget-object v0, v20, v2

    .line 574
    move-object/from16 v1, p1

    .line 576
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    aget-wide v0, v22, v2

    .line 581
    add-long v0, v0, v28

    .line 583
    aput-wide v0, v22, v2

    .line 585
    aget-wide v0, p0, v2

    .line 587
    add-long v0, v0, v26

    .line 589
    aput-wide v0, p0, v2

    .line 591
    :cond_7
    :goto_3
    return-void
.end method
