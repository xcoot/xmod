.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 10

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    array-length p0, p1

    .line 7
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ge p0, v1, :cond_0

    .line 11
    goto/16 :goto_3

    .line 13
    :cond_0
    array-length p0, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne p0, v1, :cond_1

    .line 17
    :goto_0
    move v0, v2

    .line 18
    goto/16 :goto_3

    .line 20
    :cond_1
    aget-byte p0, p1, v2

    .line 22
    const/16 v3, 0x56

    .line 24
    const/16 v4, 0xa0

    .line 26
    const/16 v5, 0x90

    .line 28
    const/16 v6, 0x80

    .line 30
    const/16 v7, 0x30

    .line 32
    const/16 v8, 0x20

    .line 34
    const/16 v9, 0x60

    .line 36
    if-eq p0, v3, :cond_7

    .line 38
    const/16 v3, 0x57

    .line 40
    if-eq p0, v3, :cond_4

    .line 42
    if-eq p0, v9, :cond_3

    .line 44
    const/16 v3, 0x67

    .line 46
    if-eq p0, v3, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    array-length p0, p1

    .line 50
    if-lt p0, v0, :cond_a

    .line 52
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier(I[B)Z

    .line 55
    move-result p0

    .line 56
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 59
    move-result v0

    .line 60
    goto/16 :goto_3

    .line 62
    :cond_3
    aget-byte p0, p1, v1

    .line 64
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    .line 67
    move-result p0

    .line 68
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 71
    move-result v0

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    aget-byte p0, p1, v1

    .line 75
    and-int/lit16 p0, p0, 0xff

    .line 77
    if-eq p0, v8, :cond_6

    .line 79
    if-eq p0, v7, :cond_6

    .line 81
    if-eq p0, v6, :cond_6

    .line 83
    if-eq p0, v5, :cond_6

    .line 85
    if-eq p0, v4, :cond_6

    .line 87
    const/16 p1, 0xb1

    .line 89
    const/16 v0, 0xb3

    .line 91
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_6

    .line 97
    const/16 p1, 0xc1

    .line 99
    const/16 v0, 0xc3

    .line 101
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_5

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    move v1, v2

    .line 109
    :cond_6
    :goto_1
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 112
    move-result v0

    .line 113
    goto :goto_3

    .line 114
    :cond_7
    aget-byte p0, p1, v1

    .line 116
    if-eqz p0, :cond_9

    .line 118
    if-eq p0, v1, :cond_9

    .line 120
    const/16 p1, 0x10

    .line 122
    if-eq p0, p1, :cond_9

    .line 124
    if-eq p0, v8, :cond_9

    .line 126
    if-eq p0, v7, :cond_9

    .line 128
    const/16 p1, 0x40

    .line 130
    if-eq p0, p1, :cond_9

    .line 132
    const/16 p1, 0x50

    .line 134
    if-eq p0, p1, :cond_9

    .line 136
    if-eq p0, v9, :cond_9

    .line 138
    const/16 p1, 0x70

    .line 140
    if-eq p0, p1, :cond_9

    .line 142
    if-eq p0, v6, :cond_9

    .line 144
    if-eq p0, v5, :cond_9

    .line 146
    const/16 p1, 0x91

    .line 148
    if-eq p0, p1, :cond_9

    .line 150
    if-ne p0, v4, :cond_8

    .line 152
    goto :goto_2

    .line 153
    :cond_8
    move v1, v2

    .line 154
    :cond_9
    :goto_2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 157
    move-result v0

    .line 158
    :cond_a
    :goto_3
    return v0

    .line 159
    :pswitch_0
    array-length p0, p1

    .line 160
    const/4 v0, 0x4

    .line 161
    const/4 v1, 0x1

    .line 162
    if-ge p0, v1, :cond_b

    .line 164
    goto :goto_5

    .line 165
    :cond_b
    const/4 p0, 0x0

    .line 166
    aget-byte v2, p1, p0

    .line 168
    and-int/lit8 v2, v2, 0x7f

    .line 170
    const/4 v3, 0x5

    .line 171
    if-nez v2, :cond_c

    .line 173
    array-length v0, p1

    .line 174
    if-lt v0, v3, :cond_e

    .line 176
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification(I[B)Z

    .line 179
    move-result v1

    .line 180
    goto :goto_4

    .line 181
    :cond_c
    if-ne v2, v1, :cond_d

    .line 183
    goto :goto_4

    .line 184
    :cond_d
    const/4 v4, 0x2

    .line 185
    if-ne v2, v4, :cond_e

    .line 187
    array-length v2, p1

    .line 188
    if-lt v2, v3, :cond_e

    .line 190
    aget-byte v2, p1, v1

    .line 192
    invoke-static {v2, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_e

    .line 198
    invoke-static {v4, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 201
    move-result v2

    .line 202
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_e

    .line 208
    aget-byte p1, p1, v0

    .line 210
    const/16 v0, 0x1f

    .line 212
    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_e

    .line 218
    goto :goto_4

    .line 219
    :cond_e
    move v1, p0

    .line 220
    :goto_4
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 223
    move-result v0

    .line 224
    :goto_5
    return v0

    .line 225
    :pswitch_1
    array-length p0, p1

    .line 226
    const/4 v0, 0x1

    .line 227
    if-ge p0, v0, :cond_f

    .line 229
    const/4 p0, 0x4

    .line 230
    goto :goto_a

    .line 231
    :cond_f
    const/4 p0, 0x0

    .line 232
    aget-byte v1, p1, p0

    .line 234
    and-int/lit8 v2, v1, 0x10

    .line 236
    const/16 v3, 0x10

    .line 238
    const/4 v4, 0x2

    .line 239
    if-ne v2, v3, :cond_11

    .line 241
    and-int/lit8 v1, v1, 0xf

    .line 243
    const/16 v2, 0xb

    .line 245
    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_12

    .line 251
    const/16 v3, 0x9

    .line 253
    if-eq v1, v3, :cond_10

    .line 255
    if-ne v1, v2, :cond_14

    .line 257
    :cond_10
    array-length v1, p1

    .line 258
    sub-int/2addr v1, v0

    .line 259
    if-lt v1, v4, :cond_14

    .line 261
    goto :goto_6

    .line 262
    :cond_11
    and-int/lit8 v1, v1, 0xf

    .line 264
    const/16 v2, 0xe

    .line 266
    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_12

    .line 272
    if-ne v1, v2, :cond_14

    .line 274
    array-length v1, p1

    .line 275
    sub-int/2addr v1, v0

    .line 276
    if-lt v1, v4, :cond_14

    .line 278
    :goto_6
    move v1, v0

    .line 279
    :goto_7
    move v2, v1

    .line 280
    goto :goto_8

    .line 281
    :cond_12
    move v1, p0

    .line 282
    goto :goto_7

    .line 283
    :goto_8
    if-eqz v2, :cond_13

    .line 285
    aget-byte v2, p1, v1

    .line 287
    const/16 v3, 0x63

    .line 289
    invoke-static {v2, p0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_13

    .line 295
    add-int/2addr v1, v0

    .line 296
    aget-byte p1, p1, v1

    .line 298
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 301
    move-result p1

    .line 302
    if-eqz p1, :cond_13

    .line 304
    goto :goto_9

    .line 305
    :cond_13
    move v0, p0

    .line 306
    :cond_14
    :goto_9
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 309
    move-result p0

    .line 310
    :goto_a
    return p0

    .line 311
    :pswitch_2
    array-length p0, p1

    .line 312
    const/4 v0, 0x1

    .line 313
    if-ge p0, v0, :cond_15

    .line 315
    const/4 p0, 0x4

    .line 316
    goto :goto_c

    .line 317
    :cond_15
    const/4 p0, 0x0

    .line 318
    aget-byte v1, p1, p0

    .line 320
    const/4 v2, 0x2

    .line 321
    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_17

    .line 327
    aget-byte p1, p1, p0

    .line 329
    and-int/lit16 p1, p1, 0xff

    .line 331
    const/16 v1, 0x80

    .line 333
    if-ne p1, v1, :cond_16

    .line 335
    goto :goto_b

    .line 336
    :cond_16
    move v0, p0

    .line 337
    :cond_17
    :goto_b
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 340
    move-result p0

    .line 341
    :goto_c
    return p0

    .line 342
    :pswitch_3
    array-length p0, p1

    .line 343
    const/4 v0, 0x1

    .line 344
    if-ge p0, v0, :cond_18

    .line 346
    const/4 p0, 0x4

    .line 347
    goto :goto_d

    .line 348
    :cond_18
    array-length p0, p1

    .line 349
    if-le p0, v0, :cond_19

    .line 351
    const/4 p0, 0x5

    .line 352
    goto :goto_d

    .line 353
    :cond_19
    const/4 p0, 0x0

    .line 354
    aget-byte p1, p1, p0

    .line 356
    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 359
    move-result p0

    .line 360
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 363
    move-result p0

    .line 364
    :goto_d
    return p0

    .line 365
    :pswitch_4
    array-length p0, p1

    .line 366
    const/4 v0, 0x4

    .line 367
    if-ge p0, v0, :cond_1a

    .line 369
    goto :goto_e

    .line 370
    :cond_1a
    const/4 p0, 0x0

    .line 371
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification(I[B)Z

    .line 374
    move-result p0

    .line 375
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 378
    move-result v0

    .line 379
    :goto_e
    return v0

    .line 380
    :pswitch_5
    array-length p0, p1

    .line 381
    const/4 v0, 0x4

    .line 382
    if-ge p0, v0, :cond_1b

    .line 384
    goto :goto_f

    .line 385
    :cond_1b
    const/4 p0, 0x0

    .line 386
    aget-byte v0, p1, p0

    .line 388
    const/4 v1, 0x2

    .line 389
    invoke-static {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_1c

    .line 395
    const/4 v0, 0x1

    .line 396
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 399
    move-result v1

    .line 400
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_1c

    .line 406
    const/4 v1, 0x3

    .line 407
    aget-byte p1, p1, v1

    .line 409
    const/16 v1, 0x1f

    .line 411
    invoke-static {p1, p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 414
    move-result p1

    .line 415
    if-eqz p1, :cond_1c

    .line 417
    move p0, v0

    .line 418
    :cond_1c
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 421
    move-result v0

    .line 422
    :goto_f
    return v0

    .line 423
    :pswitch_6
    array-length p0, p1

    .line 424
    const/4 v0, 0x4

    .line 425
    if-ge p0, v0, :cond_1d

    .line 427
    goto :goto_10

    .line 428
    :cond_1d
    const/4 p0, 0x0

    .line 429
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_1e

    .line 435
    const/4 v0, 0x2

    .line 436
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 439
    move-result p1

    .line 440
    if-eqz p1, :cond_1e

    .line 442
    const/4 p0, 0x1

    .line 443
    :cond_1e
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 446
    move-result v0

    .line 447
    :goto_10
    return v0

    .line 448
    :pswitch_7
    array-length p0, p1

    .line 449
    const/4 v0, 0x3

    .line 450
    if-ge p0, v0, :cond_1f

    .line 452
    const/4 p0, 0x4

    .line 453
    goto :goto_11

    .line 454
    :cond_1f
    const/4 p0, 0x0

    .line 455
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 458
    move-result v0

    .line 459
    if-eqz v0, :cond_20

    .line 461
    const/4 v0, 0x2

    .line 462
    aget-byte p1, p1, v0

    .line 464
    if-ltz p1, :cond_20

    .line 466
    const/4 v1, 0x7

    .line 467
    if-gt p1, v1, :cond_20

    .line 469
    if-eq p1, v0, :cond_20

    .line 471
    const/4 p0, 0x1

    .line 472
    :cond_20
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 475
    move-result p0

    .line 476
    :goto_11
    return p0

    .line 477
    :pswitch_8
    array-length p0, p1

    .line 478
    const/4 v0, 0x1

    .line 479
    if-ge p0, v0, :cond_21

    .line 481
    const/4 p0, 0x4

    .line 482
    goto :goto_13

    .line 483
    :cond_21
    const/4 p0, 0x0

    .line 484
    aget-byte v1, p1, p0

    .line 486
    const/4 v2, 0x7

    .line 487
    invoke-static {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_23

    .line 493
    aget-byte v1, p1, p0

    .line 495
    const/16 v2, 0x9

    .line 497
    const/16 v3, 0xe

    .line 499
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 502
    move-result v1

    .line 503
    if-nez v1, :cond_23

    .line 505
    aget-byte v1, p1, p0

    .line 507
    const/16 v2, 0x10

    .line 509
    const/16 v3, 0x17

    .line 511
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 514
    move-result v1

    .line 515
    if-nez v1, :cond_23

    .line 517
    aget-byte v1, p1, p0

    .line 519
    const/16 v2, 0x1a

    .line 521
    const/16 v3, 0x1b

    .line 523
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 526
    move-result v1

    .line 527
    if-nez v1, :cond_23

    .line 529
    aget-byte p1, p1, p0

    .line 531
    const/16 v1, 0x1f

    .line 533
    if-ne p1, v1, :cond_22

    .line 535
    goto :goto_12

    .line 536
    :cond_22
    move v0, p0

    .line 537
    :cond_23
    :goto_12
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 540
    move-result p0

    .line 541
    :goto_13
    return p0

    .line 542
    :pswitch_9
    array-length p0, p1

    .line 543
    const/4 v0, 0x2

    .line 544
    if-ge p0, v0, :cond_24

    .line 546
    const/4 p0, 0x4

    .line 547
    goto :goto_14

    .line 548
    :cond_24
    const/4 p0, 0x0

    .line 549
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 552
    move-result p0

    .line 553
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 556
    move-result p0

    .line 557
    :goto_14
    return p0

    .line 558
    :pswitch_a
    array-length p0, p1

    .line 559
    const/4 v0, 0x2

    .line 560
    if-ge p0, v0, :cond_25

    .line 562
    const/4 p0, 0x4

    .line 563
    goto :goto_17

    .line 564
    :cond_25
    const/4 p0, 0x0

    .line 565
    aget-byte v0, p1, p0

    .line 567
    and-int/lit16 v0, v0, 0xff

    .line 569
    if-eqz v0, :cond_26

    .line 571
    const/16 v1, 0x40

    .line 573
    if-eq v0, v1, :cond_26

    .line 575
    const/16 v1, 0x80

    .line 577
    if-eq v0, v1, :cond_26

    .line 579
    const/16 v1, 0xc0

    .line 581
    if-ne v0, v1, :cond_29

    .line 583
    :cond_26
    const/4 v0, 0x1

    .line 584
    move v1, v0

    .line 585
    :goto_15
    array-length v2, p1

    .line 586
    if-ge v1, v2, :cond_28

    .line 588
    const/16 v2, 0xe

    .line 590
    if-ge v1, v2, :cond_28

    .line 592
    aget-byte v2, p1, v1

    .line 594
    const/16 v3, 0x20

    .line 596
    const/16 v4, 0x7e

    .line 598
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 601
    move-result v2

    .line 602
    if-nez v2, :cond_27

    .line 604
    goto :goto_16

    .line 605
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 607
    goto :goto_15

    .line 608
    :cond_28
    move p0, v0

    .line 609
    :cond_29
    :goto_16
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 612
    move-result p0

    .line 613
    :goto_17
    return p0

    .line 614
    :pswitch_b
    array-length p0, p1

    .line 615
    const/16 v0, 0x9

    .line 617
    const/4 v1, 0x4

    .line 618
    if-ge p0, v0, :cond_2a

    .line 620
    goto :goto_19

    .line 621
    :cond_2a
    const/4 p0, 0x0

    .line 622
    aget-byte v0, p1, p0

    .line 624
    const/16 v2, 0x1f

    .line 626
    const/4 v3, 0x1

    .line 627
    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 630
    move-result v0

    .line 631
    if-eqz v0, :cond_2d

    .line 633
    aget-byte v0, p1, v3

    .line 635
    const/16 v2, 0xc

    .line 637
    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 640
    move-result v0

    .line 641
    if-eqz v0, :cond_2d

    .line 643
    const/4 v0, 0x2

    .line 644
    aget-byte v2, p1, v0

    .line 646
    const/16 v4, 0x17

    .line 648
    invoke-static {v2, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 651
    move-result v2

    .line 652
    if-eqz v2, :cond_2d

    .line 654
    const/4 v2, 0x3

    .line 655
    aget-byte v2, p1, v2

    .line 657
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 660
    move-result v2

    .line 661
    if-eqz v2, :cond_2d

    .line 663
    aget-byte v2, p1, v1

    .line 665
    const/16 v4, 0x63

    .line 667
    invoke-static {v2, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 670
    move-result v2

    .line 671
    if-eqz v2, :cond_2d

    .line 673
    const/4 v2, 0x5

    .line 674
    aget-byte v4, p1, v2

    .line 676
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 679
    move-result v4

    .line 680
    if-eqz v4, :cond_2d

    .line 682
    const/4 v4, 0x6

    .line 683
    aget-byte v4, p1, v4

    .line 685
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    .line 688
    move-result v4

    .line 689
    if-eqz v4, :cond_2d

    .line 691
    const/4 v4, 0x7

    .line 692
    aget-byte v4, p1, v4

    .line 694
    const/16 v5, 0x8

    .line 696
    if-ne v4, v1, :cond_2b

    .line 698
    aget-byte p1, p1, v5

    .line 700
    const/16 v0, 0xff

    .line 702
    invoke-static {p1, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 705
    move-result p1

    .line 706
    goto :goto_18

    .line 707
    :cond_2b
    if-ne v4, v2, :cond_2c

    .line 709
    array-length v1, p1

    .line 710
    sub-int/2addr v1, v5

    .line 711
    if-lt v1, v0, :cond_2c

    .line 713
    invoke-static {v5, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 716
    move-result p1

    .line 717
    goto :goto_18

    .line 718
    :cond_2c
    move p1, p0

    .line 719
    :goto_18
    if-eqz p1, :cond_2d

    .line 721
    move p0, v3

    .line 722
    :cond_2d
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 725
    move-result v1

    .line 726
    :goto_19
    return v1

    .line 727
    :pswitch_c
    array-length p0, p1

    .line 728
    const/16 v0, 0xb

    .line 730
    const/4 v1, 0x4

    .line 731
    if-ge p0, v0, :cond_2e

    .line 733
    goto :goto_1a

    .line 734
    :cond_2e
    const/4 p0, 0x0

    .line 735
    aget-byte v0, p1, p0

    .line 737
    const/16 v2, 0x1f

    .line 739
    const/4 v3, 0x1

    .line 740
    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 743
    move-result v0

    .line 744
    if-eqz v0, :cond_2f

    .line 746
    aget-byte v0, p1, v3

    .line 748
    const/16 v2, 0xc

    .line 750
    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 753
    move-result v0

    .line 754
    if-eqz v0, :cond_2f

    .line 756
    const/4 v0, 0x2

    .line 757
    aget-byte v0, p1, v0

    .line 759
    const/16 v2, 0x17

    .line 761
    invoke-static {v0, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 764
    move-result v0

    .line 765
    if-eqz v0, :cond_2f

    .line 767
    const/4 v0, 0x3

    .line 768
    aget-byte v0, p1, v0

    .line 770
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 773
    move-result v0

    .line 774
    if-eqz v0, :cond_2f

    .line 776
    aget-byte v0, p1, v1

    .line 778
    const/16 v1, 0x63

    .line 780
    invoke-static {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 783
    move-result v0

    .line 784
    if-eqz v0, :cond_2f

    .line 786
    const/4 v0, 0x5

    .line 787
    aget-byte v0, p1, v0

    .line 789
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 792
    move-result v0

    .line 793
    if-eqz v0, :cond_2f

    .line 795
    const/4 v0, 0x6

    .line 796
    aget-byte v0, p1, v0

    .line 798
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    .line 801
    move-result v0

    .line 802
    if-eqz v0, :cond_2f

    .line 804
    const/4 v0, 0x7

    .line 805
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification(I[B)Z

    .line 808
    move-result p1

    .line 809
    if-eqz p1, :cond_2f

    .line 811
    move p0, v3

    .line 812
    :cond_2f
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 815
    move-result v1

    .line 816
    :goto_1a
    return v1

    .line 817
    :pswitch_d
    array-length p0, p1

    .line 818
    const/16 v0, 0xb

    .line 820
    const/4 v1, 0x4

    .line 821
    if-ge p0, v0, :cond_30

    .line 823
    goto :goto_1b

    .line 824
    :cond_30
    const/4 p0, 0x0

    .line 825
    aget-byte v0, p1, p0

    .line 827
    const/4 v2, 0x1

    .line 828
    const/16 v3, 0x1f

    .line 830
    invoke-static {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 833
    move-result v0

    .line 834
    if-eqz v0, :cond_31

    .line 836
    aget-byte v0, p1, v2

    .line 838
    const/16 v4, 0xc

    .line 840
    invoke-static {v0, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 843
    move-result v0

    .line 844
    if-eqz v0, :cond_31

    .line 846
    const/4 v0, 0x2

    .line 847
    aget-byte v4, p1, v0

    .line 849
    const/16 v5, 0x17

    .line 851
    invoke-static {v4, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 854
    move-result v4

    .line 855
    if-eqz v4, :cond_31

    .line 857
    const/4 v4, 0x3

    .line 858
    aget-byte v4, p1, v4

    .line 860
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 863
    move-result v4

    .line 864
    if-eqz v4, :cond_31

    .line 866
    aget-byte v1, p1, v1

    .line 868
    const/16 v4, 0x63

    .line 870
    invoke-static {v1, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 873
    move-result v1

    .line 874
    if-eqz v1, :cond_31

    .line 876
    const/4 v1, 0x5

    .line 877
    aget-byte v1, p1, v1

    .line 879
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 882
    move-result v1

    .line 883
    if-eqz v1, :cond_31

    .line 885
    const/4 v1, 0x6

    .line 886
    aget-byte v1, p1, v1

    .line 888
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    .line 891
    move-result v1

    .line 892
    if-eqz v1, :cond_31

    .line 894
    const/4 v1, 0x7

    .line 895
    aget-byte v1, p1, v1

    .line 897
    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 900
    move-result v0

    .line 901
    if-eqz v0, :cond_31

    .line 903
    const/16 v0, 0x8

    .line 905
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 908
    move-result v0

    .line 909
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    .line 912
    move-result v0

    .line 913
    if-eqz v0, :cond_31

    .line 915
    const/16 v0, 0xa

    .line 917
    aget-byte p1, p1, v0

    .line 919
    invoke-static {p1, p0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 922
    move-result p1

    .line 923
    if-eqz p1, :cond_31

    .line 925
    move p0, v2

    .line 926
    :cond_31
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 929
    move-result v1

    .line 930
    :goto_1b
    return v1

    .line 931
    :pswitch_e
    array-length p0, p1

    .line 932
    const/4 v0, 0x1

    .line 933
    if-ge p0, v0, :cond_32

    .line 935
    const/4 p0, 0x4

    .line 936
    goto :goto_1c

    .line 937
    :cond_32
    const/4 p0, 0x0

    .line 938
    aget-byte p0, p1, p0

    .line 940
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    .line 943
    move-result p0

    .line 944
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 947
    move-result p0

    .line 948
    :goto_1c
    return p0

    .line 949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
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
