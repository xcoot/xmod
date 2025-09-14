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

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    .line 20
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, v0, Landroid/os/Message;->what:I

    .line 9
    const/16 v5, 0x353

    .line 11
    const-string v6, "KnoxCaptureInputFilter"

    .line 13
    if-eq v4, v5, :cond_35

    .line 15
    const/16 v0, 0x354

    .line 17
    if-eq v4, v0, :cond_0

    .line 19
    goto/16 :goto_b

    .line 21
    :cond_0
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 23
    iget-object v4, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v5, "ScanEventHandler, END, activeScanDeviceId ="

    .line 31
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget v5, v4, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 36
    invoke-static {v0, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 39
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v0, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v7

    .line 52
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v0

    .line 56
    const/4 v8, 0x0

    .line 57
    iget-object v9, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    .line 59
    if-eqz v0, :cond_30

    .line 61
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/view/KeyEvent;

    .line 67
    sget-boolean v10, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 69
    if-eqz v10, :cond_3

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v12, "processKeyEvent event: "

    .line 76
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v11

    .line 86
    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 92
    move-result v11

    .line 93
    invoke-static {v11}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 96
    move-result v12

    .line 97
    if-eqz v12, :cond_4

    .line 99
    goto/16 :goto_8

    .line 101
    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 104
    move-result v12

    .line 105
    const/16 v13, 0x90

    .line 107
    const/4 v14, 0x4

    .line 108
    if-lt v12, v13, :cond_a

    .line 110
    const/16 v13, 0x99

    .line 112
    if-gt v12, v13, :cond_a

    .line 114
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_a

    .line 120
    if-eqz v10, :cond_5

    .line 122
    const-string v11, " processKeyEvent, unicode codepoint"

    .line 124
    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_5
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 130
    move-result v0

    .line 131
    packed-switch v0, :pswitch_data_0

    .line 134
    const-string v0, "\u0000"

    .line 136
    goto :goto_0

    .line 137
    :pswitch_0
    const-string v0, "9"

    .line 139
    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "8"

    .line 142
    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "7"

    .line 145
    goto :goto_0

    .line 146
    :pswitch_3
    const-string v0, "6"

    .line 148
    goto :goto_0

    .line 149
    :pswitch_4
    const-string v0, "5"

    .line 151
    goto :goto_0

    .line 152
    :pswitch_5
    const-string v0, "4"

    .line 154
    goto :goto_0

    .line 155
    :pswitch_6
    const-string v0, "3"

    .line 157
    goto :goto_0

    .line 158
    :pswitch_7
    const-string v0, "2"

    .line 160
    goto :goto_0

    .line 161
    :pswitch_8
    const-string v0, "1"

    .line 163
    goto :goto_0

    .line 164
    :pswitch_9
    const-string v0, "0"

    .line 166
    :goto_0
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 172
    move-result v0

    .line 173
    if-ne v0, v14, :cond_9

    .line 175
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    const-string v11, " getUnicodeChar codePointStr: "

    .line 181
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 184
    move-result v12

    .line 185
    invoke-static {v12}, Ljava/lang/Character;->toChars(I)[C

    .line 188
    move-result-object v13

    .line 189
    if-eqz v10, :cond_6

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v0, " codePoint: "

    .line 201
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v0, " unicodeChars: "

    .line 209
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v0, Ljava/lang/String;

    .line 214
    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([C)V

    .line 217
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 224
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 233
    array-length v10, v13

    .line 234
    move v11, v2

    .line 235
    move v12, v11

    .line 236
    :goto_2
    if-ge v11, v10, :cond_7

    .line 238
    aget-char v14, v13, v11

    .line 240
    add-int/lit8 v15, v12, 0x1

    .line 242
    int-to-byte v14, v14

    .line 243
    aput-byte v14, v0, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 252
    const-string v10, " getUnicodeChar exception: "

    .line 254
    invoke-static {v0, v10, v6}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_8
    :goto_4
    move v0, v3

    .line 258
    goto/16 :goto_7

    .line 260
    :cond_9
    move v0, v2

    .line 261
    goto/16 :goto_7

    .line 263
    :cond_a
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 266
    move-result v8

    .line 267
    const/16 v12, 0x45

    .line 269
    const/16 v13, 0xd

    .line 271
    const/16 v15, 0x1d

    .line 273
    if-lt v8, v15, :cond_b

    .line 275
    const/16 v15, 0x36

    .line 277
    if-le v8, v15, :cond_c

    .line 279
    :cond_b
    const/16 v15, 0x47

    .line 281
    if-eq v8, v15, :cond_c

    .line 283
    const/16 v15, 0x48

    .line 285
    if-eq v8, v15, :cond_c

    .line 287
    const/16 v15, 0x49

    .line 289
    if-eq v8, v15, :cond_c

    .line 291
    if-eq v8, v13, :cond_c

    .line 293
    if-ne v8, v12, :cond_2c

    .line 295
    :cond_c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 298
    move-result v8

    .line 299
    if-eqz v8, :cond_2c

    .line 301
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 304
    move-result v8

    .line 305
    if-eq v8, v13, :cond_29

    .line 307
    if-eq v8, v12, :cond_2a

    .line 309
    packed-switch v8, :pswitch_data_1

    .line 312
    packed-switch v8, :pswitch_data_2

    .line 315
    goto/16 :goto_5

    .line 317
    :pswitch_a
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 320
    move-result v8

    .line 321
    if-eqz v8, :cond_d

    .line 323
    new-array v8, v3, [B

    .line 325
    aput-byte v3, v8, v2

    .line 327
    goto/16 :goto_6

    .line 329
    :cond_d
    :pswitch_b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 332
    move-result v8

    .line 333
    if-eqz v8, :cond_e

    .line 335
    new-array v8, v3, [B

    .line 337
    const/4 v12, 0x2

    .line 338
    aput-byte v12, v8, v2

    .line 340
    goto/16 :goto_6

    .line 342
    :cond_e
    :pswitch_c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 345
    move-result v8

    .line 346
    if-eqz v8, :cond_f

    .line 348
    new-array v8, v3, [B

    .line 350
    const/4 v12, 0x3

    .line 351
    aput-byte v12, v8, v2

    .line 353
    goto/16 :goto_6

    .line 355
    :cond_f
    :pswitch_d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 358
    move-result v8

    .line 359
    if-eqz v8, :cond_10

    .line 361
    new-array v8, v3, [B

    .line 363
    aput-byte v14, v8, v2

    .line 365
    goto/16 :goto_6

    .line 367
    :cond_10
    :pswitch_e
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 370
    move-result v8

    .line 371
    if-eqz v8, :cond_11

    .line 373
    new-array v8, v3, [B

    .line 375
    const/4 v12, 0x5

    .line 376
    aput-byte v12, v8, v2

    .line 378
    goto/16 :goto_6

    .line 380
    :cond_11
    :pswitch_f
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 383
    move-result v8

    .line 384
    if-eqz v8, :cond_12

    .line 386
    new-array v8, v3, [B

    .line 388
    const/4 v12, 0x6

    .line 389
    aput-byte v12, v8, v2

    .line 391
    goto/16 :goto_6

    .line 393
    :cond_12
    :pswitch_10
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 396
    move-result v8

    .line 397
    if-eqz v8, :cond_13

    .line 399
    new-array v8, v3, [B

    .line 401
    const/4 v12, 0x7

    .line 402
    aput-byte v12, v8, v2

    .line 404
    goto/16 :goto_6

    .line 406
    :cond_13
    :pswitch_11
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 409
    move-result v8

    .line 410
    if-eqz v8, :cond_14

    .line 412
    new-array v8, v3, [B

    .line 414
    const/16 v12, 0x8

    .line 416
    aput-byte v12, v8, v2

    .line 418
    goto/16 :goto_6

    .line 420
    :cond_14
    :pswitch_12
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 423
    move-result v8

    .line 424
    if-eqz v8, :cond_15

    .line 426
    new-array v8, v3, [B

    .line 428
    const/16 v12, 0x9

    .line 430
    aput-byte v12, v8, v2

    .line 432
    goto/16 :goto_6

    .line 434
    :cond_15
    :pswitch_13
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 437
    move-result v8

    .line 438
    if-eqz v8, :cond_16

    .line 440
    new-array v8, v3, [B

    .line 442
    const/16 v12, 0xa

    .line 444
    aput-byte v12, v8, v2

    .line 446
    goto/16 :goto_6

    .line 448
    :cond_16
    :pswitch_14
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 451
    move-result v8

    .line 452
    if-eqz v8, :cond_17

    .line 454
    new-array v8, v3, [B

    .line 456
    const/16 v12, 0xb

    .line 458
    aput-byte v12, v8, v2

    .line 460
    goto/16 :goto_6

    .line 462
    :cond_17
    :pswitch_15
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 465
    move-result v8

    .line 466
    if-eqz v8, :cond_18

    .line 468
    new-array v8, v3, [B

    .line 470
    const/16 v12, 0xc

    .line 472
    aput-byte v12, v8, v2

    .line 474
    goto/16 :goto_6

    .line 476
    :cond_18
    :pswitch_16
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 479
    move-result v8

    .line 480
    if-eqz v8, :cond_19

    .line 482
    new-array v8, v3, [B

    .line 484
    aput-byte v13, v8, v2

    .line 486
    goto/16 :goto_6

    .line 488
    :cond_19
    :pswitch_17
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 491
    move-result v8

    .line 492
    if-eqz v8, :cond_1a

    .line 494
    new-array v8, v3, [B

    .line 496
    const/16 v12, 0xe

    .line 498
    aput-byte v12, v8, v2

    .line 500
    goto/16 :goto_6

    .line 502
    :cond_1a
    :pswitch_18
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 505
    move-result v8

    .line 506
    if-eqz v8, :cond_1b

    .line 508
    new-array v8, v3, [B

    .line 510
    const/16 v12, 0xf

    .line 512
    aput-byte v12, v8, v2

    .line 514
    goto/16 :goto_6

    .line 516
    :cond_1b
    :pswitch_19
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 519
    move-result v8

    .line 520
    if-eqz v8, :cond_1c

    .line 522
    new-array v8, v3, [B

    .line 524
    const/16 v12, 0x10

    .line 526
    aput-byte v12, v8, v2

    .line 528
    goto/16 :goto_6

    .line 530
    :cond_1c
    :pswitch_1a
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 533
    move-result v8

    .line 534
    if-eqz v8, :cond_1d

    .line 536
    new-array v8, v3, [B

    .line 538
    const/16 v12, 0x11

    .line 540
    aput-byte v12, v8, v2

    .line 542
    goto/16 :goto_6

    .line 544
    :cond_1d
    :pswitch_1b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 547
    move-result v8

    .line 548
    if-eqz v8, :cond_1e

    .line 550
    new-array v8, v3, [B

    .line 552
    const/16 v12, 0x12

    .line 554
    aput-byte v12, v8, v2

    .line 556
    goto/16 :goto_6

    .line 558
    :cond_1e
    :pswitch_1c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 561
    move-result v8

    .line 562
    if-eqz v8, :cond_1f

    .line 564
    new-array v8, v3, [B

    .line 566
    const/16 v12, 0x13

    .line 568
    aput-byte v12, v8, v2

    .line 570
    goto/16 :goto_6

    .line 572
    :cond_1f
    :pswitch_1d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 575
    move-result v8

    .line 576
    if-eqz v8, :cond_20

    .line 578
    new-array v8, v3, [B

    .line 580
    const/16 v12, 0x14

    .line 582
    aput-byte v12, v8, v2

    .line 584
    goto/16 :goto_6

    .line 586
    :cond_20
    :pswitch_1e
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 589
    move-result v8

    .line 590
    if-eqz v8, :cond_21

    .line 592
    new-array v8, v3, [B

    .line 594
    const/16 v12, 0x15

    .line 596
    aput-byte v12, v8, v2

    .line 598
    goto/16 :goto_6

    .line 600
    :cond_21
    :pswitch_1f
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 603
    move-result v8

    .line 604
    if-eqz v8, :cond_22

    .line 606
    new-array v8, v3, [B

    .line 608
    const/16 v12, 0x16

    .line 610
    aput-byte v12, v8, v2

    .line 612
    goto/16 :goto_6

    .line 614
    :cond_22
    :pswitch_20
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 617
    move-result v8

    .line 618
    if-eqz v8, :cond_23

    .line 620
    new-array v8, v3, [B

    .line 622
    const/16 v12, 0x17

    .line 624
    aput-byte v12, v8, v2

    .line 626
    goto/16 :goto_6

    .line 628
    :cond_23
    :pswitch_21
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 631
    move-result v8

    .line 632
    if-eqz v8, :cond_24

    .line 634
    new-array v8, v3, [B

    .line 636
    const/16 v12, 0x18

    .line 638
    aput-byte v12, v8, v2

    .line 640
    goto/16 :goto_6

    .line 642
    :cond_24
    :pswitch_22
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 645
    move-result v8

    .line 646
    if-eqz v8, :cond_25

    .line 648
    new-array v8, v3, [B

    .line 650
    const/16 v12, 0x19

    .line 652
    aput-byte v12, v8, v2

    .line 654
    goto :goto_6

    .line 655
    :cond_25
    :pswitch_23
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 658
    move-result v8

    .line 659
    if-eqz v8, :cond_26

    .line 661
    new-array v8, v3, [B

    .line 663
    const/16 v12, 0x1a

    .line 665
    aput-byte v12, v8, v2

    .line 667
    goto :goto_6

    .line 668
    :cond_26
    :pswitch_24
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 671
    move-result v8

    .line 672
    if-eqz v8, :cond_27

    .line 674
    new-array v8, v3, [B

    .line 676
    const/16 v12, 0x1b

    .line 678
    aput-byte v12, v8, v2

    .line 680
    goto :goto_6

    .line 681
    :cond_27
    :pswitch_25
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 684
    move-result v8

    .line 685
    if-eqz v8, :cond_28

    .line 687
    new-array v8, v3, [B

    .line 689
    const/16 v12, 0x1c

    .line 691
    aput-byte v12, v8, v2

    .line 693
    goto :goto_6

    .line 694
    :cond_28
    :pswitch_26
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 697
    move-result v8

    .line 698
    if-eqz v8, :cond_29

    .line 700
    new-array v8, v3, [B

    .line 702
    const/16 v12, 0x1d

    .line 704
    aput-byte v12, v8, v2

    .line 706
    goto :goto_6

    .line 707
    :cond_29
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 710
    move-result v8

    .line 711
    if-eqz v8, :cond_2a

    .line 713
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 716
    move-result v8

    .line 717
    if-eqz v8, :cond_2a

    .line 719
    new-array v8, v3, [B

    .line 721
    const/16 v12, 0x1e

    .line 723
    aput-byte v12, v8, v2

    .line 725
    goto :goto_6

    .line 726
    :cond_2a
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 729
    move-result v8

    .line 730
    if-eqz v8, :cond_2b

    .line 732
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 735
    move-result v8

    .line 736
    if-eqz v8, :cond_2b

    .line 738
    new-array v8, v3, [B

    .line 740
    const/16 v12, 0x1f

    .line 742
    aput-byte v12, v8, v2

    .line 744
    goto :goto_6

    .line 745
    :cond_2b
    :goto_5
    new-array v8, v3, [B

    .line 747
    aput-byte v2, v8, v2

    .line 749
    :goto_6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 752
    move-result v12

    .line 753
    invoke-static {v12}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 756
    move-result-object v12

    .line 757
    if-eqz v10, :cond_8

    .line 759
    new-instance v10, Ljava/lang/StringBuilder;

    .line 761
    const-string/jumbo v13, "processKeyEvent, ascii ctrl char="

    .line 764
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    .line 770
    move-result v0

    .line 771
    invoke-virtual {v12, v11, v0}, Landroid/view/KeyCharacterMap;->get(II)I

    .line 774
    move-result v0

    .line 775
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    move-result-object v0

    .line 782
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    goto/16 :goto_4

    .line 787
    :cond_2c
    if-eqz v10, :cond_2d

    .line 789
    const-string v8, " processKeyEvent, any other character"

    .line 791
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_2d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 797
    move-result v8

    .line 798
    invoke-static {v8}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 801
    move-result-object v8

    .line 802
    new-array v10, v3, [B

    .line 804
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    .line 807
    move-result v0

    .line 808
    invoke-virtual {v8, v11, v0}, Landroid/view/KeyCharacterMap;->get(II)I

    .line 811
    move-result v0

    .line 812
    int-to-byte v0, v0

    .line 813
    aput-byte v0, v10, v2

    .line 815
    move v0, v3

    .line 816
    move-object v8, v10

    .line 817
    :goto_7
    if-eqz v0, :cond_2f

    .line 819
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 821
    if-eqz v0, :cond_2e

    .line 823
    const-string v0, " processKeyEvent, clear unicode codepoint buffer"

    .line 825
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_2e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 831
    move-result v0

    .line 832
    if-lez v0, :cond_2f

    .line 834
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 837
    move-result v0

    .line 838
    invoke-virtual {v9, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 841
    :cond_2f
    :goto_8
    if-eqz v8, :cond_2

    .line 843
    array-length v0, v8

    .line 844
    move v9, v2

    .line 845
    :goto_9
    if-ge v9, v0, :cond_2

    .line 847
    aget-byte v10, v8, v9

    .line 849
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 852
    move-result-object v10

    .line 853
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    add-int/2addr v9, v3

    .line 857
    goto :goto_9

    .line 858
    :cond_30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 861
    move-result v0

    .line 862
    if-lez v0, :cond_33

    .line 864
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 867
    move-result v0

    .line 868
    new-array v0, v0, [B

    .line 870
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 873
    move-result-object v5

    .line 874
    move v7, v2

    .line 875
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 878
    move-result v10

    .line 879
    if-eqz v10, :cond_31

    .line 881
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 884
    move-result-object v10

    .line 885
    check-cast v10, Ljava/lang/Byte;

    .line 887
    add-int/lit8 v11, v7, 0x1

    .line 889
    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    .line 892
    move-result v10

    .line 893
    aput-byte v10, v0, v7

    .line 895
    move v7, v11

    .line 896
    goto :goto_a

    .line 897
    :cond_31
    sget-boolean v3, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 899
    if-eqz v3, :cond_32

    .line 901
    new-instance v3, Ljava/lang/String;

    .line 903
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 906
    const-string v5, "ScanEventHandler, END, scannedInput: "

    .line 908
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 911
    move-result-object v3

    .line 912
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_32
    iget v3, v4, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 917
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    const-string/jumbo v5, "content://com.samsung.android.bbc.bbcagent/knoxCapture/updateBarcodeDataFromhw"

    .line 923
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 926
    move-result-object v5

    .line 927
    new-instance v7, Landroid/content/ContentValues;

    .line 929
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 932
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 935
    move-result-object v3

    .line 936
    const-string/jumbo v10, "deviceId"

    .line 939
    invoke-virtual {v7, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const-string/jumbo v3, "scanInput"

    .line 945
    invoke-virtual {v7, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 948
    iget-object v0, v4, Lcom/android/server/KnoxCaptureInputFilter;->context:Landroid/content/Context;

    .line 950
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 953
    move-result-object v0

    .line 954
    invoke-virtual {v0, v5, v7, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 957
    :cond_33
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 959
    if-eqz v0, :cond_34

    .line 961
    const-string v0, "ScanEventHandler, END, clearing active scan input"

    .line 963
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_34
    iget-object v0, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 968
    check-cast v0, Ljava/util/ArrayList;

    .line 970
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 973
    const/4 v0, -0x1

    .line 974
    iput v0, v4, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 976
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 979
    move-result v0

    .line 980
    if-lez v0, :cond_37

    .line 982
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 985
    move-result v0

    .line 986
    invoke-virtual {v9, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 989
    goto :goto_b

    .line 990
    :cond_35
    sget-boolean v2, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 992
    if-eqz v2, :cond_36

    .line 994
    const-string v2, "ScanEventHandler, MSG_NEXT_KEY_EVENT, new key event"

    .line 996
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_36
    iget-object v1, v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 1001
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1003
    check-cast v0, Landroid/view/KeyEvent;

    .line 1005
    check-cast v1, Ljava/util/ArrayList;

    .line 1007
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 1091
    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_24
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method
