.class public final Lcom/android/server/accessibility/CVDCalculator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public CVDSeverity:D

.field public CVDType:I

.field public SpotsU:[D

.field public SpotsV:[D

.field public c_index:D

.field public mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

.field public mInputNums:[I

.field public majorAngle:D

.field public majorRadius:D

.field public minorRadius:D

.field public u:[D

.field public v:[D


# virtual methods
.method public final getRGBCMY(IIDD)[I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    move-wide/from16 v9, p3

    .line 8
    .line 9
    const/16 v2, 0xc

    .line 10
    .line 11
    new-array v11, v2, [I

    .line 12
    .line 13
    const-string/jumbo v2, "getRGBCMY "

    .line 14
    .line 15
    .line 16
    const-string v3, ", CVDType : "

    .line 17
    .line 18
    const-string v4, ", Severity : "

    .line 19
    .line 20
    invoke-static {v1, v8, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", user : "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-wide/from16 v12, p5

    .line 33
    .line 34
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "CVDCalculator"

    .line 42
    .line 43
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/16 v14, 0x8

    .line 47
    .line 48
    const/4 v15, 0x7

    .line 49
    const/16 v16, 0x5

    .line 50
    .line 51
    const/16 v17, 0x4

    .line 52
    .line 53
    const/16 v18, 0x3

    .line 54
    .line 55
    const/16 v19, 0x0

    .line 56
    .line 57
    const/16 v20, 0xb

    .line 58
    .line 59
    const/16 v21, 0xa

    .line 60
    .line 61
    const/16 v22, 0x9

    .line 62
    .line 63
    const/4 v6, 0x6

    .line 64
    const/4 v7, 0x2

    .line 65
    const/4 v4, 0x1

    .line 66
    const v2, 0xff00

    .line 67
    .line 68
    .line 69
    const/16 v23, 0xff

    .line 70
    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    if-eqz v8, :cond_1

    .line 74
    .line 75
    if-eq v8, v4, :cond_1

    .line 76
    .line 77
    if-ne v8, v7, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    aput v2, v11, v19

    .line 81
    .line 82
    aput v23, v11, v4

    .line 83
    .line 84
    aput v23, v11, v7

    .line 85
    .line 86
    aput v23, v11, v18

    .line 87
    .line 88
    aput v2, v11, v17

    .line 89
    .line 90
    aput v23, v11, v16

    .line 91
    .line 92
    aput v23, v11, v6

    .line 93
    .line 94
    aput v23, v11, v15

    .line 95
    .line 96
    aput v2, v11, v14

    .line 97
    .line 98
    aput v23, v11, v22

    .line 99
    .line 100
    aput v23, v11, v21

    .line 101
    .line 102
    aput v23, v11, v20

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    const/4 v2, 0x1

    .line 113
    move/from16 v3, p2

    .line 114
    .line 115
    move v14, v4

    .line 116
    move-wide/from16 v4, p3

    .line 117
    .line 118
    move v15, v7

    .line 119
    move-wide/from16 v6, p5

    .line 120
    .line 121
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const/4 v1, 0x4

    .line 131
    move v15, v6

    .line 132
    move-wide/from16 v6, p5

    .line 133
    .line 134
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    mul-int/lit16 v6, v15, 0x100

    .line 139
    .line 140
    add-int/2addr v6, v1

    .line 141
    aput v6, v11, v19

    .line 142
    .line 143
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    const/4 v1, 0x1

    .line 149
    const/4 v2, 0x3

    .line 150
    move-wide/from16 v6, p5

    .line 151
    .line 152
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const/4 v1, 0x4

    .line 162
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    mul-int/lit16 v15, v15, 0x100

    .line 167
    .line 168
    add-int/2addr v15, v1

    .line 169
    aput v15, v11, v14

    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    const/4 v1, 0x1

    .line 177
    const/4 v2, 0x5

    .line 178
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    const/4 v1, 0x4

    .line 188
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    mul-int/lit16 v14, v14, 0x100

    .line 193
    .line 194
    add-int/2addr v14, v1

    .line 195
    const/4 v1, 0x2

    .line 196
    aput v14, v11, v1

    .line 197
    .line 198
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    const/4 v1, 0x3

    .line 204
    const/4 v2, 0x1

    .line 205
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    const/4 v1, 0x6

    .line 215
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    mul-int/lit16 v14, v14, 0x100

    .line 220
    .line 221
    add-int/2addr v14, v1

    .line 222
    aput v14, v11, v18

    .line 223
    .line 224
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    const/4 v1, 0x3

    .line 230
    const/4 v2, 0x3

    .line 231
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 232
    .line 233
    .line 234
    move-result v14

    .line 235
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    const/4 v1, 0x6

    .line 241
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    mul-int/lit16 v14, v14, 0x100

    .line 246
    .line 247
    add-int/2addr v14, v1

    .line 248
    aput v14, v11, v17

    .line 249
    .line 250
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    const/4 v1, 0x3

    .line 256
    const/4 v2, 0x5

    .line 257
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 258
    .line 259
    .line 260
    move-result v14

    .line 261
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    const/4 v1, 0x6

    .line 267
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    mul-int/lit16 v14, v14, 0x100

    .line 272
    .line 273
    add-int/2addr v14, v1

    .line 274
    aput v14, v11, v16

    .line 275
    .line 276
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    const/4 v1, 0x5

    .line 282
    const/4 v2, 0x1

    .line 283
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 284
    .line 285
    .line 286
    move-result v14

    .line 287
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    const/4 v1, 0x2

    .line 293
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    mul-int/lit16 v14, v14, 0x100

    .line 298
    .line 299
    add-int/2addr v14, v1

    .line 300
    const/4 v1, 0x6

    .line 301
    aput v14, v11, v1

    .line 302
    .line 303
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    const/4 v1, 0x5

    .line 309
    const/4 v2, 0x3

    .line 310
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 311
    .line 312
    .line 313
    move-result v14

    .line 314
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    const/4 v1, 0x2

    .line 320
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    mul-int/lit16 v14, v14, 0x100

    .line 325
    .line 326
    add-int/2addr v14, v1

    .line 327
    const/4 v1, 0x7

    .line 328
    aput v14, v11, v1

    .line 329
    .line 330
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    const/4 v1, 0x5

    .line 336
    const/4 v2, 0x5

    .line 337
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    const/4 v0, 0x2

    .line 347
    move/from16 v2, p2

    .line 348
    .line 349
    move-wide/from16 v3, p3

    .line 350
    .line 351
    move-wide/from16 v5, p5

    .line 352
    .line 353
    invoke-static/range {v0 .. v6}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    mul-int/lit16 v7, v7, 0x100

    .line 358
    .line 359
    add-int/2addr v7, v0

    .line 360
    const/16 v0, 0x8

    .line 361
    .line 362
    aput v7, v11, v0

    .line 363
    .line 364
    aput v23, v11, v22

    .line 365
    .line 366
    aput v23, v11, v21

    .line 367
    .line 368
    aput v23, v11, v20

    .line 369
    .line 370
    goto/16 :goto_2

    .line 371
    .line 372
    :cond_2
    move v14, v4

    .line 373
    if-ne v1, v14, :cond_6

    .line 374
    .line 375
    if-eqz v8, :cond_4

    .line 376
    .line 377
    if-eq v8, v14, :cond_4

    .line 378
    .line 379
    const/4 v1, 0x2

    .line 380
    if-ne v8, v1, :cond_3

    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_3
    aput v2, v11, v19

    .line 384
    .line 385
    aput v23, v11, v14

    .line 386
    .line 387
    aput v23, v11, v1

    .line 388
    .line 389
    aput v23, v11, v18

    .line 390
    .line 391
    aput v2, v11, v17

    .line 392
    .line 393
    aput v23, v11, v16

    .line 394
    .line 395
    const/4 v0, 0x6

    .line 396
    aput v23, v11, v0

    .line 397
    .line 398
    const/4 v0, 0x7

    .line 399
    aput v23, v11, v0

    .line 400
    .line 401
    const/16 v0, 0x8

    .line 402
    .line 403
    aput v2, v11, v0

    .line 404
    .line 405
    aput v23, v11, v22

    .line 406
    .line 407
    aput v23, v11, v21

    .line 408
    .line 409
    aput v23, v11, v20

    .line 410
    .line 411
    goto/16 :goto_2

    .line 412
    .line 413
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    const/4 v1, 0x1

    .line 419
    const/4 v2, 0x1

    .line 420
    move/from16 v3, p2

    .line 421
    .line 422
    move-wide/from16 v4, p3

    .line 423
    .line 424
    move-wide/from16 v6, p5

    .line 425
    .line 426
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 427
    .line 428
    .line 429
    move-result v15

    .line 430
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    const/4 v1, 0x4

    .line 436
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    mul-int/lit16 v15, v15, 0x100

    .line 441
    .line 442
    add-int/2addr v15, v1

    .line 443
    aput v15, v11, v19

    .line 444
    .line 445
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 446
    .line 447
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    const/4 v1, 0x1

    .line 451
    const/4 v2, 0x3

    .line 452
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 453
    .line 454
    .line 455
    move-result v15

    .line 456
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    const/4 v1, 0x4

    .line 462
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    mul-int/lit16 v15, v15, 0x100

    .line 467
    .line 468
    add-int/2addr v15, v1

    .line 469
    aput v15, v11, v14

    .line 470
    .line 471
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    const/4 v1, 0x1

    .line 477
    const/4 v2, 0x5

    .line 478
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 479
    .line 480
    .line 481
    move-result v14

    .line 482
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    const/4 v1, 0x4

    .line 488
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    mul-int/lit16 v14, v14, 0x100

    .line 493
    .line 494
    add-int/2addr v14, v1

    .line 495
    const/4 v1, 0x2

    .line 496
    aput v14, v11, v1

    .line 497
    .line 498
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 499
    .line 500
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    const/4 v1, 0x3

    .line 504
    const/4 v2, 0x1

    .line 505
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 506
    .line 507
    .line 508
    move-result v14

    .line 509
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 510
    .line 511
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    const/4 v1, 0x6

    .line 515
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    mul-int/lit16 v14, v14, 0x100

    .line 520
    .line 521
    add-int/2addr v14, v1

    .line 522
    aput v14, v11, v18

    .line 523
    .line 524
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 525
    .line 526
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    const/4 v1, 0x3

    .line 530
    const/4 v2, 0x3

    .line 531
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 532
    .line 533
    .line 534
    move-result v14

    .line 535
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 536
    .line 537
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    const/4 v1, 0x6

    .line 541
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    mul-int/lit16 v14, v14, 0x100

    .line 546
    .line 547
    add-int/2addr v14, v1

    .line 548
    aput v14, v11, v17

    .line 549
    .line 550
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 551
    .line 552
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    const/4 v1, 0x3

    .line 556
    const/4 v2, 0x5

    .line 557
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 558
    .line 559
    .line 560
    move-result v14

    .line 561
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 562
    .line 563
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    const/4 v1, 0x6

    .line 567
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    mul-int/lit16 v14, v14, 0x100

    .line 572
    .line 573
    add-int/2addr v14, v1

    .line 574
    aput v14, v11, v16

    .line 575
    .line 576
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 577
    .line 578
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    const/4 v1, 0x5

    .line 582
    const/4 v2, 0x1

    .line 583
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 584
    .line 585
    .line 586
    move-result v14

    .line 587
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 588
    .line 589
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    const/4 v1, 0x2

    .line 593
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    mul-int/lit16 v14, v14, 0x100

    .line 598
    .line 599
    add-int/2addr v14, v1

    .line 600
    const/4 v1, 0x6

    .line 601
    aput v14, v11, v1

    .line 602
    .line 603
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    const/4 v1, 0x5

    .line 609
    const/4 v2, 0x3

    .line 610
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 611
    .line 612
    .line 613
    move-result v14

    .line 614
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 615
    .line 616
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    const/4 v1, 0x2

    .line 620
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    mul-int/lit16 v14, v14, 0x100

    .line 625
    .line 626
    add-int/2addr v14, v1

    .line 627
    const/4 v1, 0x7

    .line 628
    aput v14, v11, v1

    .line 629
    .line 630
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 631
    .line 632
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    const/4 v1, 0x5

    .line 636
    const/4 v2, 0x5

    .line 637
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 638
    .line 639
    .line 640
    move-result v7

    .line 641
    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 642
    .line 643
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    const/4 v0, 0x2

    .line 647
    move/from16 v2, p2

    .line 648
    .line 649
    move-wide/from16 v3, p3

    .line 650
    .line 651
    move-wide/from16 v5, p5

    .line 652
    .line 653
    invoke-static/range {v0 .. v6}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    mul-int/lit16 v7, v7, 0x100

    .line 658
    .line 659
    add-int/2addr v7, v0

    .line 660
    const/16 v0, 0x8

    .line 661
    .line 662
    aput v7, v11, v0

    .line 663
    .line 664
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 665
    .line 666
    mul-double/2addr v0, v9

    .line 667
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 668
    .line 669
    .line 670
    move-result-wide v0

    .line 671
    long-to-int v0, v0

    .line 672
    const/4 v1, 0x6

    .line 673
    if-ge v0, v1, :cond_5

    .line 674
    .line 675
    const/16 v0, 0xcc

    .line 676
    .line 677
    aput v0, v11, v22

    .line 678
    .line 679
    aput v0, v11, v21

    .line 680
    .line 681
    aput v0, v11, v20

    .line 682
    .line 683
    goto :goto_2

    .line 684
    :cond_5
    aput v23, v11, v22

    .line 685
    .line 686
    aput v23, v11, v21

    .line 687
    .line 688
    aput v23, v11, v20

    .line 689
    .line 690
    goto :goto_2

    .line 691
    :cond_6
    aput v2, v11, v19

    .line 692
    .line 693
    aput v23, v11, v14

    .line 694
    .line 695
    const/4 v0, 0x2

    .line 696
    aput v23, v11, v0

    .line 697
    .line 698
    aput v23, v11, v18

    .line 699
    .line 700
    aput v2, v11, v17

    .line 701
    .line 702
    aput v23, v11, v16

    .line 703
    .line 704
    const/4 v0, 0x6

    .line 705
    aput v23, v11, v0

    .line 706
    .line 707
    const/4 v0, 0x7

    .line 708
    aput v23, v11, v0

    .line 709
    .line 710
    const/16 v0, 0x8

    .line 711
    .line 712
    aput v2, v11, v0

    .line 713
    .line 714
    aput v23, v11, v22

    .line 715
    .line 716
    aput v23, v11, v21

    .line 717
    .line 718
    aput v23, v11, v20

    .line 719
    .line 720
    :goto_2
    return-object v11
.end method
