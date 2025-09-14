.class public final Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final activeScanInput:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/KnoxCaptureInputFilter;

.field public final unicodeCodepoint:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const/16 v5, 0x353

    .line 10
    .line 11
    const-string v6, "KnoxCaptureInputFilter"

    .line 12
    .line 13
    if-eq v4, v5, :cond_35

    .line 14
    .line 15
    const/16 v0, 0x354

    .line 16
    .line 17
    if-eq v4, v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_b

    .line 20
    .line 21
    :cond_0
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 22
    .line 23
    iget-object v4, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v5, "ScanEventHandler, END, activeScanDeviceId ="

    .line 30
    .line 31
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v5, v4, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 35
    .line 36
    invoke-static {v0, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v8, 0x0

    .line 57
    iget-object v9, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    .line 58
    .line 59
    if-eqz v0, :cond_30

    .line 60
    .line 61
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/view/KeyEvent;

    .line 66
    .line 67
    sget-boolean v10, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 68
    .line 69
    if-eqz v10, :cond_3

    .line 70
    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v12, "processKeyEvent event: "

    .line 74
    .line 75
    .line 76
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    invoke-static {v11}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-eqz v12, :cond_4

    .line 98
    .line 99
    goto/16 :goto_8

    .line 100
    .line 101
    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    const/16 v13, 0x90

    .line 106
    .line 107
    const/4 v14, 0x4

    .line 108
    if-lt v12, v13, :cond_a

    .line 109
    .line 110
    const/16 v13, 0x99

    .line 111
    .line 112
    if-gt v12, v13, :cond_a

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_a

    .line 119
    .line 120
    if-eqz v10, :cond_5

    .line 121
    .line 122
    const-string v11, " processKeyEvent, unicode codepoint"

    .line 123
    .line 124
    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_5
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    packed-switch v0, :pswitch_data_0

    .line 132
    .line 133
    .line 134
    const-string v0, "\u0000"

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :pswitch_0
    const-string v0, "9"

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "8"

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "7"

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :pswitch_3
    const-string v0, "6"

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :pswitch_4
    const-string v0, "5"

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_5
    const-string v0, "4"

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :pswitch_6
    const-string v0, "3"

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :pswitch_7
    const-string v0, "2"

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :pswitch_8
    const-string v0, "1"

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :pswitch_9
    const-string v0, "0"

    .line 165
    .line 166
    :goto_0
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-ne v0, v14, :cond_9

    .line 174
    .line 175
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v11, " getUnicodeChar codePointStr: "

    .line 180
    .line 181
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    invoke-static {v12}, Ljava/lang/Character;->toChars(I)[C

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    if-eqz v10, :cond_6

    .line 190
    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v0, " codePoint: "

    .line 200
    .line 201
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v0, " unicodeChars: "

    .line 208
    .line 209
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    new-instance v0, Ljava/lang/String;

    .line 213
    .line 214
    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([C)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    goto :goto_3

    .line 230
    :cond_6
    :goto_1
    array-length v0, v13

    .line 231
    new-array v0, v0, [B

    .line 232
    .line 233
    array-length v10, v13

    .line 234
    move v11, v2

    .line 235
    move v12, v11

    .line 236
    :goto_2
    if-ge v11, v10, :cond_7

    .line 237
    .line 238
    aget-char v14, v13, v11

    .line 239
    .line 240
    add-int/lit8 v15, v12, 0x1

    .line 241
    .line 242
    int-to-byte v14, v14

    .line 243
    aput-byte v14, v0, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 245
    add-int/2addr v11, v3

    .line 246
    move v12, v15

    .line 247
    goto :goto_2

    .line 248
    :cond_7
    move-object v8, v0

    .line 249
    goto :goto_4

    .line 250
    :goto_3
    sget-boolean v10, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 251
    .line 252
    const-string v10, " getUnicodeChar exception: "

    .line 253
    .line 254
    invoke-static {v0, v10, v6}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_8
    :goto_4
    move v0, v3

    .line 258
    goto/16 :goto_7

    .line 259
    .line 260
    :cond_9
    move v0, v2

    .line 261
    goto/16 :goto_7

    .line 262
    .line 263
    :cond_a
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    const/16 v12, 0x45

    .line 268
    .line 269
    const/16 v13, 0xd

    .line 270
    .line 271
    const/16 v15, 0x1d

    .line 272
    .line 273
    if-lt v8, v15, :cond_b

    .line 274
    .line 275
    const/16 v15, 0x36

    .line 276
    .line 277
    if-le v8, v15, :cond_c

    .line 278
    .line 279
    :cond_b
    const/16 v15, 0x47

    .line 280
    .line 281
    if-eq v8, v15, :cond_c

    .line 282
    .line 283
    const/16 v15, 0x48

    .line 284
    .line 285
    if-eq v8, v15, :cond_c

    .line 286
    .line 287
    const/16 v15, 0x49

    .line 288
    .line 289
    if-eq v8, v15, :cond_c

    .line 290
    .line 291
    if-eq v8, v13, :cond_c

    .line 292
    .line 293
    if-ne v8, v12, :cond_2c

    .line 294
    .line 295
    :cond_c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-eqz v8, :cond_2c

    .line 300
    .line 301
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    if-eq v8, v13, :cond_29

    .line 306
    .line 307
    if-eq v8, v12, :cond_2a

    .line 308
    .line 309
    packed-switch v8, :pswitch_data_1

    .line 310
    .line 311
    .line 312
    packed-switch v8, :pswitch_data_2

    .line 313
    .line 314
    .line 315
    goto/16 :goto_5

    .line 316
    .line 317
    :pswitch_a
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    if-eqz v8, :cond_d

    .line 322
    .line 323
    new-array v8, v3, [B

    .line 324
    .line 325
    aput-byte v3, v8, v2

    .line 326
    .line 327
    goto/16 :goto_6

    .line 328
    .line 329
    :cond_d
    :pswitch_b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    if-eqz v8, :cond_e

    .line 334
    .line 335
    new-array v8, v3, [B

    .line 336
    .line 337
    const/4 v12, 0x2

    .line 338
    aput-byte v12, v8, v2

    .line 339
    .line 340
    goto/16 :goto_6

    .line 341
    .line 342
    :cond_e
    :pswitch_c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    if-eqz v8, :cond_f

    .line 347
    .line 348
    new-array v8, v3, [B

    .line 349
    .line 350
    const/4 v12, 0x3

    .line 351
    aput-byte v12, v8, v2

    .line 352
    .line 353
    goto/16 :goto_6

    .line 354
    .line 355
    :cond_f
    :pswitch_d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    if-eqz v8, :cond_10

    .line 360
    .line 361
    new-array v8, v3, [B

    .line 362
    .line 363
    aput-byte v14, v8, v2

    .line 364
    .line 365
    goto/16 :goto_6

    .line 366
    .line 367
    :cond_10
    :pswitch_e
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 368
    .line 369
    .line 370
    move-result v8

    .line 371
    if-eqz v8, :cond_11

    .line 372
    .line 373
    new-array v8, v3, [B

    .line 374
    .line 375
    const/4 v12, 0x5

    .line 376
    aput-byte v12, v8, v2

    .line 377
    .line 378
    goto/16 :goto_6

    .line 379
    .line 380
    :cond_11
    :pswitch_f
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 381
    .line 382
    .line 383
    move-result v8

    .line 384
    if-eqz v8, :cond_12

    .line 385
    .line 386
    new-array v8, v3, [B

    .line 387
    .line 388
    const/4 v12, 0x6

    .line 389
    aput-byte v12, v8, v2

    .line 390
    .line 391
    goto/16 :goto_6

    .line 392
    .line 393
    :cond_12
    :pswitch_10
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    if-eqz v8, :cond_13

    .line 398
    .line 399
    new-array v8, v3, [B

    .line 400
    .line 401
    const/4 v12, 0x7

    .line 402
    aput-byte v12, v8, v2

    .line 403
    .line 404
    goto/16 :goto_6

    .line 405
    .line 406
    :cond_13
    :pswitch_11
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 407
    .line 408
    .line 409
    move-result v8

    .line 410
    if-eqz v8, :cond_14

    .line 411
    .line 412
    new-array v8, v3, [B

    .line 413
    .line 414
    const/16 v12, 0x8

    .line 415
    .line 416
    aput-byte v12, v8, v2

    .line 417
    .line 418
    goto/16 :goto_6

    .line 419
    .line 420
    :cond_14
    :pswitch_12
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    if-eqz v8, :cond_15

    .line 425
    .line 426
    new-array v8, v3, [B

    .line 427
    .line 428
    const/16 v12, 0x9

    .line 429
    .line 430
    aput-byte v12, v8, v2

    .line 431
    .line 432
    goto/16 :goto_6

    .line 433
    .line 434
    :cond_15
    :pswitch_13
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    if-eqz v8, :cond_16

    .line 439
    .line 440
    new-array v8, v3, [B

    .line 441
    .line 442
    const/16 v12, 0xa

    .line 443
    .line 444
    aput-byte v12, v8, v2

    .line 445
    .line 446
    goto/16 :goto_6

    .line 447
    .line 448
    :cond_16
    :pswitch_14
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 449
    .line 450
    .line 451
    move-result v8

    .line 452
    if-eqz v8, :cond_17

    .line 453
    .line 454
    new-array v8, v3, [B

    .line 455
    .line 456
    const/16 v12, 0xb

    .line 457
    .line 458
    aput-byte v12, v8, v2

    .line 459
    .line 460
    goto/16 :goto_6

    .line 461
    .line 462
    :cond_17
    :pswitch_15
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    if-eqz v8, :cond_18

    .line 467
    .line 468
    new-array v8, v3, [B

    .line 469
    .line 470
    const/16 v12, 0xc

    .line 471
    .line 472
    aput-byte v12, v8, v2

    .line 473
    .line 474
    goto/16 :goto_6

    .line 475
    .line 476
    :cond_18
    :pswitch_16
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 477
    .line 478
    .line 479
    move-result v8

    .line 480
    if-eqz v8, :cond_19

    .line 481
    .line 482
    new-array v8, v3, [B

    .line 483
    .line 484
    aput-byte v13, v8, v2

    .line 485
    .line 486
    goto/16 :goto_6

    .line 487
    .line 488
    :cond_19
    :pswitch_17
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 489
    .line 490
    .line 491
    move-result v8

    .line 492
    if-eqz v8, :cond_1a

    .line 493
    .line 494
    new-array v8, v3, [B

    .line 495
    .line 496
    const/16 v12, 0xe

    .line 497
    .line 498
    aput-byte v12, v8, v2

    .line 499
    .line 500
    goto/16 :goto_6

    .line 501
    .line 502
    :cond_1a
    :pswitch_18
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 503
    .line 504
    .line 505
    move-result v8

    .line 506
    if-eqz v8, :cond_1b

    .line 507
    .line 508
    new-array v8, v3, [B

    .line 509
    .line 510
    const/16 v12, 0xf

    .line 511
    .line 512
    aput-byte v12, v8, v2

    .line 513
    .line 514
    goto/16 :goto_6

    .line 515
    .line 516
    :cond_1b
    :pswitch_19
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 517
    .line 518
    .line 519
    move-result v8

    .line 520
    if-eqz v8, :cond_1c

    .line 521
    .line 522
    new-array v8, v3, [B

    .line 523
    .line 524
    const/16 v12, 0x10

    .line 525
    .line 526
    aput-byte v12, v8, v2

    .line 527
    .line 528
    goto/16 :goto_6

    .line 529
    .line 530
    :cond_1c
    :pswitch_1a
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 531
    .line 532
    .line 533
    move-result v8

    .line 534
    if-eqz v8, :cond_1d

    .line 535
    .line 536
    new-array v8, v3, [B

    .line 537
    .line 538
    const/16 v12, 0x11

    .line 539
    .line 540
    aput-byte v12, v8, v2

    .line 541
    .line 542
    goto/16 :goto_6

    .line 543
    .line 544
    :cond_1d
    :pswitch_1b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 545
    .line 546
    .line 547
    move-result v8

    .line 548
    if-eqz v8, :cond_1e

    .line 549
    .line 550
    new-array v8, v3, [B

    .line 551
    .line 552
    const/16 v12, 0x12

    .line 553
    .line 554
    aput-byte v12, v8, v2

    .line 555
    .line 556
    goto/16 :goto_6

    .line 557
    .line 558
    :cond_1e
    :pswitch_1c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 559
    .line 560
    .line 561
    move-result v8

    .line 562
    if-eqz v8, :cond_1f

    .line 563
    .line 564
    new-array v8, v3, [B

    .line 565
    .line 566
    const/16 v12, 0x13

    .line 567
    .line 568
    aput-byte v12, v8, v2

    .line 569
    .line 570
    goto/16 :goto_6

    .line 571
    .line 572
    :cond_1f
    :pswitch_1d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    if-eqz v8, :cond_20

    .line 577
    .line 578
    new-array v8, v3, [B

    .line 579
    .line 580
    const/16 v12, 0x14

    .line 581
    .line 582
    aput-byte v12, v8, v2

    .line 583
    .line 584
    goto/16 :goto_6

    .line 585
    .line 586
    :cond_20
    :pswitch_1e
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 587
    .line 588
    .line 589
    move-result v8

    .line 590
    if-eqz v8, :cond_21

    .line 591
    .line 592
    new-array v8, v3, [B

    .line 593
    .line 594
    const/16 v12, 0x15

    .line 595
    .line 596
    aput-byte v12, v8, v2

    .line 597
    .line 598
    goto/16 :goto_6

    .line 599
    .line 600
    :cond_21
    :pswitch_1f
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 601
    .line 602
    .line 603
    move-result v8

    .line 604
    if-eqz v8, :cond_22

    .line 605
    .line 606
    new-array v8, v3, [B

    .line 607
    .line 608
    const/16 v12, 0x16

    .line 609
    .line 610
    aput-byte v12, v8, v2

    .line 611
    .line 612
    goto/16 :goto_6

    .line 613
    .line 614
    :cond_22
    :pswitch_20
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 615
    .line 616
    .line 617
    move-result v8

    .line 618
    if-eqz v8, :cond_23

    .line 619
    .line 620
    new-array v8, v3, [B

    .line 621
    .line 622
    const/16 v12, 0x17

    .line 623
    .line 624
    aput-byte v12, v8, v2

    .line 625
    .line 626
    goto/16 :goto_6

    .line 627
    .line 628
    :cond_23
    :pswitch_21
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 629
    .line 630
    .line 631
    move-result v8

    .line 632
    if-eqz v8, :cond_24

    .line 633
    .line 634
    new-array v8, v3, [B

    .line 635
    .line 636
    const/16 v12, 0x18

    .line 637
    .line 638
    aput-byte v12, v8, v2

    .line 639
    .line 640
    goto/16 :goto_6

    .line 641
    .line 642
    :cond_24
    :pswitch_22
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 643
    .line 644
    .line 645
    move-result v8

    .line 646
    if-eqz v8, :cond_25

    .line 647
    .line 648
    new-array v8, v3, [B

    .line 649
    .line 650
    const/16 v12, 0x19

    .line 651
    .line 652
    aput-byte v12, v8, v2

    .line 653
    .line 654
    goto :goto_6

    .line 655
    :cond_25
    :pswitch_23
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 656
    .line 657
    .line 658
    move-result v8

    .line 659
    if-eqz v8, :cond_26

    .line 660
    .line 661
    new-array v8, v3, [B

    .line 662
    .line 663
    const/16 v12, 0x1a

    .line 664
    .line 665
    aput-byte v12, v8, v2

    .line 666
    .line 667
    goto :goto_6

    .line 668
    :cond_26
    :pswitch_24
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 669
    .line 670
    .line 671
    move-result v8

    .line 672
    if-eqz v8, :cond_27

    .line 673
    .line 674
    new-array v8, v3, [B

    .line 675
    .line 676
    const/16 v12, 0x1b

    .line 677
    .line 678
    aput-byte v12, v8, v2

    .line 679
    .line 680
    goto :goto_6

    .line 681
    :cond_27
    :pswitch_25
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 682
    .line 683
    .line 684
    move-result v8

    .line 685
    if-eqz v8, :cond_28

    .line 686
    .line 687
    new-array v8, v3, [B

    .line 688
    .line 689
    const/16 v12, 0x1c

    .line 690
    .line 691
    aput-byte v12, v8, v2

    .line 692
    .line 693
    goto :goto_6

    .line 694
    :cond_28
    :pswitch_26
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    if-eqz v8, :cond_29

    .line 699
    .line 700
    new-array v8, v3, [B

    .line 701
    .line 702
    const/16 v12, 0x1d

    .line 703
    .line 704
    aput-byte v12, v8, v2

    .line 705
    .line 706
    goto :goto_6

    .line 707
    :cond_29
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 708
    .line 709
    .line 710
    move-result v8

    .line 711
    if-eqz v8, :cond_2a

    .line 712
    .line 713
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 714
    .line 715
    .line 716
    move-result v8

    .line 717
    if-eqz v8, :cond_2a

    .line 718
    .line 719
    new-array v8, v3, [B

    .line 720
    .line 721
    const/16 v12, 0x1e

    .line 722
    .line 723
    aput-byte v12, v8, v2

    .line 724
    .line 725
    goto :goto_6

    .line 726
    :cond_2a
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 727
    .line 728
    .line 729
    move-result v8

    .line 730
    if-eqz v8, :cond_2b

    .line 731
    .line 732
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 733
    .line 734
    .line 735
    move-result v8

    .line 736
    if-eqz v8, :cond_2b

    .line 737
    .line 738
    new-array v8, v3, [B

    .line 739
    .line 740
    const/16 v12, 0x1f

    .line 741
    .line 742
    aput-byte v12, v8, v2

    .line 743
    .line 744
    goto :goto_6

    .line 745
    :cond_2b
    :goto_5
    new-array v8, v3, [B

    .line 746
    .line 747
    aput-byte v2, v8, v2

    .line 748
    .line 749
    :goto_6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 750
    .line 751
    .line 752
    move-result v12

    .line 753
    invoke-static {v12}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 754
    .line 755
    .line 756
    move-result-object v12

    .line 757
    if-eqz v10, :cond_8

    .line 758
    .line 759
    new-instance v10, Ljava/lang/StringBuilder;

    .line 760
    .line 761
    const-string/jumbo v13, "processKeyEvent, ascii ctrl char="

    .line 762
    .line 763
    .line 764
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    .line 768
    .line 769
    .line 770
    move-result v0

    .line 771
    invoke-virtual {v12, v11, v0}, Landroid/view/KeyCharacterMap;->get(II)I

    .line 772
    .line 773
    .line 774
    move-result v0

    .line 775
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .line 784
    .line 785
    goto/16 :goto_4

    .line 786
    .line 787
    :cond_2c
    if-eqz v10, :cond_2d

    .line 788
    .line 789
    const-string v8, " processKeyEvent, any other character"

    .line 790
    .line 791
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .line 793
    .line 794
    :cond_2d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 795
    .line 796
    .line 797
    move-result v8

    .line 798
    invoke-static {v8}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 799
    .line 800
    .line 801
    move-result-object v8

    .line 802
    new-array v10, v3, [B

    .line 803
    .line 804
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    invoke-virtual {v8, v11, v0}, Landroid/view/KeyCharacterMap;->get(II)I

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    int-to-byte v0, v0

    .line 813
    aput-byte v0, v10, v2

    .line 814
    .line 815
    move v0, v3

    .line 816
    move-object v8, v10

    .line 817
    :goto_7
    if-eqz v0, :cond_2f

    .line 818
    .line 819
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 820
    .line 821
    if-eqz v0, :cond_2e

    .line 822
    .line 823
    const-string v0, " processKeyEvent, clear unicode codepoint buffer"

    .line 824
    .line 825
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .line 827
    .line 828
    :cond_2e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    if-lez v0, :cond_2f

    .line 833
    .line 834
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    invoke-virtual {v9, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    :cond_2f
    :goto_8
    if-eqz v8, :cond_2

    .line 842
    .line 843
    array-length v0, v8

    .line 844
    move v9, v2

    .line 845
    :goto_9
    if-ge v9, v0, :cond_2

    .line 846
    .line 847
    aget-byte v10, v8, v9

    .line 848
    .line 849
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 850
    .line 851
    .line 852
    move-result-object v10

    .line 853
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    add-int/2addr v9, v3

    .line 857
    goto :goto_9

    .line 858
    :cond_30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    if-lez v0, :cond_33

    .line 863
    .line 864
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    new-array v0, v0, [B

    .line 869
    .line 870
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 871
    .line 872
    .line 873
    move-result-object v5

    .line 874
    move v7, v2

    .line 875
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 876
    .line 877
    .line 878
    move-result v10

    .line 879
    if-eqz v10, :cond_31

    .line 880
    .line 881
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v10

    .line 885
    check-cast v10, Ljava/lang/Byte;

    .line 886
    .line 887
    add-int/lit8 v11, v7, 0x1

    .line 888
    .line 889
    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    .line 890
    .line 891
    .line 892
    move-result v10

    .line 893
    aput-byte v10, v0, v7

    .line 894
    .line 895
    move v7, v11

    .line 896
    goto :goto_a

    .line 897
    :cond_31
    sget-boolean v3, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 898
    .line 899
    if-eqz v3, :cond_32

    .line 900
    .line 901
    new-instance v3, Ljava/lang/String;

    .line 902
    .line 903
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 904
    .line 905
    .line 906
    const-string v5, "ScanEventHandler, END, scannedInput: "

    .line 907
    .line 908
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .line 914
    .line 915
    :cond_32
    iget v3, v4, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 916
    .line 917
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 918
    .line 919
    .line 920
    const-string/jumbo v5, "content://com.samsung.android.bbc.bbcagent/knoxCapture/updateBarcodeDataFromhw"

    .line 921
    .line 922
    .line 923
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    new-instance v7, Landroid/content/ContentValues;

    .line 928
    .line 929
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 930
    .line 931
    .line 932
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    const-string/jumbo v10, "deviceId"

    .line 937
    .line 938
    .line 939
    invoke-virtual {v7, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    .line 941
    .line 942
    const-string/jumbo v3, "scanInput"

    .line 943
    .line 944
    .line 945
    invoke-virtual {v7, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 946
    .line 947
    .line 948
    iget-object v0, v4, Lcom/android/server/KnoxCaptureInputFilter;->context:Landroid/content/Context;

    .line 949
    .line 950
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    invoke-virtual {v0, v5, v7, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 955
    .line 956
    .line 957
    :cond_33
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 958
    .line 959
    if-eqz v0, :cond_34

    .line 960
    .line 961
    const-string v0, "ScanEventHandler, END, clearing active scan input"

    .line 962
    .line 963
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .line 965
    .line 966
    :cond_34
    iget-object v0, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 967
    .line 968
    check-cast v0, Ljava/util/ArrayList;

    .line 969
    .line 970
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 971
    .line 972
    .line 973
    const/4 v0, -0x1

    .line 974
    iput v0, v4, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 975
    .line 976
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    if-lez v0, :cond_37

    .line 981
    .line 982
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 983
    .line 984
    .line 985
    move-result v0

    .line 986
    invoke-virtual {v9, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    goto :goto_b

    .line 990
    :cond_35
    sget-boolean v2, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 991
    .line 992
    if-eqz v2, :cond_36

    .line 993
    .line 994
    const-string v2, "ScanEventHandler, MSG_NEXT_KEY_EVENT, new key event"

    .line 995
    .line 996
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    .line 998
    .line 999
    :cond_36
    iget-object v1, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 1000
    .line 1001
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1002
    .line 1003
    check-cast v0, Landroid/view/KeyEvent;

    .line 1004
    .line 1005
    check-cast v1, Ljava/util/ArrayList;

    .line 1006
    .line 1007
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    :cond_37
    :goto_b
    return-void

    .line 1011
    :pswitch_data_0
    .packed-switch 0x90
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

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
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
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
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
    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_24
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method
