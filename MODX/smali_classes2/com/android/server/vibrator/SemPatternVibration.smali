.class public final Lcom/android/server/vibrator/SemPatternVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mHasEngineData:Z

.field public mIsExecutablePkg:Ljava/lang/String;


# virtual methods
.method public final getVibration()Lcom/android/server/vibrator/HalVibration;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    sget-boolean v5, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsHapticEngineSupported:Z

    .line 8
    .line 9
    iget v6, v0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    .line 10
    .line 11
    iget v7, v0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 12
    .line 13
    iget-object v8, v0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 14
    .line 15
    const/4 v11, -0x1

    .line 16
    const-string v13, "VibratorManagerService"

    .line 17
    .line 18
    const-string v14, "This "

    .line 19
    .line 20
    if-eqz v5, :cond_11

    .line 21
    .line 22
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getEngineData(I)[I

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    array-length v15, v5

    .line 27
    if-ne v15, v3, :cond_0

    .line 28
    .line 29
    aget v15, v5, v1

    .line 30
    .line 31
    if-gez v15, :cond_0

    .line 32
    .line 33
    const-string v2, " is not supported for engine."

    .line 34
    .line 35
    invoke-static {v7, v14, v2, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_b

    .line 39
    .line 40
    :cond_0
    iput-boolean v4, v0, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    .line 41
    .line 42
    array-length v15, v5

    .line 43
    const/4 v12, 0x5

    .line 44
    if-ne v15, v12, :cond_1

    .line 45
    .line 46
    aget v12, v5, v1

    .line 47
    .line 48
    if-ne v12, v2, :cond_1

    .line 49
    .line 50
    aget v12, v5, v4

    .line 51
    .line 52
    if-nez v12, :cond_1

    .line 53
    .line 54
    aget v12, v5, v3

    .line 55
    .line 56
    if-nez v12, :cond_1

    .line 57
    .line 58
    const/4 v12, 0x3

    .line 59
    aget v12, v5, v12

    .line 60
    .line 61
    if-nez v12, :cond_1

    .line 62
    .line 63
    aget v12, v5, v2

    .line 64
    .line 65
    if-nez v12, :cond_1

    .line 66
    .line 67
    const-string v0, "Empty pattern for haptic engine."

    .line 68
    .line 69
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_1
    array-length v12, v5

    .line 75
    add-int/lit8 v15, v12, -0x1

    .line 76
    .line 77
    const-string v9, "] = "

    .line 78
    .line 79
    if-le v12, v2, :cond_2

    .line 80
    .line 81
    div-int/lit8 v10, v15, 0x4

    .line 82
    .line 83
    mul-int/2addr v10, v2

    .line 84
    if-eq v10, v15, :cond_3

    .line 85
    .line 86
    :cond_2
    move-object/from16 v24, v5

    .line 87
    .line 88
    goto/16 :goto_9

    .line 89
    .line 90
    :cond_3
    aget v10, v5, v1

    .line 91
    .line 92
    if-ne v15, v10, :cond_f

    .line 93
    .line 94
    if-ne v7, v11, :cond_a

    .line 95
    .line 96
    array-length v9, v5

    .line 97
    array-length v10, v5

    .line 98
    if-gt v10, v2, :cond_4

    .line 99
    .line 100
    new-array v2, v3, [J

    .line 101
    .line 102
    fill-array-data v2, :array_0

    .line 103
    .line 104
    .line 105
    move-object/from16 v24, v5

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_4
    add-int/lit8 v10, v9, -0x1

    .line 109
    .line 110
    div-int/2addr v10, v2

    .line 111
    add-int/2addr v10, v4

    .line 112
    new-array v10, v10, [J

    .line 113
    .line 114
    const-wide/16 v17, 0x0

    .line 115
    .line 116
    aput-wide v17, v10, v1

    .line 117
    .line 118
    aget v12, v5, v3

    .line 119
    .line 120
    if-eqz v12, :cond_5

    .line 121
    .line 122
    move v15, v1

    .line 123
    move v12, v4

    .line 124
    goto :goto_0

    .line 125
    :cond_5
    move v12, v1

    .line 126
    move v15, v4

    .line 127
    :goto_0
    move v11, v4

    .line 128
    :goto_1
    if-ge v11, v9, :cond_9

    .line 129
    .line 130
    add-int/lit8 v3, v11, 0x1

    .line 131
    .line 132
    if-ge v3, v9, :cond_8

    .line 133
    .line 134
    if-eqz v15, :cond_6

    .line 135
    .line 136
    aget v21, v5, v3

    .line 137
    .line 138
    if-eqz v21, :cond_6

    .line 139
    .line 140
    add-int/2addr v12, v4

    .line 141
    move v15, v1

    .line 142
    goto :goto_2

    .line 143
    :cond_6
    if-nez v15, :cond_7

    .line 144
    .line 145
    aget v3, v5, v3

    .line 146
    .line 147
    if-nez v3, :cond_7

    .line 148
    .line 149
    add-int/2addr v12, v4

    .line 150
    move v15, v4

    .line 151
    :cond_7
    :goto_2
    aget-wide v21, v10, v12

    .line 152
    .line 153
    aget v3, v5, v11

    .line 154
    .line 155
    move-object/from16 v24, v5

    .line 156
    .line 157
    int-to-long v4, v3

    .line 158
    add-long v21, v21, v4

    .line 159
    .line 160
    aput-wide v21, v10, v12

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    move-object/from16 v24, v5

    .line 164
    .line 165
    :goto_3
    add-int/2addr v11, v2

    .line 166
    move-object/from16 v5, v24

    .line 167
    .line 168
    const/4 v3, 0x2

    .line 169
    const/4 v4, 0x1

    .line 170
    goto :goto_1

    .line 171
    :cond_9
    move v3, v4

    .line 172
    move-object/from16 v24, v5

    .line 173
    .line 174
    add-int/2addr v12, v3

    .line 175
    new-array v2, v12, [J

    .line 176
    .line 177
    invoke-static {v10, v1, v2, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_a
    move-object/from16 v24, v5

    .line 182
    .line 183
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternByIndex(I)[J

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :goto_4
    array-length v3, v2

    .line 188
    const/4 v4, 0x2

    .line 189
    if-ne v3, v4, :cond_b

    .line 190
    .line 191
    aget-wide v3, v2, v1

    .line 192
    .line 193
    const-wide/16 v9, 0x0

    .line 194
    .line 195
    cmp-long v3, v3, v9

    .line 196
    .line 197
    if-gez v3, :cond_b

    .line 198
    .line 199
    const/4 v4, 0x2

    .line 200
    const-wide/16 v10, 0x0

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_b
    array-length v3, v2

    .line 204
    move v4, v1

    .line 205
    move v5, v4

    .line 206
    :goto_5
    if-ge v4, v3, :cond_c

    .line 207
    .line 208
    aget-wide v9, v2, v4

    .line 209
    .line 210
    int-to-long v11, v5

    .line 211
    add-long/2addr v11, v9

    .line 212
    long-to-int v5, v11

    .line 213
    const/4 v9, 0x1

    .line 214
    add-int/2addr v4, v9

    .line 215
    goto :goto_5

    .line 216
    :cond_c
    const/4 v9, 0x1

    .line 217
    int-to-long v2, v5

    .line 218
    const/4 v4, 0x2

    .line 219
    new-array v5, v4, [J

    .line 220
    .line 221
    const-wide/16 v10, 0x0

    .line 222
    .line 223
    aput-wide v10, v5, v1

    .line 224
    .line 225
    aput-wide v2, v5, v9

    .line 226
    .line 227
    move-object v2, v5

    .line 228
    :goto_6
    array-length v3, v2

    .line 229
    if-ne v3, v4, :cond_d

    .line 230
    .line 231
    aget-wide v3, v2, v1

    .line 232
    .line 233
    cmp-long v1, v3, v10

    .line 234
    .line 235
    if-gez v1, :cond_d

    .line 236
    .line 237
    const-string v0, " is not supported.(colorful)"

    .line 238
    .line 239
    invoke-static {v7, v14, v0, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :goto_7
    const/4 v12, 0x0

    .line 243
    goto :goto_a

    .line 244
    :cond_d
    const/4 v1, -0x1

    .line 245
    if-le v6, v1, :cond_e

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_e

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_e
    new-instance v12, Lcom/android/server/vibrator/HalVibration;

    .line 255
    .line 256
    iget-object v1, v0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 257
    .line 258
    iget-object v2, v0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    .line 259
    .line 260
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    add-int/lit8 v3, v3, 0x64

    .line 265
    .line 266
    int-to-long v3, v3

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 268
    .line 269
    .line 270
    move-result-object v23

    .line 271
    const/16 v22, 0x0

    .line 272
    .line 273
    iget v0, v0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 274
    .line 275
    move-object v15, v12

    .line 276
    move-object/from16 v16, v1

    .line 277
    .line 278
    move-object/from16 v17, v2

    .line 279
    .line 280
    move-wide/from16 v18, v3

    .line 281
    .line 282
    move/from16 v20, v0

    .line 283
    .line 284
    move-object/from16 v21, v24

    .line 285
    .line 286
    invoke-direct/range {v15 .. v23}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 287
    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_f
    move-object/from16 v24, v5

    .line 291
    .line 292
    :goto_8
    if-ge v1, v12, :cond_10

    .line 293
    .line 294
    const-string v0, "isColorfulDataFormat() - wrong format(2) : data["

    .line 295
    .line 296
    invoke-static {v1, v0, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    aget v2, v24, v1

    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    const/4 v0, 0x1

    .line 313
    add-int/2addr v1, v0

    .line 314
    goto :goto_8

    .line 315
    :goto_9
    if-ge v1, v12, :cond_10

    .line 316
    .line 317
    const-string v0, "isColorfulDataFormat() - wrong format(1) : data["

    .line 318
    .line 319
    invoke-static {v1, v0, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    aget v2, v24, v1

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    const/4 v0, 0x1

    .line 336
    add-int/2addr v1, v0

    .line 337
    goto :goto_9

    .line 338
    :cond_10
    const-string v0, "data is not haptic engine data"

    .line 339
    .line 340
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    goto :goto_7

    .line 344
    :goto_a
    return-object v12

    .line 345
    :cond_11
    :goto_b
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternByIndex(I)[J

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    array-length v3, v2

    .line 350
    const/4 v4, 0x2

    .line 351
    if-ne v3, v4, :cond_13

    .line 352
    .line 353
    aget-wide v3, v2, v1

    .line 354
    .line 355
    const-wide/16 v9, 0x0

    .line 356
    .line 357
    cmp-long v3, v3, v9

    .line 358
    .line 359
    if-nez v3, :cond_12

    .line 360
    .line 361
    const/4 v4, 0x1

    .line 362
    aget-wide v11, v2, v4

    .line 363
    .line 364
    cmp-long v4, v11, v9

    .line 365
    .line 366
    if-nez v4, :cond_12

    .line 367
    .line 368
    const-string v0, " is blank pattern.(common)"

    .line 369
    .line 370
    invoke-static {v7, v14, v0, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_e

    .line 374
    .line 375
    :cond_12
    if-gez v3, :cond_13

    .line 376
    .line 377
    const-string v0, " is not supported.(common)"

    .line 378
    .line 379
    invoke-static {v7, v14, v0, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_e

    .line 383
    .line 384
    :cond_13
    array-length v3, v2

    .line 385
    if-eqz v3, :cond_18

    .line 386
    .line 387
    array-length v3, v2

    .line 388
    :goto_c
    if-ge v1, v3, :cond_17

    .line 389
    .line 390
    aget-wide v4, v2, v1

    .line 391
    .line 392
    const-wide/16 v9, 0x0

    .line 393
    .line 394
    cmp-long v4, v4, v9

    .line 395
    .line 396
    if-eqz v4, :cond_16

    .line 397
    .line 398
    array-length v1, v2

    .line 399
    if-ge v6, v1, :cond_18

    .line 400
    .line 401
    iget-object v1, v0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 402
    .line 403
    if-nez v1, :cond_14

    .line 404
    .line 405
    goto :goto_d

    .line 406
    :cond_14
    const/4 v4, -0x1

    .line 407
    if-le v6, v4, :cond_15

    .line 408
    .line 409
    if-ne v7, v4, :cond_15

    .line 410
    .line 411
    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-nez v1, :cond_15

    .line 416
    .line 417
    goto :goto_e

    .line 418
    :cond_15
    invoke-static {v2, v6}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    iget v2, v0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 423
    .line 424
    invoke-virtual {v1, v2}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    .line 425
    .line 426
    .line 427
    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    .line 428
    .line 429
    .line 430
    move-result-object v11

    .line 431
    new-instance v1, Lcom/android/server/vibrator/HalVibration;

    .line 432
    .line 433
    iget-object v10, v0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 434
    .line 435
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    int-to-long v12, v2

    .line 440
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternFrequencyByIndex(I)I

    .line 441
    .line 442
    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 444
    .line 445
    .line 446
    move-result-object v17

    .line 447
    const/16 v16, 0x0

    .line 448
    .line 449
    iget v14, v0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 450
    .line 451
    const/4 v15, 0x0

    .line 452
    move-object v9, v1

    .line 453
    invoke-direct/range {v9 .. v17}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 454
    .line 455
    .line 456
    move-object v12, v1

    .line 457
    goto :goto_f

    .line 458
    :cond_16
    const/4 v4, -0x1

    .line 459
    const/4 v5, 0x1

    .line 460
    add-int/2addr v1, v5

    .line 461
    goto :goto_c

    .line 462
    :cond_17
    const-string v1, "isAll0() is true"

    .line 463
    .line 464
    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    :cond_18
    :goto_d
    const-string/jumbo v1, "semPatternVibrate() is failed by illegal argument."

    .line 468
    .line 469
    .line 470
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string/jumbo v3, "semPatternVibrate() - pattern.length = "

    .line 476
    .line 477
    .line 478
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    array-length v2, v2

    .line 482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v2, ", repeat = "

    .line 486
    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    const-string/jumbo v2, "semPatternVibrate() - token = "

    .line 503
    .line 504
    .line 505
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    iget-object v0, v0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 509
    .line 510
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    :goto_e
    const/4 v12, 0x0

    .line 521
    :goto_f
    return-object v12

    .line 522
    nop

    .line 523
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public final isExecutablePattern([J)Z
    .locals 13

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    .line 3
    .line 4
    const-string v2, "VibratorManagerService"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-lt v1, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "isExecutablePattern() - length = "

    .line 10
    .line 11
    const-string p1, ", repeat = "

    .line 12
    .line 13
    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    aget-wide v4, p1, v1

    .line 18
    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    cmp-long v4, v4, v6

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-lez v4, :cond_1

    .line 25
    .line 26
    return v5

    .line 27
    :cond_1
    div-int/lit8 v4, v1, 0x2

    .line 28
    .line 29
    mul-int/lit8 v4, v4, 0x2

    .line 30
    .line 31
    if-ne v4, v1, :cond_2

    .line 32
    .line 33
    div-int/lit8 v8, v0, 0x2

    .line 34
    .line 35
    mul-int/lit8 v8, v8, 0x2

    .line 36
    .line 37
    if-eq v8, v0, :cond_3

    .line 38
    .line 39
    :cond_2
    if-eq v4, v1, :cond_4

    .line 40
    .line 41
    div-int/lit8 v4, v0, 0x2

    .line 42
    .line 43
    mul-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    if-eq v4, v0, :cond_4

    .line 46
    .line 47
    :cond_3
    add-int/lit8 v4, v0, -0x1

    .line 48
    .line 49
    aget-wide v8, p1, v4

    .line 50
    .line 51
    cmp-long v4, v8, v6

    .line 52
    .line 53
    if-lez v4, :cond_4

    .line 54
    .line 55
    return v5

    .line 56
    :cond_4
    move v4, v3

    .line 57
    :goto_0
    if-ge v4, v0, :cond_6

    .line 58
    .line 59
    add-int v8, v4, v1

    .line 60
    .line 61
    add-int/lit8 v9, v8, 0x1

    .line 62
    .line 63
    add-int/lit8 v8, v8, 0x2

    .line 64
    .line 65
    if-ge v8, v0, :cond_5

    .line 66
    .line 67
    aget-wide v9, p1, v9

    .line 68
    .line 69
    aget-wide v11, p1, v8

    .line 70
    .line 71
    add-long/2addr v9, v11

    .line 72
    cmp-long v8, v9, v6

    .line 73
    .line 74
    if-lez v8, :cond_5

    .line 75
    .line 76
    return v5

    .line 77
    :cond_5
    add-int/lit8 v4, v4, 0x2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_6
    const-string v4, "This pattern is not executable. repeat = "

    .line 81
    .line 82
    invoke-static {v1, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move v1, v3

    .line 86
    :goto_1
    if-ge v1, v0, :cond_7

    .line 87
    .line 88
    const-string/jumbo v4, "pattern["

    .line 89
    .line 90
    .line 91
    const-string v5, "] = "

    .line 92
    .line 93
    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    aget-wide v5, p1, v1

    .line 98
    .line 99
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    iget-object v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/16 v2, 0x3e8

    .line 119
    .line 120
    if-ge v1, v2, :cond_8

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, " "

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    .line 138
    .line 139
    const-string v5, ":"

    .line 140
    .line 141
    invoke-static {v1, v4, v5}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iput-object v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    .line 146
    .line 147
    move v1, v3

    .line 148
    :goto_2
    if-ge v1, v0, :cond_8

    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v5, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    aget-wide v5, p1, v1

    .line 161
    .line 162
    invoke-static {v4, v5, v6, v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    iput-object v4, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    .line 167
    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_8
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string/jumbo v1, "semColorfulVibrate : "

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string/jumbo v1, "semPatternVibrate : "

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
