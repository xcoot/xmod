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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 77

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    const/16 v2, 0x2d

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    move-object/from16 v10, p0

    .line 11
    .line 12
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    .line 13
    .line 14
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 15
    .line 16
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v11, "  ex> --fd system_server"

    .line 20
    .line 21
    const-string v12, "A process name is required to output fd info."

    .line 22
    .line 23
    const-string v13, "  ex> --maps system_server"

    .line 24
    .line 25
    const-string v14, "A process name is required to output maps."

    .line 26
    .line 27
    new-instance v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    .line 28
    .line 29
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 33
    .line 34
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpFullDetails:Z

    .line 35
    .line 36
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 37
    .line 38
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    .line 39
    .line 40
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpUnreachable:Z

    .line 41
    .line 42
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 43
    .line 44
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCompact:Z

    .line 45
    .line 46
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->localOnly:Z

    .line 47
    .line 48
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 49
    .line 50
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    .line 51
    .line 52
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 53
    .line 54
    move/from16 v6, p4

    .line 55
    .line 56
    iput-boolean v6, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpProto:Z

    .line 57
    .line 58
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpPrivateDirty:Z

    .line 59
    .line 60
    iput-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpAllocatorStats:Z

    .line 61
    .line 62
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->USER_BUILD:Z

    .line 63
    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->DEBUG_LEVEL_LOW:Z

    .line 67
    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    .line 71
    .line 72
    if-nez v6, :cond_0

    .line 73
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

    .line 80
    .line 81
    move/from16 v18, v17

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    const/16 v32, 0x0

    .line 85
    .line 86
    :goto_2
    array-length v8, v1

    .line 87
    if-ge v7, v8, :cond_17

    .line 88
    .line 89
    aget-object v8, v1, v7

    .line 90
    .line 91
    if-eqz v8, :cond_17

    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v20

    .line 97
    if-lez v20, :cond_17

    .line 98
    .line 99
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eq v9, v2, :cond_2

    .line 104
    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :cond_2
    const/4 v9, 0x1

    .line 108
    add-int/lit8 v20, v7, 0x1

    .line 109
    .line 110
    const-string v2, "-a"

    .line 111
    .line 112
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 119
    .line 120
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpFullDetails:Z

    .line 121
    .line 122
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 123
    .line 124
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 125
    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :cond_3
    const-string v2, "-d"

    .line 129
    .line 130
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 137
    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :cond_4
    const-string v2, "-c"

    .line 141
    .line 142
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCompact:Z

    .line 149
    .line 150
    goto/16 :goto_6

    .line 151
    .line 152
    :cond_5
    const-string v2, "-s"

    .line 153
    .line 154
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 161
    .line 162
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    .line 163
    .line 164
    goto/16 :goto_6

    .line 165
    .line 166
    :cond_6
    const-string v2, "-S"

    .line 167
    .line 168
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_7

    .line 173
    .line 174
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 175
    .line 176
    goto/16 :goto_6

    .line 177
    .line 178
    :cond_7
    const-string v2, "-p"

    .line 179
    .line 180
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_8

    .line 185
    .line 186
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpPrivateDirty:Z

    .line 187
    .line 188
    goto/16 :goto_6

    .line 189
    .line 190
    :cond_8
    const-string v2, "--unreachable"

    .line 191
    .line 192
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_9

    .line 197
    .line 198
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpUnreachable:Z

    .line 199
    .line 200
    goto/16 :goto_6

    .line 201
    .line 202
    :cond_9
    const-string v2, "--oom"

    .line 203
    .line 204
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_a

    .line 209
    .line 210
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :cond_a
    const-string v2, "--local"

    .line 215
    .line 216
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_b

    .line 221
    .line 222
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->localOnly:Z

    .line 223
    .line 224
    goto/16 :goto_6

    .line 225
    .line 226
    :cond_b
    const-string v2, "--package"

    .line 227
    .line 228
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_c

    .line 233
    .line 234
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 235
    .line 236
    goto/16 :goto_6

    .line 237
    .line 238
    :cond_c
    const-string v2, "--checkin"

    .line 239
    .line 240
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_d

    .line 245
    .line 246
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    .line 247
    .line 248
    goto/16 :goto_6

    .line 249
    .line 250
    :cond_d
    const-string v2, "--proto"

    .line 251
    .line 252
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_e

    .line 257
    .line 258
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpProto:Z

    .line 259
    .line 260
    goto/16 :goto_6

    .line 261
    .line 262
    :cond_e
    const-string v2, "--logstats"

    .line 263
    .line 264
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_f

    .line 269
    .line 270
    iput-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpAllocatorStats:Z

    .line 271
    .line 272
    goto/16 :goto_6

    .line 273
    .line 274
    :cond_f
    if-eqz v6, :cond_12

    .line 275
    .line 276
    const-string v2, "--maps"

    .line 277
    .line 278
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_12

    .line 283
    .line 284
    :try_start_0
    aget-object v2, v1, v20

    .line 285
    .line 286
    if-eqz v2, :cond_11

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-gtz v4, :cond_10

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-static {v4}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    aget v4, v4, v5

    .line 304
    .line 305
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    const/4 v8, 0x2

    .line 310
    add-int/2addr v7, v8

    .line 311
    move-object/from16 v32, v4

    .line 312
    .line 313
    const/16 v17, 0x1

    .line 314
    .line 315
    :goto_3
    move-object v4, v2

    .line 316
    goto/16 :goto_7

    .line 317
    .line 318
    :cond_11
    :goto_4
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .line 323
    .line 324
    goto/16 :goto_39

    .line 325
    .line 326
    :catch_0
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_39

    .line 333
    .line 334
    :cond_12
    if-eqz v6, :cond_15

    .line 335
    .line 336
    const-string v2, "--fd"

    .line 337
    .line 338
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_15

    .line 343
    .line 344
    :try_start_1
    aget-object v2, v1, v20

    .line 345
    .line 346
    if-eqz v2, :cond_14

    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-gtz v4, :cond_13

    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_13
    filled-new-array {v2}, [Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-static {v4}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    aget v4, v4, v5

    .line 364
    .line 365
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    const/4 v8, 0x2

    .line 370
    add-int/2addr v7, v8

    .line 371
    move-object/from16 v32, v4

    .line 372
    .line 373
    const/16 v18, 0x1

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_14
    :goto_5
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    .line 381
    .line 382
    goto/16 :goto_39

    .line 383
    .line 384
    :catch_1
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_39

    .line 391
    .line 392
    :cond_15
    const-string v2, "-h"

    .line 393
    .line 394
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_16

    .line 399
    .line 400
    const-string/jumbo v0, "meminfo dump options: [-a] [-d] [-c] [-s] [--oom] [process]"

    .line 401
    .line 402
    .line 403
    const-string v1, "  -a: include all available information for each process."

    .line 404
    .line 405
    const-string v2, "  -d: include dalvik details."

    .line 406
    .line 407
    const-string v4, "  -c: dump in a compact machine-parseable representation."

    .line 408
    .line 409
    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    const-string v0, "  -s: dump only summary of application memory usage."

    .line 413
    .line 414
    const-string v1, "  -S: dump also SwapPss."

    .line 415
    .line 416
    const-string v2, "  -p: dump also private dirty memory usage."

    .line 417
    .line 418
    const-string v4, "  --oom: only show processes organized by oom adj."

    .line 419
    .line 420
    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    const-string v0, "  --local: only collect details locally, don\'t call process."

    .line 424
    .line 425
    const-string v1, "  --package: interpret process arg as package, dumping all"

    .line 426
    .line 427
    const-string v2, "             processes that have loaded that package."

    .line 428
    .line 429
    const-string v4, "  --checkin: dump data for a checkin"

    .line 430
    .line 431
    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const-string v0, "  --proto: dump data to proto"

    .line 435
    .line 436
    const-string v1, "If [process] is specified it can be the name or "

    .line 437
    .line 438
    const-string/jumbo v2, "pid of a specific process to dump."

    .line 439
    .line 440
    .line 441
    invoke-static {v3, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_39

    .line 445
    .line 446
    :cond_16
    const-string v2, "Unknown argument: "

    .line 447
    .line 448
    const-string v7, "; use -h for help"

    .line 449
    .line 450
    invoke-static {v3, v2, v8, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    :goto_6
    move/from16 v7, v20

    .line 454
    .line 455
    :goto_7
    const/16 v2, 0x2d

    .line 456
    .line 457
    goto/16 :goto_2

    .line 458
    .line 459
    :cond_17
    :goto_8
    const-string v2, "])====="

    .line 460
    .line 461
    const-string v8, "["

    .line 462
    .line 463
    const-string v9, "/proc/"

    .line 464
    .line 465
    if-eqz v6, :cond_1a

    .line 466
    .line 467
    if-eqz v17, :cond_1a

    .line 468
    .line 469
    const-string v0, "/maps"

    .line 470
    .line 471
    move-object/from16 v11, v32

    .line 472
    .line 473
    invoke-static {v9, v11, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    const-string v1, "=====PRINT MAPS("

    .line 478
    .line 479
    invoke-static {v1, v0, v8, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    .line 487
    .line 488
    new-instance v2, Ljava/io/FileReader;

    .line 489
    .line 490
    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 494
    .line 495
    .line 496
    :goto_9
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    if-eqz v0, :cond_18

    .line 501
    .line 502
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 503
    .line 504
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

    .line 514
    .line 515
    .line 516
    goto/16 :goto_39

    .line 517
    .line 518
    :catch_3
    move-exception v0

    .line 519
    move-object v1, v0

    .line 520
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_39

    .line 528
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

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 540
    .line 541
    .line 542
    if-eqz v4, :cond_53

    .line 543
    .line 544
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 545
    .line 546
    .line 547
    goto/16 :goto_39

    .line 548
    .line 549
    :catchall_2
    move-exception v0

    .line 550
    goto :goto_a

    .line 551
    :goto_c
    if-eqz v4, :cond_19

    .line 552
    .line 553
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 554
    .line 555
    .line 556
    goto :goto_d

    .line 557
    :catch_5
    move-exception v0

    .line 558
    move-object v2, v0

    .line 559
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    :cond_19
    :goto_d
    throw v1

    .line 567
    :cond_1a
    move-object/from16 v11, v32

    .line 568
    .line 569
    if-eqz v6, :cond_1b

    .line 570
    .line 571
    if-eqz v18, :cond_1b

    .line 572
    .line 573
    const-string v0, "/fd"

    .line 574
    .line 575
    invoke-static {v9, v11, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    const-string v1, "=====PRINT FD INFO("

    .line 580
    .line 581
    invoke-static {v1, v0, v8, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    :try_start_8
    new-instance v1, Ljava/io/File;

    .line 589
    .line 590
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    array-length v1, v0

    .line 598
    :goto_e
    if-ge v5, v1, :cond_53

    .line 599
    .line 600
    aget-object v2, v0, v5
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7

    .line 601
    .line 602
    :try_start_9
    new-instance v4, Ljava/io/File;

    .line 603
    .line 604
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v6

    .line 608
    invoke-static {v6}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    new-instance v6, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    const-string v7, " -> "

    .line 628
    .line 629
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 644
    .line 645
    .line 646
    :goto_f
    const/4 v2, 0x1

    .line 647
    goto :goto_10

    .line 648
    :catch_6
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const-string v2, " -> readlink error"

    .line 661
    .line 662
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_7

    .line 670
    .line 671
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

    .line 677
    .line 678
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_39

    .line 689
    .line 690
    :cond_1b
    array-length v2, v1

    .line 691
    sub-int/2addr v2, v7

    .line 692
    new-array v6, v2, [Ljava/lang/String;

    .line 693
    .line 694
    array-length v2, v1

    .line 695
    sub-int/2addr v2, v7

    .line 696
    invoke-static {v1, v7, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 697
    .line 698
    .line 699
    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 700
    .line 701
    invoke-virtual {v10, v7, v2, v1}, Lcom/android/server/am/ActivityManagerService;->collectProcesses(IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 702
    .line 703
    .line 704
    move-result-object v7

    .line 705
    iget-boolean v1, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpProto:Z

    .line 706
    .line 707
    if-eqz v1, :cond_52

    .line 708
    .line 709
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 713
    .line 714
    .line 715
    move-result-wide v1

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 717
    .line 718
    .line 719
    move-result-wide v3

    .line 720
    const/4 v8, 0x3

    .line 721
    new-array v9, v8, [J

    .line 722
    .line 723
    const-wide v13, 0x10300000001L

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    const-wide/16 v33, 0x0

    .line 729
    .line 730
    if-nez v7, :cond_23

    .line 731
    .line 732
    array-length v7, v6

    .line 733
    if-lez v7, :cond_22

    .line 734
    .line 735
    aget-object v7, v6, v5

    .line 736
    .line 737
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 738
    .line 739
    .line 740
    move-result v7

    .line 741
    const/16 v8, 0x2d

    .line 742
    .line 743
    if-eq v7, v8, :cond_22

    .line 744
    .line 745
    new-instance v7, Ljava/util/ArrayList;

    .line 746
    .line 747
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 751
    .line 752
    .line 753
    :try_start_b
    aget-object v8, v6, v5

    .line 754
    .line 755
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 756
    .line 757
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

    .line 762
    .line 763
    new-instance v5, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;

    .line 764
    .line 765
    const/4 v11, 0x2

    .line 766
    invoke-direct {v5, v8, v6, v7, v11}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;-><init>(I[Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v10, v5}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 773
    .line 774
    .line 775
    move-result v5

    .line 776
    if-lez v5, :cond_22

    .line 777
    .line 778
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    .line 779
    .line 780
    invoke-direct {v5, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v5, v13, v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 784
    .line 785
    .line 786
    const-wide v0, 0x10300000002L

    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    invoke-virtual {v5, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 795
    .line 796
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

    .line 802
    .line 803
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 808
    .line 809
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 810
    .line 811
    if-nez v1, :cond_1c

    .line 812
    .line 813
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    .line 814
    .line 815
    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 816
    .line 817
    .line 818
    :cond_1c
    iget-boolean v4, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 819
    .line 820
    if-nez v4, :cond_1f

    .line 821
    .line 822
    iget-boolean v4, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 823
    .line 824
    if-nez v4, :cond_1d

    .line 825
    .line 826
    goto :goto_14

    .line 827
    :cond_1d
    const/4 v4, 0x0

    .line 828
    invoke-static {v3, v9, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 829
    .line 830
    .line 831
    move-result-wide v10

    .line 832
    cmp-long v4, v10, v33

    .line 833
    .line 834
    if-nez v4, :cond_1e

    .line 835
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

    .line 840
    .line 841
    const/4 v4, 0x0

    .line 842
    aget-wide v10, v9, v4

    .line 843
    .line 844
    long-to-int v4, v10

    .line 845
    iput v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 846
    .line 847
    const/4 v4, 0x2

    .line 848
    aget-wide v10, v9, v4

    .line 849
    .line 850
    long-to-int v4, v10

    .line 851
    iput v4, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 852
    .line 853
    goto :goto_15

    .line 854
    :cond_1f
    :goto_14
    invoke-static {v3, v1}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 855
    .line 856
    .line 857
    move-result v4

    .line 858
    if-nez v4, :cond_20

    .line 859
    .line 860
    goto :goto_13

    .line 861
    :cond_20
    :goto_15
    const-wide v10, 0x20b00000003L

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    invoke-virtual {v5, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 867
    .line 868
    .line 869
    move-result-wide v10

    .line 870
    const-wide v12, 0x10500000001L

    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    invoke-virtual {v5, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 876
    .line 877
    .line 878
    iget-object v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 879
    .line 880
    const-wide v3, 0x10900000002L

    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    invoke-virtual {v5, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 886
    .line 887
    .line 888
    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 889
    .line 890
    iget-boolean v3, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    .line 891
    .line 892
    const-wide/16 v43, 0x0

    .line 893
    .line 894
    const-wide/16 v45, 0x0

    .line 895
    .line 896
    const-wide/16 v39, 0x0

    .line 897
    .line 898
    const-wide/16 v41, 0x0

    .line 899
    .line 900
    const-wide/16 v47, 0x0

    .line 901
    .line 902
    const-wide/16 v49, 0x0

    .line 903
    .line 904
    move-object/from16 v35, v5

    .line 905
    .line 906
    move-object/from16 v36, v1

    .line 907
    .line 908
    move/from16 v37, v2

    .line 909
    .line 910
    move/from16 v38, v3

    .line 911
    .line 912
    invoke-static/range {v35 .. v50}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v5, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 916
    .line 917
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

    .line 922
    .line 923
    .line 924
    goto/16 :goto_39

    .line 925
    .line 926
    :cond_22
    const-string v0, "ActivityManager"

    .line 927
    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    .line 929
    .line 930
    const-string v2, "No process found for: "

    .line 931
    .line 932
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    const/4 v2, 0x0

    .line 936
    aget-object v2, v6, v2

    .line 937
    .line 938
    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    goto/16 :goto_39

    .line 942
    .line 943
    :cond_23
    iget-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 944
    .line 945
    if-nez v5, :cond_25

    .line 946
    .line 947
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 948
    .line 949
    .line 950
    move-result v5

    .line 951
    const/4 v11, 0x1

    .line 952
    if-eq v5, v11, :cond_24

    .line 953
    .line 954
    iget-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    .line 955
    .line 956
    if-nez v5, :cond_24

    .line 957
    .line 958
    iget-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 959
    .line 960
    if-eqz v5, :cond_26

    .line 961
    .line 962
    :cond_24
    iput-boolean v11, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 963
    .line 964
    goto :goto_17

    .line 965
    :cond_25
    const/4 v11, 0x1

    .line 966
    :cond_26
    :goto_17
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 967
    .line 968
    .line 969
    move-result v5

    .line 970
    if-le v5, v11, :cond_27

    .line 971
    .line 972
    iget-boolean v11, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    .line 973
    .line 974
    if-nez v11, :cond_27

    .line 975
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

    .line 980
    .line 981
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 982
    .line 983
    .line 984
    :cond_28
    new-instance v12, Landroid/util/proto/ProtoOutputStream;

    .line 985
    .line 986
    invoke-direct {v12, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v12, v13, v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 990
    .line 991
    .line 992
    const-wide v0, 0x10300000002L

    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    invoke-virtual {v12, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 998
    .line 999
    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    .line 1001
    .line 1002
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .line 1004
    .line 1005
    new-instance v2, Landroid/util/SparseArray;

    .line 1006
    .line 1007
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    const/16 v0, 0x13

    .line 1011
    .line 1012
    new-array v3, v0, [J

    .line 1013
    .line 1014
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 1015
    .line 1016
    const/16 v4, 0xf

    .line 1017
    .line 1018
    if-eqz v0, :cond_29

    .line 1019
    .line 1020
    new-array v13, v4, [J

    .line 1021
    .line 1022
    goto :goto_19

    .line 1023
    :cond_29
    sget-object v13, Llibcore/util/EmptyArray;->LONG:[J

    .line 1024
    .line 1025
    :goto_19
    if-eqz v0, :cond_2a

    .line 1026
    .line 1027
    new-array v14, v4, [J

    .line 1028
    .line 1029
    goto :goto_1a

    .line 1030
    :cond_2a
    sget-object v14, Llibcore/util/EmptyArray;->LONG:[J

    .line 1031
    .line 1032
    :goto_1a
    if-eqz v0, :cond_2b

    .line 1033
    .line 1034
    new-array v0, v4, [J

    .line 1035
    .line 1036
    :goto_1b
    move-object v4, v0

    .line 1037
    move/from16 p4, v11

    .line 1038
    .line 1039
    const/16 v8, 0x11

    .line 1040
    .line 1041
    goto :goto_1c

    .line 1042
    :cond_2b
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    .line 1043
    .line 1044
    goto :goto_1b

    .line 1045
    :goto_1c
    new-array v11, v8, [J

    .line 1046
    .line 1047
    move-object/from16 p1, v11

    .line 1048
    .line 1049
    new-array v11, v8, [J

    .line 1050
    .line 1051
    move-object/from16 v51, v11

    .line 1052
    .line 1053
    new-array v11, v8, [J

    .line 1054
    .line 1055
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    .line 1056
    .line 1057
    array-length v8, v0

    .line 1058
    move-object/from16 v52, v11

    .line 1059
    .line 1060
    new-array v11, v8, [J

    .line 1061
    .line 1062
    move-object/from16 v53, v11

    .line 1063
    .line 1064
    array-length v11, v0

    .line 1065
    new-array v11, v11, [J

    .line 1066
    .line 1067
    move-object/from16 v54, v11

    .line 1068
    .line 1069
    array-length v11, v0

    .line 1070
    new-array v11, v11, [J

    .line 1071
    .line 1072
    array-length v0, v0

    .line 1073
    move-object/from16 v55, v11

    .line 1074
    .line 1075
    new-array v11, v0, [Ljava/util/ArrayList;

    .line 1076
    .line 1077
    const/16 v20, 0x1

    .line 1078
    .line 1079
    add-int/lit8 v5, v5, -0x1

    .line 1080
    .line 1081
    move-wide/from16 v56, v33

    .line 1082
    .line 1083
    const/4 v0, 0x0

    .line 1084
    :goto_1d
    const/16 v58, 0x6

    .line 1085
    .line 1086
    const/16 v59, 0x5

    .line 1087
    .line 1088
    const/16 v60, 0xe

    .line 1089
    .line 1090
    const/16 v61, 0x8

    .line 1091
    .line 1092
    const/16 v62, 0xd

    .line 1093
    .line 1094
    const/16 v63, 0x9

    .line 1095
    .line 1096
    const/16 v64, 0x4

    .line 1097
    .line 1098
    move-object/from16 v65, v11

    .line 1099
    .line 1100
    if-ltz v5, :cond_41

    .line 1101
    .line 1102
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v20

    .line 1106
    move-object/from16 v11, v20

    .line 1107
    .line 1108
    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 1109
    .line 1110
    move-object/from16 v20, v7

    .line 1111
    .line 1112
    iget-object v7, v10, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 1113
    .line 1114
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1115
    .line 1116
    .line 1117
    monitor-enter v7

    .line 1118
    move/from16 v21, v5

    .line 1119
    .line 1120
    :try_start_c
    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 1121
    .line 1122
    move/from16 v66, v8

    .line 1123
    .line 1124
    iget v8, v11, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1125
    .line 1126
    move-object/from16 v67, v4

    .line 1127
    .line 1128
    iget-object v4, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1129
    .line 1130
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    .line 1131
    .line 1132
    .line 1133
    move-result v4

    .line 1134
    move-object/from16 v68, v14

    .line 1135
    .line 1136
    iget-object v14, v11, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1137
    .line 1138
    iget-boolean v14, v14, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 1139
    .line 1140
    move-object/from16 v69, v13

    .line 1141
    .line 1142
    iget v13, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1143
    .line 1144
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1145
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1146
    .line 1147
    .line 1148
    if-nez v5, :cond_2c

    .line 1149
    .line 1150
    move-object/from16 v30, v2

    .line 1151
    .line 1152
    move-object/from16 v71, v3

    .line 1153
    .line 1154
    move-object/from16 v22, v6

    .line 1155
    .line 1156
    move-object/from16 v50, v9

    .line 1157
    .line 1158
    move-object/from16 v36, v10

    .line 1159
    .line 1160
    move-object/from16 v35, v12

    .line 1161
    .line 1162
    move/from16 v11, v66

    .line 1163
    .line 1164
    move-object/from16 v6, v69

    .line 1165
    .line 1166
    move-object v3, v1

    .line 1167
    :goto_1e
    const/4 v1, -0x1

    .line 1168
    goto/16 :goto_2f

    .line 1169
    .line 1170
    :cond_2c
    if-nez v0, :cond_2d

    .line 1171
    .line 1172
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    .line 1173
    .line 1174
    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 1175
    .line 1176
    .line 1177
    :cond_2d
    move-object v7, v0

    .line 1178
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 1179
    .line 1180
    if-nez v0, :cond_2e

    .line 1181
    .line 1182
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 1183
    .line 1184
    if-nez v0, :cond_2f

    .line 1185
    .line 1186
    :cond_2e
    move-object/from16 v70, v1

    .line 1187
    .line 1188
    move-object/from16 v30, v2

    .line 1189
    .line 1190
    move-object/from16 v71, v3

    .line 1191
    .line 1192
    goto :goto_20

    .line 1193
    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v22

    .line 1197
    move-object/from16 v70, v1

    .line 1198
    .line 1199
    move-object/from16 v30, v2

    .line 1200
    .line 1201
    const/4 v2, 0x0

    .line 1202
    invoke-static {v8, v9, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 1203
    .line 1204
    .line 1205
    move-result-wide v0

    .line 1206
    cmp-long v19, v0, v33

    .line 1207
    .line 1208
    if-nez v19, :cond_31

    .line 1209
    .line 1210
    move-object/from16 v71, v3

    .line 1211
    .line 1212
    :goto_1f
    move-object/from16 v22, v6

    .line 1213
    .line 1214
    move-object/from16 v50, v9

    .line 1215
    .line 1216
    :cond_30
    move-object/from16 v36, v10

    .line 1217
    .line 1218
    move-object/from16 v35, v12

    .line 1219
    .line 1220
    move-wide/from16 v9, v56

    .line 1221
    .line 1222
    move/from16 v11, v66

    .line 1223
    .line 1224
    move-object/from16 v6, v69

    .line 1225
    .line 1226
    move-object/from16 v3, v70

    .line 1227
    .line 1228
    goto/16 :goto_2e

    .line 1229
    .line 1230
    :cond_31
    long-to-int v0, v0

    .line 1231
    iput v0, v7, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 1232
    .line 1233
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v0

    .line 1237
    move-object/from16 v71, v3

    .line 1238
    .line 1239
    const/16 v19, 0x0

    .line 1240
    .line 1241
    aget-wide v2, v9, v19

    .line 1242
    .line 1243
    long-to-int v2, v2

    .line 1244
    iput v2, v7, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 1245
    .line 1246
    move-wide/from16 v24, v0

    .line 1247
    .line 1248
    const/4 v2, 0x2

    .line 1249
    aget-wide v0, v9, v2

    .line 1250
    .line 1251
    long-to-int v0, v0

    .line 1252
    iput v0, v7, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 1253
    .line 1254
    move-wide/from16 v72, v22

    .line 1255
    .line 1256
    move-wide/from16 v1, v24

    .line 1257
    .line 1258
    const/4 v3, 0x3

    .line 1259
    goto :goto_21

    .line 1260
    :goto_20
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 1261
    .line 1262
    .line 1263
    move-result-wide v22

    .line 1264
    invoke-static {v8, v7}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 1265
    .line 1266
    .line 1267
    move-result v0

    .line 1268
    if-nez v0, :cond_32

    .line 1269
    .line 1270
    goto :goto_1f

    .line 1271
    :cond_32
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 1272
    .line 1273
    .line 1274
    move-result-wide v0

    .line 1275
    move-wide v1, v0

    .line 1276
    move-wide/from16 v72, v22

    .line 1277
    .line 1278
    move/from16 v3, v64

    .line 1279
    .line 1280
    :goto_21
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    .line 1281
    .line 1282
    if-eqz v0, :cond_36

    .line 1283
    .line 1284
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->localOnly:Z

    .line 1285
    .line 1286
    move-wide/from16 v74, v1

    .line 1287
    .line 1288
    const-wide v1, 0x20b00000004L

    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    if-eqz v0, :cond_33

    .line 1294
    .line 1295
    invoke-virtual {v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1296
    .line 1297
    .line 1298
    move-result-wide v0

    .line 1299
    move/from16 v19, v14

    .line 1300
    .line 1301
    const-wide v13, 0x10b00000001L

    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1307
    .line 1308
    .line 1309
    move-result-wide v13

    .line 1310
    move/from16 v76, v3

    .line 1311
    .line 1312
    const-wide v2, 0x10500000001L

    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v12, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1318
    .line 1319
    .line 1320
    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1321
    .line 1322
    const-wide v2, 0x10900000002L

    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v12, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1328
    .line 1329
    .line 1330
    iget-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 1331
    .line 1332
    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    .line 1333
    .line 1334
    const-wide/16 v43, 0x0

    .line 1335
    .line 1336
    const-wide/16 v45, 0x0

    .line 1337
    .line 1338
    const-wide/16 v39, 0x0

    .line 1339
    .line 1340
    const-wide/16 v41, 0x0

    .line 1341
    .line 1342
    const-wide/16 v47, 0x0

    .line 1343
    .line 1344
    const-wide/16 v49, 0x0

    .line 1345
    .line 1346
    move-object/from16 v35, v12

    .line 1347
    .line 1348
    move-object/from16 v36, v7

    .line 1349
    .line 1350
    move/from16 v37, v5

    .line 1351
    .line 1352
    move/from16 v38, v2

    .line 1353
    .line 1354
    invoke-static/range {v35 .. v50}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v12, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1361
    .line 1362
    .line 1363
    move/from16 v49, v8

    .line 1364
    .line 1365
    move-object/from16 v50, v9

    .line 1366
    .line 1367
    goto/16 :goto_27

    .line 1368
    .line 1369
    :cond_33
    move-wide v0, v1

    .line 1370
    move/from16 v76, v3

    .line 1371
    .line 1372
    move/from16 v19, v14

    .line 1373
    .line 1374
    :try_start_d
    new-instance v2, Lcom/android/internal/os/ByteTransferPipe;

    .line 1375
    .line 1376
    invoke-direct {v2}, Lcom/android/internal/os/ByteTransferPipe;-><init>()V

    .line 1377
    .line 1378
    .line 1379
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1380
    .line 1381
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1382
    .line 1383
    iget-boolean v14, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b

    .line 1384
    .line 1385
    if-eqz v14, :cond_34

    .line 1386
    .line 1387
    const/4 v1, 0x1

    .line 1388
    :try_start_e
    invoke-virtual {v3, v13, v1}, Lcom/android/server/am/FreecessController;->setIsDoingGC(IZ)V

    .line 1389
    .line 1390
    .line 1391
    const-string v0, "DumpMemInfo"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1392
    .line 1393
    move/from16 v49, v8

    .line 1394
    .line 1395
    move-object v1, v9

    .line 1396
    const-wide/16 v8, 0xbb8

    .line 1397
    .line 1398
    :try_start_f
    invoke-virtual {v3, v13, v0, v8, v9}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    .line 1399
    .line 1400
    .line 1401
    goto :goto_23

    .line 1402
    :catchall_3
    move-exception v0

    .line 1403
    :goto_22
    move-object/from16 v50, v1

    .line 1404
    .line 1405
    goto :goto_24

    .line 1406
    :catchall_4
    move-exception v0

    .line 1407
    move/from16 v49, v8

    .line 1408
    .line 1409
    move-object v1, v9

    .line 1410
    goto :goto_22

    .line 1411
    :cond_34
    move/from16 v49, v8

    .line 1412
    .line 1413
    move-object v1, v9

    .line 1414
    :goto_23
    invoke-virtual {v2}, Lcom/android/internal/os/ByteTransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v23

    .line 1418
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpFullDetails:Z

    .line 1419
    .line 1420
    iget-boolean v8, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    .line 1421
    .line 1422
    iget-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1423
    .line 1424
    move-object/from16 v50, v1

    .line 1425
    .line 1426
    :try_start_10
    iget-boolean v1, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpUnreachable:Z

    .line 1427
    .line 1428
    move-object/from16 v22, v5

    .line 1429
    .line 1430
    move-object/from16 v24, v7

    .line 1431
    .line 1432
    move/from16 v25, v0

    .line 1433
    .line 1434
    move/from16 v26, v8

    .line 1435
    .line 1436
    move/from16 v27, v9

    .line 1437
    .line 1438
    move/from16 v28, v1

    .line 1439
    .line 1440
    move-object/from16 v29, v6

    .line 1441
    .line 1442
    invoke-interface/range {v22 .. v29}, Landroid/app/IApplicationThread;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v2}, Lcom/android/internal/os/ByteTransferPipe;->get()[B

    .line 1446
    .line 1447
    .line 1448
    move-result-object v0

    .line 1449
    const-wide v8, 0x20b00000004L

    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v12, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 1455
    .line 1456
    .line 1457
    :try_start_11
    invoke-virtual {v2}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    .line 1458
    .line 1459
    .line 1460
    if-eqz v14, :cond_37

    .line 1461
    .line 1462
    const/4 v1, 0x0

    .line 1463
    invoke-virtual {v3, v13, v1}, Lcom/android/server/am/FreecessController;->setIsDoingGC(IZ)V

    .line 1464
    .line 1465
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

    .line 1473
    .line 1474
    .line 1475
    if-eqz v14, :cond_35

    .line 1476
    .line 1477
    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1478
    .line 1479
    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1480
    .line 1481
    const/4 v2, 0x0

    .line 1482
    invoke-virtual {v1, v13, v2}, Lcom/android/server/am/FreecessController;->setIsDoingGC(IZ)V

    .line 1483
    .line 1484
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

    .line 1488
    .line 1489
    move-object/from16 v50, v9

    .line 1490
    .line 1491
    goto :goto_25

    .line 1492
    :catch_c
    move-exception v0

    .line 1493
    move/from16 v49, v8

    .line 1494
    .line 1495
    move-object/from16 v50, v9

    .line 1496
    .line 1497
    goto :goto_26

    .line 1498
    :goto_25
    const-string v1, "ActivityManager"

    .line 1499
    .line 1500
    const-string v2, "Got RemoteException!"

    .line 1501
    .line 1502
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1503
    .line 1504
    .line 1505
    goto :goto_27

    .line 1506
    :goto_26
    const-string v1, "ActivityManager"

    .line 1507
    .line 1508
    const-string v2, "Got IOException!"

    .line 1509
    .line 1510
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    .line 1512
    .line 1513
    goto :goto_27

    .line 1514
    :cond_36
    move-wide/from16 v74, v1

    .line 1515
    .line 1516
    move/from16 v76, v3

    .line 1517
    .line 1518
    move/from16 v49, v8

    .line 1519
    .line 1520
    move-object/from16 v50, v9

    .line 1521
    .line 1522
    move/from16 v19, v14

    .line 1523
    .line 1524
    :cond_37
    :goto_27
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 1525
    .line 1526
    .line 1527
    move-result v0

    .line 1528
    int-to-long v0, v0

    .line 1529
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    .line 1530
    .line 1531
    .line 1532
    move-result v2

    .line 1533
    int-to-long v2, v2

    .line 1534
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    .line 1535
    .line 1536
    .line 1537
    move-result v5

    .line 1538
    int-to-long v8, v5

    .line 1539
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    .line 1540
    .line 1541
    .line 1542
    move-result v5

    .line 1543
    int-to-long v13, v5

    .line 1544
    iget-object v5, v10, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 1545
    .line 1546
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1547
    .line 1548
    .line 1549
    monitor-enter v5

    .line 1550
    move-object/from16 v22, v6

    .line 1551
    .line 1552
    :try_start_12
    iget-object v6, v11, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 1553
    .line 1554
    if-eqz v6, :cond_38

    .line 1555
    .line 1556
    iget-object v6, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1557
    .line 1558
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    .line 1559
    .line 1560
    .line 1561
    move-result v6

    .line 1562
    if-ne v4, v6, :cond_38

    .line 1563
    .line 1564
    iget-object v6, v11, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1565
    .line 1566
    const/16 v42, 0x1

    .line 1567
    .line 1568
    sub-long v44, v74, v72

    .line 1569
    .line 1570
    move-object/from16 v35, v6

    .line 1571
    .line 1572
    move-wide/from16 v36, v0

    .line 1573
    .line 1574
    move-wide/from16 v38, v2

    .line 1575
    .line 1576
    move-wide/from16 v40, v8

    .line 1577
    .line 1578
    move/from16 v43, v76

    .line 1579
    .line 1580
    invoke-virtual/range {v35 .. v45}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 1581
    .line 1582
    .line 1583
    goto :goto_28

    .line 1584
    :catchall_6
    move-exception v0

    .line 1585
    goto/16 :goto_30

    .line 1586
    .line 1587
    :cond_38
    :goto_28
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 1588
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1589
    .line 1590
    .line 1591
    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    .line 1592
    .line 1593
    if-nez v2, :cond_30

    .line 1594
    .line 1595
    const/16 v2, 0xc

    .line 1596
    .line 1597
    aget-wide v5, v71, v2

    .line 1598
    .line 1599
    add-long/2addr v5, v0

    .line 1600
    aput-wide v5, v71, v2

    .line 1601
    .line 1602
    aget-wide v2, v71, v62

    .line 1603
    .line 1604
    add-long/2addr v2, v13

    .line 1605
    aput-wide v2, v71, v62

    .line 1606
    .line 1607
    aget-wide v2, v71, v60

    .line 1608
    .line 1609
    add-long/2addr v2, v8

    .line 1610
    aput-wide v2, v71, v60

    .line 1611
    .line 1612
    new-instance v2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 1613
    .line 1614
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1617
    .line 1618
    .line 1619
    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1620
    .line 1621
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    const-string v5, " (pid "

    .line 1625
    .line 1626
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    .line 1628
    .line 1629
    move/from16 v5, v49

    .line 1630
    .line 1631
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1632
    .line 1633
    .line 1634
    if-eqz v19, :cond_39

    .line 1635
    .line 1636
    const-string v6, " / activities)"

    .line 1637
    .line 1638
    goto :goto_29

    .line 1639
    :cond_39
    const-string v6, ")"

    .line 1640
    .line 1641
    :goto_29
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v36

    .line 1648
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1649
    .line 1650
    const-wide/16 v44, 0x0

    .line 1651
    .line 1652
    iget v6, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1653
    .line 1654
    move-object/from16 v35, v2

    .line 1655
    .line 1656
    move-object/from16 v37, v3

    .line 1657
    .line 1658
    move-wide/from16 v38, v0

    .line 1659
    .line 1660
    move-wide/from16 v40, v13

    .line 1661
    .line 1662
    move-wide/from16 v42, v8

    .line 1663
    .line 1664
    move/from16 v46, v5

    .line 1665
    .line 1666
    move/from16 v47, v6

    .line 1667
    .line 1668
    move/from16 v48, v19

    .line 1669
    .line 1670
    invoke-direct/range {v35 .. v48}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V

    .line 1671
    .line 1672
    .line 1673
    move-object/from16 v3, v70

    .line 1674
    .line 1675
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    .line 1677
    .line 1678
    move-object/from16 v6, v30

    .line 1679
    .line 1680
    invoke-virtual {v6, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1681
    .line 1682
    .line 1683
    const/4 v5, 0x0

    .line 1684
    aget-wide v23, v71, v5

    .line 1685
    .line 1686
    iget v11, v7, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 1687
    .line 1688
    move-object/from16 v35, v12

    .line 1689
    .line 1690
    int-to-long v11, v11

    .line 1691
    add-long v23, v23, v11

    .line 1692
    .line 1693
    aput-wide v23, v71, v5

    .line 1694
    .line 1695
    const/4 v5, 0x1

    .line 1696
    aget-wide v11, v71, v5

    .line 1697
    .line 1698
    iget v5, v7, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 1699
    .line 1700
    int-to-long v5, v5

    .line 1701
    add-long/2addr v11, v5

    .line 1702
    const/4 v5, 0x1

    .line 1703
    aput-wide v11, v71, v5

    .line 1704
    .line 1705
    const/4 v5, 0x2

    .line 1706
    aget-wide v11, v71, v5

    .line 1707
    .line 1708
    iget v6, v7, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 1709
    .line 1710
    move-wide/from16 v23, v8

    .line 1711
    .line 1712
    int-to-long v8, v6

    .line 1713
    add-long/2addr v11, v8

    .line 1714
    aput-wide v11, v71, v5

    .line 1715
    .line 1716
    aget-wide v5, v71, v64

    .line 1717
    .line 1718
    iget v8, v7, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 1719
    .line 1720
    int-to-long v8, v8

    .line 1721
    add-long/2addr v5, v8

    .line 1722
    aput-wide v5, v71, v64

    .line 1723
    .line 1724
    aget-wide v5, v71, v59

    .line 1725
    .line 1726
    iget v8, v7, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    .line 1727
    .line 1728
    int-to-long v8, v8

    .line 1729
    add-long/2addr v5, v8

    .line 1730
    aput-wide v5, v71, v59

    .line 1731
    .line 1732
    aget-wide v5, v71, v58

    .line 1733
    .line 1734
    iget v8, v7, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 1735
    .line 1736
    int-to-long v8, v8

    .line 1737
    add-long/2addr v5, v8

    .line 1738
    aput-wide v5, v71, v58

    .line 1739
    .line 1740
    move-object/from16 v6, v69

    .line 1741
    .line 1742
    const/4 v5, 0x0

    .line 1743
    :goto_2a
    array-length v8, v6

    .line 1744
    if-ge v5, v8, :cond_3a

    .line 1745
    .line 1746
    aget-wide v8, v6, v5

    .line 1747
    .line 1748
    const/16 v11, 0x11

    .line 1749
    .line 1750
    add-int/lit8 v12, v5, 0x11

    .line 1751
    .line 1752
    invoke-virtual {v7, v12}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 1753
    .line 1754
    .line 1755
    move-result v11

    .line 1756
    move-object/from16 v36, v10

    .line 1757
    .line 1758
    int-to-long v10, v11

    .line 1759
    add-long/2addr v8, v10

    .line 1760
    aput-wide v8, v6, v5

    .line 1761
    .line 1762
    aget-wide v8, v68, v5

    .line 1763
    .line 1764
    invoke-virtual {v7, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    .line 1765
    .line 1766
    .line 1767
    move-result v10

    .line 1768
    int-to-long v10, v10

    .line 1769
    add-long/2addr v8, v10

    .line 1770
    aput-wide v8, v68, v5

    .line 1771
    .line 1772
    aget-wide v8, v67, v5

    .line 1773
    .line 1774
    invoke-virtual {v7, v12}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    .line 1775
    .line 1776
    .line 1777
    move-result v10

    .line 1778
    int-to-long v10, v10

    .line 1779
    add-long/2addr v8, v10

    .line 1780
    aput-wide v8, v67, v5

    .line 1781
    .line 1782
    const/4 v8, 0x1

    .line 1783
    add-int/2addr v5, v8

    .line 1784
    move-object/from16 v10, v36

    .line 1785
    .line 1786
    goto :goto_2a

    .line 1787
    :cond_3a
    move-object/from16 v36, v10

    .line 1788
    .line 1789
    aget-wide v8, v71, v61

    .line 1790
    .line 1791
    iget v5, v7, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 1792
    .line 1793
    int-to-long v10, v5

    .line 1794
    add-long/2addr v8, v10

    .line 1795
    aput-wide v8, v71, v61

    .line 1796
    .line 1797
    const/16 v5, 0xa

    .line 1798
    .line 1799
    aget-wide v8, v71, v5

    .line 1800
    .line 1801
    iget v10, v7, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 1802
    .line 1803
    int-to-long v10, v10

    .line 1804
    add-long/2addr v8, v10

    .line 1805
    aput-wide v8, v71, v5

    .line 1806
    .line 1807
    aget-wide v8, v71, v63

    .line 1808
    .line 1809
    iget v5, v7, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 1810
    .line 1811
    int-to-long v10, v5

    .line 1812
    add-long/2addr v8, v10

    .line 1813
    aput-wide v8, v71, v63

    .line 1814
    .line 1815
    const/4 v5, 0x0

    .line 1816
    :goto_2b
    const/16 v8, 0x11

    .line 1817
    .line 1818
    if-ge v5, v8, :cond_3b

    .line 1819
    .line 1820
    invoke-virtual {v7, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 1821
    .line 1822
    .line 1823
    move-result v8

    .line 1824
    int-to-long v8, v8

    .line 1825
    aget-wide v10, p1, v5

    .line 1826
    .line 1827
    add-long/2addr v10, v8

    .line 1828
    aput-wide v10, p1, v5

    .line 1829
    .line 1830
    aget-wide v10, v71, v61

    .line 1831
    .line 1832
    sub-long/2addr v10, v8

    .line 1833
    aput-wide v10, v71, v61

    .line 1834
    .line 1835
    invoke-virtual {v7, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    .line 1836
    .line 1837
    .line 1838
    move-result v8

    .line 1839
    int-to-long v8, v8

    .line 1840
    aget-wide v10, v51, v5

    .line 1841
    .line 1842
    add-long/2addr v10, v8

    .line 1843
    aput-wide v10, v51, v5

    .line 1844
    .line 1845
    aget-wide v10, v71, v63

    .line 1846
    .line 1847
    sub-long/2addr v10, v8

    .line 1848
    aput-wide v10, v71, v63

    .line 1849
    .line 1850
    invoke-virtual {v7, v5}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    .line 1851
    .line 1852
    .line 1853
    move-result v8

    .line 1854
    int-to-long v8, v8

    .line 1855
    aget-wide v10, v52, v5

    .line 1856
    .line 1857
    add-long/2addr v10, v8

    .line 1858
    aput-wide v10, v52, v5

    .line 1859
    .line 1860
    const/16 v10, 0xa

    .line 1861
    .line 1862
    aget-wide v11, v71, v10

    .line 1863
    .line 1864
    sub-long/2addr v11, v8

    .line 1865
    aput-wide v11, v71, v10

    .line 1866
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

    .line 1872
    .line 1873
    move-wide/from16 v9, v56

    .line 1874
    .line 1875
    if-lt v4, v5, :cond_3c

    .line 1876
    .line 1877
    add-long v56, v9, v0

    .line 1878
    .line 1879
    :cond_3c
    move/from16 v11, v66

    .line 1880
    .line 1881
    const/4 v5, 0x0

    .line 1882
    :goto_2c
    if-ge v5, v11, :cond_40

    .line 1883
    .line 1884
    add-int/lit8 v9, v11, -0x1

    .line 1885
    .line 1886
    if-eq v5, v9, :cond_3e

    .line 1887
    .line 1888
    sget-object v9, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    .line 1889
    .line 1890
    aget v10, v9, v5

    .line 1891
    .line 1892
    if-lt v4, v10, :cond_3d

    .line 1893
    .line 1894
    add-int/lit8 v10, v5, 0x1

    .line 1895
    .line 1896
    aget v9, v9, v10

    .line 1897
    .line 1898
    if-ge v4, v9, :cond_3d

    .line 1899
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

    .line 1904
    .line 1905
    add-long/2addr v8, v0

    .line 1906
    aput-wide v8, v53, v5

    .line 1907
    .line 1908
    aget-wide v0, v54, v5

    .line 1909
    .line 1910
    add-long/2addr v0, v13

    .line 1911
    aput-wide v0, v54, v5

    .line 1912
    .line 1913
    aget-object v0, v65, v5

    .line 1914
    .line 1915
    if-nez v0, :cond_3f

    .line 1916
    .line 1917
    new-instance v0, Ljava/util/ArrayList;

    .line 1918
    .line 1919
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1920
    .line 1921
    .line 1922
    aput-object v0, v65, v5

    .line 1923
    .line 1924
    :cond_3f
    aget-object v0, v65, v5

    .line 1925
    .line 1926
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    .line 1928
    .line 1929
    aget-wide v0, v55, v5

    .line 1930
    .line 1931
    add-long v0, v0, v23

    .line 1932
    .line 1933
    aput-wide v0, v55, v5

    .line 1934
    .line 1935
    :cond_40
    move-object v0, v7

    .line 1936
    goto/16 :goto_1e

    .line 1937
    .line 1938
    :goto_2e
    move-object v0, v7

    .line 1939
    move-wide/from16 v56, v9

    .line 1940
    .line 1941
    goto/16 :goto_1e

    .line 1942
    .line 1943
    :goto_2f
    add-int/lit8 v5, v21, -0x1

    .line 1944
    .line 1945
    move-object v1, v3

    .line 1946
    move-object v13, v6

    .line 1947
    move v8, v11

    .line 1948
    move-object/from16 v7, v20

    .line 1949
    .line 1950
    move-object/from16 v6, v22

    .line 1951
    .line 1952
    move-object/from16 v2, v30

    .line 1953
    .line 1954
    move-object/from16 v12, v35

    .line 1955
    .line 1956
    move-object/from16 v10, v36

    .line 1957
    .line 1958
    move-object/from16 v9, v50

    .line 1959
    .line 1960
    move-object/from16 v11, v65

    .line 1961
    .line 1962
    move-object/from16 v4, v67

    .line 1963
    .line 1964
    move-object/from16 v14, v68

    .line 1965
    .line 1966
    move-object/from16 v3, v71

    .line 1967
    .line 1968
    goto/16 :goto_1d

    .line 1969
    .line 1970
    :goto_30
    :try_start_13
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 1971
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1972
    .line 1973
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

    .line 1978
    .line 1979
    .line 1980
    throw v0

    .line 1981
    :cond_41
    move-object/from16 v30, v2

    .line 1982
    .line 1983
    move-object/from16 v71, v3

    .line 1984
    .line 1985
    move-object/from16 v67, v4

    .line 1986
    .line 1987
    move v11, v8

    .line 1988
    move-object/from16 v50, v9

    .line 1989
    .line 1990
    move-object/from16 v36, v10

    .line 1991
    .line 1992
    move-object/from16 v35, v12

    .line 1993
    .line 1994
    move-object v6, v13

    .line 1995
    move-object/from16 v68, v14

    .line 1996
    .line 1997
    move-wide/from16 v9, v56

    .line 1998
    .line 1999
    move-object v3, v1

    .line 2000
    if-eqz p4, :cond_51

    .line 2001
    .line 2002
    const/4 v1, 0x1

    .line 2003
    new-array v0, v1, [Landroid/os/Debug$MemoryInfo;

    .line 2004
    .line 2005
    move-object/from16 v17, v0

    .line 2006
    .line 2007
    move-object/from16 v1, v36

    .line 2008
    .line 2009
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 2010
    .line 2011
    new-instance v2, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;

    .line 2012
    .line 2013
    move-object v4, v15

    .line 2014
    move-object v15, v2

    .line 2015
    move-object/from16 v16, v30

    .line 2016
    .line 2017
    move-object/from16 v18, v4

    .line 2018
    .line 2019
    move-object/from16 v19, v50

    .line 2020
    .line 2021
    move-object/from16 v20, v71

    .line 2022
    .line 2023
    move-object/from16 v21, v3

    .line 2024
    .line 2025
    move-object/from16 v22, v6

    .line 2026
    .line 2027
    move-object/from16 v23, v68

    .line 2028
    .line 2029
    move-object/from16 v24, v67

    .line 2030
    .line 2031
    move-object/from16 v25, p1

    .line 2032
    .line 2033
    move-object/from16 v26, v51

    .line 2034
    .line 2035
    move-object/from16 v27, v52

    .line 2036
    .line 2037
    move-object/from16 v28, v53

    .line 2038
    .line 2039
    move-object/from16 v29, v54

    .line 2040
    .line 2041
    move-object/from16 v30, v65

    .line 2042
    .line 2043
    move-object/from16 v31, v55

    .line 2044
    .line 2045
    invoke-direct/range {v15 .. v31}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;-><init>(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J)V

    .line 2046
    .line 2047
    .line 2048
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    .line 2049
    .line 2050
    .line 2051
    new-instance v0, Ljava/util/ArrayList;

    .line 2052
    .line 2053
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    .line 2055
    .line 2056
    new-instance v2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2057
    .line 2058
    const-string v13, "Native"

    .line 2059
    .line 2060
    const-string v14, "Native"

    .line 2061
    .line 2062
    const/4 v5, 0x0

    .line 2063
    aget-wide v15, v71, v5

    .line 2064
    .line 2065
    const/4 v5, 0x1

    .line 2066
    aget-wide v17, v71, v5

    .line 2067
    .line 2068
    const/4 v5, 0x2

    .line 2069
    aget-wide v19, v71, v5

    .line 2070
    .line 2071
    const-wide/16 v21, 0x0

    .line 2072
    .line 2073
    const/16 v23, -0x1

    .line 2074
    .line 2075
    move-object v12, v2

    .line 2076
    invoke-direct/range {v12 .. v23}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2077
    .line 2078
    .line 2079
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2080
    .line 2081
    .line 2082
    new-instance v2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2083
    .line 2084
    const-string v37, "Dalvik"

    .line 2085
    .line 2086
    const-string v38, "Dalvik"

    .line 2087
    .line 2088
    aget-wide v39, v71, v64

    .line 2089
    .line 2090
    aget-wide v41, v71, v59

    .line 2091
    .line 2092
    aget-wide v43, v71, v58

    .line 2093
    .line 2094
    const-wide/16 v45, 0x0

    .line 2095
    .line 2096
    const/16 v47, -0x2

    .line 2097
    .line 2098
    move-object/from16 v36, v2

    .line 2099
    .line 2100
    invoke-direct/range {v36 .. v47}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2101
    .line 2102
    .line 2103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2104
    .line 2105
    .line 2106
    new-instance v2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2107
    .line 2108
    const-string v13, "Unknown"

    .line 2109
    .line 2110
    const-string v14, "Unknown"

    .line 2111
    .line 2112
    aget-wide v15, v71, v61

    .line 2113
    .line 2114
    aget-wide v17, v71, v63

    .line 2115
    .line 2116
    const/16 v5, 0xa

    .line 2117
    .line 2118
    aget-wide v19, v71, v5

    .line 2119
    .line 2120
    const/16 v23, -0x3

    .line 2121
    .line 2122
    move-object v12, v2

    .line 2123
    invoke-direct/range {v12 .. v23}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2124
    .line 2125
    .line 2126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2127
    .line 2128
    .line 2129
    const/4 v2, 0x0

    .line 2130
    :goto_31
    const/16 v5, 0x11

    .line 2131
    .line 2132
    if-ge v2, v5, :cond_42

    .line 2133
    .line 2134
    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v38

    .line 2138
    new-instance v5, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2139
    .line 2140
    aget-wide v39, p1, v2

    .line 2141
    .line 2142
    aget-wide v41, v51, v2

    .line 2143
    .line 2144
    aget-wide v43, v52, v2

    .line 2145
    .line 2146
    const-wide/16 v45, 0x0

    .line 2147
    .line 2148
    move-object/from16 v36, v5

    .line 2149
    .line 2150
    move-object/from16 v37, v38

    .line 2151
    .line 2152
    move/from16 v47, v2

    .line 2153
    .line 2154
    invoke-direct/range {v36 .. v47}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2155
    .line 2156
    .line 2157
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2158
    .line 2159
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

    .line 2165
    .line 2166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2167
    .line 2168
    .line 2169
    move-result-object v2

    .line 2170
    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2171
    .line 2172
    .line 2173
    move-result v5

    .line 2174
    if-eqz v5, :cond_47

    .line 2175
    .line 2176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v5

    .line 2180
    check-cast v5, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2181
    .line 2182
    iget v7, v5, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 2183
    .line 2184
    const/4 v8, -0x2

    .line 2185
    if-ne v7, v8, :cond_44

    .line 2186
    .line 2187
    const/4 v7, 0x0

    .line 2188
    const/16 v8, 0xa

    .line 2189
    .line 2190
    const/4 v12, 0x3

    .line 2191
    goto :goto_32

    .line 2192
    :cond_44
    if-nez v7, :cond_45

    .line 2193
    .line 2194
    move/from16 v12, v63

    .line 2195
    .line 2196
    move/from16 v7, v64

    .line 2197
    .line 2198
    const/16 v8, 0xa

    .line 2199
    .line 2200
    goto :goto_32

    .line 2201
    :cond_45
    const/16 v8, 0xa

    .line 2202
    .line 2203
    if-ne v7, v8, :cond_46

    .line 2204
    .line 2205
    move v7, v8

    .line 2206
    const/16 v12, 0xc

    .line 2207
    .line 2208
    goto :goto_32

    .line 2209
    :cond_46
    const/16 v12, 0xc

    .line 2210
    .line 2211
    if-ne v7, v12, :cond_43

    .line 2212
    .line 2213
    move/from16 v12, v60

    .line 2214
    .line 2215
    move/from16 v7, v62

    .line 2216
    .line 2217
    :goto_32
    new-instance v13, Ljava/util/ArrayList;

    .line 2218
    .line 2219
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2220
    .line 2221
    .line 2222
    iput-object v13, v5, Lcom/android/server/am/ActivityManagerService$MemItem;->subitems:Ljava/util/ArrayList;

    .line 2223
    .line 2224
    :goto_33
    if-gt v7, v12, :cond_43

    .line 2225
    .line 2226
    const/16 v13, 0x11

    .line 2227
    .line 2228
    add-int/lit8 v14, v7, 0x11

    .line 2229
    .line 2230
    invoke-static {v14}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v16

    .line 2234
    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService$MemItem;->subitems:Ljava/util/ArrayList;

    .line 2235
    .line 2236
    new-instance v14, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2237
    .line 2238
    aget-wide v17, v6, v7

    .line 2239
    .line 2240
    aget-wide v19, v68, v7

    .line 2241
    .line 2242
    aget-wide v21, v67, v7

    .line 2243
    .line 2244
    const-wide/16 v23, 0x0

    .line 2245
    .line 2246
    move-object/from16 p1, v14

    .line 2247
    .line 2248
    move-object v8, v15

    .line 2249
    move-object/from16 v15, v16

    .line 2250
    .line 2251
    move/from16 v25, v7

    .line 2252
    .line 2253
    invoke-direct/range {v14 .. v25}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2254
    .line 2255
    .line 2256
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2257
    .line 2258
    .line 2259
    const/4 v8, 0x1

    .line 2260
    add-int/2addr v7, v8

    .line 2261
    const/16 v8, 0xa

    .line 2262
    .line 2263
    goto :goto_33

    .line 2264
    :cond_47
    new-instance v2, Ljava/util/ArrayList;

    .line 2265
    .line 2266
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2267
    .line 2268
    .line 2269
    const/4 v5, 0x0

    .line 2270
    :goto_34
    if-ge v5, v11, :cond_4a

    .line 2271
    .line 2272
    aget-wide v15, v53, v5

    .line 2273
    .line 2274
    cmp-long v6, v15, v33

    .line 2275
    .line 2276
    if-eqz v6, :cond_49

    .line 2277
    .line 2278
    iget-boolean v6, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCompact:Z

    .line 2279
    .line 2280
    if-eqz v6, :cond_48

    .line 2281
    .line 2282
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 2283
    .line 2284
    aget-object v6, v6, v5

    .line 2285
    .line 2286
    :goto_35
    move-object v14, v6

    .line 2287
    goto :goto_36

    .line 2288
    :cond_48
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    .line 2289
    .line 2290
    aget-object v6, v6, v5

    .line 2291
    .line 2292
    goto :goto_35

    .line 2293
    :goto_36
    new-instance v6, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2294
    .line 2295
    aget-wide v17, v54, v5

    .line 2296
    .line 2297
    aget-wide v19, v55, v5

    .line 2298
    .line 2299
    sget-object v7, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    .line 2300
    .line 2301
    aget v23, v7, v5

    .line 2302
    .line 2303
    const-wide/16 v21, 0x0

    .line 2304
    .line 2305
    move-object v12, v6

    .line 2306
    move-object v13, v14

    .line 2307
    invoke-direct/range {v12 .. v23}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    .line 2308
    .line 2309
    .line 2310
    aget-object v7, v65, v5

    .line 2311
    .line 2312
    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService$MemItem;->subitems:Ljava/util/ArrayList;

    .line 2313
    .line 2314
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2315
    .line 2316
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

    .line 2321
    .line 2322
    if-nez v5, :cond_4b

    .line 2323
    .line 2324
    const-string/jumbo v25, "proc"

    .line 2325
    .line 2326
    .line 2327
    const-wide v23, 0x20b0000001dL

    .line 2328
    .line 2329
    .line 2330
    .line 2331
    .line 2332
    const/16 v27, 0x1

    .line 2333
    .line 2334
    const/16 v28, 0x0

    .line 2335
    .line 2336
    const/16 v29, 0x0

    .line 2337
    .line 2338
    move-object/from16 v22, v35

    .line 2339
    .line 2340
    move-object/from16 v26, v3

    .line 2341
    .line 2342
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2343
    .line 2344
    .line 2345
    :cond_4b
    const-string/jumbo v25, "oom"

    .line 2346
    .line 2347
    .line 2348
    const-wide v23, 0x20b0000001eL

    .line 2349
    .line 2350
    .line 2351
    .line 2352
    .line 2353
    const/16 v27, 0x0

    .line 2354
    .line 2355
    const/16 v28, 0x0

    .line 2356
    .line 2357
    const/16 v29, 0x0

    .line 2358
    .line 2359
    move-object/from16 v22, v35

    .line 2360
    .line 2361
    move-object/from16 v26, v2

    .line 2362
    .line 2363
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2364
    .line 2365
    .line 2366
    iget-boolean v5, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 2367
    .line 2368
    if-nez v5, :cond_4c

    .line 2369
    .line 2370
    const-string/jumbo v25, "cat"

    .line 2371
    .line 2372
    .line 2373
    const-wide v23, 0x20b0000001fL

    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    const/16 v27, 0x1

    .line 2379
    .line 2380
    const/16 v28, 0x0

    .line 2381
    .line 2382
    const/16 v29, 0x0

    .line 2383
    .line 2384
    move-object/from16 v22, v35

    .line 2385
    .line 2386
    move-object/from16 v26, v0

    .line 2387
    .line 2388
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2389
    .line 2390
    .line 2391
    :cond_4c
    iget-boolean v5, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 2392
    .line 2393
    if-nez v5, :cond_4d

    .line 2394
    .line 2395
    const-string/jumbo v25, "proc"

    .line 2396
    .line 2397
    .line 2398
    iget-boolean v5, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 2399
    .line 2400
    const-wide v23, 0x20b00000005L

    .line 2401
    .line 2402
    .line 2403
    .line 2404
    .line 2405
    const/16 v27, 0x1

    .line 2406
    .line 2407
    const/16 v28, 0x1

    .line 2408
    .line 2409
    move-object/from16 v22, v35

    .line 2410
    .line 2411
    move-object/from16 v26, v3

    .line 2412
    .line 2413
    move/from16 v29, v5

    .line 2414
    .line 2415
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2416
    .line 2417
    .line 2418
    :cond_4d
    const-string/jumbo v25, "oom"

    .line 2419
    .line 2420
    .line 2421
    iget-boolean v3, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 2422
    .line 2423
    const-wide v23, 0x20b00000006L

    .line 2424
    .line 2425
    .line 2426
    .line 2427
    .line 2428
    const/16 v27, 0x0

    .line 2429
    .line 2430
    const/16 v28, 0x1

    .line 2431
    .line 2432
    move-object/from16 v22, v35

    .line 2433
    .line 2434
    move-object/from16 v26, v2

    .line 2435
    .line 2436
    move/from16 v29, v3

    .line 2437
    .line 2438
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2439
    .line 2440
    .line 2441
    iget-boolean v2, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 2442
    .line 2443
    if-nez v2, :cond_4e

    .line 2444
    .line 2445
    const-string/jumbo v25, "cat"

    .line 2446
    .line 2447
    .line 2448
    iget-boolean v2, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    .line 2449
    .line 2450
    const-wide v23, 0x20b00000007L

    .line 2451
    .line 2452
    .line 2453
    .line 2454
    .line 2455
    const/16 v27, 0x1

    .line 2456
    .line 2457
    const/16 v28, 0x1

    .line 2458
    .line 2459
    move-object/from16 v22, v35

    .line 2460
    .line 2461
    move-object/from16 v26, v0

    .line 2462
    .line 2463
    move/from16 v29, v2

    .line 2464
    .line 2465
    invoke-static/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 2466
    .line 2467
    .line 2468
    :cond_4e
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 2469
    .line 2470
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 2471
    .line 2472
    .line 2473
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2474
    .line 2475
    .line 2476
    const/16 v2, 0x10

    .line 2477
    .line 2478
    aget-wide v3, v71, v2

    .line 2479
    .line 2480
    cmp-long v3, v3, v33

    .line 2481
    .line 2482
    const-wide/16 v4, 0x400

    .line 2483
    .line 2484
    if-lez v3, :cond_4f

    .line 2485
    .line 2486
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2487
    .line 2488
    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 2489
    .line 2490
    monitor-enter v3

    .line 2491
    :try_start_15
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 2492
    .line 2493
    .line 2494
    move-result-wide v12

    .line 2495
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 2496
    .line 2497
    .line 2498
    move-result-wide v14

    .line 2499
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 2500
    .line 2501
    .line 2502
    move-result-wide v16

    .line 2503
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 2504
    .line 2505
    .line 2506
    move-result-wide v18

    .line 2507
    mul-long v20, v12, v4

    .line 2508
    .line 2509
    mul-long v22, v14, v4

    .line 2510
    .line 2511
    mul-long v24, v16, v4

    .line 2512
    .line 2513
    mul-long v26, v18, v4

    .line 2514
    .line 2515
    aget-wide v6, v71, v2

    .line 2516
    .line 2517
    mul-long v28, v6, v4

    .line 2518
    .line 2519
    invoke-static/range {v20 .. v29}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2520
    .line 2521
    .line 2522
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2523
    .line 2524
    aget-wide v20, v71, v2

    .line 2525
    .line 2526
    iget-object v11, v6, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2527
    .line 2528
    invoke-virtual/range {v11 .. v21}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 2529
    .line 2530
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

    .line 2537
    .line 2538
    .line 2539
    .line 2540
    .line 2541
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    .line 2542
    .line 2543
    .line 2544
    move-result-wide v6

    .line 2545
    move-object/from16 v8, v35

    .line 2546
    .line 2547
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2548
    .line 2549
    .line 2550
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 2551
    .line 2552
    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    .line 2553
    .line 2554
    .line 2555
    move-result v2

    .line 2556
    const-wide v6, 0x10e00000009L

    .line 2557
    .line 2558
    .line 2559
    .line 2560
    .line 2561
    invoke-virtual {v8, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2562
    .line 2563
    .line 2564
    const-wide v2, 0x1030000000aL

    .line 2565
    .line 2566
    .line 2567
    .line 2568
    .line 2569
    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2570
    .line 2571
    .line 2572
    const-wide v2, 0x1030000000bL

    .line 2573
    .line 2574
    .line 2575
    .line 2576
    .line 2577
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 2578
    .line 2579
    .line 2580
    move-result-wide v6

    .line 2581
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2582
    .line 2583
    .line 2584
    const-wide v2, 0x1030000000cL

    .line 2585
    .line 2586
    .line 2587
    .line 2588
    .line 2589
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 2590
    .line 2591
    .line 2592
    move-result-wide v6

    .line 2593
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2594
    .line 2595
    .line 2596
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    .line 2597
    .line 2598
    .line 2599
    move-result-wide v2

    .line 2600
    const/16 v6, 0xc

    .line 2601
    .line 2602
    aget-wide v11, v71, v6

    .line 2603
    .line 2604
    aget-wide v6, v71, v62

    .line 2605
    .line 2606
    sub-long/2addr v11, v6

    .line 2607
    sub-long/2addr v2, v11

    .line 2608
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 2609
    .line 2610
    .line 2611
    move-result-wide v6

    .line 2612
    sub-long/2addr v2, v6

    .line 2613
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 2614
    .line 2615
    .line 2616
    move-result-wide v6

    .line 2617
    sub-long/2addr v2, v6

    .line 2618
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 2619
    .line 2620
    .line 2621
    move-result-wide v6

    .line 2622
    sub-long/2addr v2, v6

    .line 2623
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 2624
    .line 2625
    .line 2626
    move-result-wide v6

    .line 2627
    sub-long/2addr v2, v6

    .line 2628
    const/16 v6, 0xc

    .line 2629
    .line 2630
    aget-wide v6, v71, v6

    .line 2631
    .line 2632
    sub-long/2addr v6, v9

    .line 2633
    const-wide v9, 0x1030000000dL

    .line 2634
    .line 2635
    .line 2636
    .line 2637
    .line 2638
    invoke-virtual {v8, v9, v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2639
    .line 2640
    .line 2641
    const-wide v6, 0x1030000000eL

    .line 2642
    .line 2643
    .line 2644
    .line 2645
    .line 2646
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 2647
    .line 2648
    .line 2649
    move-result-wide v9

    .line 2650
    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2651
    .line 2652
    .line 2653
    const-wide v6, 0x1030000000fL

    .line 2654
    .line 2655
    .line 2656
    .line 2657
    .line 2658
    invoke-virtual {v8, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2659
    .line 2660
    .line 2661
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 2662
    .line 2663
    .line 2664
    move-result-wide v2

    .line 2665
    cmp-long v2, v2, v33

    .line 2666
    .line 2667
    if-eqz v2, :cond_50

    .line 2668
    .line 2669
    const-wide v2, 0x10300000010L

    .line 2670
    .line 2671
    .line 2672
    .line 2673
    .line 2674
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 2675
    .line 2676
    .line 2677
    move-result-wide v6

    .line 2678
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2679
    .line 2680
    .line 2681
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 2682
    .line 2683
    .line 2684
    move-result-wide v2

    .line 2685
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 2686
    .line 2687
    .line 2688
    move-result-wide v6

    .line 2689
    sub-long/2addr v2, v6

    .line 2690
    const-wide v6, 0x10300000011L

    .line 2691
    .line 2692
    .line 2693
    .line 2694
    .line 2695
    invoke-virtual {v8, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2696
    .line 2697
    .line 2698
    const-wide v2, 0x10300000012L

    .line 2699
    .line 2700
    .line 2701
    .line 2702
    .line 2703
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 2704
    .line 2705
    .line 2706
    move-result-wide v6

    .line 2707
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2708
    .line 2709
    .line 2710
    :cond_50
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    .line 2711
    .line 2712
    .line 2713
    move-result-object v0

    .line 2714
    const-wide v2, 0x10300000013L

    .line 2715
    .line 2716
    .line 2717
    .line 2718
    .line 2719
    const/4 v6, 0x1

    .line 2720
    aget-wide v6, v0, v6

    .line 2721
    .line 2722
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2723
    .line 2724
    .line 2725
    const-wide v2, 0x10300000014L

    .line 2726
    .line 2727
    .line 2728
    .line 2729
    .line 2730
    const/4 v6, 0x0

    .line 2731
    aget-wide v6, v0, v6

    .line 2732
    .line 2733
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2734
    .line 2735
    .line 2736
    const-wide v2, 0x10300000015L

    .line 2737
    .line 2738
    .line 2739
    .line 2740
    .line 2741
    const/4 v6, 0x2

    .line 2742
    aget-wide v6, v0, v6

    .line 2743
    .line 2744
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2745
    .line 2746
    .line 2747
    const-wide v2, 0x10300000016L

    .line 2748
    .line 2749
    .line 2750
    .line 2751
    .line 2752
    const/4 v6, 0x3

    .line 2753
    aget-wide v6, v0, v6

    .line 2754
    .line 2755
    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2756
    .line 2757
    .line 2758
    const-wide v2, 0x10500000017L

    .line 2759
    .line 2760
    .line 2761
    .line 2762
    .line 2763
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    .line 2764
    .line 2765
    .line 2766
    move-result v0

    .line 2767
    invoke-virtual {v8, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2768
    .line 2769
    .line 2770
    const-wide v2, 0x10500000018L

    .line 2771
    .line 2772
    .line 2773
    .line 2774
    .line 2775
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    .line 2776
    .line 2777
    .line 2778
    move-result v0

    .line 2779
    invoke-virtual {v8, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2780
    .line 2781
    .line 2782
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2783
    .line 2784
    const/16 v2, 0x3e7

    .line 2785
    .line 2786
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    .line 2787
    .line 2788
    .line 2789
    move-result-wide v2

    .line 2790
    div-long/2addr v2, v4

    .line 2791
    const-wide v4, 0x10300000019L

    .line 2792
    .line 2793
    .line 2794
    .line 2795
    .line 2796
    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2797
    .line 2798
    .line 2799
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2800
    .line 2801
    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 2802
    .line 2803
    const-wide v2, 0x1030000001aL

    .line 2804
    .line 2805
    .line 2806
    .line 2807
    .line 2808
    invoke-virtual {v8, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2809
    .line 2810
    .line 2811
    const-wide v0, 0x1080000001bL

    .line 2812
    .line 2813
    .line 2814
    .line 2815
    .line 2816
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 2817
    .line 2818
    .line 2819
    move-result v2

    .line 2820
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2821
    .line 2822
    .line 2823
    const-wide v0, 0x1080000001cL

    .line 2824
    .line 2825
    .line 2826
    .line 2827
    .line 2828
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    .line 2829
    .line 2830
    .line 2831
    move-result v2

    .line 2832
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2833
    .line 2834
    .line 2835
    goto :goto_38

    .line 2836
    :cond_51
    move-object/from16 v8, v35

    .line 2837
    .line 2838
    :goto_38
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2839
    .line 2840
    .line 2841
    goto :goto_39

    .line 2842
    :cond_52
    move-object/from16 v22, v6

    .line 2843
    .line 2844
    move-object/from16 v20, v7

    .line 2845
    .line 2846
    move-object v1, v10

    .line 2847
    move-object v4, v15

    .line 2848
    move-object/from16 v2, p1

    .line 2849
    .line 2850
    move-object/from16 v3, p2

    .line 2851
    .line 2852
    move-object/from16 v5, v22

    .line 2853
    .line 2854
    move-object/from16 v6, v20

    .line 2855
    .line 2856
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2857
    .line 2858
    .line 2859
    :cond_53
    :goto_39
    return-void
.end method

.method public final dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string p3, "-S"

    .line 2
    .line 3
    const-string v0, "-d"

    .line 4
    .line 5
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const-string p3, "-a"

    .line 13
    .line 14
    const-string v0, "--package"

    .line 15
    .line 16
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
