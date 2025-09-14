.class public final Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
.super Landroid/content/pm/dex/ArtManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;
    .locals 22

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const/16 v10, 0xc

    .line 4
    .line 5
    const/16 v11, 0xb

    .line 6
    .line 7
    const/16 v12, 0xa

    .line 8
    .line 9
    const/16 v13, 0x9

    .line 10
    .line 11
    const/16 v14, 0x8

    .line 12
    .line 13
    const/4 v15, 0x7

    .line 14
    const/16 v16, 0x6

    .line 15
    .line 16
    const/16 v17, 0x5

    .line 17
    .line 18
    const/16 v18, 0x4

    .line 19
    .line 20
    const/16 v19, 0x3

    .line 21
    .line 22
    const/16 v20, 0x2

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/16 v21, 0x1

    .line 26
    .line 27
    const-string v3, "ArtManagerInternalImpl"

    .line 28
    .line 29
    const-string v4, "error"

    .line 30
    .line 31
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    const-string v5, "android"

    .line 34
    .line 35
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_0
    :try_start_0
    invoke-static/range {p2 .. p2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5, v0}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    move-object v6, v5

    .line 67
    move-object v5, v0

    .line 68
    goto :goto_3

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v6, "Requested optimization status for "

    .line 76
    .line 77
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v6, " due to an invalid abi "

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-object/from16 v6, p2

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    :goto_1
    move-object v5, v4

    .line 105
    move-object v6, v5

    .line 106
    goto :goto_3

    .line 107
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v6, "Could not get optimizations status for "

    .line 110
    .line 111
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :goto_3
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 130
    .line 131
    iget-wide v7, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 132
    .line 133
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v7, "compiled_traces"

    .line 138
    .line 139
    const-string v8, "compiled_trace.pb"

    .line 140
    .line 141
    move-object/from16 v9, p3

    .line 142
    .line 143
    filled-new-array {v0, v1, v9, v7, v8}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v1, "/data/misc/iorapd"

    .line 148
    .line 149
    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    :try_start_1
    new-array v1, v2, [Ljava/nio/file/LinkOption;

    .line 154
    .line 155
    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    sget-boolean v7, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 160
    .line 161
    if-eqz v7, :cond_2

    .line 162
    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    if-eqz v1, :cond_1

    .line 176
    .line 177
    const-string v9, " exists"

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :catch_2
    move-exception v0

    .line 181
    goto :goto_5

    .line 182
    :cond_1
    const-string v9, " doesn\'t exist"

    .line 183
    .line 184
    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    :cond_2
    if-eqz v1, :cond_5

    .line 195
    .line 196
    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v8

    .line 200
    if-eqz v7, :cond_3

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v0, " size is "

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 231
    .line 232
    .line 233
    :cond_3
    const-wide/16 v0, 0x0

    .line 234
    .line 235
    cmp-long v0, v8, v0

    .line 236
    .line 237
    if-lez v0, :cond_4

    .line 238
    .line 239
    move/from16 v1, v21

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    :cond_4
    move v1, v2

    .line 250
    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 251
    .line 252
    const-string v0, "-iorap"

    .line 253
    .line 254
    invoke-static {v6, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    const/4 v0, -0x1

    .line 262
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    sparse-switch v1, :sswitch_data_0

    .line 267
    .line 268
    .line 269
    goto/16 :goto_7

    .line 270
    .line 271
    :sswitch_0
    const-string/jumbo v1, "run-from-apk-fallback"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-nez v1, :cond_7

    .line 279
    .line 280
    goto/16 :goto_7

    .line 281
    .line 282
    :cond_7
    const/16 v0, 0x1a

    .line 283
    .line 284
    goto/16 :goto_7

    .line 285
    .line 286
    :sswitch_1
    const-string/jumbo v1, "quicken-iorap"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_8

    .line 294
    .line 295
    goto/16 :goto_7

    .line 296
    .line 297
    :cond_8
    const/16 v0, 0x19

    .line 298
    .line 299
    goto/16 :goto_7

    .line 300
    .line 301
    :sswitch_2
    const-string/jumbo v1, "space-iorap"

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_9

    .line 309
    .line 310
    goto/16 :goto_7

    .line 311
    .line 312
    :cond_9
    const/16 v0, 0x18

    .line 313
    .line 314
    goto/16 :goto_7

    .line 315
    .line 316
    :sswitch_3
    const-string/jumbo v1, "speed-iorap"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_a

    .line 324
    .line 325
    goto/16 :goto_7

    .line 326
    .line 327
    :cond_a
    const/16 v0, 0x17

    .line 328
    .line 329
    goto/16 :goto_7

    .line 330
    .line 331
    :sswitch_4
    const-string/jumbo v1, "run-from-apk"

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_b

    .line 339
    .line 340
    goto/16 :goto_7

    .line 341
    .line 342
    :cond_b
    const/16 v0, 0x16

    .line 343
    .line 344
    goto/16 :goto_7

    .line 345
    .line 346
    :sswitch_5
    const-string v1, "everything-profile-iorap"

    .line 347
    .line 348
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-nez v1, :cond_c

    .line 353
    .line 354
    goto/16 :goto_7

    .line 355
    .line 356
    :cond_c
    const/16 v0, 0x15

    .line 357
    .line 358
    goto/16 :goto_7

    .line 359
    .line 360
    :sswitch_6
    const-string/jumbo v1, "quicken"

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-nez v1, :cond_d

    .line 368
    .line 369
    goto/16 :goto_7

    .line 370
    .line 371
    :cond_d
    const/16 v0, 0x14

    .line 372
    .line 373
    goto/16 :goto_7

    .line 374
    .line 375
    :sswitch_7
    const-string v1, "everything-iorap"

    .line 376
    .line 377
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-nez v1, :cond_e

    .line 382
    .line 383
    goto/16 :goto_7

    .line 384
    .line 385
    :cond_e
    const/16 v0, 0x13

    .line 386
    .line 387
    goto/16 :goto_7

    .line 388
    .line 389
    :sswitch_8
    const-string v1, "everything"

    .line 390
    .line 391
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-nez v1, :cond_f

    .line 396
    .line 397
    goto/16 :goto_7

    .line 398
    .line 399
    :cond_f
    const/16 v0, 0x12

    .line 400
    .line 401
    goto/16 :goto_7

    .line 402
    .line 403
    :sswitch_9
    const-string/jumbo v1, "space-profile"

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-nez v1, :cond_10

    .line 411
    .line 412
    goto/16 :goto_7

    .line 413
    .line 414
    :cond_10
    const/16 v0, 0x11

    .line 415
    .line 416
    goto/16 :goto_7

    .line 417
    .line 418
    :sswitch_a
    const-string/jumbo v1, "run-from-apk-iorap"

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-nez v1, :cond_11

    .line 426
    .line 427
    goto/16 :goto_7

    .line 428
    .line 429
    :cond_11
    const/16 v0, 0x10

    .line 430
    .line 431
    goto/16 :goto_7

    .line 432
    .line 433
    :sswitch_b
    const-string/jumbo v1, "speed"

    .line 434
    .line 435
    .line 436
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-nez v1, :cond_12

    .line 441
    .line 442
    goto/16 :goto_7

    .line 443
    .line 444
    :cond_12
    const/16 v0, 0xf

    .line 445
    .line 446
    goto/16 :goto_7

    .line 447
    .line 448
    :sswitch_c
    const-string/jumbo v1, "space"

    .line 449
    .line 450
    .line 451
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-nez v1, :cond_13

    .line 456
    .line 457
    goto/16 :goto_7

    .line 458
    .line 459
    :cond_13
    const/16 v0, 0xe

    .line 460
    .line 461
    goto/16 :goto_7

    .line 462
    .line 463
    :sswitch_d
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-nez v1, :cond_14

    .line 468
    .line 469
    goto/16 :goto_7

    .line 470
    .line 471
    :cond_14
    const/16 v0, 0xd

    .line 472
    .line 473
    goto/16 :goto_7

    .line 474
    .line 475
    :sswitch_e
    const-string v1, "assume-verified-iorap"

    .line 476
    .line 477
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-nez v1, :cond_15

    .line 482
    .line 483
    goto/16 :goto_7

    .line 484
    .line 485
    :cond_15
    move v0, v10

    .line 486
    goto/16 :goto_7

    .line 487
    .line 488
    :sswitch_f
    const-string/jumbo v1, "run-from-vdex-fallback-iorap"

    .line 489
    .line 490
    .line 491
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-nez v1, :cond_16

    .line 496
    .line 497
    goto/16 :goto_7

    .line 498
    .line 499
    :cond_16
    move v0, v11

    .line 500
    goto/16 :goto_7

    .line 501
    .line 502
    :sswitch_10
    const-string/jumbo v1, "space-profile-iorap"

    .line 503
    .line 504
    .line 505
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-nez v1, :cond_17

    .line 510
    .line 511
    goto/16 :goto_7

    .line 512
    .line 513
    :cond_17
    move v0, v12

    .line 514
    goto/16 :goto_7

    .line 515
    .line 516
    :sswitch_11
    const-string/jumbo v1, "verify"

    .line 517
    .line 518
    .line 519
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-nez v1, :cond_18

    .line 524
    .line 525
    goto/16 :goto_7

    .line 526
    .line 527
    :cond_18
    move v0, v13

    .line 528
    goto/16 :goto_7

    .line 529
    .line 530
    :sswitch_12
    const-string/jumbo v1, "run-from-vdex-fallback"

    .line 531
    .line 532
    .line 533
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-nez v1, :cond_19

    .line 538
    .line 539
    goto/16 :goto_7

    .line 540
    .line 541
    :cond_19
    move v0, v14

    .line 542
    goto/16 :goto_7

    .line 543
    .line 544
    :sswitch_13
    const-string/jumbo v1, "run-from-apk-fallback-iorap"

    .line 545
    .line 546
    .line 547
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-nez v1, :cond_1a

    .line 552
    .line 553
    goto/16 :goto_7

    .line 554
    .line 555
    :cond_1a
    move v0, v15

    .line 556
    goto :goto_7

    .line 557
    :sswitch_14
    const-string/jumbo v1, "speed-profile"

    .line 558
    .line 559
    .line 560
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-nez v1, :cond_1b

    .line 565
    .line 566
    goto :goto_7

    .line 567
    :cond_1b
    move/from16 v0, v16

    .line 568
    .line 569
    goto :goto_7

    .line 570
    :sswitch_15
    const-string v1, "extract"

    .line 571
    .line 572
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    if-nez v1, :cond_1c

    .line 577
    .line 578
    goto :goto_7

    .line 579
    :cond_1c
    move/from16 v0, v17

    .line 580
    .line 581
    goto :goto_7

    .line 582
    :sswitch_16
    const-string v1, "extract-iorap"

    .line 583
    .line 584
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-nez v1, :cond_1d

    .line 589
    .line 590
    goto :goto_7

    .line 591
    :cond_1d
    move/from16 v0, v18

    .line 592
    .line 593
    goto :goto_7

    .line 594
    :sswitch_17
    const-string/jumbo v1, "verify-iorap"

    .line 595
    .line 596
    .line 597
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    if-nez v1, :cond_1e

    .line 602
    .line 603
    goto :goto_7

    .line 604
    :cond_1e
    move/from16 v0, v19

    .line 605
    .line 606
    goto :goto_7

    .line 607
    :sswitch_18
    const-string v1, "everything-profile"

    .line 608
    .line 609
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    if-nez v1, :cond_1f

    .line 614
    .line 615
    goto :goto_7

    .line 616
    :cond_1f
    move/from16 v0, v20

    .line 617
    .line 618
    goto :goto_7

    .line 619
    :sswitch_19
    const-string v1, "assume-verified"

    .line 620
    .line 621
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    if-nez v1, :cond_20

    .line 626
    .line 627
    goto :goto_7

    .line 628
    :cond_20
    move/from16 v0, v21

    .line 629
    .line 630
    goto :goto_7

    .line 631
    :sswitch_1a
    const-string/jumbo v1, "speed-profile-iorap"

    .line 632
    .line 633
    .line 634
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-nez v1, :cond_21

    .line 639
    .line 640
    goto :goto_7

    .line 641
    :cond_21
    move v0, v2

    .line 642
    :goto_7
    packed-switch v0, :pswitch_data_0

    .line 643
    .line 644
    .line 645
    move/from16 v2, v21

    .line 646
    .line 647
    goto/16 :goto_8

    .line 648
    .line 649
    :pswitch_0
    const/16 v2, 0xd

    .line 650
    .line 651
    goto/16 :goto_8

    .line 652
    .line 653
    :pswitch_1
    const/16 v2, 0x12

    .line 654
    .line 655
    goto/16 :goto_8

    .line 656
    .line 657
    :pswitch_2
    const/16 v2, 0x14

    .line 658
    .line 659
    goto :goto_8

    .line 660
    :pswitch_3
    const/16 v2, 0x16

    .line 661
    .line 662
    goto :goto_8

    .line 663
    :pswitch_4
    move v2, v10

    .line 664
    goto :goto_8

    .line 665
    :pswitch_5
    const/16 v2, 0x17

    .line 666
    .line 667
    goto :goto_8

    .line 668
    :pswitch_6
    move/from16 v2, v17

    .line 669
    .line 670
    goto :goto_8

    .line 671
    :pswitch_7
    const/16 v2, 0x18

    .line 672
    .line 673
    goto :goto_8

    .line 674
    :pswitch_8
    move v2, v11

    .line 675
    goto :goto_8

    .line 676
    :pswitch_9
    move/from16 v2, v16

    .line 677
    .line 678
    goto :goto_8

    .line 679
    :pswitch_a
    const/16 v2, 0x19

    .line 680
    .line 681
    goto :goto_8

    .line 682
    :pswitch_b
    move v2, v13

    .line 683
    goto :goto_8

    .line 684
    :pswitch_c
    move v2, v15

    .line 685
    goto :goto_8

    .line 686
    :pswitch_d
    const/16 v2, 0xf

    .line 687
    .line 688
    goto :goto_8

    .line 689
    :pswitch_e
    const/16 v2, 0x1b

    .line 690
    .line 691
    goto :goto_8

    .line 692
    :pswitch_f
    const/16 v2, 0x13

    .line 693
    .line 694
    goto :goto_8

    .line 695
    :pswitch_10
    move/from16 v2, v18

    .line 696
    .line 697
    goto :goto_8

    .line 698
    :pswitch_11
    const/16 v2, 0xe

    .line 699
    .line 700
    goto :goto_8

    .line 701
    :pswitch_12
    const/16 v2, 0x1a

    .line 702
    .line 703
    goto :goto_8

    .line 704
    :pswitch_13
    move v2, v14

    .line 705
    goto :goto_8

    .line 706
    :pswitch_14
    move/from16 v2, v19

    .line 707
    .line 708
    goto :goto_8

    .line 709
    :pswitch_15
    const/16 v2, 0x10

    .line 710
    .line 711
    goto :goto_8

    .line 712
    :pswitch_16
    const/16 v2, 0x11

    .line 713
    .line 714
    goto :goto_8

    .line 715
    :pswitch_17
    move v2, v12

    .line 716
    goto :goto_8

    .line 717
    :pswitch_18
    move/from16 v2, v20

    .line 718
    .line 719
    goto :goto_8

    .line 720
    :pswitch_19
    const/16 v2, 0x15

    .line 721
    .line 722
    :goto_8
    :pswitch_1a
    invoke-static {v5}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    new-instance v1, Landroid/content/pm/dex/PackageOptimizationInfo;

    .line 727
    .line 728
    invoke-direct {v1, v2, v0}, Landroid/content/pm/dex/PackageOptimizationInfo;-><init>(II)V

    .line 729
    .line 730
    .line 731
    return-object v1

    .line 732
    nop

    .line 733
    :sswitch_data_0
    .sparse-switch
        -0x7dd94aef -> :sswitch_1a
        -0x74ad4b37 -> :sswitch_19
        -0x6b7d2b71 -> :sswitch_18
        -0x65cd9119 -> :sswitch_17
        -0x65986311 -> :sswitch_16
        -0x4dcd237f -> :sswitch_15
        -0x4358c9dd -> :sswitch_14
        -0x405bb3de -> :sswitch_13
        -0x35c83f13 -> :sswitch_12
        -0x30df7787 -> :sswitch_11
        -0x29c91470 -> :sswitch_10
        -0x2ad7fa5 -> :sswitch_f
        0x3061f37 -> :sswitch_e
        0x5c4d208 -> :sswitch_d
        0x688f106 -> :sswitch_c
        0x6890047 -> :sswitch_b
        0xf517369 -> :sswitch_a
        0x14c5f7e2 -> :sswitch_9
        0x17efcab3 -> :sswitch_8
        0x23319da1 -> :sswitch_7
        0x273d6b56 -> :sswitch_6
        0x3374d27d -> :sswitch_5
        0x36f5967b -> :sswitch_4
        0x3a695435 -> :sswitch_3
        0x4e7b79b4 -> :sswitch_2
        0x585ef804 -> :sswitch_1
        0x71a3adf4 -> :sswitch_0
    .end sparse-switch

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_1a
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
