.class public abstract Lcom/android/server/hdmi/HdmiCecKeycode;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 102

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 3
    const/16 v1, 0x17

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 9
    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 11
    const/16 v3, 0x13

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 17
    new-instance v3, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 19
    const/16 v5, 0x14

    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 25
    new-instance v5, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 27
    const/16 v6, 0x15

    .line 29
    const/4 v7, 0x3

    .line 30
    invoke-direct {v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 33
    new-instance v6, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 35
    const/16 v8, 0x16

    .line 37
    const/4 v9, 0x4

    .line 38
    invoke-direct {v6, v8, v9}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 41
    new-instance v8, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 43
    const/4 v10, -0x1

    .line 44
    const/4 v11, 0x5

    .line 45
    invoke-direct {v8, v10, v11}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 48
    new-instance v11, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 50
    const/4 v12, 0x6

    .line 51
    invoke-direct {v11, v10, v12}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 54
    new-instance v12, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 56
    const/4 v13, 0x7

    .line 57
    invoke-direct {v12, v10, v13}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 60
    new-instance v14, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 62
    const/16 v15, 0x8

    .line 64
    invoke-direct {v14, v10, v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 67
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 69
    const/16 v15, 0x9

    .line 71
    invoke-direct {v4, v7, v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 74
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 76
    const/16 v13, 0x52

    .line 78
    invoke-direct {v7, v13, v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 81
    new-instance v13, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 83
    const/16 v15, 0xb0

    .line 85
    const/16 v9, 0xa

    .line 87
    invoke-direct {v13, v15, v9}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 90
    new-instance v15, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 92
    const/16 v9, 0x100

    .line 94
    const/16 v10, 0xb

    .line 96
    invoke-direct {v15, v9, v10, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 99
    new-instance v9, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 101
    const/16 v2, 0xc

    .line 103
    const/4 v10, -0x1

    .line 104
    invoke-direct {v9, v10, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 107
    new-instance v10, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 109
    const/16 v2, 0xd

    .line 111
    move-object/from16 v27, v4

    .line 113
    const/4 v4, 0x4

    .line 114
    invoke-direct {v10, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 117
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 119
    move-object/from16 v21, v7

    .line 121
    const/16 v7, 0x6f

    .line 123
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 126
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 128
    const/16 v2, 0xe2

    .line 130
    move-object/from16 v29, v4

    .line 132
    const/16 v4, 0x10

    .line 134
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 137
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 139
    const/16 v4, 0x101

    .line 141
    move-object/from16 v31, v7

    .line 143
    const/16 v7, 0x11

    .line 145
    invoke-direct {v2, v4, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 148
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 150
    const/16 v4, 0xea

    .line 152
    move-object/from16 v32, v2

    .line 154
    const/16 v2, 0x1d

    .line 156
    invoke-direct {v7, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 159
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 161
    const/16 v2, 0xe3

    .line 163
    move-object/from16 v33, v7

    .line 165
    const/16 v7, 0x1e

    .line 167
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 170
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 172
    const/16 v2, 0xe4

    .line 174
    move-object/from16 v34, v4

    .line 176
    const/16 v4, 0x1f

    .line 178
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 181
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 183
    const/16 v2, 0x20

    .line 185
    move-object/from16 v35, v7

    .line 187
    const/4 v7, 0x7

    .line 188
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 191
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 193
    const/16 v2, 0x21

    .line 195
    move-object/from16 v18, v4

    .line 197
    const/16 v4, 0x8

    .line 199
    invoke-direct {v7, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 202
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 204
    const/16 v2, 0x22

    .line 206
    move-object/from16 v17, v7

    .line 208
    const/16 v7, 0x9

    .line 210
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 213
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 215
    const/16 v2, 0x23

    .line 217
    move-object/from16 v20, v4

    .line 219
    const/16 v4, 0xa

    .line 221
    invoke-direct {v7, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 224
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 226
    const/16 v2, 0x24

    .line 228
    move-object/from16 v22, v7

    .line 230
    const/16 v7, 0xb

    .line 232
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 235
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 237
    const/16 v2, 0x25

    .line 239
    move-object/from16 v25, v4

    .line 241
    const/16 v4, 0xc

    .line 243
    invoke-direct {v7, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 246
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 248
    const/16 v2, 0x26

    .line 250
    move-object/from16 v26, v7

    .line 252
    const/16 v7, 0xd

    .line 254
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 257
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 259
    const/16 v2, 0xe

    .line 261
    move-object/from16 v28, v4

    .line 263
    const/16 v4, 0x27

    .line 265
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 268
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 270
    const/16 v2, 0xf

    .line 272
    move-object/from16 v36, v7

    .line 274
    const/16 v7, 0x28

    .line 276
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 279
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 281
    const/16 v2, 0x29

    .line 283
    move-object/from16 v37, v4

    .line 285
    const/16 v4, 0x10

    .line 287
    invoke-direct {v7, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 290
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 292
    const/16 v2, 0x38

    .line 294
    move-object/from16 v38, v7

    .line 296
    const/16 v7, 0x2a

    .line 298
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 301
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 303
    const/16 v2, 0xa0

    .line 305
    move-object/from16 v40, v4

    .line 307
    const/16 v4, 0x2b

    .line 309
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 312
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 314
    const/16 v2, 0x1c

    .line 316
    move-object/from16 v41, v7

    .line 318
    const/16 v7, 0x2c

    .line 320
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 323
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 325
    const/16 v2, 0x2f

    .line 327
    move-object/from16 v42, v4

    .line 329
    const/4 v4, -0x1

    .line 330
    invoke-direct {v7, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 333
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 335
    const/16 v2, 0xa6

    .line 337
    move-object/from16 v43, v7

    .line 339
    const/16 v7, 0x30

    .line 341
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 344
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 346
    const/16 v2, 0xa7

    .line 348
    move-object/from16 v44, v4

    .line 350
    const/16 v4, 0x31

    .line 352
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 355
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 357
    const/16 v2, 0xe5

    .line 359
    move-object/from16 v45, v7

    .line 361
    const/16 v7, 0x32

    .line 363
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 366
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 368
    const/16 v2, 0xde

    .line 370
    move-object/from16 v46, v4

    .line 372
    const/16 v4, 0x33

    .line 374
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 377
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 379
    const/16 v2, 0xb2

    .line 381
    move-object/from16 v47, v7

    .line 383
    const/16 v7, 0x34

    .line 385
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 388
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 390
    const/16 v2, 0xa5

    .line 392
    move-object/from16 v48, v4

    .line 394
    const/16 v4, 0x35

    .line 396
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 399
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 401
    const/16 v2, 0x36

    .line 403
    move-object/from16 v49, v7

    .line 405
    const/4 v7, -0x1

    .line 406
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 409
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 411
    const/16 v2, 0x5c

    .line 413
    move-object/from16 v50, v4

    .line 415
    const/16 v4, 0x37

    .line 417
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 420
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 422
    const/16 v2, 0x5d

    .line 424
    move-object/from16 v51, v7

    .line 426
    const/16 v7, 0x38

    .line 428
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 431
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 433
    const/16 v2, 0x1a

    .line 435
    move-object/from16 v39, v4

    .line 437
    const/16 v4, 0x40

    .line 439
    move-object/from16 v52, v9

    .line 441
    const/4 v9, 0x0

    .line 442
    invoke-direct {v7, v2, v4, v9}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 445
    new-instance v9, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 447
    const/16 v2, 0x18

    .line 449
    const/16 v4, 0x41

    .line 451
    invoke-direct {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 454
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 456
    const/16 v2, 0x19

    .line 458
    move-object/from16 v53, v7

    .line 460
    const/16 v7, 0x42

    .line 462
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 465
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 467
    const/16 v2, 0xa4

    .line 469
    move-object/from16 v54, v4

    .line 471
    const/16 v4, 0x43

    .line 473
    move-object/from16 v55, v9

    .line 475
    const/4 v9, 0x0

    .line 476
    invoke-direct {v7, v2, v4, v9}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 479
    new-instance v9, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 481
    const/16 v2, 0x7e

    .line 483
    const/16 v4, 0x44

    .line 485
    invoke-direct {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 488
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 490
    const/16 v2, 0x56

    .line 492
    move-object/from16 v56, v7

    .line 494
    const/16 v7, 0x45

    .line 496
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 499
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 501
    const/16 v2, 0x7f

    .line 503
    move-object/from16 v58, v4

    .line 505
    const/16 v4, 0x46

    .line 507
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 510
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 512
    move-object/from16 v59, v7

    .line 514
    const/16 v7, 0x55

    .line 516
    invoke-direct {v2, v7, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 519
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 521
    const/16 v7, 0x82

    .line 523
    move-object/from16 v61, v2

    .line 525
    const/16 v2, 0x47

    .line 527
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 530
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 532
    const/16 v2, 0x59

    .line 534
    move-object/from16 v62, v4

    .line 536
    const/16 v4, 0x48

    .line 538
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 541
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 543
    const/16 v2, 0x5a

    .line 545
    move-object/from16 v63, v7

    .line 547
    const/16 v7, 0x49

    .line 549
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 552
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 554
    const/16 v2, 0x81

    .line 556
    move-object/from16 v64, v4

    .line 558
    const/16 v4, 0x4a

    .line 560
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 563
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 565
    const/16 v2, 0x57

    .line 567
    move-object/from16 v65, v7

    .line 569
    const/16 v7, 0x4b

    .line 571
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 574
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 576
    const/16 v2, 0x58

    .line 578
    move-object/from16 v67, v4

    .line 580
    const/16 v4, 0x4c

    .line 582
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 585
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 587
    const/16 v2, 0x4d

    .line 589
    move-object/from16 v68, v7

    .line 591
    const/4 v7, -0x1

    .line 592
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 595
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 597
    move-object/from16 v69, v4

    .line 599
    const/16 v4, 0x4e

    .line 601
    invoke-direct {v2, v7, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 604
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 606
    move-object/from16 v70, v2

    .line 608
    const/16 v2, 0x4f

    .line 610
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 613
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 615
    move-object/from16 v71, v4

    .line 617
    const/16 v4, 0x50

    .line 619
    invoke-direct {v2, v7, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 622
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 624
    const/16 v7, 0xaf

    .line 626
    move-object/from16 v72, v2

    .line 628
    const/16 v2, 0x51

    .line 630
    invoke-direct {v4, v7, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 633
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 635
    move-object/from16 v19, v4

    .line 637
    const/4 v2, -0x1

    .line 638
    const/16 v4, 0x52

    .line 640
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 643
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 645
    const/16 v2, 0xac

    .line 647
    move-object/from16 v94, v7

    .line 649
    const/16 v7, 0x53

    .line 651
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 654
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 656
    const/16 v2, 0x102

    .line 658
    move-object/from16 v95, v4

    .line 660
    const/16 v4, 0x54

    .line 662
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 665
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 667
    move-object/from16 v60, v7

    .line 669
    const/4 v2, -0x1

    .line 670
    const/16 v7, 0x55

    .line 672
    invoke-direct {v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 675
    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 677
    move-object/from16 v96, v4

    .line 679
    const/16 v4, 0x56

    .line 681
    invoke-direct {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 684
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 686
    const/16 v4, 0x10

    .line 688
    int-to-byte v4, v4

    .line 689
    move-object/from16 v30, v7

    .line 691
    move-object/from16 v16, v9

    .line 693
    const/4 v7, 0x1

    .line 694
    new-array v9, v7, [B

    .line 696
    const/4 v7, 0x0

    .line 697
    aput-byte v4, v9, v7

    .line 699
    const/16 v4, 0xeb

    .line 701
    move-object/from16 v57, v10

    .line 703
    const/4 v7, 0x1

    .line 704
    const/16 v10, 0x56

    .line 706
    invoke-direct {v2, v4, v10, v9, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    .line 709
    new-instance v9, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 711
    const/16 v4, 0x60

    .line 713
    int-to-byte v10, v4

    .line 714
    new-array v4, v7, [B

    .line 716
    const/4 v7, 0x0

    .line 717
    aput-byte v10, v4, v7

    .line 719
    const/16 v10, 0xec

    .line 721
    move-object/from16 v97, v2

    .line 723
    const/16 v2, 0x56

    .line 725
    const/4 v7, 0x1

    .line 726
    invoke-direct {v9, v10, v2, v4, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    .line 729
    new-instance v10, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 731
    const/16 v4, 0x80

    .line 733
    int-to-byte v4, v4

    .line 734
    new-array v2, v7, [B

    .line 736
    const/4 v7, 0x0

    .line 737
    aput-byte v4, v2, v7

    .line 739
    const/16 v4, 0xee

    .line 741
    move-object/from16 v98, v9

    .line 743
    const/4 v7, 0x1

    .line 744
    const/16 v9, 0x56

    .line 746
    invoke-direct {v10, v4, v9, v2, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    .line 749
    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 751
    const/16 v2, 0x90

    .line 753
    int-to-byte v2, v2

    .line 754
    new-array v9, v7, [B

    .line 756
    const/4 v7, 0x0

    .line 757
    aput-byte v2, v9, v7

    .line 759
    const/16 v2, 0xef

    .line 761
    move-object/from16 v99, v10

    .line 763
    const/4 v7, 0x1

    .line 764
    const/16 v10, 0x56

    .line 766
    invoke-direct {v4, v2, v10, v9, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    .line 769
    new-instance v9, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 771
    int-to-byte v2, v7

    .line 772
    new-array v10, v7, [B

    .line 774
    const/4 v7, 0x0

    .line 775
    aput-byte v2, v10, v7

    .line 777
    const/16 v2, 0xf1

    .line 779
    move-object/from16 v100, v4

    .line 781
    const/16 v4, 0x56

    .line 783
    const/4 v7, 0x1

    .line 784
    invoke-direct {v9, v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    .line 787
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 789
    move-object/from16 v73, v2

    .line 791
    const/4 v4, -0x1

    .line 792
    const/16 v7, 0x57

    .line 794
    invoke-direct {v2, v4, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 797
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 799
    move-object/from16 v74, v2

    .line 801
    const/4 v7, 0x0

    .line 802
    const/16 v10, 0x60

    .line 804
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 807
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 809
    move-object/from16 v75, v2

    .line 811
    const/16 v10, 0x61

    .line 813
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 816
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 818
    move-object/from16 v76, v2

    .line 820
    const/16 v10, 0x62

    .line 822
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 825
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 827
    move-object/from16 v77, v2

    .line 829
    const/16 v10, 0x63

    .line 831
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 834
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 836
    move-object/from16 v78, v2

    .line 838
    const/16 v10, 0x64

    .line 840
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 843
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 845
    move-object/from16 v79, v2

    .line 847
    const/16 v10, 0x65

    .line 849
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 852
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 854
    move-object/from16 v80, v2

    .line 856
    const/16 v10, 0x66

    .line 858
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 861
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 863
    move-object/from16 v81, v2

    .line 865
    const/16 v10, 0x67

    .line 867
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 870
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 872
    move-object/from16 v82, v2

    .line 874
    const/16 v10, 0x68

    .line 876
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 879
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 881
    move-object/from16 v83, v2

    .line 883
    const/16 v10, 0x69

    .line 885
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 888
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 890
    move-object/from16 v84, v2

    .line 892
    const/16 v10, 0x6a

    .line 894
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 897
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 899
    move-object/from16 v85, v2

    .line 901
    const/16 v10, 0x6b

    .line 903
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 906
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 908
    move-object/from16 v86, v2

    .line 910
    const/16 v10, 0x6c

    .line 912
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 915
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 917
    move-object/from16 v87, v2

    .line 919
    const/16 v10, 0x6d

    .line 921
    invoke-direct {v2, v4, v10, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    .line 924
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 926
    move-object/from16 v88, v2

    .line 928
    const/16 v4, 0xba

    .line 930
    const/16 v7, 0x71

    .line 932
    invoke-direct {v2, v4, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 935
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 937
    move-object/from16 v89, v2

    .line 939
    const/16 v4, 0xb7

    .line 941
    const/16 v7, 0x72

    .line 943
    invoke-direct {v2, v4, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 946
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 948
    move-object/from16 v90, v2

    .line 950
    const/16 v4, 0xb8

    .line 952
    const/16 v7, 0x73

    .line 954
    invoke-direct {v2, v4, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 957
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 959
    move-object/from16 v91, v2

    .line 961
    const/16 v4, 0xb9

    .line 963
    const/16 v7, 0x74

    .line 965
    invoke-direct {v2, v4, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 968
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 970
    move-object/from16 v92, v2

    .line 972
    const/16 v4, 0x87

    .line 974
    const/16 v7, 0x75

    .line 976
    invoke-direct {v2, v4, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 979
    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 981
    move-object/from16 v93, v2

    .line 983
    const/16 v4, 0xe6

    .line 985
    const/16 v7, 0x76

    .line 987
    invoke-direct {v2, v4, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    .line 990
    move-object/from16 v23, v32

    .line 992
    move-object/from16 v66, v70

    .line 994
    move-object/from16 v70, v72

    .line 996
    move-object/from16 v72, v97

    .line 998
    move-object v2, v3

    .line 999
    move-object v3, v5

    .line 1000
    move-object/from16 v24, v18

    .line 1002
    move-object/from16 v10, v27

    .line 1004
    move-object/from16 v18, v29

    .line 1006
    move-object/from16 v29, v37

    .line 1008
    move-object/from16 v32, v40

    .line 1010
    move-object/from16 v37, v44

    .line 1012
    move-object/from16 v40, v48

    .line 1014
    move-object/from16 v27, v25

    .line 1016
    move-object/from16 v44, v39

    .line 1018
    move-object/from16 v39, v46

    .line 1020
    move-object/from16 v46, v54

    .line 1022
    move-object/from16 v54, v62

    .line 1024
    move-object/from16 v62, v67

    .line 1026
    move-object/from16 v67, v71

    .line 1028
    move-object/from16 v71, v95

    .line 1030
    move-object/from16 v95, v96

    .line 1032
    move-object/from16 v96, v100

    .line 1034
    move-object/from16 v25, v20

    .line 1036
    move-object/from16 v101, v69

    .line 1038
    move-object/from16 v69, v19

    .line 1040
    move-object/from16 v19, v34

    .line 1042
    move-object/from16 v34, v42

    .line 1044
    move-object/from16 v42, v50

    .line 1046
    move-object/from16 v50, v58

    .line 1048
    move-object/from16 v58, v64

    .line 1050
    move-object/from16 v64, v101

    .line 1052
    move-object v4, v6

    .line 1053
    move-object v5, v8

    .line 1054
    move-object v6, v11

    .line 1055
    move-object/from16 v11, v21

    .line 1057
    move-object/from16 v20, v33

    .line 1059
    move-object/from16 v21, v35

    .line 1061
    move-object/from16 v33, v38

    .line 1063
    move-object/from16 v35, v41

    .line 1065
    move-object/from16 v38, v45

    .line 1067
    move-object/from16 v41, v47

    .line 1069
    move-object/from16 v45, v51

    .line 1071
    move-object/from16 v47, v53

    .line 1073
    move-object/from16 v48, v56

    .line 1075
    move-object/from16 v51, v59

    .line 1077
    move-object/from16 v53, v63

    .line 1079
    move-object/from16 v56, v65

    .line 1081
    move-object/from16 v59, v68

    .line 1083
    move-object/from16 v63, v94

    .line 1085
    move-object/from16 v68, v30

    .line 1087
    move-object/from16 v65, v60

    .line 1089
    move-object/from16 v30, v26

    .line 1091
    move-object/from16 v26, v22

    .line 1093
    move-object/from16 v22, v17

    .line 1095
    move-object/from16 v17, v31

    .line 1097
    move-object/from16 v31, v36

    .line 1099
    move-object/from16 v36, v43

    .line 1101
    move-object/from16 v43, v49

    .line 1103
    move-object v7, v12

    .line 1104
    move-object v8, v14

    .line 1105
    move-object/from16 v97, v9

    .line 1107
    move-object/from16 v14, v52

    .line 1109
    move-object/from16 v49, v55

    .line 1111
    move-object/from16 v94, v98

    .line 1113
    move-object/from16 v52, v16

    .line 1115
    move-object v9, v10

    .line 1116
    move-object/from16 v16, v57

    .line 1118
    move-object/from16 v98, v99

    .line 1120
    move-object v10, v11

    .line 1121
    move-object v11, v13

    .line 1122
    move-object v12, v15

    .line 1123
    move-object v13, v14

    .line 1124
    move-object/from16 v14, v16

    .line 1126
    move-object/from16 v15, v18

    .line 1128
    move-object/from16 v16, v17

    .line 1130
    move-object/from16 v17, v23

    .line 1132
    move-object/from16 v18, v20

    .line 1134
    move-object/from16 v20, v21

    .line 1136
    move-object/from16 v21, v24

    .line 1138
    move-object/from16 v23, v25

    .line 1140
    move-object/from16 v24, v26

    .line 1142
    move-object/from16 v25, v27

    .line 1144
    move-object/from16 v26, v30

    .line 1146
    move-object/from16 v27, v28

    .line 1148
    move-object/from16 v28, v31

    .line 1150
    move-object/from16 v30, v33

    .line 1152
    move-object/from16 v31, v32

    .line 1154
    move-object/from16 v32, v35

    .line 1156
    move-object/from16 v33, v34

    .line 1158
    move-object/from16 v34, v36

    .line 1160
    move-object/from16 v35, v37

    .line 1162
    move-object/from16 v36, v38

    .line 1164
    move-object/from16 v37, v39

    .line 1166
    move-object/from16 v38, v41

    .line 1168
    move-object/from16 v39, v40

    .line 1170
    move-object/from16 v40, v43

    .line 1172
    move-object/from16 v41, v42

    .line 1174
    move-object/from16 v42, v45

    .line 1176
    move-object/from16 v43, v44

    .line 1178
    move-object/from16 v44, v47

    .line 1180
    move-object/from16 v45, v49

    .line 1182
    move-object/from16 v47, v48

    .line 1184
    move-object/from16 v48, v52

    .line 1186
    move-object/from16 v49, v50

    .line 1188
    move-object/from16 v50, v51

    .line 1190
    move-object/from16 v51, v61

    .line 1192
    move-object/from16 v52, v54

    .line 1194
    move-object/from16 v54, v58

    .line 1196
    move-object/from16 v55, v56

    .line 1198
    move-object/from16 v56, v62

    .line 1200
    move-object/from16 v57, v59

    .line 1202
    move-object/from16 v58, v64

    .line 1204
    move-object/from16 v59, v66

    .line 1206
    move-object/from16 v60, v67

    .line 1208
    move-object/from16 v61, v70

    .line 1210
    move-object/from16 v62, v69

    .line 1212
    move-object/from16 v64, v71

    .line 1214
    move-object/from16 v66, v95

    .line 1216
    move-object/from16 v67, v68

    .line 1218
    move-object/from16 v68, v72

    .line 1220
    move-object/from16 v69, v94

    .line 1222
    move-object/from16 v70, v98

    .line 1224
    move-object/from16 v71, v96

    .line 1226
    move-object/from16 v72, v97

    .line 1228
    filled-new-array/range {v0 .. v93}, [Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 1231
    move-result-object v0

    .line 1232
    sput-object v0, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 1234
    return-void
.end method

.method public static androidKeyToCecKey(I)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 4
    array-length v2, v1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ge v0, v2, :cond_2

    .line 8
    aget-object v1, v1, v0

    .line 10
    iget v2, v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    .line 12
    if-ne v2, p0, :cond_0

    .line 14
    iget-object v3, v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    .line 16
    :cond_0
    if-eqz v3, :cond_1

    .line 18
    return-object v3

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    return-object v3
.end method

.method public static isRepeatableKey(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_2

    .line 8
    aget-object v2, v2, v1

    .line 10
    iget v3, v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    .line 12
    if-ne v3, p0, :cond_0

    .line 14
    iget-boolean v2, v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object v2

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_1
    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return v0
.end method

.method public static isVolumeKeycode(I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-byte v0, v0, v1

    .line 8
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 14
    const/16 p0, 0x41

    .line 16
    if-eq v0, p0, :cond_0

    .line 18
    const/16 p0, 0x42

    .line 20
    if-eq v0, p0, :cond_0

    .line 22
    const/16 p0, 0x43

    .line 24
    if-eq v0, p0, :cond_0

    .line 26
    const/16 p0, 0x65

    .line 28
    if-eq v0, p0, :cond_0

    .line 30
    const/16 p0, 0x66

    .line 32
    if-ne v0, p0, :cond_1

    .line 34
    :cond_0
    const/4 v1, 0x1

    .line 35
    :cond_1
    return v1
.end method
