.class public Lorg/apache/commons/math/random/RandomDataImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x8b2985bcf4804f4L


# instance fields
.field private rand:Lorg/apache/commons/math/random/RandomGenerator;

.field private secRand:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->secRand:Ljava/security/SecureRandom;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final nextInversionDeviate(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;)D
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lorg/apache/commons/math/random/JDKRandomGenerator;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/apache/commons/math/random/JDKRandomGenerator;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 22
    .line 23
    invoke-interface {v0}, Lorg/apache/commons/math/random/RandomGenerator;->nextDouble()D

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    :goto_0
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    cmpg-double v5, v1, v3

    .line 30
    .line 31
    if-gtz v5, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Lorg/apache/commons/math/random/RandomGenerator;->nextDouble()D

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 39
    .line 40
    mul-double/2addr v1, v5

    .line 41
    add-double/2addr v1, v3

    .line 42
    move-object/from16 v7, p1

    .line 43
    .line 44
    check-cast v7, Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    cmpl-double v0, v1, v3

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    goto/16 :goto_e

    .line 54
    .line 55
    :cond_2
    cmpl-double v0, v1, v5

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    move-wide v3, v5

    .line 60
    goto/16 :goto_e

    .line 61
    .line 62
    :cond_3
    cmpg-double v8, v1, v3

    .line 63
    .line 64
    if-ltz v8, :cond_1c

    .line 65
    .line 66
    if-gtz v0, :cond_1c

    .line 67
    .line 68
    new-instance v8, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;

    .line 69
    .line 70
    invoke-direct {v8, v7, v1, v2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;-><init>(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;D)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    invoke-static {v8, v1, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;->bracket(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;D)[D

    .line 74
    .line 75
    .line 76
    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/math/ConvergenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v1, 0x0

    .line 78
    aget-wide v9, v0, v1

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    aget-wide v11, v0, v2

    .line 82
    .line 83
    invoke-virtual {v7}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->getSolverAbsoluteAccuracy()D

    .line 84
    .line 85
    .line 86
    move-result-wide v13

    .line 87
    cmpl-double v0, v9, v11

    .line 88
    .line 89
    if-gez v0, :cond_19

    .line 90
    .line 91
    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v15

    .line 95
    invoke-virtual {v8, v11, v12}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v17

    .line 99
    mul-double v19, v15, v17

    .line 100
    .line 101
    cmpl-double v0, v19, v3

    .line 102
    .line 103
    const-wide v21, 0x3cd203af9ee75616L    # 1.0E-15

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    if-lez v0, :cond_6

    .line 109
    .line 110
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    cmpg-double v0, v0, v21

    .line 115
    .line 116
    if-gtz v0, :cond_4

    .line 117
    .line 118
    goto/16 :goto_d

    .line 119
    .line 120
    :cond_4
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    cmpg-double v0, v0, v21

    .line 125
    .line 126
    if-gtz v0, :cond_5

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_5
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->SAME_SIGN_AT_ENDPOINTS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 131
    .line 132
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    throw v0

    .line 157
    :cond_6
    cmpg-double v0, v19, v3

    .line 158
    .line 159
    if-gez v0, :cond_18

    .line 160
    .line 161
    sub-double v19, v11, v9

    .line 162
    .line 163
    move v0, v1

    .line 164
    move-wide/from16 v23, v17

    .line 165
    .line 166
    move-wide/from16 v25, v19

    .line 167
    .line 168
    move-wide/from16 v27, v25

    .line 169
    .line 170
    move-wide/from16 v17, v15

    .line 171
    .line 172
    move-wide/from16 v19, v17

    .line 173
    .line 174
    move-wide v15, v11

    .line 175
    move-wide v11, v9

    .line 176
    :goto_1
    const/16 v7, 0x64

    .line 177
    .line 178
    if-ge v0, v7, :cond_17

    .line 179
    .line 180
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 181
    .line 182
    .line 183
    move-result-wide v29

    .line 184
    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 185
    .line 186
    .line 187
    move-result-wide v31

    .line 188
    cmpg-double v7, v29, v31

    .line 189
    .line 190
    if-gez v7, :cond_7

    .line 191
    .line 192
    move-wide v11, v9

    .line 193
    move-wide v9, v15

    .line 194
    move-wide/from16 v19, v17

    .line 195
    .line 196
    move-wide/from16 v17, v23

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_7
    move-wide/from16 v41, v19

    .line 200
    .line 201
    move-wide/from16 v19, v23

    .line 202
    .line 203
    move-wide/from16 v23, v41

    .line 204
    .line 205
    move-wide/from16 v43, v11

    .line 206
    .line 207
    move-wide v11, v15

    .line 208
    move-wide/from16 v15, v43

    .line 209
    .line 210
    :goto_2
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 211
    .line 212
    .line 213
    move-result-wide v29

    .line 214
    cmpg-double v7, v29, v21

    .line 215
    .line 216
    if-gtz v7, :cond_8

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_8
    sub-double v29, v9, v11

    .line 220
    .line 221
    invoke-static {v11, v12}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 222
    .line 223
    .line 224
    move-result-wide v31

    .line 225
    const-wide v33, 0x3d06849b86a12b9bL    # 1.0E-14

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    mul-double v1, v31, v33

    .line 231
    .line 232
    invoke-static {v1, v2, v13, v14}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    .line 233
    .line 234
    .line 235
    move-result-wide v1

    .line 236
    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 237
    .line 238
    .line 239
    move-result-wide v31

    .line 240
    cmpg-double v7, v31, v1

    .line 241
    .line 242
    if-gtz v7, :cond_a

    .line 243
    .line 244
    :cond_9
    :goto_3
    move-wide v3, v11

    .line 245
    goto/16 :goto_e

    .line 246
    .line 247
    :cond_a
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 248
    .line 249
    .line 250
    move-result-wide v31

    .line 251
    cmpg-double v7, v31, v1

    .line 252
    .line 253
    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    .line 254
    .line 255
    if-ltz v7, :cond_b

    .line 256
    .line 257
    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 258
    .line 259
    .line 260
    move-result-wide v33

    .line 261
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 262
    .line 263
    .line 264
    move-result-wide v35

    .line 265
    cmpg-double v7, v33, v35

    .line 266
    .line 267
    if-gtz v7, :cond_c

    .line 268
    .line 269
    :cond_b
    move-wide v15, v9

    .line 270
    goto :goto_7

    .line 271
    :cond_c
    div-double v33, v19, v23

    .line 272
    .line 273
    cmpl-double v7, v15, v9

    .line 274
    .line 275
    if-nez v7, :cond_d

    .line 276
    .line 277
    mul-double v15, v29, v33

    .line 278
    .line 279
    sub-double v23, v5, v33

    .line 280
    .line 281
    :goto_4
    move-wide v5, v15

    .line 282
    move-wide v15, v9

    .line 283
    move-wide/from16 v9, v23

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_d
    div-double v23, v23, v17

    .line 287
    .line 288
    div-double v35, v19, v17

    .line 289
    .line 290
    mul-double v37, v29, v23

    .line 291
    .line 292
    sub-double v39, v23, v35

    .line 293
    .line 294
    mul-double v39, v39, v37

    .line 295
    .line 296
    sub-double v15, v11, v15

    .line 297
    .line 298
    sub-double v35, v35, v5

    .line 299
    .line 300
    mul-double v15, v15, v35

    .line 301
    .line 302
    sub-double v39, v39, v15

    .line 303
    .line 304
    mul-double v15, v39, v33

    .line 305
    .line 306
    sub-double v23, v23, v5

    .line 307
    .line 308
    mul-double v23, v23, v35

    .line 309
    .line 310
    sub-double v33, v33, v5

    .line 311
    .line 312
    mul-double v23, v23, v33

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :goto_5
    cmpl-double v7, v5, v3

    .line 316
    .line 317
    if-lez v7, :cond_e

    .line 318
    .line 319
    neg-double v9, v9

    .line 320
    goto :goto_6

    .line 321
    :cond_e
    neg-double v5, v5

    .line 322
    :goto_6
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    .line 323
    .line 324
    mul-double v23, v23, v5

    .line 325
    .line 326
    const-wide/high16 v35, 0x3ff8000000000000L    # 1.5

    .line 327
    .line 328
    mul-double v35, v35, v29

    .line 329
    .line 330
    mul-double v35, v35, v9

    .line 331
    .line 332
    mul-double v37, v1, v9

    .line 333
    .line 334
    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 335
    .line 336
    .line 337
    move-result-wide v37

    .line 338
    sub-double v35, v35, v37

    .line 339
    .line 340
    cmpl-double v7, v23, v35

    .line 341
    .line 342
    if-gez v7, :cond_10

    .line 343
    .line 344
    mul-double v25, v25, v31

    .line 345
    .line 346
    mul-double v25, v25, v9

    .line 347
    .line 348
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 349
    .line 350
    .line 351
    move-result-wide v23

    .line 352
    cmpl-double v7, v5, v23

    .line 353
    .line 354
    if-ltz v7, :cond_f

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_f
    div-double/2addr v5, v9

    .line 358
    goto :goto_8

    .line 359
    :cond_10
    :goto_7
    mul-double v27, v29, v31

    .line 360
    .line 361
    move-wide/from16 v5, v27

    .line 362
    .line 363
    :goto_8
    invoke-static {v5, v6}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 364
    .line 365
    .line 366
    move-result-wide v9

    .line 367
    cmpl-double v7, v9, v1

    .line 368
    .line 369
    if-lez v7, :cond_11

    .line 370
    .line 371
    add-double v1, v11, v5

    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_11
    cmpl-double v7, v29, v3

    .line 375
    .line 376
    if-lez v7, :cond_12

    .line 377
    .line 378
    mul-double v1, v1, v31

    .line 379
    .line 380
    add-double/2addr v1, v11

    .line 381
    goto :goto_9

    .line 382
    :cond_12
    cmpg-double v7, v29, v3

    .line 383
    .line 384
    if-gtz v7, :cond_13

    .line 385
    .line 386
    mul-double v1, v1, v31

    .line 387
    .line 388
    sub-double v1, v11, v1

    .line 389
    .line 390
    goto :goto_9

    .line 391
    :cond_13
    move-wide v1, v11

    .line 392
    :goto_9
    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    .line 393
    .line 394
    .line 395
    move-result-wide v23

    .line 396
    cmpl-double v7, v23, v3

    .line 397
    .line 398
    if-lez v7, :cond_14

    .line 399
    .line 400
    const/4 v7, 0x1

    .line 401
    goto :goto_a

    .line 402
    :cond_14
    const/4 v7, 0x0

    .line 403
    :goto_a
    cmpl-double v9, v17, v3

    .line 404
    .line 405
    if-lez v9, :cond_15

    .line 406
    .line 407
    const/4 v9, 0x1

    .line 408
    goto :goto_b

    .line 409
    :cond_15
    const/4 v9, 0x0

    .line 410
    :goto_b
    if-ne v7, v9, :cond_16

    .line 411
    .line 412
    sub-double v5, v1, v11

    .line 413
    .line 414
    move-wide/from16 v25, v5

    .line 415
    .line 416
    move-wide/from16 v27, v25

    .line 417
    .line 418
    move-wide v9, v11

    .line 419
    move-wide/from16 v17, v19

    .line 420
    .line 421
    goto :goto_c

    .line 422
    :cond_16
    move-wide v9, v15

    .line 423
    move-wide/from16 v25, v27

    .line 424
    .line 425
    move-wide/from16 v27, v5

    .line 426
    .line 427
    :goto_c
    add-int/lit8 v0, v0, 0x1

    .line 428
    .line 429
    move-wide v15, v1

    .line 430
    const/4 v1, 0x0

    .line 431
    const/4 v2, 0x1

    .line 432
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 433
    .line 434
    goto/16 :goto_1

    .line 435
    .line 436
    :cond_17
    new-instance v0, Lorg/apache/commons/math/MaxIterationsExceededException;

    .line 437
    .line 438
    invoke-direct {v0}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>()V

    .line 439
    .line 440
    .line 441
    throw v0

    .line 442
    :cond_18
    cmpl-double v0, v15, v3

    .line 443
    .line 444
    if-nez v0, :cond_9

    .line 445
    .line 446
    :goto_d
    move-wide v3, v9

    .line 447
    goto :goto_e

    .line 448
    :cond_19
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 449
    .line 450
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    throw v0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    move-object v1, v0

    .line 469
    invoke-virtual {v8, v3, v4}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    .line 470
    .line 471
    .line 472
    move-result-wide v5

    .line 473
    invoke-static {v5, v6}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 474
    .line 475
    .line 476
    move-result-wide v5

    .line 477
    invoke-virtual {v7}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->getSolverAbsoluteAccuracy()D

    .line 478
    .line 479
    .line 480
    move-result-wide v9

    .line 481
    cmpg-double v0, v5, v9

    .line 482
    .line 483
    if-gez v0, :cond_1a

    .line 484
    .line 485
    goto :goto_e

    .line 486
    :cond_1a
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 487
    .line 488
    invoke-virtual {v8, v2, v3}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    .line 489
    .line 490
    .line 491
    move-result-wide v4

    .line 492
    invoke-static {v4, v5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 493
    .line 494
    .line 495
    move-result-wide v2

    .line 496
    invoke-virtual {v7}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->getSolverAbsoluteAccuracy()D

    .line 497
    .line 498
    .line 499
    move-result-wide v4

    .line 500
    cmpg-double v0, v2, v4

    .line 501
    .line 502
    if-gez v0, :cond_1b

    .line 503
    .line 504
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 505
    .line 506
    :goto_e
    return-wide v3

    .line 507
    :cond_1b
    new-instance v0, Lorg/apache/commons/math/MathException;

    .line 508
    .line 509
    invoke-direct {v0, v1}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/ConvergenceException;)V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_1c
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 514
    .line 515
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 524
    .line 525
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    throw v0
.end method

.method public final reSeed(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/apache/commons/math/random/JDKRandomGenerator;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/apache/commons/math/random/JDKRandomGenerator;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math/random/RandomGenerator;->setSeed(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
