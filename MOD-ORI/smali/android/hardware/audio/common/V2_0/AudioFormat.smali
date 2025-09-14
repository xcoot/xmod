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

    .line 3
    .line 4
    const-string p0, "INVALID"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    if-nez p0, :cond_1

    .line 8
    .line 9
    const-string p0, "DEFAULT"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    if-nez p0, :cond_2

    .line 13
    .line 14
    const-string p0, "PCM"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_2
    const/high16 v0, 0x1000000

    .line 18
    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "MP3"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/high16 v0, 0x2000000

    .line 25
    .line 26
    if-ne p0, v0, :cond_4

    .line 27
    .line 28
    const-string p0, "AMR_NB"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_4
    const/high16 v0, 0x3000000

    .line 32
    .line 33
    if-ne p0, v0, :cond_5

    .line 34
    .line 35
    const-string p0, "AMR_WB"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_5
    const/high16 v0, 0x4000000

    .line 39
    .line 40
    if-ne p0, v0, :cond_6

    .line 41
    .line 42
    const-string p0, "AAC"

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_6
    const/high16 v0, 0x5000000

    .line 46
    .line 47
    if-ne p0, v0, :cond_7

    .line 48
    .line 49
    const-string p0, "HE_AAC_V1"

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_7
    const/high16 v0, 0x6000000

    .line 53
    .line 54
    if-ne p0, v0, :cond_8

    .line 55
    .line 56
    const-string p0, "HE_AAC_V2"

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_8
    const/high16 v0, 0x7000000

    .line 60
    .line 61
    if-ne p0, v0, :cond_9

    .line 62
    .line 63
    const-string p0, "VORBIS"

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_9
    const/high16 v0, 0x8000000

    .line 67
    .line 68
    if-ne p0, v0, :cond_a

    .line 69
    .line 70
    const-string p0, "OPUS"

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_a
    const/high16 v0, 0x9000000

    .line 74
    .line 75
    if-ne p0, v0, :cond_b

    .line 76
    .line 77
    const-string p0, "AC3"

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_b
    const/high16 v0, 0xa000000

    .line 81
    .line 82
    if-ne p0, v0, :cond_c

    .line 83
    .line 84
    const-string p0, "E_AC3"

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_c
    const/high16 v0, 0xb000000

    .line 88
    .line 89
    if-ne p0, v0, :cond_d

    .line 90
    .line 91
    const-string p0, "DTS"

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_d
    const/high16 v0, 0xc000000

    .line 95
    .line 96
    if-ne p0, v0, :cond_e

    .line 97
    .line 98
    const-string p0, "DTS_HD"

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_e
    const/high16 v0, 0xd000000

    .line 102
    .line 103
    if-ne p0, v0, :cond_f

    .line 104
    .line 105
    const-string p0, "IEC61937"

    .line 106
    .line 107
    return-object p0

    .line 108
    :cond_f
    const/high16 v0, 0xe000000

    .line 109
    .line 110
    if-ne p0, v0, :cond_10

    .line 111
    .line 112
    const-string p0, "DOLBY_TRUEHD"

    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_10
    const/high16 v0, 0x10000000

    .line 116
    .line 117
    if-ne p0, v0, :cond_11

    .line 118
    .line 119
    const-string p0, "EVRC"

    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_11
    const/high16 v0, 0x11000000

    .line 123
    .line 124
    if-ne p0, v0, :cond_12

    .line 125
    .line 126
    const-string p0, "EVRCB"

    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_12
    const/high16 v0, 0x12000000

    .line 130
    .line 131
    if-ne p0, v0, :cond_13

    .line 132
    .line 133
    const-string p0, "EVRCWB"

    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_13
    const/high16 v0, 0x13000000

    .line 137
    .line 138
    if-ne p0, v0, :cond_14

    .line 139
    .line 140
    const-string p0, "EVRCNW"

    .line 141
    .line 142
    return-object p0

    .line 143
    :cond_14
    const/high16 v0, 0x14000000

    .line 144
    .line 145
    if-ne p0, v0, :cond_15

    .line 146
    .line 147
    const-string p0, "AAC_ADIF"

    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_15
    const/high16 v0, 0x15000000

    .line 151
    .line 152
    if-ne p0, v0, :cond_16

    .line 153
    .line 154
    const-string p0, "WMA"

    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_16
    const/high16 v0, 0x16000000

    .line 158
    .line 159
    if-ne p0, v0, :cond_17

    .line 160
    .line 161
    const-string p0, "WMA_PRO"

    .line 162
    .line 163
    return-object p0

    .line 164
    :cond_17
    const/high16 v0, 0x17000000

    .line 165
    .line 166
    if-ne p0, v0, :cond_18

    .line 167
    .line 168
    const-string p0, "AMR_WB_PLUS"

    .line 169
    .line 170
    return-object p0

    .line 171
    :cond_18
    const/high16 v0, 0x18000000

    .line 172
    .line 173
    if-ne p0, v0, :cond_19

    .line 174
    .line 175
    const-string p0, "MP2"

    .line 176
    .line 177
    return-object p0

    .line 178
    :cond_19
    const/high16 v0, 0x19000000

    .line 179
    .line 180
    if-ne p0, v0, :cond_1a

    .line 181
    .line 182
    const-string p0, "QCELP"

    .line 183
    .line 184
    return-object p0

    .line 185
    :cond_1a
    const/high16 v0, 0x1a000000

    .line 186
    .line 187
    if-ne p0, v0, :cond_1b

    .line 188
    .line 189
    const-string p0, "DSD"

    .line 190
    .line 191
    return-object p0

    .line 192
    :cond_1b
    const/high16 v0, 0x1b000000

    .line 193
    .line 194
    if-ne p0, v0, :cond_1c

    .line 195
    .line 196
    const-string p0, "FLAC"

    .line 197
    .line 198
    return-object p0

    .line 199
    :cond_1c
    const/high16 v0, 0x1c000000

    .line 200
    .line 201
    if-ne p0, v0, :cond_1d

    .line 202
    .line 203
    const-string p0, "ALAC"

    .line 204
    .line 205
    return-object p0

    .line 206
    :cond_1d
    const/high16 v0, 0x1d000000

    .line 207
    .line 208
    if-ne p0, v0, :cond_1e

    .line 209
    .line 210
    const-string p0, "APE"

    .line 211
    .line 212
    return-object p0

    .line 213
    :cond_1e
    const/high16 v0, 0x1e000000

    .line 214
    .line 215
    if-ne p0, v0, :cond_1f

    .line 216
    .line 217
    const-string p0, "AAC_ADTS"

    .line 218
    .line 219
    return-object p0

    .line 220
    :cond_1f
    const/high16 v0, 0x1f000000

    .line 221
    .line 222
    if-ne p0, v0, :cond_20

    .line 223
    .line 224
    const-string p0, "SBC"

    .line 225
    .line 226
    return-object p0

    .line 227
    :cond_20
    const/high16 v0, 0x20000000

    .line 228
    .line 229
    if-ne p0, v0, :cond_21

    .line 230
    .line 231
    const-string p0, "APTX"

    .line 232
    .line 233
    return-object p0

    .line 234
    :cond_21
    const/high16 v0, 0x21000000

    .line 235
    .line 236
    if-ne p0, v0, :cond_22

    .line 237
    .line 238
    const-string p0, "APTX_HD"

    .line 239
    .line 240
    return-object p0

    .line 241
    :cond_22
    const/high16 v0, 0x22000000

    .line 242
    .line 243
    if-ne p0, v0, :cond_23

    .line 244
    .line 245
    const-string p0, "AC4"

    .line 246
    .line 247
    return-object p0

    .line 248
    :cond_23
    const/high16 v0, 0x23000000

    .line 249
    .line 250
    if-ne p0, v0, :cond_24

    .line 251
    .line 252
    const-string p0, "LDAC"

    .line 253
    .line 254
    return-object p0

    .line 255
    :cond_24
    const/high16 v0, -0x1000000

    .line 256
    .line 257
    if-ne p0, v0, :cond_25

    .line 258
    .line 259
    const-string p0, "MAIN_MASK"

    .line 260
    .line 261
    return-object p0

    .line 262
    :cond_25
    const v0, 0xffffff

    .line 263
    .line 264
    .line 265
    if-ne p0, v0, :cond_26

    .line 266
    .line 267
    const-string p0, "SUB_MASK"

    .line 268
    .line 269
    return-object p0

    .line 270
    :cond_26
    const/4 v0, 0x1

    .line 271
    if-ne p0, v0, :cond_27

    .line 272
    .line 273
    const-string p0, "PCM_SUB_16_BIT"

    .line 274
    .line 275
    return-object p0

    .line 276
    :cond_27
    const/4 v1, 0x2

    .line 277
    if-ne p0, v1, :cond_28

    .line 278
    .line 279
    const-string p0, "PCM_SUB_8_BIT"

    .line 280
    .line 281
    return-object p0

    .line 282
    :cond_28
    const/4 v2, 0x3

    .line 283
    if-ne p0, v2, :cond_29

    .line 284
    .line 285
    const-string p0, "PCM_SUB_32_BIT"

    .line 286
    .line 287
    return-object p0

    .line 288
    :cond_29
    const/4 v3, 0x4

    .line 289
    if-ne p0, v3, :cond_2a

    .line 290
    .line 291
    const-string p0, "PCM_SUB_8_24_BIT"

    .line 292
    .line 293
    return-object p0

    .line 294
    :cond_2a
    const/4 v4, 0x5

    .line 295
    if-ne p0, v4, :cond_2b

    .line 296
    .line 297
    const-string p0, "PCM_SUB_FLOAT"

    .line 298
    .line 299
    return-object p0

    .line 300
    :cond_2b
    const/4 v5, 0x6

    .line 301
    if-ne p0, v5, :cond_2c

    .line 302
    .line 303
    const-string p0, "PCM_SUB_24_BIT_PACKED"

    .line 304
    .line 305
    return-object p0

    .line 306
    :cond_2c
    if-nez p0, :cond_2d

    .line 307
    .line 308
    const-string p0, "MP3_SUB_NONE"

    .line 309
    .line 310
    return-object p0

    .line 311
    :cond_2d
    if-nez p0, :cond_2e

    .line 312
    .line 313
    const-string p0, "AMR_SUB_NONE"

    .line 314
    .line 315
    return-object p0

    .line 316
    :cond_2e
    if-ne p0, v0, :cond_2f

    .line 317
    .line 318
    const-string p0, "AAC_SUB_MAIN"

    .line 319
    .line 320
    return-object p0

    .line 321
    :cond_2f
    if-ne p0, v1, :cond_30

    .line 322
    .line 323
    const-string p0, "AAC_SUB_LC"

    .line 324
    .line 325
    return-object p0

    .line 326
    :cond_30
    if-ne p0, v3, :cond_31

    .line 327
    .line 328
    const-string p0, "AAC_SUB_SSR"

    .line 329
    .line 330
    return-object p0

    .line 331
    :cond_31
    const/16 v6, 0x8

    .line 332
    .line 333
    if-ne p0, v6, :cond_32

    .line 334
    .line 335
    const-string p0, "AAC_SUB_LTP"

    .line 336
    .line 337
    return-object p0

    .line 338
    :cond_32
    const/16 v6, 0x10

    .line 339
    .line 340
    if-ne p0, v6, :cond_33

    .line 341
    .line 342
    const-string p0, "AAC_SUB_HE_V1"

    .line 343
    .line 344
    return-object p0

    .line 345
    :cond_33
    const/16 v6, 0x20

    .line 346
    .line 347
    if-ne p0, v6, :cond_34

    .line 348
    .line 349
    const-string p0, "AAC_SUB_SCALABLE"

    .line 350
    .line 351
    return-object p0

    .line 352
    :cond_34
    const/16 v6, 0x40

    .line 353
    .line 354
    if-ne p0, v6, :cond_35

    .line 355
    .line 356
    const-string p0, "AAC_SUB_ERLC"

    .line 357
    .line 358
    return-object p0

    .line 359
    :cond_35
    const/16 v6, 0x80

    .line 360
    .line 361
    if-ne p0, v6, :cond_36

    .line 362
    .line 363
    const-string p0, "AAC_SUB_LD"

    .line 364
    .line 365
    return-object p0

    .line 366
    :cond_36
    const/16 v6, 0x100

    .line 367
    .line 368
    if-ne p0, v6, :cond_37

    .line 369
    .line 370
    const-string p0, "AAC_SUB_HE_V2"

    .line 371
    .line 372
    return-object p0

    .line 373
    :cond_37
    const/16 v6, 0x200

    .line 374
    .line 375
    if-ne p0, v6, :cond_38

    .line 376
    .line 377
    const-string p0, "AAC_SUB_ELD"

    .line 378
    .line 379
    return-object p0

    .line 380
    :cond_38
    if-nez p0, :cond_39

    .line 381
    .line 382
    const-string p0, "VORBIS_SUB_NONE"

    .line 383
    .line 384
    return-object p0

    .line 385
    :cond_39
    if-ne p0, v0, :cond_3a

    .line 386
    .line 387
    const-string p0, "PCM_16_BIT"

    .line 388
    .line 389
    return-object p0

    .line 390
    :cond_3a
    if-ne p0, v1, :cond_3b

    .line 391
    .line 392
    const-string p0, "PCM_8_BIT"

    .line 393
    .line 394
    return-object p0

    .line 395
    :cond_3b
    if-ne p0, v2, :cond_3c

    .line 396
    .line 397
    const-string p0, "PCM_32_BIT"

    .line 398
    .line 399
    return-object p0

    .line 400
    :cond_3c
    if-ne p0, v3, :cond_3d

    .line 401
    .line 402
    const-string p0, "PCM_8_24_BIT"

    .line 403
    .line 404
    return-object p0

    .line 405
    :cond_3d
    if-ne p0, v4, :cond_3e

    .line 406
    .line 407
    const-string p0, "PCM_FLOAT"

    .line 408
    .line 409
    return-object p0

    .line 410
    :cond_3e
    if-ne p0, v5, :cond_3f

    .line 411
    .line 412
    const-string p0, "PCM_24_BIT_PACKED"

    .line 413
    .line 414
    return-object p0

    .line 415
    :cond_3f
    const v0, 0x4000001

    .line 416
    .line 417
    .line 418
    if-ne p0, v0, :cond_40

    .line 419
    .line 420
    const-string p0, "AAC_MAIN"

    .line 421
    .line 422
    return-object p0

    .line 423
    :cond_40
    const v0, 0x4000002

    .line 424
    .line 425
    .line 426
    if-ne p0, v0, :cond_41

    .line 427
    .line 428
    const-string p0, "AAC_LC"

    .line 429
    .line 430
    return-object p0

    .line 431
    :cond_41
    const v0, 0x4000004

    .line 432
    .line 433
    .line 434
    if-ne p0, v0, :cond_42

    .line 435
    .line 436
    const-string p0, "AAC_SSR"

    .line 437
    .line 438
    return-object p0

    .line 439
    :cond_42
    const v0, 0x4000008

    .line 440
    .line 441
    .line 442
    if-ne p0, v0, :cond_43

    .line 443
    .line 444
    const-string p0, "AAC_LTP"

    .line 445
    .line 446
    return-object p0

    .line 447
    :cond_43
    const v0, 0x4000010

    .line 448
    .line 449
    .line 450
    if-ne p0, v0, :cond_44

    .line 451
    .line 452
    const-string p0, "AAC_HE_V1"

    .line 453
    .line 454
    return-object p0

    .line 455
    :cond_44
    const v0, 0x4000020

    .line 456
    .line 457
    .line 458
    if-ne p0, v0, :cond_45

    .line 459
    .line 460
    const-string p0, "AAC_SCALABLE"

    .line 461
    .line 462
    return-object p0

    .line 463
    :cond_45
    const v0, 0x4000040

    .line 464
    .line 465
    .line 466
    if-ne p0, v0, :cond_46

    .line 467
    .line 468
    const-string p0, "AAC_ERLC"

    .line 469
    .line 470
    return-object p0

    .line 471
    :cond_46
    const v0, 0x4000080

    .line 472
    .line 473
    .line 474
    if-ne p0, v0, :cond_47

    .line 475
    .line 476
    const-string p0, "AAC_LD"

    .line 477
    .line 478
    return-object p0

    .line 479
    :cond_47
    const v0, 0x4000100

    .line 480
    .line 481
    .line 482
    if-ne p0, v0, :cond_48

    .line 483
    .line 484
    const-string p0, "AAC_HE_V2"

    .line 485
    .line 486
    return-object p0

    .line 487
    :cond_48
    const v0, 0x4000200

    .line 488
    .line 489
    .line 490
    if-ne p0, v0, :cond_49

    .line 491
    .line 492
    const-string p0, "AAC_ELD"

    .line 493
    .line 494
    return-object p0

    .line 495
    :cond_49
    const v0, 0x1e000001

    .line 496
    .line 497
    .line 498
    if-ne p0, v0, :cond_4a

    .line 499
    .line 500
    const-string p0, "AAC_ADTS_MAIN"

    .line 501
    .line 502
    return-object p0

    .line 503
    :cond_4a
    const v0, 0x1e000002

    .line 504
    .line 505
    .line 506
    if-ne p0, v0, :cond_4b

    .line 507
    .line 508
    const-string p0, "AAC_ADTS_LC"

    .line 509
    .line 510
    return-object p0

    .line 511
    :cond_4b
    const v0, 0x1e000004

    .line 512
    .line 513
    .line 514
    if-ne p0, v0, :cond_4c

    .line 515
    .line 516
    const-string p0, "AAC_ADTS_SSR"

    .line 517
    .line 518
    return-object p0

    .line 519
    :cond_4c
    const v0, 0x1e000008

    .line 520
    .line 521
    .line 522
    if-ne p0, v0, :cond_4d

    .line 523
    .line 524
    const-string p0, "AAC_ADTS_LTP"

    .line 525
    .line 526
    return-object p0

    .line 527
    :cond_4d
    const v0, 0x1e000010

    .line 528
    .line 529
    .line 530
    if-ne p0, v0, :cond_4e

    .line 531
    .line 532
    const-string p0, "AAC_ADTS_HE_V1"

    .line 533
    .line 534
    return-object p0

    .line 535
    :cond_4e
    const v0, 0x1e000020

    .line 536
    .line 537
    .line 538
    if-ne p0, v0, :cond_4f

    .line 539
    .line 540
    const-string p0, "AAC_ADTS_SCALABLE"

    .line 541
    .line 542
    return-object p0

    .line 543
    :cond_4f
    const v0, 0x1e000040

    .line 544
    .line 545
    .line 546
    if-ne p0, v0, :cond_50

    .line 547
    .line 548
    const-string p0, "AAC_ADTS_ERLC"

    .line 549
    .line 550
    return-object p0

    .line 551
    :cond_50
    const v0, 0x1e000080

    .line 552
    .line 553
    .line 554
    if-ne p0, v0, :cond_51

    .line 555
    .line 556
    const-string p0, "AAC_ADTS_LD"

    .line 557
    .line 558
    return-object p0

    .line 559
    :cond_51
    const v0, 0x1e000100

    .line 560
    .line 561
    .line 562
    if-ne p0, v0, :cond_52

    .line 563
    .line 564
    const-string p0, "AAC_ADTS_HE_V2"

    .line 565
    .line 566
    return-object p0

    .line 567
    :cond_52
    const v0, 0x1e000200

    .line 568
    .line 569
    .line 570
    if-ne p0, v0, :cond_53

    .line 571
    .line 572
    const-string p0, "AAC_ADTS_ELD"

    .line 573
    .line 574
    return-object p0

    .line 575
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    const-string v1, "0x"

    .line 578
    .line 579
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-static {v0, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p0

    .line 586
    return-object p0
.end method
