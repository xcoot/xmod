.class public final Lcom/android/server/am/ActivityManagerService$MemBinder$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService$MemBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 77

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v3, p2

    .line 5
    move-object/from16 v1, p3

    .line 7
    const/16 v2, 0x2d

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object/from16 v10, p0

    .line 12
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    .line 14
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 16
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string v11, "  ex> --fd system_server"

    .line 21
    const-string v12, "A process name is required to output fd info."

    .line 23
    const-string v13, "  ex> --maps system_server"

    .line 25
    const-string v14, "A process name is required to output maps."

    .line 27
    new-instance v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    .line 29
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 34
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpFullDetails:Z

    .line 36
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 38
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    .line 40
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpUnreachable:Z

    .line 42
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 44
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCompact:Z

    .line 46
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->localOnly:Z

    .line 48
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 50
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    .line 52
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 54
    move/from16 v6, p4

    .line 56
    iput-boolean v6, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpProto:Z

    .line 58
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpPrivateDirty:Z

    .line 60
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpAllocatorStats:Z

    .line 62
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->USER_BUILD:Z

    .line 64
    if-eqz v6, :cond_1

    .line 66
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->DEBUG_LEVEL_LOW:Z

    .line 68
    if-eqz v6, :cond_1

    .line 70
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    .line 72
    if-nez v6, :cond_0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v6, v5

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 78
    :goto_1
    move v7, v5

    .line 79
    move/from16 v17, v7

    .line 81
    move/from16 v18, v17

    .line 83
    const/4 v4, 0x0

    .line 84
    const/16 v32, 0x0

    .line 86
    :goto_2
    array-length v8, v1

    .line 87
    if-ge v7, v8, :cond_17

    .line 89
    aget-object v8, v1, v7

    .line 91
    if-eqz v8, :cond_17

    .line 93
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 96
    move-result v20

    .line 97
    if-lez v20, :cond_17

    .line 99
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    .line 102
    move-result v9

    .line 103
    if-eq v9, v2, :cond_2

    .line 105
    goto/16 :goto_8

    .line 107
    :cond_2
    const/4 v9, 0x1

    .line 108
    add-int/lit8 v20, v7, 0x1

    .line 110
    const-string v2, "-a"

    .line 112
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_3

    .line 118
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 120
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpFullDetails:Z

    .line 122
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 124
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 126
    goto/16 :goto_6

    .line 128
    :cond_3
    const-string v2, "-d"

    .line 130
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_4

    .line 136
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 138
    goto/16 :goto_6

    .line 140
    :cond_4
    const-string v2, "-c"

    .line 142
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_5

    .line 148
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCompact:Z

    .line 150
    goto/16 :goto_6

    .line 152
    :cond_5
    const-string v2, "-s"

    .line 154
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_6

    .line 160
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 162
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    .line 164
    goto/16 :goto_6

    .line 166
    :cond_6
    const-string v2, "-S"

    .line 168
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_7

    .line 174
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 176
    goto/16 :goto_6

    .line 178
    :cond_7
    const-string v2, "-p"

    .line 180
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_8

    .line 186
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpPrivateDirty:Z

    .line 188
    goto/16 :goto_6

    .line 190
    :cond_8
    const-string v2, "--unreachable"

    .line 192
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_9

    .line 198
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpUnreachable:Z

    .line 200
    goto/16 :goto_6

    .line 202
    :cond_9
    const-string v2, "--oom"

    .line 204
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_a

    .line 210
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 212
    goto/16 :goto_6

    .line 214
    :cond_a
    const-string v2, "--local"

    .line 216
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_b

    .line 222
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->localOnly:Z

    .line 224
    goto/16 :goto_6

    .line 226
    :cond_b
    const-string v2, "--package"

    .line 228
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_c

    .line 234
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 236
    goto/16 :goto_6

    .line 238
    :cond_c
    const-string v2, "--checkin"

    .line 240
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_d

    .line 246
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    .line 248
    goto/16 :goto_6

    .line 250
    :cond_d
    const-string v2, "--proto"

    .line 252
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_e

    .line 258
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpProto:Z

    .line 260
    goto/16 :goto_6

    .line 262
    :cond_e
    const-string v2, "--logstats"

    .line 264
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_f

    .line 270
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpAllocatorStats:Z

    .line 272
    goto/16 :goto_6

    .line 274
    :cond_f
    if-eqz v6, :cond_12

    .line 276
    const-string v2, "--maps"

    .line 278
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_12

    .line 284
    :try_start_0
    aget-object v2, v1, v20

    .line 286
    if-eqz v2, :cond_11

    .line 288
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 291
    move-result v4

    .line 292
    if-gtz v4, :cond_10

    .line 294
    goto :goto_4

    .line 295
    :cond_10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 298
    move-result-object v4

    .line 299
    invoke-static {v4}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 302
    move-result-object v4

    .line 303
    aget v4, v4, v5

    .line 305
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 308
    move-result-object v4

    .line 309
    const/4 v8, 0x2

    .line 310
    add-int/2addr v7, v8

    .line 311
    move-object/from16 v32, v4

    .line 313
    const/16 v17, 0x1

    .line 315
    :goto_3
    move-object v4, v2

    .line 316
    goto/16 :goto_7

    .line 318
    :cond_11
    :goto_4
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto/16 :goto_39

    .line 326
    :catch_0
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    goto/16 :goto_39

    .line 334
    :cond_12
    if-eqz v6, :cond_15

    .line 336
    const-string v2, "--fd"

    .line 338
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_15

    .line 344
    :try_start_1
    aget-object v2, v1, v20

    .line 346
    if-eqz v2, :cond_14

    .line 348
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 351
    move-result v4

    .line 352
    if-gtz v4, :cond_13

    .line 354
    goto :goto_5

    .line 355
    :cond_13
    filled-new-array {v2}, [Ljava/lang/String;

    .line 358
    move-result-object v4

    .line 359
    invoke-static {v4}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 362
    move-result-object v4

    .line 363
    aget v4, v4, v5

    .line 365
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 368
    move-result-object v4

    .line 369
    const/4 v8, 0x2

    .line 370
    add-int/2addr v7, v8

    .line 371
    move-object/from16 v32, v4

    .line 373
    const/16 v18, 0x1

    .line 375
    goto :goto_3

    .line 376
    :cond_14
    :goto_5
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    goto/16 :goto_39

    .line 384
    :catch_1
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    goto/16 :goto_39

    .line 392
    :cond_15
    const-string v2, "-h"

    .line 394
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_16

    .line 400
    const-string/jumbo v0, "meminfo dump options: [-a] [-d] [-c] [-s] [--oom] [process]"

    .line 403
    const-string v1, "  -a: include all available information for each process."

    .line 405
    const-string v2, "  -d: include dalvik details."

    .line 407
    const-string v4, "  -c: dump in a compact machine-parseable representation."

    .line 409
    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "  -s: dump only summary of application memory usage."

    .line 414
    const-string v1, "  -S: dump also SwapPss."

    .line 416
    const-string v2, "  -p: dump also private dirty memory usage."

    .line 418
    const-string v4, "  --oom: only show processes organized by oom adj."

    .line 420
    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "  --local: only collect details locally, don\'t call process."

    .line 425
    const-string v1, "  --package: interpret process arg as package, dumping all"

    .line 427
    const-string v2, "             processes that have loaded that package."

    .line 429
    const-string v4, "  --checkin: dump data for a checkin"

    .line 431
    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "  --proto: dump data to proto"

    .line 436
    const-string v1, "If [process] is specified it can be the name or "

    .line 438
    const-string/jumbo v2, "pid of a specific process to dump."

    .line 441
    invoke-static {v3, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    goto/16 :goto_39

    .line 446
    :cond_16
    const-string v2, "Unknown argument: "

    .line 448
    const-string v7, "; use -h for help"

    .line 450
    invoke-static {v3, v2, v8, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_6
    move/from16 v7, v20

    .line 455
    :goto_7
    const/16 v2, 0x2d

    .line 457
    goto/16 :goto_2

    .line 459
    :cond_17
    :goto_8
    const-string v2, "])====="

    .line 461
    const-string v8, "["

    .line 463
    const-string v9, "/proc/"

    .line 465
    if-eqz v6, :cond_1a

    .line 467
    if-eqz v17, :cond_1a

    .line 469
    const-string v0, "/maps"

    .line 471
    move-object/from16 v11, v32

    .line 473
    invoke-static {v9, v11, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    move-result-object v0

    .line 477
    const-string v1, "=====PRINT MAPS("

    .line 479
    invoke-static {v1, v0, v8, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    .line 488
    new-instance v2, Ljava/io/FileReader;

    .line 490
    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 496
    :goto_9
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 499
    move-result-object v0

    .line 500
    if-eqz v0, :cond_18

    .line 502
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    goto :goto_9

    .line 506
    :catchall_0
    move-exception v0

    .line 507
    move-object v4, v1

    .line 508
    :goto_a
    move-object v1, v0

    .line 509
    goto :goto_c

    .line 510
    :catch_2
    move-exception v0

    .line 511
    move-object v4, v1

    .line 512
    goto :goto_b

    .line 513
    :cond_18
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 516
    goto/16 :goto_39

    .line 518
    :catch_3
    move-exception v0

    .line 519
    move-object v1, v0

    .line 520
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    goto/16 :goto_39

    .line 529
    :catchall_1
    move-exception v0

    .line 530
    move-object v1, v0

    .line 531
    const/4 v4, 0x0

    .line 532
    goto :goto_c

    .line 533
    :catch_4
    move-exception v0

    .line 534
    const/4 v4, 0x0

    .line 535
    :goto_b
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 542
    if-eqz v4, :cond_53

    .line 544
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 547
    goto/16 :goto_39

    .line 549
    :catchall_2
    move-exception v0

    .line 550
    goto :goto_a

    .line 551
    :goto_c
    if-eqz v4, :cond_19

    .line 553
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 556
    goto :goto_d

    .line 557
    :catch_5
    move-exception v0

    .line 558
    move-object v2, v0

    .line 559
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    :cond_19
    :goto_d
    throw v1

    .line 567
    :cond_1a
    move-object/from16 v11, v32

    .line 569
    if-eqz v6, :cond_1b

    .line 571
    if-eqz v18, :cond_1b

    .line 573
    const-string v0, "/fd"

    .line 575
    invoke-static {v9, v11, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 578
    move-result-object v0

    .line 579
    const-string v1, "=====PRINT FD INFO("

    .line 581
    invoke-static {v1, v0, v8, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    :try_start_8
    new-instance v1, Ljava/io/File;

    .line 590
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 596
    move-result-object v0

    .line 597
    array-length v1, v0

    .line 598
    :goto_e
    if-ge v5, v1, :cond_53

    .line 600
    aget-object v2, v0, v5
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7

    .line 602
    :try_start_9
    new-instance v4, Ljava/io/File;

    .line 604
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 607
    move-result-object v6

    .line 608
    invoke-static {v6}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    .line 611
    move-result-object v6

    .line 612
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    new-instance v6, Ljava/lang/StringBuilder;

    .line 617
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 623
    move-result-object v7

    .line 624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const-string v7, " -> "

    .line 629
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 635
    move-result-object v4

    .line 636
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 646
    :goto_f
    const/4 v2, 0x1

    .line 647
    goto :goto_10

    .line 648
    :catch_6
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 650
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 656
    move-result-object v2

    .line 657
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v2, " -> readlink error"

    .line 662
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    move-result-object v2

    .line 669
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_7

    .line 672
    goto :goto_f

    .line 673
    :goto_10
    add-int/2addr v5, v2

    .line 674
    goto :goto_e

    .line 675
    :catch_7
    move-exception v0

    .line 676
    const-string v1, "Can not get FD info..."

    .line 678
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 684
    move-result-object v0

    .line 685
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    goto/16 :goto_39

    .line 690
    :cond_1b
    array-length v2, v1

    .line 691
    sub-int/2addr v2, v7

    .line 692
    new-array v6, v2, [Ljava/lang/String;

    .line 694
    array-length v2, v1

    .line 695
    sub-int/2addr v2, v7

    .line 696
    invoke-static {v1, v7, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 701
    invoke-virtual {v10, v7, v2, v1}, Lcom/android/server/am/ActivityManagerService;->collectProcesses(IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 704
    move-result-object v7

    .line 705
    iget-boolean v1, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpProto:Z

    .line 707
    if-eqz v1, :cond_52

    .line 709
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 715
    move-result-wide v1

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 719
    move-result-wide v3

    .line 720
    const/4 v8, 0x3

    .line 721
    new-array v9, v8, [J

    .line 723
    const-wide v13, 0x10300000001L

    .line 728
    const-wide/16 v33, 0x0

    .line 730
    if-nez v7, :cond_23

    .line 732
    array-length v7, v6

    .line 733
    if-lez v7, :cond_22

    .line 735
    aget-object v7, v6, v5

    .line 737
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 740
    move-result v7

    .line 741
    const/16 v8, 0x2d

    .line 743
    if-eq v7, v8, :cond_22

    .line 745
    new-instance v7, Ljava/util/ArrayList;

    .line 747
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 750
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 753
    :try_start_b
    aget-object v8, v6, v5

    .line 755
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 758
    move-result v8
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_8

    .line 759
    goto :goto_11

    .line 760
    :catch_8
    const/4 v8, -0x1

    .line 761
    :goto_11
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 763
    new-instance v5, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;

    .line 765
    const/4 v11, 0x2

    .line 766
    invoke-direct {v5, v8, v6, v7, v11}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;-><init>(I[Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 769
    invoke-virtual {v10, v5}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    .line 772
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 775
    move-result v5

    .line 776
    if-lez v5, :cond_22

    .line 778
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    .line 780
    invoke-direct {v5, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 783
    invoke-virtual {v5, v13, v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 786
    const-wide v0, 0x10300000002L

    .line 791
    invoke-virtual {v5, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 794
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 797
    move-result v0

    .line 798
    const/4 v1, 0x1

    .line 799
    sub-int/2addr v0, v1

    .line 800
    const/4 v1, 0x0

    .line 801
    :goto_12
    if-ltz v0, :cond_21

    .line 803
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 806
    move-result-object v2

    .line 807
    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 809
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 811
    if-nez v1, :cond_1c

    .line 813
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    .line 815
    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 818
    :cond_1c
    iget-boolean v4, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 820
    if-nez v4, :cond_1f

    .line 822
    iget-boolean v4, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 824
    if-nez v4, :cond_1d

    .line 826
    goto :goto_14

    .line 827
    :cond_1d
    const/4 v4, 0x0

    .line 828
    invoke-static {v3, v9, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 831
    move-result-wide v10

    .line 832
    cmp-long v4, v10, v33

    .line 834
    if-nez v4, :cond_1e

    .line 836
    :goto_13
    const/4 v2, -0x1

    .line 837
    goto :goto_16

    .line 838
    :cond_1e
    long-to-int v4, v10

    .line 839
    iput v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 841
    const/4 v4, 0x0

    .line 842
    aget-wide v10, v9, v4

    .line 844
    long-to-int v4, v10

    .line 845
    iput v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 847
    const/4 v4, 0x2

    .line 848
    aget-wide v10, v9, v4

    .line 850
    long-to-int v4, v10

    .line 851
    iput v4, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 853
    goto :goto_15

    .line 854
    :cond_1f
    :goto_14
    invoke-static {v3, v1}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 857
    move-result v4

    .line 858
    if-nez v4, :cond_20

    .line 860
    goto :goto_13

    .line 861
    :cond_20
    :goto_15
    const-wide v10, 0x20b00000003L

    .line 866
    invoke-virtual {v5, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 869
    move-result-wide v10

    .line 870
    const-wide v12, 0x10500000001L

    .line 875
    invoke-virtual {v5, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 878
    iget-object v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 880
    const-wide v3, 0x10900000002L

    .line 885
    invoke-virtual {v5, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 888
    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 890
    iget-boolean v3, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    .line 892
    const-wide/16 v43, 0x0

    .line 894
    const-wide/16 v45, 0x0

    .line 896
    const-wide/16 v39, 0x0

    .line 898
    const-wide/16 v41, 0x0

    .line 900
    const-wide/16 v47, 0x0

    .line 902
    const-wide/16 v49, 0x0

    .line 904
    move-object/from16 v35, v5

    .line 906
    move-object/from16 v36, v1

    .line 908
    move/from16 v37, v2

    .line 910
    move/from16 v38, v3

    .line 912
    invoke-static/range {v35 .. v50}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 915
    invoke-virtual {v5, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 918
    goto :goto_13

    .line 919
    :goto_16
    add-int/2addr v0, v2

    .line 920
    goto :goto_12

    .line 921
    :cond_21
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 924
    goto/16 :goto_39

    .line 926
    :cond_22
    const-string v0, "ActivityManager"

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    .line 930
    const-string v2, "No process found for: "

    .line 932
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 935
    const/4 v2, 0x0

    .line 936
    aget-object v2, v6, v2

    .line 938
    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    goto/16 :goto_39

    .line 943
    :cond_23
    iget-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 945
    if-nez v5, :cond_25

    .line 947
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 950
    move-result v5

    .line 951
    const/4 v11, 0x1

    .line 952
    if-eq v5, v11, :cond_24

    .line 954
    iget-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    .line 956
    if-nez v5, :cond_24

    .line 958
    iget-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 960
    if-eqz v5, :cond_26

    .line 962
    :cond_24
    iput-boolean v11, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 964
    goto :goto_17

    .line 965
    :cond_25
    const/4 v11, 0x1

    .line 966
    :cond_26
    :goto_17
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 969
    move-result v5

    .line 970
    if-le v5, v11, :cond_27

    .line 972
    iget-boolean v11, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 974
    if-nez v11, :cond_27

    .line 976
    const/4 v11, 0x1

    .line 977
    goto :goto_18

    .line 978
    :cond_27
    const/4 v11, 0x0

    .line 979
    :goto_18
    if-eqz v11, :cond_28

    .line 981
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 984
    :cond_28
    new-instance v12, Landroid/util/proto/ProtoOutputStream;

    .line 986
    invoke-direct {v12, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 989
    invoke-virtual {v12, v13, v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 992
    const-wide v0, 0x10300000002L

    .line 997
    invoke-virtual {v12, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    .line 1002
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    new-instance v2, Landroid/util/SparseArray;

    .line 1007
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1010
    const/16 v0, 0x13

    .line 1012
    new-array v3, v0, [J

    .line 1014
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 1016
    const/16 v4, 0xf

    .line 1018
    if-eqz v0, :cond_29

    .line 1020
    new-array v13, v4, [J

    .line 1022
    goto :goto_19

    .line 1023
    :cond_29
    sget-object v13, Llibcore/util/EmptyArray;->LONG:[J

    .line 1025
    :goto_19
    if-eqz v0, :cond_2a

    .line 1027
    new-array v14, v4, [J

    .line 1029
    goto :goto_1a

    .line 1030
    :cond_2a
    sget-object v14, Llibcore/util/EmptyArray;->LONG:[J

    .line 1032
    :goto_1a
    if-eqz v0, :cond_2b

    .line 1034
    new-array v0, v4, [J

    .line 1036
    :goto_1b
    move-object v4, v0

    .line 1037
    move/from16 p4, v11

    .line 1039
    const/16 v8, 0x11

    .line 1041
    goto :goto_1c

    .line 1042
    :cond_2b
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    .line 1044
    goto :goto_1b

    .line 1045
    :goto_1c
    new-array v11, v8, [J

    .line 1047
    move-object/from16 p1, v11

    .line 1049
    new-array v11, v8, [J

    .line 1051
    move-object/from16 v51, v11

    .line 1053
    new-array v11, v8, [J

    .line 1055
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    .line 1057
    array-length v8, v0

    .line 1058
    move-object/from16 v52, v11

    .line 1060
    new-array v11, v8, [J

    .line 1062
    move-object/from16 v53, v11

    .line 1064
    array-length v11, v0

    .line 1065
    new-array v11, v11, [J

    .line 1067
    move-object/from16 v54, v11

    .line 1069
    array-length v11, v0

    .line 1070
    new-array v11, v11, [J

    .line 1072
    array-length v0, v0

    .line 1073
    move-object/from16 v55, v11

    .line 1075
    new-array v11, v0, [Ljava/util/ArrayList;

    .line 1077
    const/16 v20, 0x1

    .line 1079
    add-int/lit8 v5, v5, -0x1

    .line 1081
    move-wide/from16 v56, v33

    .line 1083
    const/4 v0, 0x0

    .line 1084
    :goto_1d
    const/16 v58, 0x6

    .line 1086
    const/16 v59, 0x5

    .line 1088
    const/16 v60, 0xe

    .line 1090
    const/16 v61, 0x8

    .line 1092
    const/16 v62, 0xd

    .line 1094
    const/16 v63, 0x9

    .line 1096
    const/16 v64, 0x4

    .line 1098
    move-object/from16 v65, v11

    .line 1100
    if-ltz v5, :cond_41

    .line 1102
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1105
    move-result-object v20

    .line 1106
    move-object/from16 v11, v20

    .line 1108
    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 1110
    move-object/from16 v20, v7

    .line 1112
    iget-object v7, v10, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 1114
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1117
    monitor-enter v7

    .line 1118
    move/from16 v21, v5

    .line 1120
    :try_start_c
    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 1122
    move/from16 v66, v8

    .line 1124
    iget v8, v11, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1126
    move-object/from16 v67, v4

    .line 1128
    iget-object v4, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1130
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    .line 1133
    move-result v4

    .line 1134
    move-object/from16 v68, v14

    .line 1136
    iget-object v14, v11, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1138
    iget-boolean v14, v14, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 1140
    move-object/from16 v69, v13

    .line 1142
    iget v13, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1144
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1145
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1148
    if-nez v5, :cond_2c

    .line 1150
    move-object/from16 v30, v2

    .line 1152
    move-object/from16 v71, v3

    .line 1154
    move-object/from16 v22, v6

    .line 1156
    move-object/from16 v50, v9

    .line 1158
    move-object/from16 v36, v10

    .line 1160
    move-object/from16 v35, v12

    .line 1162
    move/from16 v11, v66

    .line 1164
    move-object/from16 v6, v69

    .line 1166
    move-object v3, v1

    .line 1167
    :goto_1e
    const/4 v1, -0x1

    .line 1168
    goto/16 :goto_2f

    .line 1170
    :cond_2c
    if-nez v0, :cond_2d

    .line 1172
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    .line 1174
    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 1177
    :cond_2d
    move-object v7, v0

    .line 1178
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 1180
    if-nez v0, :cond_2e

    .line 1182
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 1184
    if-nez v0, :cond_2f

    .line 1186
    :cond_2e
    move-object/from16 v70, v1

    .line 1188
    move-object/from16 v30, v2

    .line 1190
    move-object/from16 v71, v3

    .line 1192
    goto :goto_20

    .line 1193
    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 1196
    move-result-wide v22

    .line 1197
    move-object/from16 v70, v1

    .line 1199
    move-object/from16 v30, v2

    .line 1201
    const/4 v2, 0x0

    .line 1202
    invoke-static {v8, v9, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 1205
    move-result-wide v0

    .line 1206
    cmp-long v19, v0, v33

    .line 1208
    if-nez v19, :cond_31

    .line 1210
    move-object/from16 v71, v3

    .line 1212
    :goto_1f
    move-object/from16 v22, v6

    .line 1214
    move-object/from16 v50, v9

    .line 1216
    :cond_30
    move-object/from16 v36, v10

    .line 1218
    move-object/from16 v35, v12

    .line 1220
    move-wide/from16 v9, v56

    .line 1222
    move/from16 v11, v66

    .line 1224
    move-object/from16 v6, v69

    .line 1226
    move-object/from16 v3, v70

    .line 1228
    goto/16 :goto_2e

    .line 1230
    :cond_31
    long-to-int v0, v0

    .line 1231
    iput v0, v7, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 1233
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 1236
    move-result-wide v0

    .line 1237
    move-object/from16 v71, v3

    .line 1239
    const/16 v19, 0x0

    .line 1241
    aget-wide v2, v9, v19

    .line 1243
    long-to-int v2, v2

    .line 1244
    iput v2, v7, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 1246
    move-wide/from16 v24, v0

    .line 1248
    const/4 v2, 0x2

    .line 1249
    aget-wide v0, v9, v2

    .line 1251
    long-to-int v0, v0

    .line 1252
    iput v0, v7, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 1254
    move-wide/from16 v72, v22

    .line 1256
    move-wide/from16 v1, v24

    .line 1258
    const/4 v3, 0x3

    .line 1259
    goto :goto_21

    .line 1260
    :goto_20
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 1263
    move-result-wide v22

    .line 1264
    invoke-static {v8, v7}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 1267
    move-result v0

    .line 1268
    if-nez v0, :cond_32

    .line 1270
    goto :goto_1f

    .line 1271
    :cond_32
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 1274
    move-result-wide v0

    .line 1275
    move-wide v1, v0

    .line 1276
    move-wide/from16 v72, v22

    .line 1278
    move/from16 v3, v64

    .line 1280
    :goto_21
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 1282
    if-eqz v0, :cond_36

    .line 1284
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->localOnly:Z

    .line 1286
    move-wide/from16 v74, v1

    .line 1288
    const-wide v1, 0x20b00000004L

    .line 1293
    if-eqz v0, :cond_33

    .line 1295
    invoke-virtual {v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1298
    move-result-wide v0

    .line 1299
    move/from16 v19, v14

    .line 1301
    const-wide v13, 0x10b00000001L

    .line 1306
    invoke-virtual {v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1309
    move-result-wide v13

    .line 1310
    move/from16 v76, v3

    .line 1312
    const-wide v2, 0x10500000001L

    .line 1317
    invoke-virtual {v12, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1320
    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1322
    const-wide v2, 0x10900000002L

    .line 1327
    invoke-virtual {v12, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1330
    iget-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 1332
    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    .line 1334
    const-wide/16 v43, 0x0

    .line 1336
    const-wide/16 v45, 0x0

    .line 1338
    const-wide/16 v39, 0x0

    .line 1340
    const-wide/16 v41, 0x0

    .line 1342
    const-wide/16 v47, 0x0

    .line 1344
    const-wide/16 v49, 0x0

    .line 1346
    move-object/from16 v35, v12

    .line 1348
    move-object/from16 v36, v7

    .line 1350
    move/from16 v37, v5

    .line 1352
    move/from16 v38, v2

    .line 1354
    invoke-static/range {v35 .. v50}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 1357
    invoke-virtual {v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1360
    invoke-virtual {v12, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1363
    move/from16 v49, v8

    .line 1365
    move-object/from16 v50, v9

    .line 1367
    goto/16 :goto_27

    .line 1369
    :cond_33
    move-wide v0, v1

    .line 1370
    move/from16 v76, v3

    .line 1372
    move/from16 v19, v14

    .line 1374
    :try_start_d
    new-instance v2, Lcom/android/internal/os/ByteTransferPipe;

    .line 1376
    invoke-direct {v2}, Lcom/android/internal/os/ByteTransferPipe;-><init>()V

    .line 1379
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1381
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1383
    iget-boolean v14, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b

    .line 1385
    if-eqz v14, :cond_34

    .line 1387
    const/4 v1, 0x1

    .line 1388
    :try_start_e
    invoke-virtual {v3, v13, v1}, Lcom/android/server/am/FreecessController;->setIsDoingGC(IZ)V

    .line 1391
    const-string v0, "DumpMemInfo"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1393
    move/from16 v49, v8

    .line 1395
    move-object v1, v9

    .line 1396
    const-wide/16 v8, 0xbb8

    .line 1398
    :try_start_f
    invoke-virtual {v3, v13, v0, v8, v9}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    .line 1401
    goto :goto_23

    .line 1402
    :catchall_3
    move-exception v0

    .line 1403
    :goto_22
    move-object/from16 v50, v1

    .line 1405
    goto :goto_24

    .line 1406
    :catchall_4
    move-exception v0

    .line 1407
    move/from16 v49, v8

    .line 1409
    move-object v1, v9

    .line 1410
    goto :goto_22

    .line 1411
    :cond_34
    move/from16 v49, v8

    .line 1413
    move-object v1, v9

    .line 1414
    :goto_23
    invoke-virtual {v2}, Lcom/android/internal/os/ByteTransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 1417
    move-result-object v23

    .line 1418
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpFullDetails:Z

    .line 1420
    iget-boolean v8, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 1422
    iget-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1424
    move-object/from16 v50, v1

    .line 1426
    :try_start_10
    iget-boolean v1, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpUnreachable:Z

    .line 1428
    move-object/from16 v22, v5

    .line 1430
    move-object/from16 v24, v7

    .line 1432
    move/from16 v25, v0

    .line 1434
    move/from16 v26, v8

    .line 1436
    move/from16 v27, v9

    .line 1438
    move/from16 v28, v1

    .line 1440
    move-object/from16 v29, v6

    .line 1442
    invoke-interface/range {v22 .. v29}, Landroid/app/IApplicationThread;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v2}, Lcom/android/internal/os/ByteTransferPipe;->get()[B

    .line 1448
    move-result-object v0

    .line 1449
    const-wide v8, 0x20b00000004L

    .line 1454
    invoke-virtual {v12, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 1457
    :try_start_11
    invoke-virtual {v2}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    .line 1460
    if-eqz v14, :cond_37

    .line 1462
    const/4 v1, 0x0

    .line 1463
    invoke-virtual {v3, v13, v1}, Lcom/android/server/am/FreecessController;->setIsDoingGC(IZ)V

    .line 1466
    goto :goto_27

    .line 1467
    :catch_9
    move-exception v0

    .line 1468
    goto :goto_25

    .line 1469
    :catch_a
    move-exception v0

    .line 1470
    goto :goto_26

    .line 1471
    :catchall_5
    move-exception v0

    .line 1472
    :goto_24
    invoke-virtual {v2}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    .line 1475
    if-eqz v14, :cond_35

    .line 1477
    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1479
    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1481
    const/4 v2, 0x0

    .line 1482
    invoke-virtual {v1, v13, v2}, Lcom/android/server/am/FreecessController;->setIsDoingGC(IZ)V

    .line 1485
    :cond_35
    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_9

    .line 1486
    :catch_b
    move-exception v0

    .line 1487
    move/from16 v49, v8

    .line 1489
    move-object/from16 v50, v9

    .line 1491
    goto :goto_25

    .line 1492
    :catch_c
    move-exception v0

    .line 1493
    move/from16 v49, v8

    .line 1495
    move-object/from16 v50, v9

    .line 1497
    goto :goto_26

    .line 1498
    :goto_25
    const-string v1, "ActivityManager"

    .line 1500
    const-string v2, "Got RemoteException!"

    .line 1502
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1505
    goto :goto_27

    .line 1506
    :goto_26
    const-string v1, "ActivityManager"

    .line 1508
    const-string v2, "Got IOException!"

    .line 1510
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1513
    goto :goto_27

    .line 1514
    :cond_36
    move-wide/from16 v74, v1

    .line 1516
    move/from16 v76, v3

    .line 1518
    move/from16 v49, v8

    .line 1520
    move-object/from16 v50, v9

    .line 1522
    move/from16 v19, v14

    .line 1524
    :cond_37
    :goto_27
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 1527
    move-result v0

    .line 1528
    int-to-long v0, v0

    .line 1529
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    .line 1532
    move-result v2

    .line 1533
    int-to-long v2, v2

    .line 1534
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    .line 1537
    move-result v5

    .line 1538
    int-to-long v8, v5

    .line 1539
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    .line 1542
    move-result v5

    .line 1543
    int-to-long v13, v5

    .line 1544
    iget-object v5, v10, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 1546
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1549
    monitor-enter v5

    .line 1550
    move-object/from16 v22, v6

    .line 1552
    :try_start_12
    iget-object v6, v11, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 1554
    if-eqz v6, :cond_38

    .line 1556
    iget-object v6, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1558
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    .line 1561
    move-result v6

    .line 1562
    if-ne v4, v6, :cond_38

    .line 1564
    iget-object v6, v11, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1566
    const/16 v42, 0x1

    .line 1568
    sub-long v44, v74, v72

    .line 1570
    move-object/from16 v35, v6

    .line 1572
    move-wide/from16 v36, v0

    .line 1574
    move-wide/from16 v38, v2

    .line 1576
    move-wide/from16 v40, v8

    .line 1578
    move/from16 v43, v76

    .line 1580
    invoke-virtual/range {v35 .. v45}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 1583
    goto :goto_28

    .line 1584
    :catchall_6
    move-exception v0

    .line 1585
    goto/16 :goto_30

    .line 1587
    :cond_38
    :goto_28
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 1588
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1591
    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    .line 1593
    if-nez v2, :cond_30

    .line 1595
    const/16 v2, 0xc

    .line 1597
    aget-wide v5, v71, v2

    .line 1599
    add-long/2addr v5, v0

    .line 1600
    aput-wide v5, v71, v2

    .line 1602
    aget-wide v2, v71, v62

    .line 1604
    add-long/2addr v2, v13

    .line 1605
    aput-wide v2, v71, v62

    .line 1607
    aget-wide v2, v71, v60

    .line 1609
    add-long/2addr v2, v8

    .line 1610
    aput-wide v2, v71, v60

    .line 1612
    new-instance v2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 1614
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1616
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1619
    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1621
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    const-string v5, " (pid "

    .line 1626
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    move/from16 v5, v49

    .line 1631
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1634
    if-eqz v19, :cond_39

    .line 1636
    const-string v6, " / activities)"

    .line 1638
    goto :goto_29

    .line 1639
    :cond_39
    const-string v6, ")"

    .line 1641
    :goto_29
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1647
    move-result-object v36

    .line 1648
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1650
    const-wide/16 v44, 0x0

    .line 1652
    iget v6, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1654
    move-object/from16 v35, v2

    .line 1656
    move-object/from16 v37, v3

    .line 1658
    move-wide/from16 v38, v0

    .line 1660
    move-wide/from16 v40, v13

    .line 1662
    move-wide/from16 v42, v8

    .line 1664
    move/from16 v46, v5

    .line 1666
    move/from16 v47, v6

    .line 1668
    move/from16 v48, v19

    .line 1670
    invoke-direct/range {v35 .. v48}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V

    .line 1673
    move-object/from16 v3, v70

    .line 1675
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    move-object/from16 v6, v30

    .line 1680
    invoke-virtual {v6, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1683
    const/4 v5, 0x0

    .line 1684
    aget-wide v23, v71, v5

    .line 1686
    iget v11, v7, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 1688
    move-object/from16 v35, v12

    .line 1690
    int-to-long v11, v11

    .line 1691
    add-long v23, v23, v11

    .line 1693
    aput-wide v23, v71, v5

    .line 1695
    const/4 v5, 0x1

    .line 1696
    aget-wide v11, v71, v5

    .line 1698
    iget v5, v7, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 1700
    int-to-long v5, v5

    .line 1701
    add-long/2addr v11, v5

    .line 1702
    const/4 v5, 0x1

    .line 1703
    aput-wide v11, v71, v5

    .line 1705
    const/4 v5, 0x2

    .line 1706
    aget-wide v11, v71, v5

    .line 1708
    iget v6, v7, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 1710
    move-wide/from16 v23, v8

    .line 1712
    int-to-long v8, v6

    .line 1713
    add-long/2addr v11, v8

    .line 1714
    aput-wide v11, v71, v5

    .line 1716
    aget-wide v5, v71, v64

    .line 1718
    iget v8, v7, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 1720
    int-to-long v8, v8

    .line 1721
    add-long/2addr v5, v8

    .line 1722
    aput-wide v5, v71, v64

    .line 1724
    aget-wide v5, v71, v59

    .line 1726
    iget v8, v7, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    .line 1728
    int-to-long v8, v8

    .line 1729
    add-long/2addr v5, v8

    .line 1730
    aput-wide v5, v71, v59

    .line 1732
    aget-wide v5, v71, v58

    .line 1734
    iget v8, v7, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 1736
    int-to-long v8, v8

    .line 1737
    add-long/2addr v5, v8

    .line 1738
    aput-wide v5, v71, v58

    .line 1740
    move-object/from16 v6, v69

    .line 1742
    const/4 v5, 0x0

    .line 1743
    :goto_2a
    array-length v8, v6

    .line 1744
    if-ge v5, v8, :cond_3a

    .line 1746
    aget-wide v8, v6, v5

    .line 1748
    const/16 v11, 0x11

    .line 1750
    add-int/lit8 v12, v5, 0x11

    .line 1752
    invoke-virtual {v7, v12}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 1755
    move-result v11

    .line 1756
    move-object/from16 v36, v10

    .line 1758
    int-to-long v10, v11

    .line 1759
    add-long/2addr v8, v10

    .line 1760
    aput-wide v8, v6, v5

    .line 1762
    aget-wide v8, v68, v5

    .line 1764
    invoke-virtual {v7, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    .line 1767
    move-result v10

    .line 1768
    int-to-long v10, v10

    .line 1769
    add-long/2addr v8, v10

    .line 1770
    aput-wide v8, v68, v5

    .line 1772
    aget-wide v8, v67, v5

    .line 1774
    invoke-virtual {v7, v12}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    .line 1777
    move-result v10

    .line 1778
    int-to-long v10, v10

    .line 1779
    add-long/2addr v8, v10

    .line 1780
    aput-wide v8, v67, v5

    .line 1782
    const/4 v8, 0x1

    .line 1783
    add-int/2addr v5, v8

    .line 1784
    move-object/from16 v10, v36

    .line 1786
    goto :goto_2a

    .line 1787
    :cond_3a
    move-object/from16 v36, v10

    .line 1789
    aget-wide v8, v71, v61

    .line 1791
    iget v5, v7, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 1793
    int-to-long v10, v5

    .line 1794
    add-long/2addr v8, v10

    .line 1795
    aput-wide v8, v71, v61

    .line 1797
    const/16 v5, 0xa

    .line 1799
    aget-wide v8, v71, v5

    .line 1801
    iget v10, v7, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 1803
    int-to-long v10, v10

    .line 1804
    add-long/2addr v8, v10

    .line 1805
    aput-wide v8, v71, v5

    .line 1807
    aget-wide v8, v71, v63

    .line 1809
    iget v5, v7, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 1811
    int-to-long v10, v5

    .line 1812
    add-long/2addr v8, v10

    .line 1813
    aput-wide v8, v71, v63

    .line 1815
    const/4 v5, 0x0

    .line 1816
    :goto_2b
    const/16 v8, 0x11

    .line 1818
    if-ge v5, v8, :cond_3b

    .line 1820
    invoke-virtual {v7, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 1823
    move-result v8

    .line 1824
    int-to-long v8, v8

    .line 1825
    aget-wide v10, p1, v5

    .line 1827
    add-long/2addr v10, v8

    .line 1828
    aput-wide v10, p1, v5

    .line 1830
    aget-wide v10, v71, v61

    .line 1832
    sub-long/2addr v10, v8

    .line 1833
    aput-wide v10, v71, v61

    .line 1835
    invoke-virtual {v7, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    .line 1838
    move-result v8

    .line 1839
    int-to-long v8, v8

    .line 1840
    aget-wide v10, v51, v5

    .line 1842
    add-long/2addr v10, v8

    .line 1843
    aput-wide v10, v51, v5

    .line 1845
    aget-wide v10, v71, v63

    .line 1847
    sub-long/2addr v10, v8

    .line 1848
    aput-wide v10, v71, v63

    .line 1850
    invoke-virtual {v7, v5}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    .line 1853
    move-result v8

    .line 1854
    int-to-long v8, v8

    .line 1855
    aget-wide v10, v52, v5

    .line 1857
    add-long/2addr v10, v8

    .line 1858
    aput-wide v10, v52, v5

    .line 1860
    const/16 v10, 0xa

    .line 1862
    aget-wide v11, v71, v10

    .line 1864
    sub-long/2addr v11, v8

    .line 1865
    aput-wide v11, v71, v10

    .line 1867
    const/4 v8, 0x1

    .line 1868
    add-int/2addr v5, v8

    .line 1869
    goto :goto_2b

    .line 1870
    :cond_3b
    const/4 v8, 0x1

    .line 1871
    const/16 v5, 0x384

    .line 1873
    move-wide/from16 v9, v56

    .line 1875
    if-lt v4, v5, :cond_3c

    .line 1877
    add-long v56, v9, v0

    .line 1879
    :cond_3c
    move/from16 v11, v66

    .line 1881
    const/4 v5, 0x0

    .line 1882
    :goto_2c
    if-ge v5, v11, :cond_40

    .line 1884
    add-int/lit8 v9, v11, -0x1

    .line 1886
    if-eq v5, v9, :cond_3e

    .line 1888
    sget-object v9, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    .line 1890
    aget v10, v9, v5

    .line 1892
    if-lt v4, v10, :cond_3d

    .line 1894
    add-int/lit8 v10, v5, 0x1

    .line 1896
    aget v9, v9, v10

    .line 1898
    if-ge v4, v9, :cond_3d

    .line 1900
    goto :goto_2d

    .line 1901
    :cond_3d
    add-int/2addr v5, v8

    .line 1902
    goto :goto_2c

    .line 1903
    :cond_3e
    :goto_2d
    aget-wide v8, v53, v5

    .line 1905
    add-long/2addr v8, v0

    .line 1906
    aput-wide v8, v53, v5

    .line 1908
    aget-wide v0, v54, v5

    .line 1910
    add-long/2addr v0, v13

    .line 1911
    aput-wide v0, v54, v5

    .line 1913
    aget-object v0, v65, v5

    .line 1915
    if-nez v0, :cond_3f

    .line 1917
    new-instance v0, Ljava/util/ArrayList;

    .line 1919
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1922
    aput-object v0, v65, v5

    .line 1924
    :cond_3f
    aget-object v0, v65, v5

    .line 1926
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    aget-wide v0, v55, v5

    .line 1931
    add-long v0, v0, v23

    .line 1933
    aput-wide v0, v55, v5

    .line 1935
    :cond_40
    move-object v0, v7

    .line 1936
    goto/16 :goto_1e

    .line 1938
    :goto_2e
    move-object v0, v7

    .line 1939
    move-wide/from16 v56, v9

    .line 1941
    goto/16 :goto_1e

    .line 1943
    :goto_2f
    add-int/lit8 v5, v21, -0x1

    .line 1945
    move-object v1, v3

    .line 1946
    move-object v13, v6

    .line 1947
    move v8, v11

    .line 1948
    move-object/from16 v7, v20

    .line 1950
    move-object/from16 v6, v22

    .line 1952
    move-object/from16 v2, v30

    .line 1954
    move-object/from16 v12, v35

    .line 1956
    move-object/from16 v10, v36

    .line 1958
    move-object/from16 v9, v50

    .line 1960
    move-object/from16 v11, v65

    .line 1962
    move-object/from16 v4, v67

    .line 1964
    move-object/from16 v14, v68

    .line 1966
    move-object/from16 v3, v71

    .line 1968
    goto/16 :goto_1d

    .line 1970
    :goto_30
    :try_start_13
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 1971
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1974
    throw v0

    .line 1975
    :catchall_7
    move-exception v0

    .line 1976
    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1977
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1980
    throw v0

    .line 1981
    :cond_41
    move-object/from16 v30, v2

    .line 1983
    move-object/from16 v71, v3

    .line 1985
    move-object/from16 v67, v4

    .line 1987
    move v11, v8

    .line 1988
    move-object/from16 v50, v9

    .line 1990
    move-object/from16 v36, v10

    .line 1992
    move-object/from16 v35, v12

    .line 1994
    move-object v6, v13

    .line 1995
    move-object/from16 v68, v14

    .line 1997
    move-wide/from16 v9, v56

    .line 1999
    move-object v3, v1

    .line 2000
    if-eqz p4, :cond_51

    .line 2002
    const/4 v1, 0x1

    .line 2003
    new-array v0, v1, [Landroid/os/Debug$MemoryInfo;

    .line 2005
    move-object/from16 v17, v0

    .line 2007
    move-object/from16 v1, v36

    .line 2009
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 2011
    new-instance v2, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;

    .line 2013
    move-object v4, v15

    .line 2014
    move-object v15, v2

    .line 2015
    move-object/from16 v16, v30

    .line 2017
    move-object/from16 v18, v4

    .line 2019
    move-object/from16 v19, v50

    .line 2021
    move-object/from16 v20, v71

    .line 2023
    move-object/from16 v21, v3

    .line 2025
    move-object/from16 v22, v6

    .line 2027
    move-object/from16 v23, v68

    .line 2029
    move-object/from16 v24, v67

    .line 2031
    move-object/from16 v25, p1

    .line 2033
    move-object/from16 v26, v51

    .line 2035
    move-object/from16 v27, v52

    .line 2037
    move-object/from16 v28, v53

    .line 2039
    move-object/from16 v29, v54

    .line 2041
    move-object/from16 v30, v65

    .line 2043
    move-object/from16 v31, v55

    .line 2045
    invoke-direct/range {v15 .. v31}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;-><init>(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J)V

    .line 2048
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    .line 2051
    new-instance v0, Ljava/util/ArrayList;

    .line 2053
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2056
    new-instance v2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2058
    const-string v13, "Native"

    .line 2060
    const-string v14, "Native"

    .line 2062
    const/4 v5, 0x0

    .line 2063
    aget-wide v15, v71, v5

    .line 2065
    const/4 v5, 0x1

    .line 2066
    aget-wide v17, v71, v5

    .line 2068
    const/4 v5, 0x2

    .line 2069
    aget-wide v19, v71, v5

    .line 2071
    const-wide/16 v21, 0x0

    .line 2073
    const/16 v23, -0x1

    .line 2075
    move-object v12, v2

    .line 2076
    invoke-direct/range {v12 .. v23}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2079
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2082
    new-instance v2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2084
    const-string v37, "Dalvik"

    .line 2086
    const-string v38, "Dalvik"

    .line 2088
    aget-wide v39, v71, v64

    .line 2090
    aget-wide v41, v71, v59

    .line 2092
    aget-wide v43, v71, v58

    .line 2094
    const-wide/16 v45, 0x0

    .line 2096
    const/16 v47, -0x2

    .line 2098
    move-object/from16 v36, v2

    .line 2100
    invoke-direct/range {v36 .. v47}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2106
    new-instance v2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2108
    const-string v13, "Unknown"

    .line 2110
    const-string v14, "Unknown"

    .line 2112
    aget-wide v15, v71, v61

    .line 2114
    aget-wide v17, v71, v63

    .line 2116
    const/16 v5, 0xa

    .line 2118
    aget-wide v19, v71, v5

    .line 2120
    const/16 v23, -0x3

    .line 2122
    move-object v12, v2

    .line 2123
    invoke-direct/range {v12 .. v23}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    const/4 v2, 0x0

    .line 2130
    :goto_31
    const/16 v5, 0x11

    .line 2132
    if-ge v2, v5, :cond_42

    .line 2134
    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    .line 2137
    move-result-object v38

    .line 2138
    new-instance v5, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2140
    aget-wide v39, p1, v2

    .line 2142
    aget-wide v41, v51, v2

    .line 2144
    aget-wide v43, v52, v2

    .line 2146
    const-wide/16 v45, 0x0

    .line 2148
    move-object/from16 v36, v5

    .line 2150
    move-object/from16 v37, v38

    .line 2152
    move/from16 v47, v2

    .line 2154
    invoke-direct/range {v36 .. v47}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2157
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2160
    const/4 v5, 0x1

    .line 2161
    add-int/2addr v2, v5

    .line 2162
    goto :goto_31

    .line 2163
    :cond_42
    array-length v2, v6

    .line 2164
    if-lez v2, :cond_47

    .line 2166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2169
    move-result-object v2

    .line 2170
    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2173
    move-result v5

    .line 2174
    if-eqz v5, :cond_47

    .line 2176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2179
    move-result-object v5

    .line 2180
    check-cast v5, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2182
    iget v7, v5, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 2184
    const/4 v8, -0x2

    .line 2185
    if-ne v7, v8, :cond_44

    .line 2187
    const/4 v7, 0x0

    .line 2188
    const/16 v8, 0xa

    .line 2190
    const/4 v12, 0x3

    .line 2191
    goto :goto_32

    .line 2192
    :cond_44
    if-nez v7, :cond_45

    .line 2194
    move/from16 v12, v63

    .line 2196
    move/from16 v7, v64

    .line 2198
    const/16 v8, 0xa

    .line 2200
    goto :goto_32

    .line 2201
    :cond_45
    const/16 v8, 0xa

    .line 2203
    if-ne v7, v8, :cond_46

    .line 2205
    move v7, v8

    .line 2206
    const/16 v12, 0xc

    .line 2208
    goto :goto_32

    .line 2209
    :cond_46
    const/16 v12, 0xc

    .line 2211
    if-ne v7, v12, :cond_43

    .line 2213
    move/from16 v12, v60

    .line 2215
    move/from16 v7, v62

    .line 2217
    :goto_32
    new-instance v13, Ljava/util/ArrayList;

    .line 2219
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2222
    iput-object v13, v5, Lcom/android/server/am/ActivityManagerService$MemItem;->subitems:Ljava/util/ArrayList;

    .line 2224
    :goto_33
    if-gt v7, v12, :cond_43

    .line 2226
    const/16 v13, 0x11

    .line 2228
    add-int/lit8 v14, v7, 0x11

    .line 2230
    invoke-static {v14}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    .line 2233
    move-result-object v16

    .line 2234
    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService$MemItem;->subitems:Ljava/util/ArrayList;

    .line 2236
    new-instance v14, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2238
    aget-wide v17, v6, v7

    .line 2240
    aget-wide v19, v68, v7

    .line 2242
    aget-wide v21, v67, v7

    .line 2244
    const-wide/16 v23, 0x0

    .line 2246
    move-object/from16 p1, v14

    .line 2248
    move-object v8, v15

    .line 2249
    move-object/from16 v15, v16

    .line 2251
    move/from16 v25, v7

    .line 2253
    invoke-direct/range {v14 .. v25}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2256
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2259
    const/4 v8, 0x1

    .line 2260
    add-int/2addr v7, v8

    .line 2261
    const/16 v8, 0xa

    .line 2263
    goto :goto_33

    .line 2264
    :cond_47
    new-instance v2, Ljava/util/ArrayList;

    .line 2266
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2269
    const/4 v5, 0x0

    .line 2270
    :goto_34
    if-ge v5, v11, :cond_4a

    .line 2272
    aget-wide v15, v53, v5

    .line 2274
    cmp-long v6, v15, v33

    .line 2276
    if-eqz v6, :cond_49

    .line 2278
    iget-boolean v6, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCompact:Z

    .line 2280
    if-eqz v6, :cond_48

    .line 2282
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 2284
    aget-object v6, v6, v5

    .line 2286
    :goto_35
    move-object v14, v6

    .line 2287
    goto :goto_36

    .line 2288
    :cond_48
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    .line 2290
    aget-object v6, v6, v5

    .line 2292
    goto :goto_35

    .line 2293
    :goto_36
    new-instance v6, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2295
    aget-wide v17, v54, v5

    .line 2297
    aget-wide v19, v55, v5

    .line 2299
    sget-object v7, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    .line 2301
    aget v23, v7, v5

    .line 2303
    const-wide/16 v21, 0x0

    .line 2305
    move-object v12, v6

    .line 2306
    move-object v13, v14

    .line 2307
    invoke-direct/range {v12 .. v23}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2310
    aget-object v7, v65, v5

    .line 2312
    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService$MemItem;->subitems:Ljava/util/ArrayList;

    .line 2314
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2317
    :cond_49
    const/4 v6, 0x1

    .line 2318
    add-int/2addr v5, v6

    .line 2319
    goto :goto_34

    .line 2320
    :cond_4a
    iget-boolean v5, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 2322
    if-nez v5, :cond_4b

    .line 2324
    const-string/jumbo v25, "proc"

    .line 2327
    const-wide v23, 0x20b0000001dL

    .line 2332
    const/16 v27, 0x1

    .line 2334
    const/16 v28, 0x0

    .line 2336
    const/16 v29, 0x0

    .line 2338
    move-object/from16 v22, v35

    .line 2340
    move-object/from16 v26, v3

    .line 2342
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2345
    :cond_4b
    const-string/jumbo v25, "oom"

    .line 2348
    const-wide v23, 0x20b0000001eL

    .line 2353
    const/16 v27, 0x0

    .line 2355
    const/16 v28, 0x0

    .line 2357
    const/16 v29, 0x0

    .line 2359
    move-object/from16 v22, v35

    .line 2361
    move-object/from16 v26, v2

    .line 2363
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2366
    iget-boolean v5, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 2368
    if-nez v5, :cond_4c

    .line 2370
    const-string/jumbo v25, "cat"

    .line 2373
    const-wide v23, 0x20b0000001fL

    .line 2378
    const/16 v27, 0x1

    .line 2380
    const/16 v28, 0x0

    .line 2382
    const/16 v29, 0x0

    .line 2384
    move-object/from16 v22, v35

    .line 2386
    move-object/from16 v26, v0

    .line 2388
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2391
    :cond_4c
    iget-boolean v5, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 2393
    if-nez v5, :cond_4d

    .line 2395
    const-string/jumbo v25, "proc"

    .line 2398
    iget-boolean v5, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 2400
    const-wide v23, 0x20b00000005L

    .line 2405
    const/16 v27, 0x1

    .line 2407
    const/16 v28, 0x1

    .line 2409
    move-object/from16 v22, v35

    .line 2411
    move-object/from16 v26, v3

    .line 2413
    move/from16 v29, v5

    .line 2415
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2418
    :cond_4d
    const-string/jumbo v25, "oom"

    .line 2421
    iget-boolean v3, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 2423
    const-wide v23, 0x20b00000006L

    .line 2428
    const/16 v27, 0x0

    .line 2430
    const/16 v28, 0x1

    .line 2432
    move-object/from16 v22, v35

    .line 2434
    move-object/from16 v26, v2

    .line 2436
    move/from16 v29, v3

    .line 2438
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2441
    iget-boolean v2, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 2443
    if-nez v2, :cond_4e

    .line 2445
    const-string/jumbo v25, "cat"

    .line 2448
    iget-boolean v2, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 2450
    const-wide v23, 0x20b00000007L

    .line 2455
    const/16 v27, 0x1

    .line 2457
    const/16 v28, 0x1

    .line 2459
    move-object/from16 v22, v35

    .line 2461
    move-object/from16 v26, v0

    .line 2463
    move/from16 v29, v2

    .line 2465
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2468
    :cond_4e
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 2470
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 2473
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2476
    const/16 v2, 0x10

    .line 2478
    aget-wide v3, v71, v2

    .line 2480
    cmp-long v3, v3, v33

    .line 2482
    const-wide/16 v4, 0x400

    .line 2484
    if-lez v3, :cond_4f

    .line 2486
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2488
    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 2490
    monitor-enter v3

    .line 2491
    :try_start_15
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 2494
    move-result-wide v12

    .line 2495
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 2498
    move-result-wide v14

    .line 2499
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 2502
    move-result-wide v16

    .line 2503
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 2506
    move-result-wide v18

    .line 2507
    mul-long v20, v12, v4

    .line 2509
    mul-long v22, v14, v4

    .line 2511
    mul-long v24, v16, v4

    .line 2513
    mul-long v26, v18, v4

    .line 2515
    aget-wide v6, v71, v2

    .line 2517
    mul-long v28, v6, v4

    .line 2519
    invoke-static/range {v20 .. v29}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2522
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2524
    aget-wide v20, v71, v2

    .line 2526
    iget-object v11, v6, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2528
    invoke-virtual/range {v11 .. v21}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 2531
    monitor-exit v3

    .line 2532
    goto :goto_37

    .line 2533
    :catchall_8
    move-exception v0

    .line 2534
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 2535
    throw v0

    .line 2536
    :cond_4f
    :goto_37
    const-wide v2, 0x10300000008L

    .line 2541
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    .line 2544
    move-result-wide v6

    .line 2545
    move-object/from16 v8, v35

    .line 2547
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2550
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 2552
    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    .line 2555
    move-result v2

    .line 2556
    const-wide v6, 0x10e00000009L

    .line 2561
    invoke-virtual {v8, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2564
    const-wide v2, 0x1030000000aL

    .line 2569
    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2572
    const-wide v2, 0x1030000000bL

    .line 2577
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 2580
    move-result-wide v6

    .line 2581
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2584
    const-wide v2, 0x1030000000cL

    .line 2589
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 2592
    move-result-wide v6

    .line 2593
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2596
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    .line 2599
    move-result-wide v2

    .line 2600
    const/16 v6, 0xc

    .line 2602
    aget-wide v11, v71, v6

    .line 2604
    aget-wide v6, v71, v62

    .line 2606
    sub-long/2addr v11, v6

    .line 2607
    sub-long/2addr v2, v11

    .line 2608
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 2611
    move-result-wide v6

    .line 2612
    sub-long/2addr v2, v6

    .line 2613
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 2616
    move-result-wide v6

    .line 2617
    sub-long/2addr v2, v6

    .line 2618
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 2621
    move-result-wide v6

    .line 2622
    sub-long/2addr v2, v6

    .line 2623
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 2626
    move-result-wide v6

    .line 2627
    sub-long/2addr v2, v6

    .line 2628
    const/16 v6, 0xc

    .line 2630
    aget-wide v6, v71, v6

    .line 2632
    sub-long/2addr v6, v9

    .line 2633
    const-wide v9, 0x1030000000dL

    .line 2638
    invoke-virtual {v8, v9, v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2641
    const-wide v6, 0x1030000000eL

    .line 2646
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 2649
    move-result-wide v9

    .line 2650
    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2653
    const-wide v6, 0x1030000000fL

    .line 2658
    invoke-virtual {v8, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2661
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 2664
    move-result-wide v2

    .line 2665
    cmp-long v2, v2, v33

    .line 2667
    if-eqz v2, :cond_50

    .line 2669
    const-wide v2, 0x10300000010L

    .line 2674
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 2677
    move-result-wide v6

    .line 2678
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2681
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 2684
    move-result-wide v2

    .line 2685
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 2688
    move-result-wide v6

    .line 2689
    sub-long/2addr v2, v6

    .line 2690
    const-wide v6, 0x10300000011L

    .line 2695
    invoke-virtual {v8, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2698
    const-wide v2, 0x10300000012L

    .line 2703
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 2706
    move-result-wide v6

    .line 2707
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2710
    :cond_50
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    .line 2713
    move-result-object v0

    .line 2714
    const-wide v2, 0x10300000013L

    .line 2719
    const/4 v6, 0x1

    .line 2720
    aget-wide v6, v0, v6

    .line 2722
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2725
    const-wide v2, 0x10300000014L

    .line 2730
    const/4 v6, 0x0

    .line 2731
    aget-wide v6, v0, v6

    .line 2733
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2736
    const-wide v2, 0x10300000015L

    .line 2741
    const/4 v6, 0x2

    .line 2742
    aget-wide v6, v0, v6

    .line 2744
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2747
    const-wide v2, 0x10300000016L

    .line 2752
    const/4 v6, 0x3

    .line 2753
    aget-wide v6, v0, v6

    .line 2755
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2758
    const-wide v2, 0x10500000017L

    .line 2763
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    .line 2766
    move-result v0

    .line 2767
    invoke-virtual {v8, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2770
    const-wide v2, 0x10500000018L

    .line 2775
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    .line 2778
    move-result v0

    .line 2779
    invoke-virtual {v8, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2782
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2784
    const/16 v2, 0x3e7

    .line 2786
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    .line 2789
    move-result-wide v2

    .line 2790
    div-long/2addr v2, v4

    .line 2791
    const-wide v4, 0x10300000019L

    .line 2796
    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2799
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2801
    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 2803
    const-wide v2, 0x1030000001aL

    .line 2808
    invoke-virtual {v8, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2811
    const-wide v0, 0x1080000001bL

    .line 2816
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 2819
    move-result v2

    .line 2820
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2823
    const-wide v0, 0x1080000001cL

    .line 2828
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    .line 2831
    move-result v2

    .line 2832
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2835
    goto :goto_38

    .line 2836
    :cond_51
    move-object/from16 v8, v35

    .line 2838
    :goto_38
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2841
    goto :goto_39

    .line 2842
    :cond_52
    move-object/from16 v22, v6

    .line 2844
    move-object/from16 v20, v7

    .line 2846
    move-object v1, v10

    .line 2847
    move-object v4, v15

    .line 2848
    move-object/from16 v2, p1

    .line 2850
    move-object/from16 v3, p2

    .line 2852
    move-object/from16 v5, v22

    .line 2854
    move-object/from16 v6, v20

    .line 2856
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2859
    :cond_53
    :goto_39
    return-void
.end method

.method public final dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string p3, "-S"

    .line 3
    const-string v0, "-d"

    .line 5
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 12
    const-string p3, "-a"

    .line 14
    const-string v0, "--package"

    .line 16
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 23
    return-void
.end method
