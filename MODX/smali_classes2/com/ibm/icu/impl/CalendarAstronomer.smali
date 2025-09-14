.class public final Lcom/ibm/icu/impl/CalendarAstronomer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public transient eclipObliquity:D

.field public fGmtOffset:J

.field public fLatitude:D

.field public transient julianDay:D

.field public transient siderealT0:D

.field public transient sunLongitude:D

.field public time:J


# direct methods
.method public static final normalize(DD)D
    .locals 2

    .line 1
    div-double v0, p0, p2

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    mul-double/2addr v0, p2

    .line 8
    sub-double/2addr p0, v0

    .line 9
    return-wide p0
.end method


# virtual methods
.method public final getJulianDay()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    cmpl-double v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    .line 10
    .line 11
    const-wide v2, -0xbfc83e532200L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    long-to-double v0, v0

    .line 18
    const-wide v2, 0x4194997000000000L    # 8.64E7

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-double/2addr v0, v2

    .line 24
    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    .line 25
    .line 26
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    .line 27
    .line 28
    return-wide v0
.end method

.method public final getSunRiseSet(Z)J
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v3, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    .line 4
    .line 5
    iget-wide v5, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    .line 6
    .line 7
    add-long v7, v3, v5

    .line 8
    .line 9
    const-wide/32 v9, 0x5265c00

    .line 10
    .line 11
    .line 12
    div-long/2addr v7, v9

    .line 13
    mul-long/2addr v7, v9

    .line 14
    sub-long/2addr v7, v5

    .line 15
    const-wide/32 v11, 0x2932e00

    .line 16
    .line 17
    .line 18
    add-long/2addr v7, v11

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-wide/16 v11, -0x6

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-wide/16 v11, 0x6

    .line 25
    .line 26
    :goto_0
    const-wide/32 v13, 0x36ee80

    .line 27
    .line 28
    .line 29
    mul-long/2addr v11, v13

    .line 30
    add-long/2addr v11, v7

    .line 31
    invoke-virtual {v0, v11, v12}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 32
    .line 33
    .line 34
    iget-wide v7, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    .line 35
    .line 36
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v11

    .line 40
    const/4 v13, 0x0

    .line 41
    :goto_1
    iget-wide v14, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 42
    .line 43
    const-wide/16 v16, 0x1

    .line 44
    .line 45
    cmpl-double v14, v14, v16

    .line 46
    .line 47
    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    if-nez v14, :cond_2

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D

    .line 55
    .line 56
    .line 57
    move-result-wide v14

    .line 58
    const-wide v20, 0x4142ad09c0000000L    # 2447891.5

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    sub-double v14, v14, v20

    .line 64
    .line 65
    const-wide v20, 0x3f919d9bcdd8ac02L    # 0.017202791632524146

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    mul-double v14, v14, v20

    .line 71
    .line 72
    invoke-static {v14, v15, v9, v10}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    .line 73
    .line 74
    .line 75
    move-result-wide v14

    .line 76
    const-wide v20, 0x4013818b33ddeee0L    # 4.87650757829735

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    add-double v14, v14, v20

    .line 82
    .line 83
    const-wide v20, 0x4013bdaf8cee89a2L    # 4.935239984568769

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    sub-double v14, v14, v20

    .line 89
    .line 90
    invoke-static {v14, v15, v9, v10}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    .line 91
    .line 92
    .line 93
    move-result-wide v14

    .line 94
    move-wide/from16 v22, v14

    .line 95
    .line 96
    :goto_2
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    .line 97
    .line 98
    .line 99
    move-result-wide v24

    .line 100
    const-wide v26, 0x3f911d3671ac14c6L    # 0.016713

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    mul-double v24, v24, v26

    .line 106
    .line 107
    sub-double v24, v22, v24

    .line 108
    .line 109
    sub-double v24, v24, v14

    .line 110
    .line 111
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v28

    .line 115
    mul-double v28, v28, v26

    .line 116
    .line 117
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 118
    .line 119
    sub-double v26, v26, v28

    .line 120
    .line 121
    div-double v26, v24, v26

    .line 122
    .line 123
    sub-double v22, v22, v26

    .line 124
    .line 125
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    .line 126
    .line 127
    .line 128
    move-result-wide v24

    .line 129
    const-wide v26, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    cmpl-double v24, v24, v26

    .line 135
    .line 136
    if-gtz v24, :cond_1

    .line 137
    .line 138
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    .line 139
    .line 140
    div-double v22, v22, v24

    .line 141
    .line 142
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->tan(D)D

    .line 143
    .line 144
    .line 145
    move-result-wide v22

    .line 146
    const-wide v26, 0x3ff08b3d7194c2c4L    # 1.033994144130859

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v26

    .line 155
    mul-double v26, v26, v22

    .line 156
    .line 157
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->atan(D)D

    .line 158
    .line 159
    .line 160
    move-result-wide v22

    .line 161
    mul-double v22, v22, v24

    .line 162
    .line 163
    add-double v1, v22, v20

    .line 164
    .line 165
    invoke-static {v1, v2, v9, v10}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    .line 166
    .line 167
    .line 168
    move-result-wide v1

    .line 169
    const/4 v9, 0x2

    .line 170
    new-array v9, v9, [D

    .line 171
    .line 172
    const/4 v10, 0x0

    .line 173
    aput-wide v1, v9, v10

    .line 174
    .line 175
    const/4 v1, 0x1

    .line 176
    aput-wide v14, v9, v1

    .line 177
    .line 178
    aget-wide v1, v9, v10

    .line 179
    .line 180
    iput-wide v1, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_1
    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_2
    const/4 v10, 0x0

    .line 190
    :goto_3
    iget-wide v1, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 191
    .line 192
    iget-wide v14, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    .line 193
    .line 194
    cmpl-double v9, v14, v16

    .line 195
    .line 196
    const-wide v14, 0x40e1d5a000000000L    # 36525.0

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    const-wide v20, 0x4142b42c80000000L    # 2451545.0

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    if-nez v9, :cond_3

    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D

    .line 209
    .line 210
    .line 211
    move-result-wide v22

    .line 212
    sub-double v22, v22, v20

    .line 213
    .line 214
    div-double v22, v22, v14

    .line 215
    .line 216
    const-wide v28, 0x3f8aa1edb45c4be9L    # 0.013004166666666666

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    mul-double v28, v28, v22

    .line 222
    .line 223
    const-wide v30, 0x4037707570c564f9L    # 23.439292

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    sub-double v30, v30, v28

    .line 229
    .line 230
    const-wide v28, 0x3e865e9f80f29211L    # 1.6666666666666665E-7

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    mul-double v28, v28, v22

    .line 236
    .line 237
    mul-double v28, v28, v22

    .line 238
    .line 239
    sub-double v30, v30, v28

    .line 240
    .line 241
    const-wide v28, 0x3ea0ded40694ce29L    # 5.027777777777778E-7

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    mul-double v28, v28, v22

    .line 247
    .line 248
    mul-double v28, v28, v22

    .line 249
    .line 250
    mul-double v28, v28, v22

    .line 251
    .line 252
    add-double v28, v28, v30

    .line 253
    .line 254
    const-wide v22, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    mul-double v14, v28, v22

    .line 260
    .line 261
    iput-wide v14, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    .line 262
    .line 263
    :cond_3
    iget-wide v14, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    .line 264
    .line 265
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 266
    .line 267
    .line 268
    move-result-wide v22

    .line 269
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 270
    .line 271
    .line 272
    move-result-wide v14

    .line 273
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 274
    .line 275
    .line 276
    move-result-wide v28

    .line 277
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 278
    .line 279
    .line 280
    move-result-wide v1

    .line 281
    const-wide/16 v32, 0x0

    .line 282
    .line 283
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    .line 284
    .line 285
    .line 286
    move-result-wide v34

    .line 287
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    .line 288
    .line 289
    .line 290
    move-result-wide v36

    .line 291
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->tan(D)D

    .line 292
    .line 293
    .line 294
    move-result-wide v32

    .line 295
    mul-double v38, v28, v14

    .line 296
    .line 297
    mul-double v32, v32, v22

    .line 298
    .line 299
    move-wide/from16 v40, v11

    .line 300
    .line 301
    sub-double v10, v38, v32

    .line 302
    .line 303
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    .line 304
    .line 305
    .line 306
    move-result-wide v1

    .line 307
    mul-double v34, v34, v14

    .line 308
    .line 309
    mul-double v36, v36, v22

    .line 310
    .line 311
    mul-double v36, v36, v28

    .line 312
    .line 313
    add-double v36, v36, v34

    .line 314
    .line 315
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->asin(D)D

    .line 316
    .line 317
    .line 318
    move-result-wide v9

    .line 319
    move-wide/from16 v11, v40

    .line 320
    .line 321
    neg-double v14, v11

    .line 322
    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    .line 323
    .line 324
    .line 325
    move-result-wide v22

    .line 326
    mul-double v22, v22, v14

    .line 327
    .line 328
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->acos(D)D

    .line 329
    .line 330
    .line 331
    move-result-wide v14

    .line 332
    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    if-eqz p1, :cond_4

    .line 338
    .line 339
    sub-double v14, v22, v14

    .line 340
    .line 341
    :cond_4
    add-double/2addr v14, v1

    .line 342
    const-wide/high16 v1, 0x4038000000000000L    # 24.0

    .line 343
    .line 344
    mul-double/2addr v14, v1

    .line 345
    div-double v14, v14, v22

    .line 346
    .line 347
    iget-wide v1, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    .line 348
    .line 349
    cmpl-double v1, v1, v16

    .line 350
    .line 351
    if-nez v1, :cond_5

    .line 352
    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D

    .line 354
    .line 355
    .line 356
    move-result-wide v1

    .line 357
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 358
    .line 359
    sub-double v1, v1, v16

    .line 360
    .line 361
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 362
    .line 363
    .line 364
    move-result-wide v1

    .line 365
    add-double v1, v1, v16

    .line 366
    .line 367
    sub-double v1, v1, v20

    .line 368
    .line 369
    const-wide v16, 0x40e1d5a000000000L    # 36525.0

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    div-double v1, v1, v16

    .line 375
    .line 376
    const-wide v16, 0x40a2c01a48b65237L    # 2400.051336

    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    mul-double v16, v16, v1

    .line 382
    .line 383
    const-wide v20, 0x401aca1c8e5eb098L    # 6.697374558

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    add-double v16, v16, v20

    .line 389
    .line 390
    const-wide v20, 0x3efb1e471b7b0e47L    # 2.5862E-5

    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    mul-double v20, v20, v1

    .line 396
    .line 397
    mul-double v20, v20, v1

    .line 398
    .line 399
    add-double v1, v20, v16

    .line 400
    .line 401
    move-wide/from16 v40, v11

    .line 402
    .line 403
    const-wide/high16 v11, 0x4038000000000000L    # 24.0

    .line 404
    .line 405
    invoke-static {v1, v2, v11, v12}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    .line 406
    .line 407
    .line 408
    move-result-wide v1

    .line 409
    iput-wide v1, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_5
    move-wide/from16 v40, v11

    .line 413
    .line 414
    const-wide/high16 v11, 0x4038000000000000L    # 24.0

    .line 415
    .line 416
    :goto_4
    iget-wide v1, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    .line 417
    .line 418
    sub-double/2addr v14, v1

    .line 419
    const-wide v1, 0x3fefe9a1dd91bf50L    # 0.9972695663

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    mul-double/2addr v14, v1

    .line 425
    invoke-static {v14, v15, v11, v12}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    .line 426
    .line 427
    .line 428
    move-result-wide v1

    .line 429
    iget-wide v11, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    .line 430
    .line 431
    add-long v14, v11, v5

    .line 432
    .line 433
    const-wide/32 v16, 0x5265c00

    .line 434
    .line 435
    .line 436
    div-long v14, v14, v16

    .line 437
    .line 438
    mul-long v14, v14, v16

    .line 439
    .line 440
    sub-long/2addr v14, v5

    .line 441
    const-wide v18, 0x414b774000000000L    # 3600000.0

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    mul-double v1, v1, v18

    .line 447
    .line 448
    double-to-long v1, v1

    .line 449
    add-long/2addr v14, v1

    .line 450
    sub-long v1, v14, v11

    .line 451
    .line 452
    invoke-virtual {v0, v14, v15}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 453
    .line 454
    .line 455
    const/4 v11, 0x1

    .line 456
    add-int/2addr v13, v11

    .line 457
    const/4 v12, 0x5

    .line 458
    if-ge v13, v12, :cond_7

    .line 459
    .line 460
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 461
    .line 462
    .line 463
    move-result-wide v1

    .line 464
    const-wide/16 v14, 0x1388

    .line 465
    .line 466
    cmp-long v1, v1, v14

    .line 467
    .line 468
    if-gtz v1, :cond_6

    .line 469
    .line 470
    goto :goto_5

    .line 471
    :cond_6
    move-wide/from16 v9, v16

    .line 472
    .line 473
    move-wide/from16 v11, v40

    .line 474
    .line 475
    goto/16 :goto_1

    .line 476
    .line 477
    :cond_7
    :goto_5
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 478
    .line 479
    .line 480
    move-result-wide v1

    .line 481
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 482
    .line 483
    .line 484
    move-result-wide v5

    .line 485
    div-double/2addr v5, v1

    .line 486
    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    .line 487
    .line 488
    .line 489
    move-result-wide v5

    .line 490
    const-wide v7, 0x3f8dc7ef4cc6ee9aL    # 0.014541501551199421

    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 496
    .line 497
    .line 498
    move-result-wide v7

    .line 499
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 500
    .line 501
    .line 502
    move-result-wide v5

    .line 503
    div-double/2addr v7, v5

    .line 504
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    .line 505
    .line 506
    .line 507
    move-result-wide v5

    .line 508
    const-wide/high16 v7, 0x406e000000000000L    # 240.0

    .line 509
    .line 510
    mul-double/2addr v5, v7

    .line 511
    const-wide v7, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    mul-double/2addr v5, v7

    .line 517
    div-double/2addr v5, v1

    .line 518
    const-wide v1, 0x408f400000000000L    # 1000.0

    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    mul-double/2addr v5, v1

    .line 524
    double-to-long v1, v5

    .line 525
    iget-wide v5, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    .line 526
    .line 527
    if-eqz p1, :cond_8

    .line 528
    .line 529
    neg-long v1, v1

    .line 530
    :cond_8
    add-long/2addr v5, v1

    .line 531
    invoke-virtual {v0, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 532
    .line 533
    .line 534
    return-wide v5
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    .line 2
    .line 3
    const-wide/16 p1, 0x1

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    .line 12
    .line 13
    return-void
.end method
