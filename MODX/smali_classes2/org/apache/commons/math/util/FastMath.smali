.class public abstract Lorg/apache/commons/math/util/FastMath;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COSINE_TABLE_A:[D

.field public static final COSINE_TABLE_B:[D

.field public static final EXP_FRAC_TABLE_A:[D

.field public static final EXP_FRAC_TABLE_B:[D

.field public static final EXP_INT_TABLE_A:[D

.field public static final EXP_INT_TABLE_B:[D

.field public static final FACT:[D

.field public static final LN_MANT:[[D

.field public static final LN_QUICK_COEF:[[D

.field public static final LN_SPLIT_COEF:[[D

.field public static final SINE_TABLE_A:[D

.field public static final SINE_TABLE_B:[D

.field public static final TANGENT_TABLE_A:[D

.field public static final TANGENT_TABLE_B:[D


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    const/16 v1, 0x5dc

    .line 2
    .line 3
    new-array v2, v1, [D

    .line 4
    .line 5
    sput-object v2, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    .line 6
    .line 7
    new-array v1, v1, [D

    .line 8
    .line 9
    sput-object v1, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    .line 10
    .line 11
    const/16 v1, 0x401

    .line 12
    .line 13
    new-array v2, v1, [D

    .line 14
    .line 15
    sput-object v2, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_A:[D

    .line 16
    .line 17
    new-array v2, v1, [D

    .line 18
    .line 19
    sput-object v2, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_B:[D

    .line 20
    .line 21
    const/16 v2, 0x14

    .line 22
    .line 23
    new-array v3, v2, [D

    .line 24
    .line 25
    sput-object v3, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    .line 26
    .line 27
    const/16 v4, 0x400

    .line 28
    .line 29
    new-array v5, v4, [[D

    .line 30
    .line 31
    sput-object v5, Lorg/apache/commons/math/util/FastMath;->LN_MANT:[[D

    .line 32
    .line 33
    const/4 v9, 0x2

    .line 34
    new-array v10, v9, [D

    .line 35
    .line 36
    fill-array-data v10, :array_0

    .line 37
    .line 38
    .line 39
    new-array v11, v9, [D

    .line 40
    .line 41
    fill-array-data v11, :array_1

    .line 42
    .line 43
    .line 44
    new-array v12, v9, [D

    .line 45
    .line 46
    fill-array-data v12, :array_2

    .line 47
    .line 48
    .line 49
    new-array v13, v9, [D

    .line 50
    .line 51
    fill-array-data v13, :array_3

    .line 52
    .line 53
    .line 54
    new-array v14, v9, [D

    .line 55
    .line 56
    fill-array-data v14, :array_4

    .line 57
    .line 58
    .line 59
    new-array v15, v9, [D

    .line 60
    .line 61
    fill-array-data v15, :array_5

    .line 62
    .line 63
    .line 64
    new-array v5, v9, [D

    .line 65
    .line 66
    fill-array-data v5, :array_6

    .line 67
    .line 68
    .line 69
    new-array v6, v9, [D

    .line 70
    .line 71
    fill-array-data v6, :array_7

    .line 72
    .line 73
    .line 74
    new-array v4, v9, [D

    .line 75
    .line 76
    fill-array-data v4, :array_8

    .line 77
    .line 78
    .line 79
    new-array v7, v9, [D

    .line 80
    .line 81
    fill-array-data v7, :array_9

    .line 82
    .line 83
    .line 84
    new-array v8, v9, [D

    .line 85
    .line 86
    fill-array-data v8, :array_a

    .line 87
    .line 88
    .line 89
    new-array v1, v9, [D

    .line 90
    .line 91
    fill-array-data v1, :array_b

    .line 92
    .line 93
    .line 94
    new-array v0, v9, [D

    .line 95
    .line 96
    fill-array-data v0, :array_c

    .line 97
    .line 98
    .line 99
    new-array v2, v9, [D

    .line 100
    .line 101
    fill-array-data v2, :array_d

    .line 102
    .line 103
    .line 104
    move-object/from16 v26, v3

    .line 105
    .line 106
    new-array v3, v9, [D

    .line 107
    .line 108
    fill-array-data v3, :array_e

    .line 109
    .line 110
    .line 111
    move-object/from16 v24, v3

    .line 112
    .line 113
    new-array v3, v9, [D

    .line 114
    .line 115
    fill-array-data v3, :array_f

    .line 116
    .line 117
    .line 118
    move-object/from16 v16, v5

    .line 119
    .line 120
    move-object/from16 v17, v6

    .line 121
    .line 122
    move-object/from16 v18, v4

    .line 123
    .line 124
    move-object/from16 v19, v7

    .line 125
    .line 126
    move-object/from16 v20, v8

    .line 127
    .line 128
    move-object/from16 v21, v1

    .line 129
    .line 130
    move-object/from16 v22, v0

    .line 131
    .line 132
    move-object/from16 v23, v2

    .line 133
    .line 134
    move-object/from16 v25, v3

    .line 135
    .line 136
    filled-new-array/range {v10 .. v25}, [[D

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Lorg/apache/commons/math/util/FastMath;->LN_SPLIT_COEF:[[D

    .line 141
    .line 142
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 143
    .line 144
    new-array v10, v9, [D

    .line 145
    .line 146
    fill-array-data v10, :array_10

    .line 147
    .line 148
    .line 149
    new-array v11, v9, [D

    .line 150
    .line 151
    fill-array-data v11, :array_11

    .line 152
    .line 153
    .line 154
    new-array v12, v9, [D

    .line 155
    .line 156
    fill-array-data v12, :array_12

    .line 157
    .line 158
    .line 159
    new-array v13, v9, [D

    .line 160
    .line 161
    fill-array-data v13, :array_13

    .line 162
    .line 163
    .line 164
    new-array v14, v9, [D

    .line 165
    .line 166
    fill-array-data v14, :array_14

    .line 167
    .line 168
    .line 169
    new-array v15, v9, [D

    .line 170
    .line 171
    fill-array-data v15, :array_15

    .line 172
    .line 173
    .line 174
    new-array v2, v9, [D

    .line 175
    .line 176
    fill-array-data v2, :array_16

    .line 177
    .line 178
    .line 179
    new-array v3, v9, [D

    .line 180
    .line 181
    fill-array-data v3, :array_17

    .line 182
    .line 183
    .line 184
    new-array v4, v9, [D

    .line 185
    .line 186
    fill-array-data v4, :array_18

    .line 187
    .line 188
    .line 189
    move-object/from16 v16, v2

    .line 190
    .line 191
    move-object/from16 v17, v3

    .line 192
    .line 193
    move-object/from16 v18, v4

    .line 194
    .line 195
    filled-new-array/range {v10 .. v18}, [[D

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    sput-object v2, Lorg/apache/commons/math/util/FastMath;->LN_QUICK_COEF:[[D

    .line 200
    .line 201
    const/16 v2, 0xe

    .line 202
    .line 203
    new-array v3, v2, [D

    .line 204
    .line 205
    sput-object v3, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_A:[D

    .line 206
    .line 207
    new-array v3, v2, [D

    .line 208
    .line 209
    sput-object v3, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_B:[D

    .line 210
    .line 211
    new-array v3, v2, [D

    .line 212
    .line 213
    sput-object v3, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_A:[D

    .line 214
    .line 215
    new-array v3, v2, [D

    .line 216
    .line 217
    sput-object v3, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_B:[D

    .line 218
    .line 219
    new-array v3, v2, [D

    .line 220
    .line 221
    sput-object v3, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_A:[D

    .line 222
    .line 223
    new-array v3, v2, [D

    .line 224
    .line 225
    sput-object v3, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_B:[D

    .line 226
    .line 227
    const/4 v3, 0x0

    .line 228
    aput-wide v0, v26, v3

    .line 229
    .line 230
    const/4 v4, 0x1

    .line 231
    move v5, v4

    .line 232
    :goto_0
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    .line 233
    .line 234
    const/16 v7, 0x14

    .line 235
    .line 236
    if-ge v5, v7, :cond_0

    .line 237
    .line 238
    add-int/lit8 v8, v5, -0x1

    .line 239
    .line 240
    aget-wide v10, v6, v8

    .line 241
    .line 242
    int-to-double v12, v5

    .line 243
    mul-double/2addr v10, v12

    .line 244
    aput-wide v10, v6, v5

    .line 245
    .line 246
    add-int/2addr v5, v4

    .line 247
    goto :goto_0

    .line 248
    :cond_0
    new-array v5, v9, [D

    .line 249
    .line 250
    new-array v6, v9, [D

    .line 251
    .line 252
    move v7, v3

    .line 253
    const/16 v8, 0x2ee

    .line 254
    .line 255
    :goto_1
    if-ge v7, v8, :cond_4

    .line 256
    .line 257
    new-array v8, v9, [D

    .line 258
    .line 259
    new-array v10, v9, [D

    .line 260
    .line 261
    new-array v11, v9, [D

    .line 262
    .line 263
    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    aput-wide v12, v8, v3

    .line 269
    .line 270
    const-wide v12, 0x3ca4d57ee2b1013aL

    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    aput-wide v12, v8, v4

    .line 276
    .line 277
    invoke-static {v0, v1, v11}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 278
    .line 279
    .line 280
    move v12, v7

    .line 281
    :goto_2
    if-lez v12, :cond_2

    .line 282
    .line 283
    and-int/lit8 v13, v12, 0x1

    .line 284
    .line 285
    if-eqz v13, :cond_1

    .line 286
    .line 287
    invoke-static {v11, v8, v10}, Lorg/apache/commons/math/util/FastMath;->quadMult([D[D[D)V

    .line 288
    .line 289
    .line 290
    aget-wide v13, v10, v3

    .line 291
    .line 292
    aput-wide v13, v11, v3

    .line 293
    .line 294
    aget-wide v13, v10, v4

    .line 295
    .line 296
    aput-wide v13, v11, v4

    .line 297
    .line 298
    :cond_1
    invoke-static {v8, v8, v10}, Lorg/apache/commons/math/util/FastMath;->quadMult([D[D[D)V

    .line 299
    .line 300
    .line 301
    aget-wide v13, v10, v3

    .line 302
    .line 303
    aput-wide v13, v8, v3

    .line 304
    .line 305
    aget-wide v13, v10, v4

    .line 306
    .line 307
    aput-wide v13, v8, v4

    .line 308
    .line 309
    shr-int/2addr v12, v4

    .line 310
    goto :goto_2

    .line 311
    :cond_2
    aget-wide v12, v11, v3

    .line 312
    .line 313
    aput-wide v12, v5, v3

    .line 314
    .line 315
    aget-wide v10, v11, v4

    .line 316
    .line 317
    aput-wide v10, v5, v4

    .line 318
    .line 319
    invoke-static {v5}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    .line 320
    .line 321
    .line 322
    sget-object v8, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    .line 323
    .line 324
    const/16 v10, 0x2ee

    .line 325
    .line 326
    add-int/lit16 v11, v7, 0x2ee

    .line 327
    .line 328
    aget-wide v12, v5, v3

    .line 329
    .line 330
    aput-wide v12, v8, v11

    .line 331
    .line 332
    sget-object v12, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    .line 333
    .line 334
    aget-wide v13, v5, v4

    .line 335
    .line 336
    aput-wide v13, v12, v11

    .line 337
    .line 338
    if-eqz v7, :cond_3

    .line 339
    .line 340
    invoke-static {v5, v6}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    .line 341
    .line 342
    .line 343
    rsub-int v11, v7, 0x2ee

    .line 344
    .line 345
    aget-wide v13, v6, v3

    .line 346
    .line 347
    aput-wide v13, v8, v11

    .line 348
    .line 349
    aget-wide v13, v6, v4

    .line 350
    .line 351
    aput-wide v13, v12, v11

    .line 352
    .line 353
    :cond_3
    add-int/2addr v7, v4

    .line 354
    move v8, v10

    .line 355
    goto :goto_1

    .line 356
    :cond_4
    move v6, v3

    .line 357
    :goto_3
    const/16 v8, 0x401

    .line 358
    .line 359
    if-ge v6, v8, :cond_6

    .line 360
    .line 361
    int-to-double v10, v6

    .line 362
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    .line 363
    .line 364
    div-double/2addr v10, v12

    .line 365
    new-array v12, v9, [D

    .line 366
    .line 367
    new-array v13, v9, [D

    .line 368
    .line 369
    new-array v14, v9, [D

    .line 370
    .line 371
    new-array v15, v9, [D

    .line 372
    .line 373
    invoke-static {v10, v11, v12}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 374
    .line 375
    .line 376
    const-wide/16 v10, 0x0

    .line 377
    .line 378
    aput-wide v10, v13, v4

    .line 379
    .line 380
    aput-wide v10, v13, v3

    .line 381
    .line 382
    const/16 v7, 0x13

    .line 383
    .line 384
    :goto_4
    if-ltz v7, :cond_5

    .line 385
    .line 386
    invoke-static {v12, v13, v15}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 387
    .line 388
    .line 389
    aget-wide v10, v15, v3

    .line 390
    .line 391
    aput-wide v10, v13, v3

    .line 392
    .line 393
    aget-wide v10, v15, v4

    .line 394
    .line 395
    aput-wide v10, v13, v4

    .line 396
    .line 397
    sget-object v10, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    .line 398
    .line 399
    aget-wide v10, v10, v7

    .line 400
    .line 401
    invoke-static {v10, v11, v15}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 402
    .line 403
    .line 404
    invoke-static {v15, v14}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    .line 405
    .line 406
    .line 407
    invoke-static {v13, v14, v15}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 408
    .line 409
    .line 410
    aget-wide v10, v15, v3

    .line 411
    .line 412
    aput-wide v10, v13, v3

    .line 413
    .line 414
    aget-wide v10, v15, v4

    .line 415
    .line 416
    aput-wide v10, v13, v4

    .line 417
    .line 418
    add-int/lit8 v7, v7, -0x1

    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_5
    aget-wide v10, v13, v3

    .line 422
    .line 423
    aput-wide v10, v5, v3

    .line 424
    .line 425
    aget-wide v12, v13, v4

    .line 426
    .line 427
    aput-wide v12, v5, v4

    .line 428
    .line 429
    sget-object v7, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_A:[D

    .line 430
    .line 431
    aput-wide v10, v7, v6

    .line 432
    .line 433
    sget-object v7, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_B:[D

    .line 434
    .line 435
    aget-wide v10, v5, v4

    .line 436
    .line 437
    aput-wide v10, v7, v6

    .line 438
    .line 439
    add-int/2addr v6, v4

    .line 440
    goto :goto_3

    .line 441
    :cond_6
    move v5, v3

    .line 442
    :goto_5
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->LN_MANT:[[D

    .line 443
    .line 444
    const/16 v8, 0x400

    .line 445
    .line 446
    if-ge v5, v8, :cond_8

    .line 447
    .line 448
    int-to-long v10, v5

    .line 449
    const/16 v12, 0x2a

    .line 450
    .line 451
    shl-long/2addr v10, v12

    .line 452
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 453
    .line 454
    or-long/2addr v10, v12

    .line 455
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 456
    .line 457
    .line 458
    move-result-wide v10

    .line 459
    new-array v12, v9, [D

    .line 460
    .line 461
    new-array v13, v9, [D

    .line 462
    .line 463
    new-array v14, v9, [D

    .line 464
    .line 465
    new-array v15, v9, [D

    .line 466
    .line 467
    invoke-static {v10, v11, v12}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 468
    .line 469
    .line 470
    aget-wide v10, v12, v3

    .line 471
    .line 472
    add-double/2addr v10, v0

    .line 473
    aput-wide v10, v12, v3

    .line 474
    .line 475
    invoke-static {v12}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    .line 476
    .line 477
    .line 478
    invoke-static {v12, v15}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    .line 479
    .line 480
    .line 481
    aget-wide v10, v12, v3

    .line 482
    .line 483
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 484
    .line 485
    sub-double v10, v10, v16

    .line 486
    .line 487
    aput-wide v10, v12, v3

    .line 488
    .line 489
    invoke-static {v12}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    .line 490
    .line 491
    .line 492
    invoke-static {v12, v15, v14}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 493
    .line 494
    .line 495
    aget-wide v10, v14, v3

    .line 496
    .line 497
    aput-wide v10, v12, v3

    .line 498
    .line 499
    aget-wide v10, v14, v4

    .line 500
    .line 501
    aput-wide v10, v12, v4

    .line 502
    .line 503
    invoke-static {v12, v12, v13}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 504
    .line 505
    .line 506
    sget-object v10, Lorg/apache/commons/math/util/FastMath;->LN_SPLIT_COEF:[[D

    .line 507
    .line 508
    const/16 v11, 0xf

    .line 509
    .line 510
    aget-object v11, v10, v11

    .line 511
    .line 512
    aget-wide v16, v11, v3

    .line 513
    .line 514
    aput-wide v16, v14, v3

    .line 515
    .line 516
    aget-wide v16, v11, v4

    .line 517
    .line 518
    aput-wide v16, v14, v4

    .line 519
    .line 520
    move v11, v2

    .line 521
    :goto_6
    if-ltz v11, :cond_7

    .line 522
    .line 523
    invoke-static {v14, v13, v15}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 524
    .line 525
    .line 526
    aget-wide v16, v15, v3

    .line 527
    .line 528
    aput-wide v16, v14, v3

    .line 529
    .line 530
    aget-wide v16, v15, v4

    .line 531
    .line 532
    aput-wide v16, v14, v4

    .line 533
    .line 534
    aget-object v0, v10, v11

    .line 535
    .line 536
    invoke-static {v14, v0, v15}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 537
    .line 538
    .line 539
    aget-wide v0, v15, v3

    .line 540
    .line 541
    aput-wide v0, v14, v3

    .line 542
    .line 543
    aget-wide v0, v15, v4

    .line 544
    .line 545
    aput-wide v0, v14, v4

    .line 546
    .line 547
    add-int/lit8 v11, v11, -0x1

    .line 548
    .line 549
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 550
    .line 551
    goto :goto_6

    .line 552
    :cond_7
    invoke-static {v14, v12, v15}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 553
    .line 554
    .line 555
    aget-wide v0, v15, v3

    .line 556
    .line 557
    aput-wide v0, v14, v3

    .line 558
    .line 559
    aget-wide v0, v15, v4

    .line 560
    .line 561
    aput-wide v0, v14, v4

    .line 562
    .line 563
    aput-object v14, v6, v5

    .line 564
    .line 565
    add-int/2addr v5, v4

    .line 566
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 567
    .line 568
    goto :goto_5

    .line 569
    :cond_8
    new-array v0, v9, [D

    .line 570
    .line 571
    move v1, v3

    .line 572
    :goto_7
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_B:[D

    .line 573
    .line 574
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_A:[D

    .line 575
    .line 576
    sget-object v8, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_B:[D

    .line 577
    .line 578
    sget-object v10, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_A:[D

    .line 579
    .line 580
    const/4 v11, 0x7

    .line 581
    if-ge v1, v11, :cond_f

    .line 582
    .line 583
    int-to-double v11, v1

    .line 584
    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    .line 585
    .line 586
    div-double/2addr v11, v13

    .line 587
    new-array v13, v9, [D

    .line 588
    .line 589
    new-array v14, v9, [D

    .line 590
    .line 591
    new-array v15, v9, [D

    .line 592
    .line 593
    new-array v7, v9, [D

    .line 594
    .line 595
    invoke-static {v11, v12, v13}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 596
    .line 597
    .line 598
    const-wide/16 v17, 0x0

    .line 599
    .line 600
    aput-wide v17, v14, v4

    .line 601
    .line 602
    aput-wide v17, v14, v3

    .line 603
    .line 604
    const/16 v17, 0x13

    .line 605
    .line 606
    :goto_8
    sget-object v18, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    .line 607
    .line 608
    if-ltz v17, :cond_b

    .line 609
    .line 610
    invoke-static {v13, v14, v7}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 611
    .line 612
    .line 613
    aget-wide v19, v7, v3

    .line 614
    .line 615
    aput-wide v19, v14, v3

    .line 616
    .line 617
    aget-wide v19, v7, v4

    .line 618
    .line 619
    aput-wide v19, v14, v4

    .line 620
    .line 621
    and-int/lit8 v19, v17, 0x1

    .line 622
    .line 623
    if-nez v19, :cond_9

    .line 624
    .line 625
    move-object/from16 v20, v5

    .line 626
    .line 627
    move-object/from16 v19, v10

    .line 628
    .line 629
    goto :goto_a

    .line 630
    :cond_9
    move-object/from16 v20, v5

    .line 631
    .line 632
    aget-wide v4, v18, v17

    .line 633
    .line 634
    invoke-static {v4, v5, v7}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 635
    .line 636
    .line 637
    invoke-static {v7, v15}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    .line 638
    .line 639
    .line 640
    and-int/lit8 v4, v17, 0x2

    .line 641
    .line 642
    if-eqz v4, :cond_a

    .line 643
    .line 644
    aget-wide v4, v15, v3

    .line 645
    .line 646
    neg-double v4, v4

    .line 647
    aput-wide v4, v15, v3

    .line 648
    .line 649
    move-object/from16 v19, v10

    .line 650
    .line 651
    const/4 v4, 0x1

    .line 652
    aget-wide v9, v15, v4

    .line 653
    .line 654
    neg-double v9, v9

    .line 655
    aput-wide v9, v15, v4

    .line 656
    .line 657
    goto :goto_9

    .line 658
    :cond_a
    move-object/from16 v19, v10

    .line 659
    .line 660
    const/4 v4, 0x1

    .line 661
    :goto_9
    invoke-static {v14, v15, v7}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 662
    .line 663
    .line 664
    aget-wide v9, v7, v3

    .line 665
    .line 666
    aput-wide v9, v14, v3

    .line 667
    .line 668
    aget-wide v9, v7, v4

    .line 669
    .line 670
    aput-wide v9, v14, v4

    .line 671
    .line 672
    :goto_a
    add-int/lit8 v17, v17, -0x1

    .line 673
    .line 674
    move-object/from16 v10, v19

    .line 675
    .line 676
    move-object/from16 v5, v20

    .line 677
    .line 678
    const/4 v9, 0x2

    .line 679
    goto :goto_8

    .line 680
    :cond_b
    move-object/from16 v20, v5

    .line 681
    .line 682
    move-object/from16 v19, v10

    .line 683
    .line 684
    aget-wide v9, v14, v3

    .line 685
    .line 686
    aput-wide v9, v0, v3

    .line 687
    .line 688
    aget-wide v13, v14, v4

    .line 689
    .line 690
    aput-wide v13, v0, v4

    .line 691
    .line 692
    aput-wide v9, v19, v1

    .line 693
    .line 694
    aget-wide v9, v0, v4

    .line 695
    .line 696
    aput-wide v9, v8, v1

    .line 697
    .line 698
    const/4 v5, 0x2

    .line 699
    new-array v7, v5, [D

    .line 700
    .line 701
    new-array v8, v5, [D

    .line 702
    .line 703
    new-array v9, v5, [D

    .line 704
    .line 705
    new-array v10, v5, [D

    .line 706
    .line 707
    invoke-static {v11, v12, v7}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 708
    .line 709
    .line 710
    const-wide/16 v12, 0x0

    .line 711
    .line 712
    aput-wide v12, v8, v4

    .line 713
    .line 714
    aput-wide v12, v8, v3

    .line 715
    .line 716
    const/16 v11, 0x13

    .line 717
    .line 718
    :goto_b
    if-ltz v11, :cond_e

    .line 719
    .line 720
    invoke-static {v7, v8, v10}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 721
    .line 722
    .line 723
    aget-wide v14, v10, v3

    .line 724
    .line 725
    aput-wide v14, v8, v3

    .line 726
    .line 727
    aget-wide v14, v10, v4

    .line 728
    .line 729
    aput-wide v14, v8, v4

    .line 730
    .line 731
    and-int/lit8 v14, v11, 0x1

    .line 732
    .line 733
    if-eqz v14, :cond_c

    .line 734
    .line 735
    goto :goto_c

    .line 736
    :cond_c
    aget-wide v14, v18, v11

    .line 737
    .line 738
    invoke-static {v14, v15, v10}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 739
    .line 740
    .line 741
    invoke-static {v10, v9}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    .line 742
    .line 743
    .line 744
    const/4 v5, 0x2

    .line 745
    and-int/lit8 v14, v11, 0x2

    .line 746
    .line 747
    if-eqz v14, :cond_d

    .line 748
    .line 749
    aget-wide v14, v9, v3

    .line 750
    .line 751
    neg-double v14, v14

    .line 752
    aput-wide v14, v9, v3

    .line 753
    .line 754
    aget-wide v14, v9, v4

    .line 755
    .line 756
    neg-double v14, v14

    .line 757
    aput-wide v14, v9, v4

    .line 758
    .line 759
    :cond_d
    invoke-static {v8, v9, v10}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 760
    .line 761
    .line 762
    aget-wide v14, v10, v3

    .line 763
    .line 764
    aput-wide v14, v8, v3

    .line 765
    .line 766
    aget-wide v14, v10, v4

    .line 767
    .line 768
    aput-wide v14, v8, v4

    .line 769
    .line 770
    :goto_c
    add-int/lit8 v11, v11, -0x1

    .line 771
    .line 772
    goto :goto_b

    .line 773
    :cond_e
    aget-wide v9, v8, v3

    .line 774
    .line 775
    aput-wide v9, v0, v3

    .line 776
    .line 777
    aget-wide v7, v8, v4

    .line 778
    .line 779
    aput-wide v7, v0, v4

    .line 780
    .line 781
    aput-wide v9, v6, v1

    .line 782
    .line 783
    aget-wide v6, v0, v4

    .line 784
    .line 785
    aput-wide v6, v20, v1

    .line 786
    .line 787
    add-int/2addr v1, v4

    .line 788
    const/4 v9, 0x2

    .line 789
    goto/16 :goto_7

    .line 790
    .line 791
    :cond_f
    move-object/from16 v20, v5

    .line 792
    .line 793
    move-object/from16 v19, v10

    .line 794
    .line 795
    :goto_d
    if-ge v11, v2, :cond_11

    .line 796
    .line 797
    const/4 v1, 0x2

    .line 798
    new-array v7, v1, [D

    .line 799
    .line 800
    new-array v9, v1, [D

    .line 801
    .line 802
    new-array v10, v1, [D

    .line 803
    .line 804
    new-array v12, v1, [D

    .line 805
    .line 806
    and-int/lit8 v5, v11, 0x1

    .line 807
    .line 808
    if-nez v5, :cond_10

    .line 809
    .line 810
    div-int/lit8 v13, v11, 0x2

    .line 811
    .line 812
    aget-wide v14, v19, v13

    .line 813
    .line 814
    aput-wide v14, v7, v3

    .line 815
    .line 816
    aget-wide v14, v8, v13

    .line 817
    .line 818
    aput-wide v14, v7, v4

    .line 819
    .line 820
    aget-wide v14, v6, v13

    .line 821
    .line 822
    aput-wide v14, v9, v3

    .line 823
    .line 824
    aget-wide v13, v20, v13

    .line 825
    .line 826
    aput-wide v13, v9, v4

    .line 827
    .line 828
    invoke-static {v7, v9, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 829
    .line 830
    .line 831
    aget-wide v13, v0, v3

    .line 832
    .line 833
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    .line 834
    .line 835
    mul-double/2addr v13, v15

    .line 836
    aput-wide v13, v19, v11

    .line 837
    .line 838
    aget-wide v13, v0, v4

    .line 839
    .line 840
    mul-double/2addr v13, v15

    .line 841
    aput-wide v13, v8, v11

    .line 842
    .line 843
    invoke-static {v9, v9, v10}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 844
    .line 845
    .line 846
    invoke-static {v7, v7, v12}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 847
    .line 848
    .line 849
    aget-wide v13, v12, v3

    .line 850
    .line 851
    neg-double v13, v13

    .line 852
    aput-wide v13, v12, v3

    .line 853
    .line 854
    aget-wide v13, v12, v4

    .line 855
    .line 856
    neg-double v13, v13

    .line 857
    aput-wide v13, v12, v4

    .line 858
    .line 859
    invoke-static {v10, v12, v0}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 860
    .line 861
    .line 862
    aget-wide v9, v0, v3

    .line 863
    .line 864
    aput-wide v9, v6, v11

    .line 865
    .line 866
    aget-wide v9, v0, v4

    .line 867
    .line 868
    aput-wide v9, v20, v11

    .line 869
    .line 870
    goto :goto_e

    .line 871
    :cond_10
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    .line 872
    .line 873
    div-int/lit8 v13, v11, 0x2

    .line 874
    .line 875
    aget-wide v17, v19, v13

    .line 876
    .line 877
    aput-wide v17, v7, v3

    .line 878
    .line 879
    aget-wide v17, v8, v13

    .line 880
    .line 881
    aput-wide v17, v7, v4

    .line 882
    .line 883
    aget-wide v17, v6, v13

    .line 884
    .line 885
    aput-wide v17, v9, v3

    .line 886
    .line 887
    aget-wide v17, v20, v13

    .line 888
    .line 889
    aput-wide v17, v9, v4

    .line 890
    .line 891
    add-int/2addr v13, v4

    .line 892
    aget-wide v17, v19, v13

    .line 893
    .line 894
    aput-wide v17, v10, v3

    .line 895
    .line 896
    aget-wide v17, v8, v13

    .line 897
    .line 898
    aput-wide v17, v10, v4

    .line 899
    .line 900
    aget-wide v17, v6, v13

    .line 901
    .line 902
    aget-wide v13, v20, v13

    .line 903
    .line 904
    const/4 v1, 0x2

    .line 905
    new-array v5, v1, [D

    .line 906
    .line 907
    move-object v1, v5

    .line 908
    aput-wide v17, v1, v3

    .line 909
    .line 910
    aput-wide v13, v1, v4

    .line 911
    .line 912
    invoke-static {v7, v1, v12}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 913
    .line 914
    .line 915
    invoke-static {v9, v10, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 916
    .line 917
    .line 918
    invoke-static {v0, v12, v0}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 919
    .line 920
    .line 921
    aget-wide v13, v0, v3

    .line 922
    .line 923
    aput-wide v13, v19, v11

    .line 924
    .line 925
    aget-wide v13, v0, v4

    .line 926
    .line 927
    aput-wide v13, v8, v11

    .line 928
    .line 929
    invoke-static {v9, v1, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 930
    .line 931
    .line 932
    invoke-static {v7, v10, v12}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 933
    .line 934
    .line 935
    aget-wide v9, v12, v3

    .line 936
    .line 937
    neg-double v9, v9

    .line 938
    aput-wide v9, v12, v3

    .line 939
    .line 940
    aget-wide v9, v12, v4

    .line 941
    .line 942
    neg-double v9, v9

    .line 943
    aput-wide v9, v12, v4

    .line 944
    .line 945
    invoke-static {v0, v12, v0}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 946
    .line 947
    .line 948
    aget-wide v9, v0, v3

    .line 949
    .line 950
    aput-wide v9, v6, v11

    .line 951
    .line 952
    aget-wide v9, v0, v4

    .line 953
    .line 954
    aput-wide v9, v20, v11

    .line 955
    .line 956
    :goto_e
    add-int/2addr v11, v4

    .line 957
    goto/16 :goto_d

    .line 958
    .line 959
    :cond_11
    move v0, v3

    .line 960
    :goto_f
    if-ge v0, v2, :cond_12

    .line 961
    .line 962
    const/4 v1, 0x2

    .line 963
    new-array v5, v1, [D

    .line 964
    .line 965
    aget-wide v9, v6, v0

    .line 966
    .line 967
    aget-wide v11, v20, v0

    .line 968
    .line 969
    new-array v7, v1, [D

    .line 970
    .line 971
    aput-wide v9, v7, v3

    .line 972
    .line 973
    aput-wide v11, v7, v4

    .line 974
    .line 975
    invoke-static {v7, v5}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    .line 976
    .line 977
    .line 978
    aget-wide v9, v19, v0

    .line 979
    .line 980
    aget-wide v11, v8, v0

    .line 981
    .line 982
    new-array v13, v1, [D

    .line 983
    .line 984
    aput-wide v9, v13, v3

    .line 985
    .line 986
    aput-wide v11, v13, v4

    .line 987
    .line 988
    invoke-static {v13, v5, v7}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 989
    .line 990
    .line 991
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_A:[D

    .line 992
    .line 993
    aget-wide v9, v7, v3

    .line 994
    .line 995
    aput-wide v9, v5, v0

    .line 996
    .line 997
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_B:[D

    .line 998
    .line 999
    aget-wide v9, v7, v4

    .line 1000
    .line 1001
    aput-wide v9, v5, v0

    .line 1002
    .line 1003
    add-int/2addr v0, v4

    .line 1004
    goto :goto_f

    .line 1005
    :cond_12
    return-void

    .line 1006
    nop

    .line 1007
    :array_0
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
    .end array-data

    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    :array_1
    .array-data 8
        0x3fe5555540000000L    # 0.6666666269302368
        0x3e65555555555575L    # 3.9736429850260626E-8
    .end array-data

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    :array_2
    .array-data 8
        0x3fd9999980000000L    # 0.3999999761581421
        0x3e5999999998f89bL    # 2.3841857910019882E-8
    .end array-data

    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    :array_3
    .array-data 8
        0x3fd2492480000000L    # 0.2857142686843872
        0x3e52492492f04decL    # 1.7029898543501842E-8
    .end array-data

    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    :array_4
    .array-data 8
        0x3fcc71c700000000L    # 0.2222222089767456
        0x3e4c71c65d4f9f93L    # 1.3245471311735498E-8
    .end array-data

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    :array_5
    .array-data 8
        0x3fc745d140000000L    # 0.1818181574344635
        0x3e5a2eadbefa2565L    # 2.4384203044354907E-8
    .end array-data

    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    :array_6
    .array-data 8
        0x3fc3b13b00000000L    # 0.1538461446762085
        0x3e43a0e93f3d8b15L    # 9.140260083262505E-9
    .end array-data

    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    :array_7
    .array-data 8
        0x3fc1111100000000L
        0x3e43cd12b7438617L    # 9.220590270857665E-9
    .end array-data

    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    :array_8
    .array-data 8
        0x3fbe1e1d40000000L    # 0.11764700710773468
        0x3e4a9d505e323f26L    # 1.2393345855018391E-8
    .end array-data

    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    :array_9
    .array-data 8
        0x3fbaf29580000000L    # 0.10526403784751892
        0x3e41b855b8f7ea77L    # 8.251545029714408E-9
    .end array-data

    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    :array_a
    .array-data 8
        0x3fb8608e40000000L    # 0.0952233225107193
        0x3e4b38ab3aca7380L    # 1.2675934823758863E-8
    .end array-data

    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    :array_b
    .array-data 8
        0x3fb64e8f40000000L    # 0.08713622391223907
        0x3e488bd8ad726e7fL    # 1.1430250008909141E-8
    .end array-data

    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    :array_c
    .array-data 8
        0x3fb41380c0000000L    # 0.07842259109020233
        0x3e24a721115060edL    # 2.404307984052299E-9
    .end array-data

    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    :array_d
    .array-data 8
        0x3fb56e9340000000L    # 0.08371849358081818
        0x3e494302f4f7069bL    # 1.176342548272881E-8
    .end array-data

    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    :array_e
    .array-data 8
        0x3f9f52e000000000L    # 0.030589580535888672
        0x3e164345ef031be1L    # 1.2958646899018938E-9
    .end array-data

    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    :array_f
    .array-data 8
        0x3fc32d66c0000000L    # 0.14982303977012634
        0x3e4a5298001e0c82L    # 1.225743062930824E-8
    .end array-data

    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    :array_10
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3b1b6a1c267a4b13L    # 5.669184079525E-24
    .end array-data

    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    :array_11
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    :array_12
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e555555554bc4dfL    # 1.986821492305628E-8
    .end array-data

    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    :array_13
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x42cd3e694bd1e228L    # -6.663542893624021E-14
    .end array-data

    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    :array_14
    .array-data 8
        0x3fc9999980000000L    # 0.19999998807907104
        0x3e4999ab97c05f95L    # 1.1921056801463227E-8
    .end array-data

    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    :array_15
    .array-data 8
        -0x403aaaaac0000000L    # -0.1666666567325592
        -0x41bf3fad3df74b94L    # -7.800414592973399E-9
    .end array-data

    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    :array_16
    .array-data 8
        0x3fc2492480000000L    # 0.1428571343421936
        0x3e38443f9cfb0f62L    # 5.650007086920087E-9
    .end array-data

    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    :array_17
    .array-data 8
        -0x403fff2bc0000000L    # -0.12502530217170715
        -0x422b8a4dddba2203L    # -7.44321345601866E-11
    .end array-data

    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    :array_18
    .array-data 8
        0x3fbc738b80000000L    # 0.11113807559013367
        0x3e43cc7f8d7f1d27L    # 9.219544613762692E-9
    .end array-data
.end method

.method public static abs(D)D
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p0, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    neg-double p0, p0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    cmpl-double v2, p0, v0

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    move-wide p0, v0

    .line 14
    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static exp(D)D
    .locals 14

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p0, v0

    .line 4
    .line 5
    sget-object v3, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    .line 6
    .line 7
    sget-object v4, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    .line 8
    .line 9
    const/16 v5, 0x2c5

    .line 10
    .line 11
    if-gez v2, :cond_3

    .line 12
    .line 13
    neg-double v6, p0

    .line 14
    double-to-int v2, v6

    .line 15
    const/16 v6, 0x2ea

    .line 16
    .line 17
    if-le v2, v6, :cond_0

    .line 18
    .line 19
    return-wide v0

    .line 20
    :cond_0
    if-le v2, v5, :cond_1

    .line 21
    .line 22
    const-wide v0, 0x4044188000000000L    # 40.19140625

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    add-double/2addr p0, v0

    .line 28
    invoke-static {p0, p1}, Lorg/apache/commons/math/util/FastMath;->exp(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    const-wide v0, 0x438fa553a68e6b40L    # 2.8504009514401178E17

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    div-double/2addr p0, v0

    .line 38
    return-wide p0

    .line 39
    :cond_1
    if-ne v2, v5, :cond_2

    .line 40
    .line 41
    const-wide v0, 0x3ff7e80000000000L    # 1.494140625

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    add-double/2addr p0, v0

    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/math/util/FastMath;->exp(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    const-wide v0, 0x4011d270274c83abL    # 4.455505956692757

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    div-double/2addr p0, v0

    .line 57
    return-wide p0

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    rsub-int v0, v2, 0x2ee

    .line 61
    .line 62
    aget-wide v4, v4, v0

    .line 63
    .line 64
    aget-wide v0, v3, v0

    .line 65
    .line 66
    neg-int v2, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    double-to-int v2, p0

    .line 69
    if-le v2, v5, :cond_4

    .line 70
    .line 71
    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 72
    .line 73
    return-wide p0

    .line 74
    :cond_4
    add-int/lit16 v0, v2, 0x2ee

    .line 75
    .line 76
    aget-wide v4, v4, v0

    .line 77
    .line 78
    aget-wide v0, v3, v0

    .line 79
    .line 80
    :goto_0
    int-to-double v2, v2

    .line 81
    sub-double v6, p0, v2

    .line 82
    .line 83
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 84
    .line 85
    mul-double/2addr v6, v8

    .line 86
    double-to-int v6, v6

    .line 87
    sget-object v7, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_A:[D

    .line 88
    .line 89
    aget-wide v10, v7, v6

    .line 90
    .line 91
    sget-object v7, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_B:[D

    .line 92
    .line 93
    aget-wide v12, v7, v6

    .line 94
    .line 95
    int-to-double v6, v6

    .line 96
    div-double/2addr v6, v8

    .line 97
    add-double/2addr v6, v2

    .line 98
    sub-double/2addr p0, v6

    .line 99
    const-wide v2, 0x3fa5580030b20837L    # 0.04168701738764507

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    mul-double/2addr v2, p0

    .line 105
    const-wide v6, 0x3fc55555329ee223L    # 0.1666666505023083

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    add-double/2addr v2, v6

    .line 111
    mul-double/2addr v2, p0

    .line 112
    const-wide v6, 0x3fe0000000009631L    # 0.5000000000042687

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    add-double/2addr v2, v6

    .line 118
    mul-double/2addr v2, p0

    .line 119
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 120
    .line 121
    add-double/2addr v2, v6

    .line 122
    mul-double/2addr v2, p0

    .line 123
    const-wide p0, -0x4418bd44dd9ed4efL    # -3.940510424527919E-20

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    add-double/2addr v2, p0

    .line 129
    mul-double p0, v4, v10

    .line 130
    .line 131
    mul-double/2addr v4, v12

    .line 132
    mul-double/2addr v10, v0

    .line 133
    add-double/2addr v10, v4

    .line 134
    mul-double/2addr v0, v12

    .line 135
    add-double/2addr v0, v10

    .line 136
    add-double v4, v0, p0

    .line 137
    .line 138
    mul-double/2addr v4, v2

    .line 139
    add-double/2addr v4, v0

    .line 140
    add-double/2addr v4, p0

    .line 141
    return-wide v4
.end method

.method public static log(D)D
    .locals 18

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v2, p0, v0

    .line 4
    .line 5
    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    const-wide/high16 v7, -0x8000000000000000L

    .line 16
    .line 17
    and-long/2addr v7, v5

    .line 18
    const-wide/16 v9, 0x0

    .line 19
    .line 20
    cmp-long v7, v7, v9

    .line 21
    .line 22
    if-nez v7, :cond_1

    .line 23
    .line 24
    cmpl-double v7, p0, p0

    .line 25
    .line 26
    if-eqz v7, :cond_2

    .line 27
    .line 28
    :cond_1
    if-eqz v2, :cond_2

    .line 29
    .line 30
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_2
    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 35
    .line 36
    cmpl-double v11, p0, v7

    .line 37
    .line 38
    if-nez v11, :cond_3

    .line 39
    .line 40
    move-wide v3, v7

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_3
    const/16 v7, 0x34

    .line 44
    .line 45
    shr-long v7, v5, v7

    .line 46
    .line 47
    long-to-int v7, v7

    .line 48
    add-int/lit16 v7, v7, -0x3ff

    .line 49
    .line 50
    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 51
    .line 52
    and-long/2addr v11, v5

    .line 53
    cmp-long v8, v11, v9

    .line 54
    .line 55
    const/4 v11, 0x1

    .line 56
    if-nez v8, :cond_5

    .line 57
    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_4
    shl-long v2, v5, v11

    .line 63
    .line 64
    move-wide v5, v2

    .line 65
    :goto_0
    const-wide/high16 v2, 0x10000000000000L

    .line 66
    .line 67
    and-long/2addr v2, v5

    .line 68
    cmp-long v2, v2, v9

    .line 69
    .line 70
    if-nez v2, :cond_5

    .line 71
    .line 72
    add-int/lit8 v7, v7, -0x1

    .line 73
    .line 74
    shl-long/2addr v5, v11

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    const/4 v2, -0x1

    .line 77
    const/4 v3, 0x0

    .line 78
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 79
    .line 80
    if-eq v7, v2, :cond_6

    .line 81
    .line 82
    if-nez v7, :cond_8

    .line 83
    .line 84
    :cond_6
    const-wide v12, 0x3ff028f5c28f5c29L    # 1.01

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    cmpg-double v2, p0, v12

    .line 90
    .line 91
    if-gez v2, :cond_8

    .line 92
    .line 93
    const-wide v12, 0x3fefae147ae147aeL    # 0.99

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    cmpl-double v2, p0, v12

    .line 99
    .line 100
    if-lez v2, :cond_8

    .line 101
    .line 102
    sub-double v0, p0, v8

    .line 103
    .line 104
    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    .line 105
    .line 106
    mul-double v6, v0, v4

    .line 107
    .line 108
    add-double v8, v0, v6

    .line 109
    .line 110
    sub-double/2addr v8, v6

    .line 111
    sub-double/2addr v0, v8

    .line 112
    sget-object v2, Lorg/apache/commons/math/util/FastMath;->LN_QUICK_COEF:[[D

    .line 113
    .line 114
    const/16 v6, 0x8

    .line 115
    .line 116
    aget-object v6, v2, v6

    .line 117
    .line 118
    aget-wide v12, v6, v3

    .line 119
    .line 120
    aget-wide v6, v6, v11

    .line 121
    .line 122
    const/4 v10, 0x7

    .line 123
    :goto_1
    if-ltz v10, :cond_7

    .line 124
    .line 125
    mul-double v14, v12, v8

    .line 126
    .line 127
    mul-double/2addr v12, v0

    .line 128
    mul-double v16, v6, v8

    .line 129
    .line 130
    add-double v16, v16, v12

    .line 131
    .line 132
    mul-double/2addr v6, v0

    .line 133
    add-double v6, v6, v16

    .line 134
    .line 135
    mul-double v12, v14, v4

    .line 136
    .line 137
    add-double v16, v14, v12

    .line 138
    .line 139
    sub-double v16, v16, v12

    .line 140
    .line 141
    sub-double v14, v14, v16

    .line 142
    .line 143
    add-double/2addr v14, v6

    .line 144
    aget-object v6, v2, v10

    .line 145
    .line 146
    aget-wide v12, v6, v3

    .line 147
    .line 148
    add-double v16, v16, v12

    .line 149
    .line 150
    aget-wide v6, v6, v11

    .line 151
    .line 152
    add-double/2addr v14, v6

    .line 153
    mul-double v6, v16, v4

    .line 154
    .line 155
    add-double v12, v16, v6

    .line 156
    .line 157
    sub-double/2addr v12, v6

    .line 158
    sub-double v16, v16, v12

    .line 159
    .line 160
    add-double v6, v16, v14

    .line 161
    .line 162
    add-int/lit8 v10, v10, -0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    mul-double v2, v12, v8

    .line 166
    .line 167
    mul-double/2addr v12, v0

    .line 168
    mul-double/2addr v8, v6

    .line 169
    add-double/2addr v8, v12

    .line 170
    mul-double/2addr v6, v0

    .line 171
    add-double/2addr v6, v8

    .line 172
    mul-double/2addr v4, v2

    .line 173
    add-double v0, v2, v4

    .line 174
    .line 175
    sub-double/2addr v0, v4

    .line 176
    sub-double/2addr v2, v0

    .line 177
    add-double/2addr v2, v6

    .line 178
    add-double v3, v2, v0

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_8
    sget-object v2, Lorg/apache/commons/math/util/FastMath;->LN_MANT:[[D

    .line 182
    .line 183
    const-wide v12, 0xffc0000000000L

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    and-long/2addr v12, v5

    .line 189
    const/16 v4, 0x2a

    .line 190
    .line 191
    shr-long v14, v12, v4

    .line 192
    .line 193
    long-to-int v4, v14

    .line 194
    aget-object v2, v2, v4

    .line 195
    .line 196
    const-wide v14, 0x3ffffffffffL

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    and-long v4, v5, v14

    .line 202
    .line 203
    long-to-double v4, v4

    .line 204
    const-wide/high16 v14, 0x4330000000000000L    # 4.503599627370496E15

    .line 205
    .line 206
    long-to-double v12, v12

    .line 207
    add-double/2addr v12, v14

    .line 208
    div-double/2addr v4, v12

    .line 209
    const-wide v12, -0x403ab85bc817c0f3L    # -0.16624882440418567

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    mul-double/2addr v12, v4

    .line 215
    const-wide v14, 0x3fc99995c0570824L    # 0.19999954120254515

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    add-double/2addr v12, v14

    .line 221
    mul-double/2addr v12, v4

    .line 222
    const-wide v14, -0x40300000007fae53L    # -0.2499999997677497

    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    add-double/2addr v12, v14

    .line 228
    mul-double/2addr v12, v4

    .line 229
    const-wide v14, 0x3fd5555555555198L    # 0.3333333333332802

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    add-double/2addr v12, v14

    .line 235
    mul-double/2addr v12, v4

    .line 236
    const-wide/high16 v14, -0x4020000000000000L    # -0.5

    .line 237
    .line 238
    add-double/2addr v12, v14

    .line 239
    mul-double/2addr v12, v4

    .line 240
    add-double/2addr v12, v8

    .line 241
    mul-double/2addr v12, v4

    .line 242
    int-to-double v4, v7

    .line 243
    const-wide v6, 0x3fe62e42c0000000L    # 0.6931470632553101

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    mul-double/2addr v6, v4

    .line 249
    aget-wide v8, v2, v3

    .line 250
    .line 251
    add-double v14, v6, v8

    .line 252
    .line 253
    sub-double v6, v14, v6

    .line 254
    .line 255
    sub-double/2addr v6, v8

    .line 256
    neg-double v6, v6

    .line 257
    add-double/2addr v6, v0

    .line 258
    add-double v8, v14, v12

    .line 259
    .line 260
    sub-double v14, v8, v14

    .line 261
    .line 262
    sub-double/2addr v14, v12

    .line 263
    neg-double v12, v14

    .line 264
    add-double/2addr v6, v12

    .line 265
    const-wide v12, 0x3e7f7d1cf79abc9eL    # 1.1730463525082348E-7

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    mul-double/2addr v4, v12

    .line 271
    add-double v12, v8, v4

    .line 272
    .line 273
    sub-double v8, v12, v8

    .line 274
    .line 275
    sub-double/2addr v8, v4

    .line 276
    neg-double v3, v8

    .line 277
    add-double/2addr v6, v3

    .line 278
    aget-wide v2, v2, v11

    .line 279
    .line 280
    add-double v4, v12, v2

    .line 281
    .line 282
    sub-double v8, v4, v12

    .line 283
    .line 284
    sub-double/2addr v8, v2

    .line 285
    neg-double v2, v8

    .line 286
    add-double/2addr v6, v2

    .line 287
    add-double v2, v4, v0

    .line 288
    .line 289
    sub-double v4, v2, v4

    .line 290
    .line 291
    sub-double/2addr v4, v0

    .line 292
    neg-double v0, v4

    .line 293
    add-double/2addr v6, v0

    .line 294
    add-double v3, v6, v2

    .line 295
    .line 296
    :goto_2
    return-wide v3
.end method

.method public static max(DD)D
    .locals 4

    .line 1
    cmpl-double v0, p0, p2

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    cmpg-double v1, p0, p2

    .line 7
    .line 8
    if-gez v1, :cond_1

    .line 9
    .line 10
    return-wide p2

    .line 11
    :cond_1
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    .line 14
    .line 15
    return-wide p0

    .line 16
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/high16 v2, -0x8000000000000000L

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    return-wide p2

    .line 27
    :cond_3
    return-wide p0
.end method

.method public static quadMult([D[D[D)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [D

    .line 3
    .line 4
    new-array v2, v0, [D

    .line 5
    .line 6
    new-array v0, v0, [D

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aget-wide v4, p0, v3

    .line 10
    .line 11
    invoke-static {v4, v5, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 12
    .line 13
    .line 14
    aget-wide v4, p1, v3

    .line 15
    .line 16
    invoke-static {v4, v5, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 20
    .line 21
    .line 22
    aget-wide v4, v0, v3

    .line 23
    .line 24
    aput-wide v4, p2, v3

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aget-wide v5, v0, v4

    .line 28
    .line 29
    aput-wide v5, p2, v4

    .line 30
    .line 31
    aget-wide v5, p1, v4

    .line 32
    .line 33
    invoke-static {v5, v6, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 37
    .line 38
    .line 39
    aget-wide v5, p2, v3

    .line 40
    .line 41
    aget-wide v7, v0, v3

    .line 42
    .line 43
    add-double v9, v5, v7

    .line 44
    .line 45
    aget-wide v11, p2, v4

    .line 46
    .line 47
    sub-double v5, v9, v5

    .line 48
    .line 49
    sub-double/2addr v5, v7

    .line 50
    sub-double/2addr v11, v5

    .line 51
    aput-wide v11, p2, v4

    .line 52
    .line 53
    aput-wide v9, p2, v3

    .line 54
    .line 55
    aget-wide v5, v0, v4

    .line 56
    .line 57
    add-double v7, v9, v5

    .line 58
    .line 59
    sub-double v9, v7, v9

    .line 60
    .line 61
    sub-double/2addr v9, v5

    .line 62
    sub-double/2addr v11, v9

    .line 63
    aput-wide v11, p2, v4

    .line 64
    .line 65
    aput-wide v7, p2, v3

    .line 66
    .line 67
    aget-wide v5, p0, v4

    .line 68
    .line 69
    invoke-static {v5, v6, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 70
    .line 71
    .line 72
    aget-wide v5, p1, v3

    .line 73
    .line 74
    invoke-static {v5, v6, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 78
    .line 79
    .line 80
    aget-wide v5, p2, v3

    .line 81
    .line 82
    aget-wide v7, v0, v3

    .line 83
    .line 84
    add-double v9, v5, v7

    .line 85
    .line 86
    aget-wide v11, p2, v4

    .line 87
    .line 88
    sub-double v5, v9, v5

    .line 89
    .line 90
    sub-double/2addr v5, v7

    .line 91
    sub-double/2addr v11, v5

    .line 92
    aput-wide v11, p2, v4

    .line 93
    .line 94
    aput-wide v9, p2, v3

    .line 95
    .line 96
    aget-wide v5, v0, v4

    .line 97
    .line 98
    add-double v7, v9, v5

    .line 99
    .line 100
    sub-double v9, v7, v9

    .line 101
    .line 102
    sub-double/2addr v9, v5

    .line 103
    sub-double/2addr v11, v9

    .line 104
    aput-wide v11, p2, v4

    .line 105
    .line 106
    aput-wide v7, p2, v3

    .line 107
    .line 108
    aget-wide v5, p0, v4

    .line 109
    .line 110
    invoke-static {v5, v6, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 111
    .line 112
    .line 113
    aget-wide p0, p1, v4

    .line 114
    .line 115
    invoke-static {p0, p1, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 119
    .line 120
    .line 121
    aget-wide p0, p2, v3

    .line 122
    .line 123
    aget-wide v1, v0, v3

    .line 124
    .line 125
    add-double v5, p0, v1

    .line 126
    .line 127
    aget-wide v7, p2, v4

    .line 128
    .line 129
    sub-double p0, v5, p0

    .line 130
    .line 131
    sub-double/2addr p0, v1

    .line 132
    sub-double/2addr v7, p0

    .line 133
    aput-wide v7, p2, v4

    .line 134
    .line 135
    aput-wide v5, p2, v3

    .line 136
    .line 137
    aget-wide p0, v0, v4

    .line 138
    .line 139
    add-double v0, v5, p0

    .line 140
    .line 141
    sub-double v5, v0, v5

    .line 142
    .line 143
    sub-double/2addr v5, p0

    .line 144
    sub-double/2addr v7, v5

    .line 145
    aput-wide v7, p2, v4

    .line 146
    .line 147
    aput-wide v0, p2, v3

    .line 148
    .line 149
    return-void
.end method

.method public static resplit([D)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    const/4 v3, 0x1

    .line 5
    aget-wide v4, p0, v3

    .line 6
    .line 7
    add-double v6, v1, v4

    .line 8
    .line 9
    sub-double v1, v6, v1

    .line 10
    .line 11
    sub-double/2addr v1, v4

    .line 12
    neg-double v1, v1

    .line 13
    const-wide v4, 0x7dfe94c85c298c4cL    # 8.0E298

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmpg-double v4, v6, v4

    .line 19
    .line 20
    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    .line 21
    .line 22
    if-gez v4, :cond_0

    .line 23
    .line 24
    const-wide v4, -0x2016b37a3d673b4L    # -8.0E298

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmpl-double v4, v6, v4

    .line 30
    .line 31
    if-lez v4, :cond_0

    .line 32
    .line 33
    mul-double/2addr v8, v6

    .line 34
    add-double v4, v6, v8

    .line 35
    .line 36
    sub-double/2addr v4, v8

    .line 37
    aput-wide v4, p0, v0

    .line 38
    .line 39
    sub-double/2addr v6, v4

    .line 40
    add-double/2addr v6, v1

    .line 41
    aput-wide v6, p0, v3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-wide/high16 v4, 0x3e10000000000000L    # 9.313225746154785E-10

    .line 45
    .line 46
    mul-double/2addr v4, v6

    .line 47
    add-double/2addr v4, v6

    .line 48
    sub-double/2addr v4, v6

    .line 49
    mul-double/2addr v4, v8

    .line 50
    aput-wide v4, p0, v0

    .line 51
    .line 52
    sub-double/2addr v6, v4

    .line 53
    add-double/2addr v6, v1

    .line 54
    aput-wide v6, p0, v3

    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public static split(D[D)V
    .locals 7

    .line 1
    const-wide v0, 0x7dfe94c85c298c4cL    # 8.0E298

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpg-double v0, p0, v0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    const-wide v5, -0x2016b37a3d673b4L    # -8.0E298

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmpl-double v0, p0, v5

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    mul-double/2addr v3, p0

    .line 24
    add-double v5, p0, v3

    .line 25
    .line 26
    sub-double/2addr v5, v3

    .line 27
    aput-wide v5, p2, v2

    .line 28
    .line 29
    sub-double/2addr p0, v5

    .line 30
    aput-wide p0, p2, v1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-wide/high16 v5, 0x3e10000000000000L    # 9.313225746154785E-10

    .line 34
    .line 35
    mul-double/2addr v5, p0

    .line 36
    add-double/2addr v5, p0

    .line 37
    sub-double/2addr v5, p0

    .line 38
    mul-double/2addr v5, v3

    .line 39
    aput-wide v5, p2, v2

    .line 40
    .line 41
    sub-double/2addr p0, v5

    .line 42
    aput-wide p0, p2, v1

    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public static splitAdd([D[D[D)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    aget-wide v3, p1, v0

    .line 5
    .line 6
    add-double/2addr v1, v3

    .line 7
    aput-wide v1, p2, v0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    aget-wide v1, p0, v0

    .line 11
    .line 12
    aget-wide p0, p1, v0

    .line 13
    .line 14
    add-double/2addr v1, p0

    .line 15
    aput-wide v1, p2, v0

    .line 16
    .line 17
    invoke-static {p2}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static splitMult([D[D[D)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    aget-wide v3, p1, v0

    .line 5
    .line 6
    mul-double/2addr v1, v3

    .line 7
    aput-wide v1, p2, v0

    .line 8
    .line 9
    aget-wide v1, p0, v0

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aget-wide v4, p1, v3

    .line 13
    .line 14
    mul-double/2addr v1, v4

    .line 15
    aget-wide v6, p0, v3

    .line 16
    .line 17
    aget-wide p0, p1, v0

    .line 18
    .line 19
    mul-double/2addr p0, v6

    .line 20
    add-double/2addr p0, v1

    .line 21
    mul-double/2addr v6, v4

    .line 22
    add-double/2addr v6, p0

    .line 23
    aput-wide v6, p2, v3

    .line 24
    .line 25
    invoke-static {p2}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static splitReciprocal([D[D)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    const-wide/16 v3, 0x0

    .line 5
    .line 6
    cmpl-double v1, v1, v3

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    aget-wide v5, p0, v2

    .line 12
    .line 13
    aput-wide v5, p0, v0

    .line 14
    .line 15
    aput-wide v3, p0, v2

    .line 16
    .line 17
    :cond_0
    aget-wide v5, p0, v0

    .line 18
    .line 19
    const-wide v7, 0x3fefffff80000000L    # 0.9999997615814209

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    div-double v5, v7, v5

    .line 25
    .line 26
    aput-wide v5, p1, v0

    .line 27
    .line 28
    aget-wide v5, p0, v0

    .line 29
    .line 30
    const-wide/high16 v9, 0x3e90000000000000L    # 2.384185791015625E-7

    .line 31
    .line 32
    mul-double/2addr v9, v5

    .line 33
    aget-wide v11, p0, v2

    .line 34
    .line 35
    mul-double/2addr v7, v11

    .line 36
    sub-double/2addr v9, v7

    .line 37
    mul-double v7, v5, v5

    .line 38
    .line 39
    mul-double/2addr v5, v11

    .line 40
    add-double/2addr v5, v7

    .line 41
    div-double/2addr v9, v5

    .line 42
    aput-wide v9, p1, v2

    .line 43
    .line 44
    cmpl-double v1, v9, v9

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    aput-wide v3, p1, v2

    .line 49
    .line 50
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    .line 51
    .line 52
    .line 53
    move v1, v0

    .line 54
    :goto_0
    const/4 v3, 0x2

    .line 55
    if-ge v1, v3, :cond_2

    .line 56
    .line 57
    aget-wide v3, p1, v0

    .line 58
    .line 59
    aget-wide v5, p0, v0

    .line 60
    .line 61
    mul-double v7, v3, v5

    .line 62
    .line 63
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 64
    .line 65
    sub-double/2addr v9, v7

    .line 66
    aget-wide v7, p0, v2

    .line 67
    .line 68
    mul-double v11, v3, v7

    .line 69
    .line 70
    sub-double/2addr v9, v11

    .line 71
    aget-wide v11, p1, v2

    .line 72
    .line 73
    mul-double/2addr v5, v11

    .line 74
    sub-double/2addr v9, v5

    .line 75
    mul-double/2addr v7, v11

    .line 76
    sub-double/2addr v9, v7

    .line 77
    add-double/2addr v3, v11

    .line 78
    mul-double/2addr v3, v9

    .line 79
    add-double/2addr v3, v11

    .line 80
    aput-wide v3, p1, v2

    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-void
.end method
