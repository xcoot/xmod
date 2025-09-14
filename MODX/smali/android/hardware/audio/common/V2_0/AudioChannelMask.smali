.class public abstract Landroid/hardware/audio/common/V2_0/AudioChannelMask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "REPRESENTATION_POSITION"

    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_1

    .line 11
    const-string v0, "REPRESENTATION_INDEX"

    .line 13
    return-object v0

    .line 14
    :cond_1
    if-nez v0, :cond_2

    .line 16
    const-string v0, "NONE"

    .line 18
    return-object v0

    .line 19
    :cond_2
    const/high16 v2, -0x40000000    # -2.0f

    .line 21
    if-ne v0, v2, :cond_3

    .line 23
    const-string v0, "INVALID"

    .line 25
    return-object v0

    .line 26
    :cond_3
    const/4 v2, 0x1

    .line 27
    if-ne v0, v2, :cond_4

    .line 29
    const-string v0, "OUT_FRONT_LEFT"

    .line 31
    return-object v0

    .line 32
    :cond_4
    if-ne v0, v1, :cond_5

    .line 34
    const-string v0, "OUT_FRONT_RIGHT"

    .line 36
    return-object v0

    .line 37
    :cond_5
    const/4 v1, 0x4

    .line 38
    if-ne v0, v1, :cond_6

    .line 40
    const-string v0, "OUT_FRONT_CENTER"

    .line 42
    return-object v0

    .line 43
    :cond_6
    const/16 v3, 0x8

    .line 45
    if-ne v0, v3, :cond_7

    .line 47
    const-string v0, "OUT_LOW_FREQUENCY"

    .line 49
    return-object v0

    .line 50
    :cond_7
    const/16 v4, 0x10

    .line 52
    if-ne v0, v4, :cond_8

    .line 54
    const-string v0, "OUT_BACK_LEFT"

    .line 56
    return-object v0

    .line 57
    :cond_8
    const/16 v5, 0x20

    .line 59
    if-ne v0, v5, :cond_9

    .line 61
    const-string v0, "OUT_BACK_RIGHT"

    .line 63
    return-object v0

    .line 64
    :cond_9
    const/16 v6, 0x40

    .line 66
    if-ne v0, v6, :cond_a

    .line 68
    const-string v0, "OUT_FRONT_LEFT_OF_CENTER"

    .line 70
    return-object v0

    .line 71
    :cond_a
    const/16 v7, 0x80

    .line 73
    if-ne v0, v7, :cond_b

    .line 75
    const-string v0, "OUT_FRONT_RIGHT_OF_CENTER"

    .line 77
    return-object v0

    .line 78
    :cond_b
    const/16 v8, 0x100

    .line 80
    if-ne v0, v8, :cond_c

    .line 82
    const-string v0, "OUT_BACK_CENTER"

    .line 84
    return-object v0

    .line 85
    :cond_c
    const/16 v9, 0x200

    .line 87
    if-ne v0, v9, :cond_d

    .line 89
    const-string v0, "OUT_SIDE_LEFT"

    .line 91
    return-object v0

    .line 92
    :cond_d
    const/16 v10, 0x400

    .line 94
    if-ne v0, v10, :cond_e

    .line 96
    const-string v0, "OUT_SIDE_RIGHT"

    .line 98
    return-object v0

    .line 99
    :cond_e
    const/16 v11, 0x800

    .line 101
    if-ne v0, v11, :cond_f

    .line 103
    const-string v0, "OUT_TOP_CENTER"

    .line 105
    return-object v0

    .line 106
    :cond_f
    const/16 v12, 0x1000

    .line 108
    if-ne v0, v12, :cond_10

    .line 110
    const-string v0, "OUT_TOP_FRONT_LEFT"

    .line 112
    return-object v0

    .line 113
    :cond_10
    const/16 v13, 0x2000

    .line 115
    if-ne v0, v13, :cond_11

    .line 117
    const-string v0, "OUT_TOP_FRONT_CENTER"

    .line 119
    return-object v0

    .line 120
    :cond_11
    const/16 v14, 0x4000

    .line 122
    if-ne v0, v14, :cond_12

    .line 124
    const-string v0, "OUT_TOP_FRONT_RIGHT"

    .line 126
    return-object v0

    .line 127
    :cond_12
    const v15, 0x8000

    .line 130
    if-ne v0, v15, :cond_13

    .line 132
    const-string v0, "OUT_TOP_BACK_LEFT"

    .line 134
    return-object v0

    .line 135
    :cond_13
    const/high16 v15, 0x10000

    .line 137
    if-ne v0, v15, :cond_14

    .line 139
    const-string v0, "OUT_TOP_BACK_CENTER"

    .line 141
    return-object v0

    .line 142
    :cond_14
    const/high16 v15, 0x20000

    .line 144
    if-ne v0, v15, :cond_15

    .line 146
    const-string v0, "OUT_TOP_BACK_RIGHT"

    .line 148
    return-object v0

    .line 149
    :cond_15
    if-ne v0, v2, :cond_16

    .line 151
    const-string v0, "OUT_MONO"

    .line 153
    return-object v0

    .line 154
    :cond_16
    const/4 v2, 0x3

    .line 155
    if-ne v0, v2, :cond_17

    .line 157
    const-string v0, "OUT_STEREO"

    .line 159
    return-object v0

    .line 160
    :cond_17
    const/16 v2, 0xb

    .line 162
    if-ne v0, v2, :cond_18

    .line 164
    const-string v0, "OUT_2POINT1"

    .line 166
    return-object v0

    .line 167
    :cond_18
    const/16 v2, 0x33

    .line 169
    if-ne v0, v2, :cond_19

    .line 171
    const-string v0, "OUT_QUAD"

    .line 173
    return-object v0

    .line 174
    :cond_19
    if-ne v0, v2, :cond_1a

    .line 176
    const-string v0, "OUT_QUAD_BACK"

    .line 178
    return-object v0

    .line 179
    :cond_1a
    const/16 v2, 0x603

    .line 181
    if-ne v0, v2, :cond_1b

    .line 183
    const-string v0, "OUT_QUAD_SIDE"

    .line 185
    return-object v0

    .line 186
    :cond_1b
    const/16 v2, 0x107

    .line 188
    if-ne v0, v2, :cond_1c

    .line 190
    const-string v0, "OUT_SURROUND"

    .line 192
    return-object v0

    .line 193
    :cond_1c
    const/16 v2, 0x37

    .line 195
    if-ne v0, v2, :cond_1d

    .line 197
    const-string v0, "OUT_PENTA"

    .line 199
    return-object v0

    .line 200
    :cond_1d
    const/16 v2, 0x3f

    .line 202
    if-ne v0, v2, :cond_1e

    .line 204
    const-string v0, "OUT_5POINT1"

    .line 206
    return-object v0

    .line 207
    :cond_1e
    if-ne v0, v2, :cond_1f

    .line 209
    const-string v0, "OUT_5POINT1_BACK"

    .line 211
    return-object v0

    .line 212
    :cond_1f
    const/16 v2, 0x60f

    .line 214
    if-ne v0, v2, :cond_20

    .line 216
    const-string v0, "OUT_5POINT1_SIDE"

    .line 218
    return-object v0

    .line 219
    :cond_20
    const/16 v2, 0x13f

    .line 221
    if-ne v0, v2, :cond_21

    .line 223
    const-string v0, "OUT_6POINT1"

    .line 225
    return-object v0

    .line 226
    :cond_21
    const/16 v2, 0x63f

    .line 228
    if-ne v0, v2, :cond_22

    .line 230
    const-string v0, "OUT_7POINT1"

    .line 232
    return-object v0

    .line 233
    :cond_22
    const v2, 0x3ffff

    .line 236
    if-ne v0, v2, :cond_23

    .line 238
    const-string v0, "OUT_ALL"

    .line 240
    return-object v0

    .line 241
    :cond_23
    if-ne v0, v1, :cond_24

    .line 243
    const-string v0, "IN_LEFT"

    .line 245
    return-object v0

    .line 246
    :cond_24
    if-ne v0, v3, :cond_25

    .line 248
    const-string v0, "IN_RIGHT"

    .line 250
    return-object v0

    .line 251
    :cond_25
    if-ne v0, v4, :cond_26

    .line 253
    const-string v0, "IN_FRONT"

    .line 255
    return-object v0

    .line 256
    :cond_26
    if-ne v0, v5, :cond_27

    .line 258
    const-string v0, "IN_BACK"

    .line 260
    return-object v0

    .line 261
    :cond_27
    if-ne v0, v6, :cond_28

    .line 263
    const-string v0, "IN_LEFT_PROCESSED"

    .line 265
    return-object v0

    .line 266
    :cond_28
    if-ne v0, v7, :cond_29

    .line 268
    const-string v0, "IN_RIGHT_PROCESSED"

    .line 270
    return-object v0

    .line 271
    :cond_29
    if-ne v0, v8, :cond_2a

    .line 273
    const-string v0, "IN_FRONT_PROCESSED"

    .line 275
    return-object v0

    .line 276
    :cond_2a
    if-ne v0, v9, :cond_2b

    .line 278
    const-string v0, "IN_BACK_PROCESSED"

    .line 280
    return-object v0

    .line 281
    :cond_2b
    if-ne v0, v10, :cond_2c

    .line 283
    const-string v0, "IN_PRESSURE"

    .line 285
    return-object v0

    .line 286
    :cond_2c
    if-ne v0, v11, :cond_2d

    .line 288
    const-string v0, "IN_X_AXIS"

    .line 290
    return-object v0

    .line 291
    :cond_2d
    if-ne v0, v12, :cond_2e

    .line 293
    const-string v0, "IN_Y_AXIS"

    .line 295
    return-object v0

    .line 296
    :cond_2e
    if-ne v0, v13, :cond_2f

    .line 298
    const-string v0, "IN_Z_AXIS"

    .line 300
    return-object v0

    .line 301
    :cond_2f
    if-ne v0, v14, :cond_30

    .line 303
    const-string v0, "IN_VOICE_UPLINK"

    .line 305
    return-object v0

    .line 306
    :cond_30
    const v1, 0x8000

    .line 309
    if-ne v0, v1, :cond_31

    .line 311
    const-string v0, "IN_VOICE_DNLINK"

    .line 313
    return-object v0

    .line 314
    :cond_31
    if-ne v0, v4, :cond_32

    .line 316
    const-string v0, "IN_MONO"

    .line 318
    return-object v0

    .line 319
    :cond_32
    const/16 v1, 0xc

    .line 321
    if-ne v0, v1, :cond_33

    .line 323
    const-string v0, "IN_STEREO"

    .line 325
    return-object v0

    .line 326
    :cond_33
    const/16 v1, 0x30

    .line 328
    if-ne v0, v1, :cond_34

    .line 330
    const-string v0, "IN_FRONT_BACK"

    .line 332
    return-object v0

    .line 333
    :cond_34
    const/16 v1, 0xfc

    .line 335
    if-ne v0, v1, :cond_35

    .line 337
    const-string v0, "IN_6"

    .line 339
    return-object v0

    .line 340
    :cond_35
    const/16 v1, 0x4010

    .line 342
    if-ne v0, v1, :cond_36

    .line 344
    const-string v0, "IN_VOICE_UPLINK_MONO"

    .line 346
    return-object v0

    .line 347
    :cond_36
    const v1, 0x8010

    .line 350
    if-ne v0, v1, :cond_37

    .line 352
    const-string v0, "IN_VOICE_DNLINK_MONO"

    .line 354
    return-object v0

    .line 355
    :cond_37
    const v1, 0xc010

    .line 358
    if-ne v0, v1, :cond_38

    .line 360
    const-string v0, "IN_VOICE_CALL_MONO"

    .line 362
    return-object v0

    .line 363
    :cond_38
    const v1, 0xfffc

    .line 366
    if-ne v0, v1, :cond_39

    .line 368
    const-string v0, "IN_ALL"

    .line 370
    return-object v0

    .line 371
    :cond_39
    const/16 v1, 0x1e

    .line 373
    if-ne v0, v1, :cond_3a

    .line 375
    const-string v0, "COUNT_MAX"

    .line 377
    return-object v0

    .line 378
    :cond_3a
    const/high16 v1, -0x80000000

    .line 380
    if-ne v0, v1, :cond_3b

    .line 382
    const-string v0, "INDEX_HDR"

    .line 384
    return-object v0

    .line 385
    :cond_3b
    const v1, -0x7fffffff

    .line 388
    if-ne v0, v1, :cond_3c

    .line 390
    const-string v0, "INDEX_MASK_1"

    .line 392
    return-object v0

    .line 393
    :cond_3c
    const v1, -0x7ffffffd

    .line 396
    if-ne v0, v1, :cond_3d

    .line 398
    const-string v0, "INDEX_MASK_2"

    .line 400
    return-object v0

    .line 401
    :cond_3d
    const v1, -0x7ffffff9

    .line 404
    if-ne v0, v1, :cond_3e

    .line 406
    const-string v0, "INDEX_MASK_3"

    .line 408
    return-object v0

    .line 409
    :cond_3e
    const v1, -0x7ffffff1

    .line 412
    if-ne v0, v1, :cond_3f

    .line 414
    const-string v0, "INDEX_MASK_4"

    .line 416
    return-object v0

    .line 417
    :cond_3f
    const v1, -0x7fffffe1

    .line 420
    if-ne v0, v1, :cond_40

    .line 422
    const-string v0, "INDEX_MASK_5"

    .line 424
    return-object v0

    .line 425
    :cond_40
    const v1, -0x7fffffc1

    .line 428
    if-ne v0, v1, :cond_41

    .line 430
    const-string v0, "INDEX_MASK_6"

    .line 432
    return-object v0

    .line 433
    :cond_41
    const v1, -0x7fffff81

    .line 436
    if-ne v0, v1, :cond_42

    .line 438
    const-string v0, "INDEX_MASK_7"

    .line 440
    return-object v0

    .line 441
    :cond_42
    const v1, -0x7fffff01

    .line 444
    if-ne v0, v1, :cond_43

    .line 446
    const-string v0, "INDEX_MASK_8"

    .line 448
    return-object v0

    .line 449
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 451
    const-string v2, "0x"

    .line 453
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-static {v1, v0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 459
    move-result-object v0

    .line 460
    return-object v0
.end method
