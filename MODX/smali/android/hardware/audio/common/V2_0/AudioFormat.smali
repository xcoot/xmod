.class public abstract Landroid/hardware/audio/common/V2_0/AudioFormat;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 4
    const-string p0, "INVALID"

    .line 6
    return-object p0

    .line 7
    :cond_0
    if-nez p0, :cond_1

    .line 9
    const-string p0, "DEFAULT"

    .line 11
    return-object p0

    .line 12
    :cond_1
    if-nez p0, :cond_2

    .line 14
    const-string p0, "PCM"

    .line 16
    return-object p0

    .line 17
    :cond_2
    const/high16 v0, 0x1000000

    .line 19
    if-ne p0, v0, :cond_3

    .line 21
    const-string p0, "MP3"

    .line 23
    return-object p0

    .line 24
    :cond_3
    const/high16 v0, 0x2000000

    .line 26
    if-ne p0, v0, :cond_4

    .line 28
    const-string p0, "AMR_NB"

    .line 30
    return-object p0

    .line 31
    :cond_4
    const/high16 v0, 0x3000000

    .line 33
    if-ne p0, v0, :cond_5

    .line 35
    const-string p0, "AMR_WB"

    .line 37
    return-object p0

    .line 38
    :cond_5
    const/high16 v0, 0x4000000

    .line 40
    if-ne p0, v0, :cond_6

    .line 42
    const-string p0, "AAC"

    .line 44
    return-object p0

    .line 45
    :cond_6
    const/high16 v0, 0x5000000

    .line 47
    if-ne p0, v0, :cond_7

    .line 49
    const-string p0, "HE_AAC_V1"

    .line 51
    return-object p0

    .line 52
    :cond_7
    const/high16 v0, 0x6000000

    .line 54
    if-ne p0, v0, :cond_8

    .line 56
    const-string p0, "HE_AAC_V2"

    .line 58
    return-object p0

    .line 59
    :cond_8
    const/high16 v0, 0x7000000

    .line 61
    if-ne p0, v0, :cond_9

    .line 63
    const-string p0, "VORBIS"

    .line 65
    return-object p0

    .line 66
    :cond_9
    const/high16 v0, 0x8000000

    .line 68
    if-ne p0, v0, :cond_a

    .line 70
    const-string p0, "OPUS"

    .line 72
    return-object p0

    .line 73
    :cond_a
    const/high16 v0, 0x9000000

    .line 75
    if-ne p0, v0, :cond_b

    .line 77
    const-string p0, "AC3"

    .line 79
    return-object p0

    .line 80
    :cond_b
    const/high16 v0, 0xa000000

    .line 82
    if-ne p0, v0, :cond_c

    .line 84
    const-string p0, "E_AC3"

    .line 86
    return-object p0

    .line 87
    :cond_c
    const/high16 v0, 0xb000000

    .line 89
    if-ne p0, v0, :cond_d

    .line 91
    const-string p0, "DTS"

    .line 93
    return-object p0

    .line 94
    :cond_d
    const/high16 v0, 0xc000000

    .line 96
    if-ne p0, v0, :cond_e

    .line 98
    const-string p0, "DTS_HD"

    .line 100
    return-object p0

    .line 101
    :cond_e
    const/high16 v0, 0xd000000

    .line 103
    if-ne p0, v0, :cond_f

    .line 105
    const-string p0, "IEC61937"

    .line 107
    return-object p0

    .line 108
    :cond_f
    const/high16 v0, 0xe000000

    .line 110
    if-ne p0, v0, :cond_10

    .line 112
    const-string p0, "DOLBY_TRUEHD"

    .line 114
    return-object p0

    .line 115
    :cond_10
    const/high16 v0, 0x10000000

    .line 117
    if-ne p0, v0, :cond_11

    .line 119
    const-string p0, "EVRC"

    .line 121
    return-object p0

    .line 122
    :cond_11
    const/high16 v0, 0x11000000

    .line 124
    if-ne p0, v0, :cond_12

    .line 126
    const-string p0, "EVRCB"

    .line 128
    return-object p0

    .line 129
    :cond_12
    const/high16 v0, 0x12000000

    .line 131
    if-ne p0, v0, :cond_13

    .line 133
    const-string p0, "EVRCWB"

    .line 135
    return-object p0

    .line 136
    :cond_13
    const/high16 v0, 0x13000000

    .line 138
    if-ne p0, v0, :cond_14

    .line 140
    const-string p0, "EVRCNW"

    .line 142
    return-object p0

    .line 143
    :cond_14
    const/high16 v0, 0x14000000

    .line 145
    if-ne p0, v0, :cond_15

    .line 147
    const-string p0, "AAC_ADIF"

    .line 149
    return-object p0

    .line 150
    :cond_15
    const/high16 v0, 0x15000000

    .line 152
    if-ne p0, v0, :cond_16

    .line 154
    const-string p0, "WMA"

    .line 156
    return-object p0

    .line 157
    :cond_16
    const/high16 v0, 0x16000000

    .line 159
    if-ne p0, v0, :cond_17

    .line 161
    const-string p0, "WMA_PRO"

    .line 163
    return-object p0

    .line 164
    :cond_17
    const/high16 v0, 0x17000000

    .line 166
    if-ne p0, v0, :cond_18

    .line 168
    const-string p0, "AMR_WB_PLUS"

    .line 170
    return-object p0

    .line 171
    :cond_18
    const/high16 v0, 0x18000000

    .line 173
    if-ne p0, v0, :cond_19

    .line 175
    const-string p0, "MP2"

    .line 177
    return-object p0

    .line 178
    :cond_19
    const/high16 v0, 0x19000000

    .line 180
    if-ne p0, v0, :cond_1a

    .line 182
    const-string p0, "QCELP"

    .line 184
    return-object p0

    .line 185
    :cond_1a
    const/high16 v0, 0x1a000000

    .line 187
    if-ne p0, v0, :cond_1b

    .line 189
    const-string p0, "DSD"

    .line 191
    return-object p0

    .line 192
    :cond_1b
    const/high16 v0, 0x1b000000

    .line 194
    if-ne p0, v0, :cond_1c

    .line 196
    const-string p0, "FLAC"

    .line 198
    return-object p0

    .line 199
    :cond_1c
    const/high16 v0, 0x1c000000

    .line 201
    if-ne p0, v0, :cond_1d

    .line 203
    const-string p0, "ALAC"

    .line 205
    return-object p0

    .line 206
    :cond_1d
    const/high16 v0, 0x1d000000

    .line 208
    if-ne p0, v0, :cond_1e

    .line 210
    const-string p0, "APE"

    .line 212
    return-object p0

    .line 213
    :cond_1e
    const/high16 v0, 0x1e000000

    .line 215
    if-ne p0, v0, :cond_1f

    .line 217
    const-string p0, "AAC_ADTS"

    .line 219
    return-object p0

    .line 220
    :cond_1f
    const/high16 v0, 0x1f000000

    .line 222
    if-ne p0, v0, :cond_20

    .line 224
    const-string p0, "SBC"

    .line 226
    return-object p0

    .line 227
    :cond_20
    const/high16 v0, 0x20000000

    .line 229
    if-ne p0, v0, :cond_21

    .line 231
    const-string p0, "APTX"

    .line 233
    return-object p0

    .line 234
    :cond_21
    const/high16 v0, 0x21000000

    .line 236
    if-ne p0, v0, :cond_22

    .line 238
    const-string p0, "APTX_HD"

    .line 240
    return-object p0

    .line 241
    :cond_22
    const/high16 v0, 0x22000000

    .line 243
    if-ne p0, v0, :cond_23

    .line 245
    const-string p0, "AC4"

    .line 247
    return-object p0

    .line 248
    :cond_23
    const/high16 v0, 0x23000000

    .line 250
    if-ne p0, v0, :cond_24

    .line 252
    const-string p0, "LDAC"

    .line 254
    return-object p0

    .line 255
    :cond_24
    const/high16 v0, -0x1000000

    .line 257
    if-ne p0, v0, :cond_25

    .line 259
    const-string p0, "MAIN_MASK"

    .line 261
    return-object p0

    .line 262
    :cond_25
    const v0, 0xffffff

    .line 265
    if-ne p0, v0, :cond_26

    .line 267
    const-string p0, "SUB_MASK"

    .line 269
    return-object p0

    .line 270
    :cond_26
    const/4 v0, 0x1

    .line 271
    if-ne p0, v0, :cond_27

    .line 273
    const-string p0, "PCM_SUB_16_BIT"

    .line 275
    return-object p0

    .line 276
    :cond_27
    const/4 v1, 0x2

    .line 277
    if-ne p0, v1, :cond_28

    .line 279
    const-string p0, "PCM_SUB_8_BIT"

    .line 281
    return-object p0

    .line 282
    :cond_28
    const/4 v2, 0x3

    .line 283
    if-ne p0, v2, :cond_29

    .line 285
    const-string p0, "PCM_SUB_32_BIT"

    .line 287
    return-object p0

    .line 288
    :cond_29
    const/4 v3, 0x4

    .line 289
    if-ne p0, v3, :cond_2a

    .line 291
    const-string p0, "PCM_SUB_8_24_BIT"

    .line 293
    return-object p0

    .line 294
    :cond_2a
    const/4 v4, 0x5

    .line 295
    if-ne p0, v4, :cond_2b

    .line 297
    const-string p0, "PCM_SUB_FLOAT"

    .line 299
    return-object p0

    .line 300
    :cond_2b
    const/4 v5, 0x6

    .line 301
    if-ne p0, v5, :cond_2c

    .line 303
    const-string p0, "PCM_SUB_24_BIT_PACKED"

    .line 305
    return-object p0

    .line 306
    :cond_2c
    if-nez p0, :cond_2d

    .line 308
    const-string p0, "MP3_SUB_NONE"

    .line 310
    return-object p0

    .line 311
    :cond_2d
    if-nez p0, :cond_2e

    .line 313
    const-string p0, "AMR_SUB_NONE"

    .line 315
    return-object p0

    .line 316
    :cond_2e
    if-ne p0, v0, :cond_2f

    .line 318
    const-string p0, "AAC_SUB_MAIN"

    .line 320
    return-object p0

    .line 321
    :cond_2f
    if-ne p0, v1, :cond_30

    .line 323
    const-string p0, "AAC_SUB_LC"

    .line 325
    return-object p0

    .line 326
    :cond_30
    if-ne p0, v3, :cond_31

    .line 328
    const-string p0, "AAC_SUB_SSR"

    .line 330
    return-object p0

    .line 331
    :cond_31
    const/16 v6, 0x8

    .line 333
    if-ne p0, v6, :cond_32

    .line 335
    const-string p0, "AAC_SUB_LTP"

    .line 337
    return-object p0

    .line 338
    :cond_32
    const/16 v6, 0x10

    .line 340
    if-ne p0, v6, :cond_33

    .line 342
    const-string p0, "AAC_SUB_HE_V1"

    .line 344
    return-object p0

    .line 345
    :cond_33
    const/16 v6, 0x20

    .line 347
    if-ne p0, v6, :cond_34

    .line 349
    const-string p0, "AAC_SUB_SCALABLE"

    .line 351
    return-object p0

    .line 352
    :cond_34
    const/16 v6, 0x40

    .line 354
    if-ne p0, v6, :cond_35

    .line 356
    const-string p0, "AAC_SUB_ERLC"

    .line 358
    return-object p0

    .line 359
    :cond_35
    const/16 v6, 0x80

    .line 361
    if-ne p0, v6, :cond_36

    .line 363
    const-string p0, "AAC_SUB_LD"

    .line 365
    return-object p0

    .line 366
    :cond_36
    const/16 v6, 0x100

    .line 368
    if-ne p0, v6, :cond_37

    .line 370
    const-string p0, "AAC_SUB_HE_V2"

    .line 372
    return-object p0

    .line 373
    :cond_37
    const/16 v6, 0x200

    .line 375
    if-ne p0, v6, :cond_38

    .line 377
    const-string p0, "AAC_SUB_ELD"

    .line 379
    return-object p0

    .line 380
    :cond_38
    if-nez p0, :cond_39

    .line 382
    const-string p0, "VORBIS_SUB_NONE"

    .line 384
    return-object p0

    .line 385
    :cond_39
    if-ne p0, v0, :cond_3a

    .line 387
    const-string p0, "PCM_16_BIT"

    .line 389
    return-object p0

    .line 390
    :cond_3a
    if-ne p0, v1, :cond_3b

    .line 392
    const-string p0, "PCM_8_BIT"

    .line 394
    return-object p0

    .line 395
    :cond_3b
    if-ne p0, v2, :cond_3c

    .line 397
    const-string p0, "PCM_32_BIT"

    .line 399
    return-object p0

    .line 400
    :cond_3c
    if-ne p0, v3, :cond_3d

    .line 402
    const-string p0, "PCM_8_24_BIT"

    .line 404
    return-object p0

    .line 405
    :cond_3d
    if-ne p0, v4, :cond_3e

    .line 407
    const-string p0, "PCM_FLOAT"

    .line 409
    return-object p0

    .line 410
    :cond_3e
    if-ne p0, v5, :cond_3f

    .line 412
    const-string p0, "PCM_24_BIT_PACKED"

    .line 414
    return-object p0

    .line 415
    :cond_3f
    const v0, 0x4000001

    .line 418
    if-ne p0, v0, :cond_40

    .line 420
    const-string p0, "AAC_MAIN"

    .line 422
    return-object p0

    .line 423
    :cond_40
    const v0, 0x4000002

    .line 426
    if-ne p0, v0, :cond_41

    .line 428
    const-string p0, "AAC_LC"

    .line 430
    return-object p0

    .line 431
    :cond_41
    const v0, 0x4000004

    .line 434
    if-ne p0, v0, :cond_42

    .line 436
    const-string p0, "AAC_SSR"

    .line 438
    return-object p0

    .line 439
    :cond_42
    const v0, 0x4000008

    .line 442
    if-ne p0, v0, :cond_43

    .line 444
    const-string p0, "AAC_LTP"

    .line 446
    return-object p0

    .line 447
    :cond_43
    const v0, 0x4000010

    .line 450
    if-ne p0, v0, :cond_44

    .line 452
    const-string p0, "AAC_HE_V1"

    .line 454
    return-object p0

    .line 455
    :cond_44
    const v0, 0x4000020

    .line 458
    if-ne p0, v0, :cond_45

    .line 460
    const-string p0, "AAC_SCALABLE"

    .line 462
    return-object p0

    .line 463
    :cond_45
    const v0, 0x4000040

    .line 466
    if-ne p0, v0, :cond_46

    .line 468
    const-string p0, "AAC_ERLC"

    .line 470
    return-object p0

    .line 471
    :cond_46
    const v0, 0x4000080

    .line 474
    if-ne p0, v0, :cond_47

    .line 476
    const-string p0, "AAC_LD"

    .line 478
    return-object p0

    .line 479
    :cond_47
    const v0, 0x4000100

    .line 482
    if-ne p0, v0, :cond_48

    .line 484
    const-string p0, "AAC_HE_V2"

    .line 486
    return-object p0

    .line 487
    :cond_48
    const v0, 0x4000200

    .line 490
    if-ne p0, v0, :cond_49

    .line 492
    const-string p0, "AAC_ELD"

    .line 494
    return-object p0

    .line 495
    :cond_49
    const v0, 0x1e000001

    .line 498
    if-ne p0, v0, :cond_4a

    .line 500
    const-string p0, "AAC_ADTS_MAIN"

    .line 502
    return-object p0

    .line 503
    :cond_4a
    const v0, 0x1e000002

    .line 506
    if-ne p0, v0, :cond_4b

    .line 508
    const-string p0, "AAC_ADTS_LC"

    .line 510
    return-object p0

    .line 511
    :cond_4b
    const v0, 0x1e000004

    .line 514
    if-ne p0, v0, :cond_4c

    .line 516
    const-string p0, "AAC_ADTS_SSR"

    .line 518
    return-object p0

    .line 519
    :cond_4c
    const v0, 0x1e000008

    .line 522
    if-ne p0, v0, :cond_4d

    .line 524
    const-string p0, "AAC_ADTS_LTP"

    .line 526
    return-object p0

    .line 527
    :cond_4d
    const v0, 0x1e000010

    .line 530
    if-ne p0, v0, :cond_4e

    .line 532
    const-string p0, "AAC_ADTS_HE_V1"

    .line 534
    return-object p0

    .line 535
    :cond_4e
    const v0, 0x1e000020

    .line 538
    if-ne p0, v0, :cond_4f

    .line 540
    const-string p0, "AAC_ADTS_SCALABLE"

    .line 542
    return-object p0

    .line 543
    :cond_4f
    const v0, 0x1e000040

    .line 546
    if-ne p0, v0, :cond_50

    .line 548
    const-string p0, "AAC_ADTS_ERLC"

    .line 550
    return-object p0

    .line 551
    :cond_50
    const v0, 0x1e000080

    .line 554
    if-ne p0, v0, :cond_51

    .line 556
    const-string p0, "AAC_ADTS_LD"

    .line 558
    return-object p0

    .line 559
    :cond_51
    const v0, 0x1e000100

    .line 562
    if-ne p0, v0, :cond_52

    .line 564
    const-string p0, "AAC_ADTS_HE_V2"

    .line 566
    return-object p0

    .line 567
    :cond_52
    const v0, 0x1e000200

    .line 570
    if-ne p0, v0, :cond_53

    .line 572
    const-string p0, "AAC_ADTS_ELD"

    .line 574
    return-object p0

    .line 575
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 577
    const-string v1, "0x"

    .line 579
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-static {v0, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 585
    move-result-object p0

    .line 586
    return-object p0
.end method
