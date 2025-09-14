.class public abstract Lorg/apache/commons/math/special/Beta;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static regularizedBeta(DDD)D
    .locals 37

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    if-nez v1, :cond_12

    .line 9
    .line 10
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_12

    .line 15
    .line 16
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_12

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    cmpg-double v1, p0, v4

    .line 25
    .line 26
    if-ltz v1, :cond_12

    .line 27
    .line 28
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 29
    .line 30
    cmpl-double v1, p0, v6

    .line 31
    .line 32
    if-gtz v1, :cond_12

    .line 33
    .line 34
    cmpg-double v1, p2, v4

    .line 35
    .line 36
    if-lez v1, :cond_12

    .line 37
    .line 38
    cmpg-double v8, p4, v4

    .line 39
    .line 40
    if-gtz v8, :cond_0

    .line 41
    .line 42
    goto/16 :goto_a

    .line 43
    .line 44
    :cond_0
    add-double v9, p2, v6

    .line 45
    .line 46
    add-double v11, p2, p4

    .line 47
    .line 48
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 49
    .line 50
    add-double v15, v11, v13

    .line 51
    .line 52
    div-double/2addr v9, v15

    .line 53
    cmpl-double v9, p0, v9

    .line 54
    .line 55
    if-lez v9, :cond_1

    .line 56
    .line 57
    sub-double v0, v6, p0

    .line 58
    .line 59
    move-wide/from16 v2, p4

    .line 60
    .line 61
    move-wide/from16 v4, p2

    .line 62
    .line 63
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math/special/Beta;->regularizedBeta(DDD)D

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    sub-double v2, v6, v0

    .line 68
    .line 69
    goto/16 :goto_a

    .line 70
    .line 71
    :cond_1
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    .line 72
    .line 73
    .line 74
    move-result-wide v9

    .line 75
    mul-double v9, v9, p2

    .line 76
    .line 77
    sub-double v15, v6, p0

    .line 78
    .line 79
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    .line 80
    .line 81
    .line 82
    move-result-wide v15

    .line 83
    mul-double v15, v15, p4

    .line 84
    .line 85
    add-double/2addr v15, v9

    .line 86
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    sub-double/2addr v15, v9

    .line 91
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-nez v9, :cond_3

    .line 96
    .line 97
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-nez v9, :cond_3

    .line 102
    .line 103
    if-lez v1, :cond_3

    .line 104
    .line 105
    if-gtz v8, :cond_2

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math/special/Gamma;->logGamma(D)D

    .line 109
    .line 110
    .line 111
    move-result-wide v1

    .line 112
    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math/special/Gamma;->logGamma(D)D

    .line 113
    .line 114
    .line 115
    move-result-wide v8

    .line 116
    add-double/2addr v8, v1

    .line 117
    invoke-static {v11, v12}, Lorg/apache/commons/math/special/Gamma;->logGamma(D)D

    .line 118
    .line 119
    .line 120
    move-result-wide v1

    .line 121
    sub-double v2, v8, v1

    .line 122
    .line 123
    :cond_3
    :goto_0
    sub-double/2addr v15, v2

    .line 124
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math/util/FastMath;->exp(D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v1

    .line 128
    mul-double/2addr v1, v6

    .line 129
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    move-wide/from16 v23, v4

    .line 135
    .line 136
    move-wide v15, v6

    .line 137
    move-wide/from16 v17, v15

    .line 138
    .line 139
    move-wide/from16 v19, v17

    .line 140
    .line 141
    move-wide/from16 v21, v19

    .line 142
    .line 143
    const/4 v10, 0x0

    .line 144
    :goto_1
    const v3, 0x7fffffff

    .line 145
    .line 146
    .line 147
    if-ge v10, v3, :cond_10

    .line 148
    .line 149
    const-wide v25, 0x3d06849b86a12b9bL    # 1.0E-14

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    cmpl-double v8, v8, v25

    .line 155
    .line 156
    if-lez v8, :cond_10

    .line 157
    .line 158
    add-int/2addr v10, v0

    .line 159
    rem-int/lit8 v3, v10, 0x2

    .line 160
    .line 161
    if-nez v3, :cond_4

    .line 162
    .line 163
    int-to-double v8, v10

    .line 164
    div-double/2addr v8, v13

    .line 165
    sub-double v25, p4, v8

    .line 166
    .line 167
    mul-double v25, v25, v8

    .line 168
    .line 169
    mul-double v25, v25, p0

    .line 170
    .line 171
    mul-double/2addr v8, v13

    .line 172
    add-double v8, v8, p2

    .line 173
    .line 174
    sub-double v27, v8, v6

    .line 175
    .line 176
    mul-double v27, v27, v8

    .line 177
    .line 178
    div-double v25, v25, v27

    .line 179
    .line 180
    move-wide/from16 v29, v1

    .line 181
    .line 182
    move-wide/from16 v0, v25

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    int-to-double v8, v10

    .line 186
    sub-double/2addr v8, v6

    .line 187
    div-double/2addr v8, v13

    .line 188
    add-double v25, p2, v8

    .line 189
    .line 190
    add-double v27, v11, v8

    .line 191
    .line 192
    mul-double v27, v27, v25

    .line 193
    .line 194
    move-wide/from16 v29, v1

    .line 195
    .line 196
    mul-double v0, v27, p0

    .line 197
    .line 198
    neg-double v0, v0

    .line 199
    mul-double/2addr v8, v13

    .line 200
    add-double v8, v8, p2

    .line 201
    .line 202
    add-double v2, v8, v6

    .line 203
    .line 204
    mul-double/2addr v2, v8

    .line 205
    div-double/2addr v0, v2

    .line 206
    :goto_2
    mul-double v2, v6, v17

    .line 207
    .line 208
    mul-double v8, v0, v19

    .line 209
    .line 210
    add-double/2addr v8, v2

    .line 211
    mul-double v2, v6, v21

    .line 212
    .line 213
    mul-double v26, v0, v23

    .line 214
    .line 215
    add-double v26, v26, v2

    .line 216
    .line 217
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_6

    .line 222
    .line 223
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isInfinite(D)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_5

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_5
    move-wide/from16 v33, v4

    .line 231
    .line 232
    const/4 v14, 0x0

    .line 233
    :goto_3
    const/16 v25, 0x1

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_6
    :goto_4
    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    .line 237
    .line 238
    .line 239
    move-result-wide v2

    .line 240
    cmpg-double v28, v2, v4

    .line 241
    .line 242
    if-lez v28, :cond_f

    .line 243
    .line 244
    move-wide/from16 v31, v6

    .line 245
    .line 246
    const/4 v13, 0x0

    .line 247
    const/4 v14, 0x1

    .line 248
    :goto_5
    const/4 v4, 0x5

    .line 249
    if-ge v13, v4, :cond_c

    .line 250
    .line 251
    mul-double v4, v31, v2

    .line 252
    .line 253
    cmpl-double v14, v6, v0

    .line 254
    .line 255
    if-lez v14, :cond_7

    .line 256
    .line 257
    div-double v8, v17, v31

    .line 258
    .line 259
    div-double v26, v0, v4

    .line 260
    .line 261
    mul-double v35, v26, v19

    .line 262
    .line 263
    add-double v35, v35, v8

    .line 264
    .line 265
    div-double v8, v21, v31

    .line 266
    .line 267
    mul-double v26, v26, v23

    .line 268
    .line 269
    add-double v26, v26, v8

    .line 270
    .line 271
    move-wide/from16 v8, v35

    .line 272
    .line 273
    const-wide/16 v33, 0x0

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_7
    const-wide/16 v33, 0x0

    .line 277
    .line 278
    cmpl-double v14, v0, v33

    .line 279
    .line 280
    if-eqz v14, :cond_8

    .line 281
    .line 282
    div-double v8, v6, v4

    .line 283
    .line 284
    mul-double v26, v8, v17

    .line 285
    .line 286
    div-double v35, v19, v31

    .line 287
    .line 288
    add-double v35, v35, v26

    .line 289
    .line 290
    mul-double v8, v8, v21

    .line 291
    .line 292
    div-double v26, v23, v31

    .line 293
    .line 294
    add-double v26, v26, v8

    .line 295
    .line 296
    move-wide/from16 v8, v35

    .line 297
    .line 298
    :cond_8
    :goto_6
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    if-nez v14, :cond_a

    .line 303
    .line 304
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isInfinite(D)Z

    .line 305
    .line 306
    .line 307
    move-result v14

    .line 308
    if-eqz v14, :cond_9

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_9
    const/4 v14, 0x0

    .line 312
    goto :goto_8

    .line 313
    :cond_a
    :goto_7
    const/4 v14, 0x1

    .line 314
    :goto_8
    if-nez v14, :cond_b

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_b
    const/16 v25, 0x1

    .line 318
    .line 319
    add-int/lit8 v13, v13, 0x1

    .line 320
    .line 321
    move-wide/from16 v31, v4

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_c
    const/16 v25, 0x1

    .line 325
    .line 326
    const-wide/16 v33, 0x0

    .line 327
    .line 328
    :goto_9
    if-nez v14, :cond_e

    .line 329
    .line 330
    div-double v0, v8, v26

    .line 331
    .line 332
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-nez v2, :cond_d

    .line 337
    .line 338
    div-double v2, v0, v15

    .line 339
    .line 340
    sub-double/2addr v2, v6

    .line 341
    invoke-static {v2, v3}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    .line 342
    .line 343
    .line 344
    move-result-wide v2

    .line 345
    move-wide v15, v0

    .line 346
    move-wide/from16 v19, v17

    .line 347
    .line 348
    move-wide/from16 v23, v21

    .line 349
    .line 350
    move/from16 v0, v25

    .line 351
    .line 352
    move-wide/from16 v21, v26

    .line 353
    .line 354
    move-wide/from16 v4, v33

    .line 355
    .line 356
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 357
    .line 358
    move-wide/from16 v17, v8

    .line 359
    .line 360
    move-wide v8, v2

    .line 361
    move-wide/from16 v1, v29

    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :cond_d
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    .line 366
    .line 367
    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CONTINUED_FRACTION_NAN_DIVERGENCE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 368
    .line 369
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :cond_e
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    .line 382
    .line 383
    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 384
    .line 385
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    throw v0

    .line 397
    :cond_f
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    .line 398
    .line 399
    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 400
    .line 401
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    throw v0

    .line 413
    :cond_10
    move-wide/from16 v29, v1

    .line 414
    .line 415
    if-ge v10, v3, :cond_11

    .line 416
    .line 417
    div-double v2, v29, v15

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_11
    new-instance v0, Lorg/apache/commons/math/MaxIterationsExceededException;

    .line 421
    .line 422
    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->ARGUMENT_OUTSIDE_DOMAIN:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 423
    .line 424
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-direct {v0, v1}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>([Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    throw v0

    .line 436
    :cond_12
    :goto_a
    return-wide v2
.end method
