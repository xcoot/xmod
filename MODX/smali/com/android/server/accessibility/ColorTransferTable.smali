.class public final Lcom/android/server/accessibility/ColorTransferTable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final Deutan_severity:[D

.field public static final Deutan_userParameter:[D

.field public static final Protan_severity:[D

.field public static final Protan_userParameter:[D

.field public static final Tritan_severity:[D

.field public static final Tritan_userParameter:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 3
    new-array v1, v0, [D

    .line 5
    fill-array-data v1, :array_0

    .line 8
    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    .line 10
    new-array v1, v0, [D

    .line 12
    fill-array-data v1, :array_1

    .line 15
    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    .line 17
    new-array v1, v0, [D

    .line 19
    fill-array-data v1, :array_2

    .line 22
    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    .line 24
    new-array v1, v0, [D

    .line 26
    fill-array-data v1, :array_3

    .line 29
    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    .line 31
    new-array v1, v0, [D

    .line 33
    fill-array-data v1, :array_4

    .line 36
    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    .line 38
    new-array v0, v0, [D

    .line 40
    fill-array-data v0, :array_5

    .line 43
    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_4
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3ff0000000000000L    # 1.0
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static getColorTransferValue_DMC(IIIDD)I
    .locals 24

    .line 1
    move/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    const/4 v3, 0x7

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v6, 0x3

    .line 10
    const/4 v7, 0x5

    .line 11
    const/16 v8, 0xff

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x2

    .line 15
    const/4 v11, -0x1

    .line 16
    const/4 v12, 0x1

    .line 17
    if-ne v0, v12, :cond_c

    .line 19
    if-ne v1, v12, :cond_3

    .line 21
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 24
    move-result v0

    .line 25
    if-nez v2, :cond_0

    .line 27
    packed-switch v0, :pswitch_data_0

    .line 30
    :goto_0
    move v5, v9

    .line 31
    goto :goto_2

    .line 32
    :pswitch_0
    const/16 v5, 0xfe

    .line 34
    const/16 v8, 0xfe

    .line 36
    goto :goto_3

    .line 37
    :pswitch_1
    move v5, v8

    .line 38
    goto :goto_3

    .line 39
    :cond_0
    if-ne v2, v12, :cond_1

    .line 41
    packed-switch v0, :pswitch_data_1

    .line 44
    goto :goto_0

    .line 45
    :pswitch_2
    const/16 v5, 0xfe

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    if-ne v2, v10, :cond_2

    .line 50
    packed-switch v0, :pswitch_data_2

    .line 53
    move v0, v9

    .line 54
    move v8, v0

    .line 55
    goto :goto_1

    .line 56
    :pswitch_3
    move v0, v8

    .line 57
    :goto_1
    move v5, v8

    .line 58
    move v8, v0

    .line 59
    goto :goto_3

    .line 60
    :cond_2
    move v5, v11

    .line 61
    :goto_2
    move v8, v5

    .line 62
    :goto_3
    filled-new-array {v8, v5}, [I

    .line 65
    move-result-object v0

    .line 66
    goto/16 :goto_4e

    .line 68
    :cond_3
    if-ne v1, v6, :cond_8

    .line 70
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 73
    move-result v0

    .line 74
    if-nez v2, :cond_5

    .line 76
    if-eq v0, v4, :cond_4

    .line 78
    if-eq v0, v3, :cond_4

    .line 80
    move v0, v9

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move v0, v12

    .line 83
    :goto_4
    move v1, v9

    .line 84
    goto :goto_7

    .line 85
    :cond_5
    if-ne v2, v12, :cond_6

    .line 87
    packed-switch v0, :pswitch_data_3

    .line 90
    goto :goto_5

    .line 91
    :pswitch_4
    move v0, v12

    .line 92
    goto :goto_6

    .line 93
    :cond_6
    if-ne v2, v10, :cond_7

    .line 95
    :goto_5
    move v0, v9

    .line 96
    :goto_6
    move v1, v0

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    move v0, v11

    .line 99
    goto :goto_6

    .line 100
    :goto_7
    filled-new-array {v0, v1}, [I

    .line 103
    move-result-object v0

    .line 104
    goto/16 :goto_4e

    .line 106
    :cond_8
    if-ne v1, v7, :cond_4f

    .line 108
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 111
    move-result v0

    .line 112
    const/16 v1, 0x24

    .line 114
    const/16 v3, 0x42

    .line 116
    const/16 v4, 0x5c

    .line 118
    const/16 v5, 0x75

    .line 120
    const/16 v6, 0x88

    .line 122
    const/16 v7, 0x9c

    .line 124
    const/16 v8, 0xac

    .line 126
    const/16 v13, 0xbc

    .line 128
    const/16 v14, 0xca

    .line 130
    const/16 v15, 0xd8

    .line 132
    if-nez v2, :cond_9

    .line 134
    packed-switch v0, :pswitch_data_4

    .line 137
    :goto_8
    move v1, v9

    .line 138
    goto :goto_9

    .line 139
    :pswitch_5
    move v1, v15

    .line 140
    goto :goto_9

    .line 141
    :pswitch_6
    move v1, v14

    .line 142
    goto :goto_9

    .line 143
    :pswitch_7
    move v1, v13

    .line 144
    goto :goto_9

    .line 145
    :pswitch_8
    move v1, v8

    .line 146
    goto :goto_9

    .line 147
    :pswitch_9
    move v1, v7

    .line 148
    goto :goto_9

    .line 149
    :pswitch_a
    move v1, v6

    .line 150
    goto :goto_9

    .line 151
    :pswitch_b
    move v1, v5

    .line 152
    goto :goto_9

    .line 153
    :pswitch_c
    move v1, v4

    .line 154
    goto :goto_9

    .line 155
    :pswitch_d
    move v1, v3

    .line 156
    :goto_9
    :pswitch_e
    move v0, v9

    .line 157
    goto :goto_b

    .line 158
    :cond_9
    if-ne v2, v12, :cond_a

    .line 160
    packed-switch v0, :pswitch_data_5

    .line 163
    goto :goto_8

    .line 164
    :cond_a
    if-ne v2, v10, :cond_b

    .line 166
    move v0, v9

    .line 167
    :goto_a
    move v1, v0

    .line 168
    goto :goto_b

    .line 169
    :cond_b
    move v0, v11

    .line 170
    goto :goto_a

    .line 171
    :goto_b
    filled-new-array {v1, v0}, [I

    .line 174
    move-result-object v0

    .line 175
    goto/16 :goto_4e

    .line 177
    :cond_c
    const/16 v13, 0xcc

    .line 179
    if-ne v0, v10, :cond_18

    .line 181
    if-ne v1, v12, :cond_10

    .line 183
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 186
    move-result v0

    .line 187
    if-nez v2, :cond_d

    .line 189
    packed-switch v0, :pswitch_data_6

    .line 192
    move v5, v9

    .line 193
    goto :goto_e

    .line 194
    :pswitch_f
    const/16 v5, 0xfe

    .line 196
    const/16 v8, 0xfe

    .line 198
    goto :goto_f

    .line 199
    :pswitch_10
    move v5, v8

    .line 200
    goto :goto_f

    .line 201
    :cond_d
    if-ne v2, v12, :cond_e

    .line 203
    packed-switch v0, :pswitch_data_7

    .line 206
    :goto_c
    move v0, v9

    .line 207
    move v8, v0

    .line 208
    goto :goto_d

    .line 209
    :pswitch_11
    move v0, v8

    .line 210
    :goto_d
    move v5, v8

    .line 211
    move v8, v0

    .line 212
    goto :goto_f

    .line 213
    :cond_e
    if-ne v2, v10, :cond_f

    .line 215
    packed-switch v0, :pswitch_data_8

    .line 218
    goto :goto_c

    .line 219
    :cond_f
    move v5, v11

    .line 220
    :goto_e
    move v8, v5

    .line 221
    :goto_f
    filled-new-array {v8, v5}, [I

    .line 224
    move-result-object v0

    .line 225
    goto/16 :goto_4e

    .line 227
    :cond_10
    if-ne v1, v6, :cond_14

    .line 229
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 232
    move-result v0

    .line 233
    if-nez v2, :cond_11

    .line 235
    packed-switch v0, :pswitch_data_9

    .line 238
    :goto_10
    move v0, v9

    .line 239
    goto :goto_12

    .line 240
    :pswitch_12
    move v0, v8

    .line 241
    goto :goto_13

    .line 242
    :pswitch_13
    const/16 v8, 0xcf

    .line 244
    move v0, v8

    .line 245
    move v8, v13

    .line 246
    goto :goto_13

    .line 247
    :cond_11
    if-ne v2, v12, :cond_12

    .line 249
    packed-switch v0, :pswitch_data_a

    .line 252
    move v5, v9

    .line 253
    move v8, v5

    .line 254
    goto :goto_11

    .line 255
    :pswitch_14
    const/16 v5, 0xfe

    .line 257
    const/16 v8, 0xfe

    .line 259
    goto :goto_11

    .line 260
    :pswitch_15
    move v5, v8

    .line 261
    :goto_11
    move v0, v8

    .line 262
    move v8, v5

    .line 263
    goto :goto_13

    .line 264
    :cond_12
    if-ne v2, v10, :cond_13

    .line 266
    packed-switch v0, :pswitch_data_b

    .line 269
    goto :goto_10

    .line 270
    :cond_13
    move v0, v11

    .line 271
    :goto_12
    move v8, v0

    .line 272
    :goto_13
    filled-new-array {v0, v8}, [I

    .line 275
    move-result-object v0

    .line 276
    goto/16 :goto_4e

    .line 278
    :cond_14
    if-ne v1, v7, :cond_4f

    .line 280
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 283
    if-nez v2, :cond_15

    .line 285
    :goto_14
    move v0, v9

    .line 286
    :goto_15
    move v1, v0

    .line 287
    goto :goto_16

    .line 288
    :cond_15
    if-ne v2, v12, :cond_16

    .line 290
    goto :goto_14

    .line 291
    :cond_16
    if-ne v2, v10, :cond_17

    .line 293
    goto :goto_14

    .line 294
    :cond_17
    move v0, v11

    .line 295
    goto :goto_15

    .line 296
    :goto_16
    filled-new-array {v0, v1}, [I

    .line 299
    move-result-object v0

    .line 300
    goto/16 :goto_4e

    .line 302
    :cond_18
    const/16 v14, 0x2f

    .line 304
    const/16 v15, 0x15

    .line 306
    const/16 v16, 0x33

    .line 308
    if-ne v0, v6, :cond_25

    .line 310
    const/16 v0, 0x3f

    .line 312
    const/16 v4, 0x49

    .line 314
    if-ne v1, v12, :cond_1d

    .line 316
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 319
    move-result v1

    .line 320
    if-nez v2, :cond_1a

    .line 322
    packed-switch v1, :pswitch_data_c

    .line 325
    :goto_17
    move v0, v9

    .line 326
    goto :goto_1b

    .line 327
    :cond_19
    :pswitch_16
    move v0, v12

    .line 328
    goto :goto_1b

    .line 329
    :cond_1a
    if-ne v2, v12, :cond_1b

    .line 331
    if-eq v1, v12, :cond_19

    .line 333
    if-eq v1, v3, :cond_19

    .line 335
    goto :goto_17

    .line 336
    :cond_1b
    if-ne v2, v10, :cond_1c

    .line 338
    packed-switch v1, :pswitch_data_d

    .line 341
    move v0, v9

    .line 342
    :goto_18
    :pswitch_17
    move v15, v0

    .line 343
    goto :goto_1a

    .line 344
    :pswitch_18
    const/16 v15, 0x51

    .line 346
    :goto_19
    :pswitch_19
    move v0, v15

    .line 347
    goto :goto_1a

    .line 348
    :pswitch_1a
    move v0, v4

    .line 349
    goto :goto_18

    .line 350
    :pswitch_1b
    move/from16 v0, v16

    .line 352
    goto :goto_18

    .line 353
    :pswitch_1c
    const/16 v15, 0x26

    .line 355
    goto :goto_19

    .line 356
    :goto_1a
    move v1, v0

    .line 357
    move v0, v15

    .line 358
    goto :goto_1c

    .line 359
    :cond_1c
    move v0, v11

    .line 360
    :goto_1b
    move v1, v0

    .line 361
    :goto_1c
    filled-new-array {v1, v0}, [I

    .line 364
    move-result-object v0

    .line 365
    goto/16 :goto_4e

    .line 367
    :cond_1d
    if-ne v1, v6, :cond_21

    .line 369
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 372
    move-result v0

    .line 373
    if-nez v2, :cond_1e

    .line 375
    packed-switch v0, :pswitch_data_e

    .line 378
    :goto_1d
    move v5, v9

    .line 379
    goto :goto_1f

    .line 380
    :pswitch_1d
    move v5, v8

    .line 381
    goto :goto_20

    .line 382
    :pswitch_1e
    const/16 v5, 0xfe

    .line 384
    const/16 v8, 0xfe

    .line 386
    goto :goto_20

    .line 387
    :cond_1e
    if-ne v2, v12, :cond_1f

    .line 389
    packed-switch v0, :pswitch_data_f

    .line 392
    goto :goto_1d

    .line 393
    :cond_1f
    if-ne v2, v10, :cond_20

    .line 395
    packed-switch v0, :pswitch_data_10

    .line 398
    move v0, v9

    .line 399
    move v8, v0

    .line 400
    goto :goto_1e

    .line 401
    :pswitch_1f
    move v0, v8

    .line 402
    :goto_1e
    move v5, v8

    .line 403
    move v8, v0

    .line 404
    goto :goto_20

    .line 405
    :cond_20
    move v5, v11

    .line 406
    :goto_1f
    move v8, v5

    .line 407
    :goto_20
    filled-new-array {v8, v5}, [I

    .line 410
    move-result-object v0

    .line 411
    goto/16 :goto_4e

    .line 413
    :cond_21
    if-ne v1, v7, :cond_4f

    .line 415
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 418
    move-result v1

    .line 419
    const/16 v3, 0x13

    .line 421
    const/16 v5, 0x55

    .line 423
    if-nez v2, :cond_22

    .line 425
    packed-switch v1, :pswitch_data_11

    .line 428
    move v0, v9

    .line 429
    :goto_21
    :pswitch_20
    move/from16 v16, v0

    .line 431
    goto :goto_23

    .line 432
    :pswitch_21
    const/16 v16, 0x73

    .line 434
    :goto_22
    :pswitch_22
    move/from16 v0, v16

    .line 436
    goto :goto_23

    .line 437
    :pswitch_23
    const/16 v16, 0x6d

    .line 439
    goto :goto_22

    .line 440
    :pswitch_24
    const/16 v16, 0x67

    .line 442
    goto :goto_22

    .line 443
    :pswitch_25
    const/16 v16, 0x5d

    .line 445
    goto :goto_22

    .line 446
    :pswitch_26
    move v0, v5

    .line 447
    goto :goto_21

    .line 448
    :pswitch_27
    const/16 v16, 0x4b

    .line 450
    goto :goto_22

    .line 451
    :pswitch_28
    const/16 v16, 0x25

    .line 453
    goto :goto_22

    .line 454
    :pswitch_29
    move v0, v3

    .line 455
    goto :goto_21

    .line 456
    :goto_23
    move/from16 v14, v16

    .line 458
    goto :goto_28

    .line 459
    :cond_22
    if-ne v2, v12, :cond_23

    .line 461
    packed-switch v1, :pswitch_data_12

    .line 464
    move v3, v9

    .line 465
    :goto_24
    :pswitch_2a
    move v14, v3

    .line 466
    goto :goto_26

    .line 467
    :pswitch_2b
    const/16 v14, 0x5e

    .line 469
    :goto_25
    :pswitch_2c
    move v3, v14

    .line 470
    goto :goto_26

    .line 471
    :pswitch_2d
    const/16 v14, 0x59

    .line 473
    goto :goto_25

    .line 474
    :pswitch_2e
    move v3, v5

    .line 475
    goto :goto_24

    .line 476
    :pswitch_2f
    const/16 v14, 0x4f

    .line 478
    goto :goto_25

    .line 479
    :pswitch_30
    move v3, v4

    .line 480
    goto :goto_24

    .line 481
    :pswitch_31
    const/16 v14, 0x41

    .line 483
    goto :goto_25

    .line 484
    :pswitch_32
    const/16 v14, 0x39

    .line 486
    goto :goto_25

    .line 487
    :pswitch_33
    const/16 v14, 0x23

    .line 489
    goto :goto_25

    .line 490
    :goto_26
    move v0, v3

    .line 491
    goto :goto_28

    .line 492
    :cond_23
    if-ne v2, v10, :cond_24

    .line 494
    move v0, v9

    .line 495
    :goto_27
    move v14, v0

    .line 496
    goto :goto_28

    .line 497
    :cond_24
    move v0, v11

    .line 498
    goto :goto_27

    .line 499
    :goto_28
    filled-new-array {v0, v14}, [I

    .line 502
    move-result-object v0

    .line 503
    goto/16 :goto_4e

    .line 505
    :cond_25
    if-ne v0, v4, :cond_31

    .line 507
    if-ne v1, v12, :cond_29

    .line 509
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 512
    move-result v0

    .line 513
    if-nez v2, :cond_26

    .line 515
    packed-switch v0, :pswitch_data_13

    .line 518
    goto :goto_29

    .line 519
    :pswitch_34
    move v0, v12

    .line 520
    goto :goto_2a

    .line 521
    :cond_26
    if-ne v2, v12, :cond_27

    .line 523
    :goto_29
    move v0, v9

    .line 524
    :goto_2a
    move v1, v0

    .line 525
    goto :goto_2b

    .line 526
    :cond_27
    if-ne v2, v10, :cond_28

    .line 528
    goto :goto_29

    .line 529
    :cond_28
    move v0, v11

    .line 530
    goto :goto_2a

    .line 531
    :goto_2b
    filled-new-array {v1, v0}, [I

    .line 534
    move-result-object v0

    .line 535
    goto/16 :goto_4e

    .line 537
    :cond_29
    if-ne v1, v6, :cond_2d

    .line 539
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 542
    move-result v0

    .line 543
    if-nez v2, :cond_2a

    .line 545
    packed-switch v0, :pswitch_data_14

    .line 548
    :goto_2c
    move v0, v9

    .line 549
    goto :goto_2e

    .line 550
    :pswitch_35
    move v0, v8

    .line 551
    goto :goto_2f

    .line 552
    :cond_2a
    if-ne v2, v12, :cond_2b

    .line 554
    packed-switch v0, :pswitch_data_15

    .line 557
    move v5, v9

    .line 558
    move v8, v5

    .line 559
    goto :goto_2d

    .line 560
    :pswitch_36
    const/16 v5, 0xfe

    .line 562
    const/16 v8, 0xfe

    .line 564
    goto :goto_2d

    .line 565
    :pswitch_37
    move v5, v8

    .line 566
    :goto_2d
    move v0, v8

    .line 567
    move v8, v5

    .line 568
    goto :goto_2f

    .line 569
    :cond_2b
    if-ne v2, v10, :cond_2c

    .line 571
    packed-switch v0, :pswitch_data_16

    .line 574
    goto :goto_2c

    .line 575
    :cond_2c
    move v0, v11

    .line 576
    :goto_2e
    move v8, v0

    .line 577
    :goto_2f
    filled-new-array {v0, v8}, [I

    .line 580
    move-result-object v0

    .line 581
    goto/16 :goto_4e

    .line 583
    :cond_2d
    if-ne v1, v7, :cond_4f

    .line 585
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 588
    move-result v0

    .line 589
    if-nez v2, :cond_2e

    .line 591
    packed-switch v0, :pswitch_data_17

    .line 594
    :goto_30
    move v0, v9

    .line 595
    goto :goto_31

    .line 596
    :pswitch_38
    move v0, v8

    .line 597
    goto :goto_32

    .line 598
    :cond_2e
    if-ne v2, v12, :cond_2f

    .line 600
    packed-switch v0, :pswitch_data_18

    .line 603
    goto :goto_30

    .line 604
    :cond_2f
    if-ne v2, v10, :cond_30

    .line 606
    packed-switch v0, :pswitch_data_19

    .line 609
    goto :goto_30

    .line 610
    :cond_30
    move v0, v11

    .line 611
    :goto_31
    move v8, v0

    .line 612
    :goto_32
    filled-new-array {v0, v8}, [I

    .line 615
    move-result-object v0

    .line 616
    goto/16 :goto_4e

    .line 618
    :cond_31
    const/4 v5, 0x6

    .line 619
    if-ne v0, v7, :cond_3d

    .line 621
    const/16 v0, 0xc

    .line 623
    const/16 v3, 0x10

    .line 625
    const/16 v4, 0x1a

    .line 627
    const/16 v13, 0x29

    .line 629
    const/16 v18, 0x20

    .line 631
    if-ne v1, v12, :cond_35

    .line 633
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 636
    move-result v1

    .line 637
    if-nez v2, :cond_32

    .line 639
    packed-switch v1, :pswitch_data_1a

    .line 642
    goto :goto_33

    .line 643
    :pswitch_39
    move v0, v12

    .line 644
    goto :goto_34

    .line 645
    :cond_32
    if-ne v2, v12, :cond_33

    .line 647
    :goto_33
    move v0, v9

    .line 648
    :goto_34
    move v1, v0

    .line 649
    goto :goto_37

    .line 650
    :cond_33
    if-ne v2, v10, :cond_34

    .line 652
    packed-switch v1, :pswitch_data_1b

    .line 655
    move v14, v9

    .line 656
    move v15, v14

    .line 657
    goto :goto_36

    .line 658
    :pswitch_3a
    const/16 v15, 0x76

    .line 660
    goto :goto_36

    .line 661
    :pswitch_3b
    const/16 v15, 0x66

    .line 663
    move v14, v13

    .line 664
    goto :goto_36

    .line 665
    :pswitch_3c
    const/16 v15, 0x53

    .line 667
    move/from16 v14, v18

    .line 669
    goto :goto_36

    .line 670
    :pswitch_3d
    move v14, v9

    .line 671
    move v15, v13

    .line 672
    goto :goto_36

    .line 673
    :pswitch_3e
    move v14, v9

    .line 674
    move/from16 v15, v18

    .line 676
    goto :goto_36

    .line 677
    :pswitch_3f
    move v15, v4

    .line 678
    :goto_35
    :pswitch_40
    move v14, v9

    .line 679
    goto :goto_36

    .line 680
    :pswitch_41
    move v15, v3

    .line 681
    goto :goto_35

    .line 682
    :pswitch_42
    move v15, v0

    .line 683
    goto :goto_35

    .line 684
    :pswitch_43
    move v15, v5

    .line 685
    goto :goto_35

    .line 686
    :goto_36
    move v0, v14

    .line 687
    move v1, v15

    .line 688
    goto :goto_37

    .line 689
    :cond_34
    move v0, v11

    .line 690
    goto :goto_34

    .line 691
    :goto_37
    filled-new-array {v1, v0}, [I

    .line 694
    move-result-object v0

    .line 695
    goto/16 :goto_4e

    .line 697
    :cond_35
    if-ne v1, v6, :cond_39

    .line 699
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 702
    move-result v1

    .line 703
    if-nez v2, :cond_36

    .line 705
    :goto_38
    move v0, v9

    .line 706
    :goto_39
    move v1, v0

    .line 707
    goto :goto_3b

    .line 708
    :cond_36
    if-ne v2, v12, :cond_37

    .line 710
    packed-switch v1, :pswitch_data_1c

    .line 713
    goto :goto_38

    .line 714
    :pswitch_44
    move v0, v12

    .line 715
    goto :goto_39

    .line 716
    :cond_37
    if-ne v2, v10, :cond_38

    .line 718
    packed-switch v1, :pswitch_data_1d

    .line 721
    move v15, v9

    .line 722
    goto :goto_3a

    .line 723
    :pswitch_45
    const/16 v15, 0x47

    .line 725
    goto :goto_3a

    .line 726
    :pswitch_46
    const/16 v15, 0x3d

    .line 728
    goto :goto_3a

    .line 729
    :pswitch_47
    move/from16 v15, v16

    .line 731
    goto :goto_3a

    .line 732
    :pswitch_48
    move v15, v13

    .line 733
    goto :goto_3a

    .line 734
    :pswitch_49
    move/from16 v15, v18

    .line 736
    goto :goto_3a

    .line 737
    :pswitch_4a
    move v15, v4

    .line 738
    goto :goto_3a

    .line 739
    :pswitch_4b
    move v15, v3

    .line 740
    goto :goto_3a

    .line 741
    :pswitch_4c
    move v15, v0

    .line 742
    goto :goto_3a

    .line 743
    :pswitch_4d
    move v15, v5

    .line 744
    :goto_3a
    :pswitch_4e
    move v0, v9

    .line 745
    move v1, v15

    .line 746
    goto :goto_3b

    .line 747
    :cond_38
    move v0, v11

    .line 748
    goto :goto_39

    .line 749
    :goto_3b
    filled-new-array {v1, v0}, [I

    .line 752
    move-result-object v0

    .line 753
    goto/16 :goto_4e

    .line 755
    :cond_39
    if-ne v1, v7, :cond_4f

    .line 757
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 760
    move-result v0

    .line 761
    if-nez v2, :cond_3a

    .line 763
    packed-switch v0, :pswitch_data_1e

    .line 766
    move v5, v9

    .line 767
    :goto_3c
    move/from16 v17, v5

    .line 769
    goto :goto_3d

    .line 770
    :pswitch_4f
    const/16 v5, 0xfe

    .line 772
    const/16 v17, 0xfe

    .line 774
    goto :goto_3d

    .line 775
    :pswitch_50
    move v5, v8

    .line 776
    goto :goto_3c

    .line 777
    :goto_3d
    move/from16 v0, v17

    .line 779
    goto :goto_3f

    .line 780
    :cond_3a
    if-ne v2, v12, :cond_3b

    .line 782
    packed-switch v0, :pswitch_data_1f

    .line 785
    move v5, v9

    .line 786
    goto :goto_3c

    .line 787
    :pswitch_51
    move v5, v8

    .line 788
    goto :goto_3c

    .line 789
    :cond_3b
    if-ne v2, v10, :cond_3c

    .line 791
    packed-switch v0, :pswitch_data_20

    .line 794
    move v0, v9

    .line 795
    move v8, v0

    .line 796
    goto :goto_3e

    .line 797
    :pswitch_52
    move v0, v8

    .line 798
    :goto_3e
    move v5, v8

    .line 799
    goto :goto_3f

    .line 800
    :cond_3c
    move v0, v11

    .line 801
    move v5, v0

    .line 802
    :goto_3f
    filled-new-array {v0, v5}, [I

    .line 805
    move-result-object v0

    .line 806
    goto/16 :goto_4e

    .line 808
    :cond_3d
    if-ne v0, v5, :cond_50

    .line 810
    const/16 v0, 0xf0

    .line 812
    if-ne v1, v12, :cond_41

    .line 814
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 817
    move-result v1

    .line 818
    if-nez v2, :cond_3e

    .line 820
    packed-switch v1, :pswitch_data_21

    .line 823
    move v5, v9

    .line 824
    :goto_40
    move/from16 v17, v5

    .line 826
    goto :goto_41

    .line 827
    :pswitch_53
    const/16 v5, 0xfe

    .line 829
    const/16 v17, 0xfe

    .line 831
    goto :goto_41

    .line 832
    :pswitch_54
    move v5, v8

    .line 833
    goto :goto_40

    .line 834
    :goto_41
    move/from16 v13, v17

    .line 836
    goto :goto_45

    .line 837
    :cond_3e
    if-ne v2, v12, :cond_3f

    .line 839
    packed-switch v1, :pswitch_data_22

    .line 842
    move v5, v9

    .line 843
    move v8, v5

    .line 844
    goto :goto_42

    .line 845
    :pswitch_55
    move v5, v8

    .line 846
    goto :goto_42

    .line 847
    :pswitch_56
    const/16 v5, 0xfe

    .line 849
    :goto_42
    move v13, v5

    .line 850
    :goto_43
    move v5, v8

    .line 851
    goto :goto_45

    .line 852
    :cond_3f
    if-ne v2, v10, :cond_40

    .line 854
    packed-switch v1, :pswitch_data_23

    .line 857
    move v8, v9

    .line 858
    :goto_44
    :pswitch_57
    move v13, v8

    .line 859
    goto :goto_43

    .line 860
    :pswitch_58
    const/16 v8, 0xb6

    .line 862
    goto :goto_44

    .line 863
    :pswitch_59
    move v8, v13

    .line 864
    goto :goto_43

    .line 865
    :pswitch_5a
    const/16 v8, 0xdf

    .line 867
    goto :goto_44

    .line 868
    :pswitch_5b
    move v8, v0

    .line 869
    goto :goto_44

    .line 870
    :cond_40
    move v5, v11

    .line 871
    move v13, v5

    .line 872
    :goto_45
    filled-new-array {v13, v5}, [I

    .line 875
    move-result-object v0

    .line 876
    goto/16 :goto_4e

    .line 878
    :cond_41
    if-ne v1, v6, :cond_4b

    .line 880
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 883
    move-result v0

    .line 884
    if-nez v2, :cond_43

    .line 886
    if-eq v0, v3, :cond_42

    .line 888
    const/16 v1, 0x8

    .line 890
    if-eq v0, v1, :cond_42

    .line 892
    move v0, v9

    .line 893
    goto :goto_46

    .line 894
    :cond_42
    move v0, v12

    .line 895
    :goto_46
    move v1, v9

    .line 896
    goto :goto_49

    .line 897
    :cond_43
    if-ne v2, v12, :cond_44

    .line 899
    packed-switch v0, :pswitch_data_24

    .line 902
    move v0, v9

    .line 903
    goto :goto_48

    .line 904
    :pswitch_5c
    move v0, v12

    .line 905
    goto :goto_48

    .line 906
    :cond_44
    if-ne v2, v10, :cond_4a

    .line 908
    if-eq v0, v12, :cond_48

    .line 910
    if-eq v0, v10, :cond_47

    .line 912
    if-eq v0, v6, :cond_46

    .line 914
    if-eq v0, v4, :cond_45

    .line 916
    if-eq v0, v7, :cond_49

    .line 918
    move v4, v9

    .line 919
    goto :goto_47

    .line 920
    :cond_45
    const/16 v4, 0xa

    .line 922
    goto :goto_47

    .line 923
    :cond_46
    const/16 v4, 0xd

    .line 925
    goto :goto_47

    .line 926
    :cond_47
    const/16 v4, 0xb

    .line 928
    goto :goto_47

    .line 929
    :cond_48
    move v4, v7

    .line 930
    :cond_49
    :goto_47
    move v1, v4

    .line 931
    move v0, v9

    .line 932
    goto :goto_49

    .line 933
    :cond_4a
    move v0, v11

    .line 934
    :goto_48
    move v1, v0

    .line 935
    :goto_49
    filled-new-array {v1, v0}, [I

    .line 938
    move-result-object v0

    .line 939
    goto/16 :goto_4e

    .line 941
    :cond_4b
    if-ne v1, v7, :cond_4f

    .line 943
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 946
    move-result v1

    .line 947
    const/16 v3, 0xee

    .line 949
    const/16 v4, 0xda

    .line 951
    const/16 v5, 0xe2

    .line 953
    const/16 v6, 0xbe

    .line 955
    const/16 v7, 0xb3

    .line 957
    const/16 v14, 0xa9

    .line 959
    const/16 v15, 0xa1

    .line 961
    const/16 v16, 0xf6

    .line 963
    const/16 v17, 0x98

    .line 965
    const/16 v18, 0xfa

    .line 967
    const/16 v19, 0x90

    .line 969
    const/16 v20, 0xfc

    .line 971
    const/16 v21, 0x8a

    .line 973
    const/16 v22, 0xea

    .line 975
    const/16 v23, 0xe4

    .line 977
    if-nez v2, :cond_4c

    .line 979
    packed-switch v1, :pswitch_data_25

    .line 982
    move v8, v9

    .line 983
    :goto_4a
    :pswitch_5d
    move/from16 v23, v8

    .line 985
    goto :goto_4b

    .line 986
    :pswitch_5e
    move/from16 v23, v20

    .line 988
    move/from16 v8, v21

    .line 990
    goto :goto_4b

    .line 991
    :pswitch_5f
    move/from16 v23, v18

    .line 993
    move/from16 v8, v19

    .line 995
    goto :goto_4b

    .line 996
    :pswitch_60
    move/from16 v23, v16

    .line 998
    move/from16 v8, v17

    .line 1000
    goto :goto_4b

    .line 1001
    :pswitch_61
    move/from16 v23, v0

    .line 1003
    move v8, v15

    .line 1004
    goto :goto_4b

    .line 1005
    :pswitch_62
    move v8, v14

    .line 1006
    move/from16 v23, v22

    .line 1008
    goto :goto_4b

    .line 1009
    :pswitch_63
    move v8, v7

    .line 1010
    goto :goto_4b

    .line 1011
    :pswitch_64
    move v8, v6

    .line 1012
    goto :goto_4b

    .line 1013
    :pswitch_65
    move/from16 v23, v5

    .line 1015
    move v8, v13

    .line 1016
    goto :goto_4b

    .line 1017
    :pswitch_66
    move v8, v4

    .line 1018
    goto :goto_4b

    .line 1019
    :pswitch_67
    move/from16 v23, v3

    .line 1021
    move/from16 v8, v22

    .line 1023
    :goto_4b
    move/from16 v0, v23

    .line 1025
    goto :goto_4d

    .line 1026
    :cond_4c
    if-ne v2, v12, :cond_4d

    .line 1028
    packed-switch v1, :pswitch_data_26

    .line 1031
    move v8, v9

    .line 1032
    goto :goto_4a

    .line 1033
    :cond_4d
    if-ne v2, v10, :cond_4e

    .line 1035
    packed-switch v1, :pswitch_data_27

    .line 1038
    move v0, v9

    .line 1039
    goto :goto_4c

    .line 1040
    :pswitch_68
    move v0, v8

    .line 1041
    goto :goto_4d

    .line 1042
    :cond_4e
    move v0, v11

    .line 1043
    :goto_4c
    move v8, v0

    .line 1044
    :goto_4d
    filled-new-array {v0, v8}, [I

    .line 1047
    move-result-object v0

    .line 1048
    goto :goto_4e

    .line 1049
    :cond_4f
    const/4 v0, 0x0

    .line 1050
    goto :goto_4e

    .line 1051
    :cond_50
    new-array v0, v10, [I

    .line 1053
    aput v11, v0, v9

    .line 1055
    aput v11, v0, v12

    .line 1057
    :goto_4e
    if-eqz v0, :cond_52

    .line 1059
    aget v1, v0, v9

    .line 1061
    if-ne v1, v11, :cond_51

    .line 1063
    aget v2, v0, v12

    .line 1065
    if-ne v2, v11, :cond_51

    .line 1067
    goto :goto_4f

    .line 1068
    :cond_51
    aget v2, v0, v12

    .line 1070
    sub-int/2addr v1, v2

    .line 1071
    invoke-static/range {p5 .. p6}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 1074
    move-result v2

    .line 1075
    int-to-double v3, v1

    .line 1076
    int-to-double v1, v2

    .line 1077
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 1079
    div-double/2addr v1, v5

    .line 1080
    mul-double/2addr v1, v3

    .line 1081
    aget v0, v0, v12

    .line 1083
    int-to-double v3, v0

    .line 1084
    add-double/2addr v1, v3

    .line 1085
    double-to-int v0, v1

    .line 1086
    return v0

    .line 1087
    :cond_52
    :goto_4f
    return v11

    .line 1088
    nop

    .line 1089
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1115
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1141
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1167
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 1191
    :pswitch_data_4
    .packed-switch 0x1
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
    .end packed-switch

    .line 1215
    :pswitch_data_5
    .packed-switch 0x1
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
    .end packed-switch

    .line 1239
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 1265
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 1291
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 1317
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    .line 1343
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    .line 1369
    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    .line 1395
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    .line 1419
    :pswitch_data_d
    .packed-switch 0x5
        :pswitch_19
        :pswitch_1c
        :pswitch_1b
        :pswitch_17
        :pswitch_1a
        :pswitch_18
    .end packed-switch

    .line 1435
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    .line 1461
    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    .line 1487
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    .line 1513
    :pswitch_data_11
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_22
        :pswitch_20
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_21
    .end packed-switch

    .line 1537
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_33
        :pswitch_2c
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2b
    .end packed-switch

    .line 1561
    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch

    .line 1585
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    .line 1611
    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch

    .line 1637
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    .line 1663
    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    .line 1689
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    .line 1715
    :pswitch_data_19
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    .line 1741
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch

    .line 1765
    :pswitch_data_1b
    .packed-switch 0x1
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    .line 1789
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch

    .line 1813
    :pswitch_data_1d
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4e
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch

    .line 1837
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch

    .line 1863
    :pswitch_data_1f
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch

    .line 1889
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
    .end packed-switch

    .line 1915
    :pswitch_data_21
    .packed-switch 0x0
        :pswitch_54
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    .line 1941
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_55
        :pswitch_56
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
    .end packed-switch

    .line 1967
    :pswitch_data_23
    .packed-switch 0x0
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
    .end packed-switch

    .line 1993
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
    .end packed-switch

    .line 2017
    :pswitch_data_25
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    .line 2043
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    .line 2069
    :pswitch_data_27
    .packed-switch 0x0
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
    .end packed-switch
.end method

.method public static getColorTransferValue_Hybrid(IIIDD)I
    .locals 32

    .line 1
    move/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    const/16 v7, 0xef

    .line 9
    const/4 v9, 0x7

    .line 10
    const/16 v10, 0xd8

    .line 12
    const/16 v11, 0xfe

    .line 14
    const/4 v12, 0x5

    .line 15
    const/16 v13, 0xff

    .line 17
    const/16 v14, 0xcc

    .line 19
    const/4 v15, 0x3

    .line 20
    const/16 v16, 0x0

    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, -0x1

    .line 24
    const/4 v5, 0x1

    .line 25
    if-ne v0, v5, :cond_c

    .line 27
    if-ne v1, v5, :cond_3

    .line 29
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 32
    move-result v0

    .line 33
    if-nez v2, :cond_0

    .line 35
    packed-switch v0, :pswitch_data_0

    .line 38
    move/from16 v7, v16

    .line 40
    goto :goto_3

    .line 41
    :pswitch_0
    move v7, v11

    .line 42
    goto :goto_4

    .line 43
    :pswitch_1
    move v7, v13

    .line 44
    goto :goto_3

    .line 45
    :cond_0
    if-ne v2, v5, :cond_1

    .line 47
    packed-switch v0, :pswitch_data_1

    .line 50
    move/from16 v6, v16

    .line 52
    :goto_0
    move v11, v6

    .line 53
    goto :goto_1

    .line 54
    :pswitch_2
    move v6, v13

    .line 55
    goto :goto_1

    .line 56
    :pswitch_3
    move v6, v11

    .line 57
    goto :goto_1

    .line 58
    :pswitch_4
    move v6, v13

    .line 59
    move v11, v14

    .line 60
    goto :goto_1

    .line 61
    :pswitch_5
    move v11, v14

    .line 62
    const/16 v6, 0xee

    .line 64
    goto :goto_1

    .line 65
    :pswitch_6
    move v6, v13

    .line 66
    goto :goto_0

    .line 67
    :goto_1
    move v7, v6

    .line 68
    goto :goto_4

    .line 69
    :cond_1
    if-ne v2, v3, :cond_2

    .line 71
    const/16 v1, 0xe2

    .line 73
    packed-switch v0, :pswitch_data_2

    .line 76
    move/from16 v13, v16

    .line 78
    :pswitch_7
    move v14, v13

    .line 79
    goto :goto_2

    .line 80
    :pswitch_8
    move v13, v1

    .line 81
    goto :goto_2

    .line 82
    :pswitch_9
    const/16 v13, 0xe4

    .line 84
    goto :goto_2

    .line 85
    :pswitch_a
    const/16 v13, 0xdc

    .line 87
    :goto_2
    :pswitch_b
    move v7, v13

    .line 88
    :pswitch_c
    move v11, v14

    .line 89
    goto :goto_4

    .line 90
    :cond_2
    move v7, v4

    .line 91
    :goto_3
    move v11, v7

    .line 92
    :goto_4
    filled-new-array {v7, v11}, [I

    .line 95
    move-result-object v0

    .line 96
    goto/16 :goto_5e

    .line 98
    :cond_3
    if-ne v1, v15, :cond_8

    .line 100
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 103
    move-result v0

    .line 104
    if-nez v2, :cond_5

    .line 106
    if-eq v0, v9, :cond_4

    .line 108
    move/from16 v0, v16

    .line 110
    goto :goto_5

    .line 111
    :cond_4
    move v0, v5

    .line 112
    :goto_5
    move/from16 v1, v16

    .line 114
    goto :goto_8

    .line 115
    :cond_5
    if-ne v2, v5, :cond_6

    .line 117
    packed-switch v0, :pswitch_data_3

    .line 120
    goto :goto_6

    .line 121
    :pswitch_d
    move v0, v5

    .line 122
    goto :goto_7

    .line 123
    :cond_6
    if-ne v2, v3, :cond_7

    .line 125
    :goto_6
    move/from16 v0, v16

    .line 127
    :goto_7
    move v1, v0

    .line 128
    goto :goto_8

    .line 129
    :cond_7
    move v0, v4

    .line 130
    goto :goto_7

    .line 131
    :goto_8
    filled-new-array {v0, v1}, [I

    .line 134
    move-result-object v0

    .line 135
    goto/16 :goto_5e

    .line 137
    :cond_8
    if-ne v1, v12, :cond_51

    .line 139
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 142
    move-result v0

    .line 143
    const/16 v1, 0x9c

    .line 145
    const/16 v6, 0xac

    .line 147
    if-nez v2, :cond_9

    .line 149
    packed-switch v0, :pswitch_data_4

    .line 152
    :goto_9
    move/from16 v3, v16

    .line 154
    goto :goto_a

    .line 155
    :pswitch_e
    move v3, v10

    .line 156
    goto :goto_a

    .line 157
    :pswitch_f
    const/16 v3, 0xca

    .line 159
    goto :goto_a

    .line 160
    :pswitch_10
    const/16 v3, 0xbc

    .line 162
    goto :goto_a

    .line 163
    :pswitch_11
    move v3, v6

    .line 164
    goto :goto_a

    .line 165
    :pswitch_12
    move v3, v1

    .line 166
    goto :goto_a

    .line 167
    :pswitch_13
    move v3, v5

    .line 168
    :goto_a
    :pswitch_14
    move/from16 v0, v16

    .line 170
    goto :goto_c

    .line 171
    :cond_9
    if-ne v2, v5, :cond_a

    .line 173
    packed-switch v0, :pswitch_data_5

    .line 176
    goto :goto_9

    .line 177
    :pswitch_15
    move v3, v15

    .line 178
    goto :goto_a

    .line 179
    :cond_a
    if-ne v2, v3, :cond_b

    .line 181
    move/from16 v0, v16

    .line 183
    :goto_b
    move v3, v0

    .line 184
    goto :goto_c

    .line 185
    :cond_b
    move v0, v4

    .line 186
    goto :goto_b

    .line 187
    :goto_c
    filled-new-array {v3, v0}, [I

    .line 190
    move-result-object v0

    .line 191
    goto/16 :goto_5e

    .line 193
    :cond_c
    const/16 v19, 0xd4

    .line 195
    const/16 v20, 0xd0

    .line 197
    const/16 v21, 0xd1

    .line 199
    const/16 v22, 0xd3

    .line 201
    const/16 v23, 0xd2

    .line 203
    const/16 v24, 0xcf

    .line 205
    const/4 v6, 0x4

    .line 206
    if-ne v0, v3, :cond_1a

    .line 208
    if-ne v1, v5, :cond_10

    .line 210
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 213
    move-result v0

    .line 214
    const/16 v1, 0xc2

    .line 216
    if-nez v2, :cond_d

    .line 218
    packed-switch v0, :pswitch_data_6

    .line 221
    move/from16 v3, v16

    .line 223
    goto/16 :goto_13

    .line 225
    :pswitch_16
    move v3, v11

    .line 226
    goto/16 :goto_14

    .line 228
    :pswitch_17
    const/16 v3, 0xa4

    .line 230
    :goto_d
    move v11, v14

    .line 231
    goto/16 :goto_14

    .line 233
    :pswitch_18
    const/16 v3, 0xad

    .line 235
    goto :goto_d

    .line 236
    :pswitch_19
    const/16 v3, 0xb5

    .line 238
    goto :goto_d

    .line 239
    :pswitch_1a
    move v11, v14

    .line 240
    const/16 v3, 0xbc

    .line 242
    goto/16 :goto_14

    .line 244
    :pswitch_1b
    move v3, v1

    .line 245
    goto :goto_d

    .line 246
    :pswitch_1c
    move v3, v13

    .line 247
    goto :goto_13

    .line 248
    :cond_d
    if-ne v2, v5, :cond_e

    .line 250
    packed-switch v0, :pswitch_data_7

    .line 253
    move/from16 v0, v16

    .line 255
    move v13, v0

    .line 256
    goto :goto_f

    .line 257
    :pswitch_1d
    move v0, v13

    .line 258
    goto :goto_f

    .line 259
    :pswitch_1e
    const/16 v13, 0xa2

    .line 261
    :goto_e
    move v0, v13

    .line 262
    move v13, v14

    .line 263
    goto :goto_f

    .line 264
    :pswitch_1f
    const/16 v13, 0xab

    .line 266
    goto :goto_e

    .line 267
    :pswitch_20
    const/16 v13, 0xb3

    .line 269
    goto :goto_e

    .line 270
    :pswitch_21
    const/16 v13, 0xba

    .line 272
    goto :goto_e

    .line 273
    :pswitch_22
    const/16 v13, 0xc0

    .line 275
    goto :goto_e

    .line 276
    :goto_f
    move v3, v0

    .line 277
    :goto_10
    move v11, v13

    .line 278
    goto :goto_14

    .line 279
    :cond_e
    if-ne v2, v3, :cond_f

    .line 281
    packed-switch v0, :pswitch_data_8

    .line 284
    move/from16 v1, v16

    .line 286
    move v13, v1

    .line 287
    goto :goto_12

    .line 288
    :pswitch_23
    move v1, v13

    .line 289
    goto :goto_12

    .line 290
    :pswitch_24
    const/16 v13, 0xc1

    .line 292
    :goto_11
    move v1, v13

    .line 293
    :pswitch_25
    move v13, v14

    .line 294
    goto :goto_12

    .line 295
    :pswitch_26
    const/16 v13, 0xc3

    .line 297
    goto :goto_11

    .line 298
    :pswitch_27
    const/16 v13, 0xc5

    .line 300
    goto :goto_11

    .line 301
    :pswitch_28
    const/16 v13, 0xc7

    .line 303
    goto :goto_11

    .line 304
    :goto_12
    move v3, v1

    .line 305
    goto :goto_10

    .line 306
    :cond_f
    move v3, v4

    .line 307
    :goto_13
    move v11, v3

    .line 308
    :goto_14
    filled-new-array {v3, v11}, [I

    .line 311
    move-result-object v0

    .line 312
    goto/16 :goto_5e

    .line 314
    :cond_10
    if-ne v1, v15, :cond_14

    .line 316
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 319
    move-result v0

    .line 320
    const/16 v1, 0xd5

    .line 322
    if-nez v2, :cond_11

    .line 324
    packed-switch v0, :pswitch_data_9

    .line 327
    move/from16 v10, v16

    .line 329
    goto/16 :goto_1a

    .line 331
    :pswitch_29
    move v10, v13

    .line 332
    goto/16 :goto_1b

    .line 334
    :goto_15
    :pswitch_2a
    move v13, v14

    .line 335
    goto/16 :goto_1b

    .line 337
    :pswitch_2b
    move v10, v1

    .line 338
    goto :goto_15

    .line 339
    :pswitch_2c
    move v13, v14

    .line 340
    move/from16 v10, v22

    .line 342
    goto/16 :goto_1b

    .line 344
    :pswitch_2d
    move v13, v14

    .line 345
    move/from16 v10, v21

    .line 347
    goto/16 :goto_1b

    .line 349
    :pswitch_2e
    move v13, v14

    .line 350
    goto :goto_19

    .line 351
    :cond_11
    if-ne v2, v5, :cond_12

    .line 353
    packed-switch v0, :pswitch_data_a

    .line 356
    move/from16 v10, v16

    .line 358
    :goto_16
    move v11, v10

    .line 359
    goto :goto_18

    .line 360
    :pswitch_2f
    move v10, v11

    .line 361
    goto :goto_18

    .line 362
    :goto_17
    :pswitch_30
    move v11, v14

    .line 363
    goto :goto_18

    .line 364
    :pswitch_31
    move v10, v1

    .line 365
    goto :goto_17

    .line 366
    :pswitch_32
    move v11, v14

    .line 367
    move/from16 v10, v22

    .line 369
    goto :goto_18

    .line 370
    :pswitch_33
    move v11, v14

    .line 371
    move/from16 v10, v20

    .line 373
    goto :goto_18

    .line 374
    :pswitch_34
    move v11, v14

    .line 375
    move/from16 v10, v24

    .line 377
    goto :goto_18

    .line 378
    :pswitch_35
    move v10, v13

    .line 379
    goto :goto_16

    .line 380
    :goto_18
    move v13, v11

    .line 381
    goto :goto_1b

    .line 382
    :cond_12
    if-ne v2, v3, :cond_13

    .line 384
    packed-switch v0, :pswitch_data_b

    .line 387
    move/from16 v13, v16

    .line 389
    :pswitch_36
    move/from16 v24, v13

    .line 391
    goto :goto_19

    .line 392
    :pswitch_37
    move v13, v14

    .line 393
    move/from16 v24, v19

    .line 395
    goto :goto_19

    .line 396
    :pswitch_38
    move v13, v14

    .line 397
    move/from16 v24, v22

    .line 399
    goto :goto_19

    .line 400
    :pswitch_39
    move v13, v14

    .line 401
    move/from16 v24, v23

    .line 403
    goto :goto_19

    .line 404
    :pswitch_3a
    move v13, v14

    .line 405
    move/from16 v24, v20

    .line 407
    :goto_19
    move/from16 v10, v24

    .line 409
    goto :goto_1b

    .line 410
    :cond_13
    move v10, v4

    .line 411
    :goto_1a
    move v13, v10

    .line 412
    :goto_1b
    filled-new-array {v10, v13}, [I

    .line 415
    move-result-object v0

    .line 416
    goto/16 :goto_5e

    .line 418
    :cond_14
    if-ne v1, v12, :cond_51

    .line 420
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 423
    move-result v0

    .line 424
    if-nez v2, :cond_17

    .line 426
    if-eq v0, v3, :cond_15

    .line 428
    if-eq v0, v15, :cond_15

    .line 430
    if-eq v0, v6, :cond_16

    .line 432
    if-eq v0, v12, :cond_16

    .line 434
    move/from16 v3, v16

    .line 436
    goto :goto_1c

    .line 437
    :cond_15
    move v3, v5

    .line 438
    :cond_16
    :goto_1c
    move/from16 v0, v16

    .line 440
    goto :goto_1f

    .line 441
    :cond_17
    if-ne v2, v5, :cond_18

    .line 443
    :goto_1d
    move/from16 v0, v16

    .line 445
    :goto_1e
    move v3, v0

    .line 446
    goto :goto_1f

    .line 447
    :cond_18
    if-ne v2, v3, :cond_19

    .line 449
    goto :goto_1d

    .line 450
    :cond_19
    move v0, v4

    .line 451
    goto :goto_1e

    .line 452
    :goto_1f
    filled-new-array {v3, v0}, [I

    .line 455
    move-result-object v0

    .line 456
    goto/16 :goto_5e

    .line 458
    :cond_1a
    const/16 v17, 0xd7

    .line 460
    const/16 v25, 0xda

    .line 462
    const/16 v26, 0xeb

    .line 464
    const/16 v27, 0x33

    .line 466
    if-ne v0, v15, :cond_27

    .line 468
    const/16 v0, 0x49

    .line 470
    if-ne v1, v5, :cond_1f

    .line 472
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 475
    move-result v1

    .line 476
    if-nez v2, :cond_1c

    .line 478
    packed-switch v1, :pswitch_data_c

    .line 481
    :goto_20
    move/from16 v0, v16

    .line 483
    goto :goto_23

    .line 484
    :cond_1b
    :pswitch_3b
    move v0, v5

    .line 485
    goto :goto_23

    .line 486
    :cond_1c
    if-ne v2, v5, :cond_1d

    .line 488
    if-eq v1, v9, :cond_1b

    .line 490
    goto :goto_20

    .line 491
    :cond_1d
    if-ne v2, v3, :cond_1e

    .line 493
    packed-switch v1, :pswitch_data_d

    .line 496
    move/from16 v0, v16

    .line 498
    :pswitch_3c
    move/from16 v27, v0

    .line 500
    goto :goto_22

    .line 501
    :pswitch_3d
    const/16 v27, 0x51

    .line 503
    :goto_21
    :pswitch_3e
    move/from16 v0, v27

    .line 505
    goto :goto_22

    .line 506
    :pswitch_3f
    const/16 v27, 0x3f

    .line 508
    goto :goto_21

    .line 509
    :pswitch_40
    const/16 v27, 0x26

    .line 511
    goto :goto_21

    .line 512
    :goto_22
    move v1, v0

    .line 513
    move/from16 v0, v27

    .line 515
    goto :goto_24

    .line 516
    :cond_1e
    move v0, v4

    .line 517
    :goto_23
    move v1, v0

    .line 518
    :goto_24
    filled-new-array {v1, v0}, [I

    .line 521
    move-result-object v0

    .line 522
    goto/16 :goto_5e

    .line 524
    :cond_1f
    if-ne v1, v15, :cond_23

    .line 526
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 529
    move-result v0

    .line 530
    if-nez v2, :cond_20

    .line 532
    packed-switch v0, :pswitch_data_e

    .line 535
    move/from16 v11, v16

    .line 537
    goto/16 :goto_2a

    .line 539
    :pswitch_41
    move v11, v13

    .line 540
    goto/16 :goto_2b

    .line 542
    :pswitch_42
    const/16 v11, 0xf3

    .line 544
    goto :goto_27

    .line 545
    :pswitch_43
    move v11, v14

    .line 546
    move/from16 v13, v26

    .line 548
    goto/16 :goto_2b

    .line 550
    :pswitch_44
    const/16 v11, 0xe3

    .line 552
    goto :goto_27

    .line 553
    :pswitch_45
    const/16 v11, 0xdd

    .line 555
    goto :goto_27

    .line 556
    :pswitch_46
    const/16 v11, 0xd6

    .line 558
    goto :goto_27

    .line 559
    :cond_20
    if-ne v2, v5, :cond_21

    .line 561
    packed-switch v0, :pswitch_data_f

    .line 564
    move/from16 v11, v16

    .line 566
    :goto_25
    :pswitch_47
    move v14, v11

    .line 567
    goto :goto_27

    .line 568
    :pswitch_48
    move v11, v13

    .line 569
    goto :goto_27

    .line 570
    :pswitch_49
    const/16 v0, 0xfb

    .line 572
    :goto_26
    move v11, v0

    .line 573
    goto :goto_27

    .line 574
    :pswitch_4a
    move v11, v7

    .line 575
    goto :goto_27

    .line 576
    :pswitch_4b
    const/16 v0, 0xe5

    .line 578
    goto :goto_26

    .line 579
    :pswitch_4c
    const/16 v11, 0xdc

    .line 581
    goto :goto_27

    .line 582
    :pswitch_4d
    move v11, v13

    .line 583
    goto :goto_25

    .line 584
    :goto_27
    move v13, v11

    .line 585
    move v11, v14

    .line 586
    goto :goto_2b

    .line 587
    :cond_21
    if-ne v2, v3, :cond_22

    .line 589
    packed-switch v0, :pswitch_data_10

    .line 592
    move/from16 v13, v16

    .line 594
    :pswitch_4e
    move/from16 v25, v13

    .line 596
    goto :goto_29

    .line 597
    :goto_28
    :pswitch_4f
    move v13, v14

    .line 598
    goto :goto_29

    .line 599
    :pswitch_50
    const/16 v13, 0xd9

    .line 601
    move/from16 v25, v13

    .line 603
    goto :goto_28

    .line 604
    :pswitch_51
    move v13, v14

    .line 605
    move/from16 v25, v17

    .line 607
    goto :goto_29

    .line 608
    :pswitch_52
    move v13, v14

    .line 609
    move/from16 v25, v19

    .line 611
    :goto_29
    move v11, v13

    .line 612
    move/from16 v13, v25

    .line 614
    goto :goto_2b

    .line 615
    :cond_22
    move v11, v4

    .line 616
    :goto_2a
    :pswitch_53
    move v13, v11

    .line 617
    :goto_2b
    filled-new-array {v13, v11}, [I

    .line 620
    move-result-object v0

    .line 621
    goto/16 :goto_5e

    .line 623
    :cond_23
    if-ne v1, v12, :cond_51

    .line 625
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 628
    move-result v1

    .line 629
    const/16 v6, 0x55

    .line 631
    if-nez v2, :cond_24

    .line 633
    packed-switch v1, :pswitch_data_11

    .line 636
    goto :goto_2f

    .line 637
    :pswitch_54
    const/16 v6, 0x73

    .line 639
    :goto_2c
    :pswitch_55
    move v0, v6

    .line 640
    goto :goto_31

    .line 641
    :pswitch_56
    const/16 v6, 0x6d

    .line 643
    goto :goto_2c

    .line 644
    :pswitch_57
    const/16 v6, 0x67

    .line 646
    goto :goto_2c

    .line 647
    :pswitch_58
    const/16 v6, 0x5d

    .line 649
    goto :goto_2c

    .line 650
    :cond_24
    if-ne v2, v5, :cond_25

    .line 652
    packed-switch v1, :pswitch_data_12

    .line 655
    move/from16 v0, v16

    .line 657
    :goto_2d
    :pswitch_59
    move v6, v0

    .line 658
    goto :goto_2e

    .line 659
    :pswitch_5a
    const/16 v0, 0x5e

    .line 661
    goto :goto_2d

    .line 662
    :pswitch_5b
    const/16 v0, 0x59

    .line 664
    goto :goto_2d

    .line 665
    :pswitch_5c
    move v0, v6

    .line 666
    goto :goto_2e

    .line 667
    :pswitch_5d
    const/16 v0, 0x4f

    .line 669
    goto :goto_2d

    .line 670
    :goto_2e
    move/from16 v31, v6

    .line 672
    move v6, v0

    .line 673
    move/from16 v0, v31

    .line 675
    goto :goto_31

    .line 676
    :cond_25
    if-ne v2, v3, :cond_26

    .line 678
    :goto_2f
    move/from16 v0, v16

    .line 680
    :goto_30
    move v6, v0

    .line 681
    goto :goto_31

    .line 682
    :cond_26
    move v0, v4

    .line 683
    goto :goto_30

    .line 684
    :goto_31
    filled-new-array {v0, v6}, [I

    .line 687
    move-result-object v0

    .line 688
    goto/16 :goto_5e

    .line 690
    :cond_27
    const/16 v18, 0xe8

    .line 692
    const/16 v19, 0xcd

    .line 694
    const/16 v28, 0xce

    .line 696
    const/16 v29, 0xcb

    .line 698
    const/16 v30, 0xe1

    .line 700
    if-ne v0, v6, :cond_33

    .line 702
    if-ne v1, v5, :cond_2b

    .line 704
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 707
    move-result v0

    .line 708
    if-nez v2, :cond_28

    .line 710
    packed-switch v0, :pswitch_data_13

    .line 713
    goto :goto_32

    .line 714
    :pswitch_5e
    move v0, v5

    .line 715
    goto :goto_33

    .line 716
    :cond_28
    if-ne v2, v5, :cond_29

    .line 718
    :goto_32
    move/from16 v0, v16

    .line 720
    :goto_33
    move v1, v0

    .line 721
    goto :goto_34

    .line 722
    :cond_29
    if-ne v2, v3, :cond_2a

    .line 724
    goto :goto_32

    .line 725
    :cond_2a
    move v0, v4

    .line 726
    goto :goto_33

    .line 727
    :goto_34
    filled-new-array {v1, v0}, [I

    .line 730
    move-result-object v0

    .line 731
    goto/16 :goto_5e

    .line 733
    :cond_2b
    if-ne v1, v15, :cond_2f

    .line 735
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 738
    move-result v0

    .line 739
    if-nez v2, :cond_2c

    .line 741
    const/16 v1, 0xe6

    .line 743
    packed-switch v0, :pswitch_data_14

    .line 746
    move/from16 v1, v16

    .line 748
    goto/16 :goto_39

    .line 750
    :pswitch_5f
    move v1, v13

    .line 751
    goto/16 :goto_3a

    .line 753
    :pswitch_60
    move/from16 v13, v24

    .line 755
    goto/16 :goto_3a

    .line 757
    :pswitch_61
    move v13, v14

    .line 758
    goto/16 :goto_3a

    .line 760
    :pswitch_62
    move v13, v14

    .line 761
    move/from16 v1, v30

    .line 763
    goto :goto_3a

    .line 764
    :pswitch_63
    move v13, v14

    .line 765
    move/from16 v1, v17

    .line 767
    goto :goto_3a

    .line 768
    :pswitch_64
    move v13, v14

    .line 769
    goto :goto_38

    .line 770
    :cond_2c
    if-ne v2, v5, :cond_2d

    .line 772
    packed-switch v0, :pswitch_data_15

    .line 775
    move/from16 v10, v16

    .line 777
    :goto_35
    move v11, v10

    .line 778
    goto :goto_37

    .line 779
    :pswitch_65
    move v10, v11

    .line 780
    goto :goto_37

    .line 781
    :pswitch_66
    const/16 v10, 0xfd

    .line 783
    :goto_36
    :pswitch_67
    move v11, v14

    .line 784
    goto :goto_37

    .line 785
    :pswitch_68
    const/16 v10, 0xf2

    .line 787
    goto :goto_36

    .line 788
    :pswitch_69
    move v11, v14

    .line 789
    move/from16 v10, v18

    .line 791
    goto :goto_37

    .line 792
    :pswitch_6a
    const/16 v10, 0xe0

    .line 794
    goto :goto_36

    .line 795
    :pswitch_6b
    move v10, v13

    .line 796
    goto :goto_35

    .line 797
    :goto_37
    move v1, v10

    .line 798
    move v13, v11

    .line 799
    goto :goto_3a

    .line 800
    :cond_2d
    if-ne v2, v3, :cond_2e

    .line 802
    packed-switch v0, :pswitch_data_16

    .line 805
    move/from16 v13, v16

    .line 807
    :pswitch_6c
    move/from16 v22, v13

    .line 809
    goto :goto_38

    .line 810
    :pswitch_6d
    move v13, v14

    .line 811
    move/from16 v22, v23

    .line 813
    goto :goto_38

    .line 814
    :pswitch_6e
    move v13, v14

    .line 815
    move/from16 v22, v20

    .line 817
    :goto_38
    move/from16 v1, v22

    .line 819
    goto :goto_3a

    .line 820
    :cond_2e
    move v1, v4

    .line 821
    :goto_39
    move v13, v1

    .line 822
    :goto_3a
    filled-new-array {v1, v13}, [I

    .line 825
    move-result-object v0

    .line 826
    goto/16 :goto_5e

    .line 828
    :cond_2f
    if-ne v1, v12, :cond_51

    .line 830
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 833
    move-result v0

    .line 834
    if-nez v2, :cond_30

    .line 836
    packed-switch v0, :pswitch_data_17

    .line 839
    :goto_3b
    move/from16 v8, v16

    .line 841
    goto :goto_3d

    .line 842
    :pswitch_6f
    move v8, v13

    .line 843
    goto :goto_3e

    .line 844
    :pswitch_70
    move v13, v14

    .line 845
    const/16 v8, 0xca

    .line 847
    goto :goto_3e

    .line 848
    :pswitch_71
    move v13, v14

    .line 849
    move/from16 v8, v29

    .line 851
    goto :goto_3e

    .line 852
    :cond_30
    if-ne v2, v5, :cond_31

    .line 854
    packed-switch v0, :pswitch_data_18

    .line 857
    goto :goto_3b

    .line 858
    :pswitch_72
    const/16 v8, 0xc8

    .line 860
    move v13, v14

    .line 861
    goto :goto_3e

    .line 862
    :pswitch_73
    move v13, v14

    .line 863
    const/16 v8, 0xc9

    .line 865
    goto :goto_3e

    .line 866
    :cond_31
    if-ne v2, v3, :cond_32

    .line 868
    packed-switch v0, :pswitch_data_19

    .line 871
    move/from16 v13, v16

    .line 873
    :pswitch_74
    move/from16 v28, v13

    .line 875
    goto :goto_3c

    .line 876
    :pswitch_75
    move v13, v14

    .line 877
    goto :goto_3c

    .line 878
    :pswitch_76
    move v13, v14

    .line 879
    move/from16 v28, v19

    .line 881
    :goto_3c
    move/from16 v8, v28

    .line 883
    goto :goto_3e

    .line 884
    :cond_32
    move v8, v4

    .line 885
    :goto_3d
    move v13, v8

    .line 886
    :goto_3e
    filled-new-array {v8, v13}, [I

    .line 889
    move-result-object v0

    .line 890
    goto/16 :goto_5e

    .line 892
    :cond_33
    const/16 v17, 0xed

    .line 894
    const/4 v7, 0x6

    .line 895
    const/16 v8, 0x8

    .line 897
    if-ne v0, v12, :cond_44

    .line 899
    const/16 v0, 0x29

    .line 901
    const/16 v9, 0x20

    .line 903
    if-ne v1, v5, :cond_3c

    .line 905
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 908
    move-result v1

    .line 909
    const/16 v10, 0x9

    .line 911
    if-nez v2, :cond_34

    .line 913
    packed-switch v1, :pswitch_data_1a

    .line 916
    move/from16 v0, v16

    .line 918
    goto/16 :goto_43

    .line 920
    :pswitch_77
    move v0, v5

    .line 921
    goto/16 :goto_43

    .line 923
    :pswitch_78
    const/16 v10, 0x27

    .line 925
    goto :goto_40

    .line 926
    :pswitch_79
    const/16 v10, 0x1e

    .line 928
    goto :goto_40

    .line 929
    :pswitch_7a
    const/16 v10, 0x16

    .line 931
    goto :goto_40

    .line 932
    :pswitch_7b
    const/16 v10, 0xf

    .line 934
    goto :goto_40

    .line 935
    :cond_34
    if-ne v2, v5, :cond_3a

    .line 937
    if-eq v1, v5, :cond_38

    .line 939
    if-eq v1, v3, :cond_37

    .line 941
    if-eq v1, v15, :cond_36

    .line 943
    if-eq v1, v6, :cond_35

    .line 945
    if-eq v1, v12, :cond_39

    .line 947
    move/from16 v0, v16

    .line 949
    goto :goto_3f

    .line 950
    :cond_35
    move v0, v9

    .line 951
    goto :goto_3f

    .line 952
    :cond_36
    const/16 v0, 0x18

    .line 954
    goto :goto_3f

    .line 955
    :cond_37
    const/16 v0, 0x11

    .line 957
    goto :goto_3f

    .line 958
    :cond_38
    const/16 v0, 0xb

    .line 960
    :cond_39
    :goto_3f
    move v10, v0

    .line 961
    :goto_40
    :pswitch_7c
    move/from16 v0, v16

    .line 963
    goto :goto_44

    .line 964
    :cond_3a
    if-ne v2, v3, :cond_3b

    .line 966
    packed-switch v1, :pswitch_data_1b

    .line 969
    move/from16 v0, v16

    .line 971
    move v6, v0

    .line 972
    goto :goto_42

    .line 973
    :pswitch_7d
    const/16 v0, 0x2f

    .line 975
    const/16 v6, 0x76

    .line 977
    goto :goto_42

    .line 978
    :pswitch_7e
    const/16 v6, 0x66

    .line 980
    goto :goto_42

    .line 981
    :pswitch_7f
    const/16 v6, 0x53

    .line 983
    move v0, v9

    .line 984
    goto :goto_42

    .line 985
    :pswitch_80
    move v6, v0

    .line 986
    :goto_41
    :pswitch_81
    move/from16 v0, v16

    .line 988
    goto :goto_42

    .line 989
    :pswitch_82
    move v6, v9

    .line 990
    goto :goto_41

    .line 991
    :pswitch_83
    const/16 v6, 0xa

    .line 993
    goto :goto_41

    .line 994
    :pswitch_84
    move v6, v10

    .line 995
    goto :goto_41

    .line 996
    :pswitch_85
    move v6, v8

    .line 997
    goto :goto_41

    .line 998
    :pswitch_86
    move v6, v7

    .line 999
    goto :goto_41

    .line 1000
    :goto_42
    move v10, v6

    .line 1001
    goto :goto_44

    .line 1002
    :cond_3b
    move v0, v4

    .line 1003
    :goto_43
    move v10, v0

    .line 1004
    :goto_44
    filled-new-array {v10, v0}, [I

    .line 1007
    move-result-object v0

    .line 1008
    goto/16 :goto_5e

    .line 1010
    :cond_3c
    if-ne v1, v15, :cond_40

    .line 1012
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 1015
    move-result v1

    .line 1016
    if-nez v2, :cond_3d

    .line 1018
    :goto_45
    move/from16 v0, v16

    .line 1020
    :goto_46
    move v1, v0

    .line 1021
    goto :goto_48

    .line 1022
    :cond_3d
    if-ne v2, v5, :cond_3e

    .line 1024
    packed-switch v1, :pswitch_data_1c

    .line 1027
    goto :goto_45

    .line 1028
    :pswitch_87
    move v0, v5

    .line 1029
    goto :goto_46

    .line 1030
    :cond_3e
    if-ne v2, v3, :cond_3f

    .line 1032
    packed-switch v1, :pswitch_data_1d

    .line 1035
    move/from16 v27, v16

    .line 1037
    goto :goto_47

    .line 1038
    :pswitch_88
    const/16 v27, 0x47

    .line 1040
    goto :goto_47

    .line 1041
    :pswitch_89
    const/16 v27, 0x3d

    .line 1043
    goto :goto_47

    .line 1044
    :pswitch_8a
    move/from16 v27, v0

    .line 1046
    goto :goto_47

    .line 1047
    :pswitch_8b
    move/from16 v27, v9

    .line 1049
    :goto_47
    :pswitch_8c
    move/from16 v0, v16

    .line 1051
    move/from16 v1, v27

    .line 1053
    goto :goto_48

    .line 1054
    :cond_3f
    move v0, v4

    .line 1055
    goto :goto_46

    .line 1056
    :goto_48
    filled-new-array {v1, v0}, [I

    .line 1059
    move-result-object v0

    .line 1060
    goto/16 :goto_5e

    .line 1062
    :cond_40
    if-ne v1, v12, :cond_51

    .line 1064
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 1067
    move-result v0

    .line 1068
    if-nez v2, :cond_41

    .line 1070
    packed-switch v0, :pswitch_data_1e

    .line 1073
    move/from16 v8, v16

    .line 1075
    goto/16 :goto_4d

    .line 1077
    :pswitch_8d
    move v8, v11

    .line 1078
    goto/16 :goto_4e

    .line 1080
    :pswitch_8e
    move v11, v14

    .line 1081
    const/16 v8, 0xc9

    .line 1083
    goto/16 :goto_4e

    .line 1085
    :pswitch_8f
    move v11, v14

    .line 1086
    const/16 v8, 0xca

    .line 1088
    goto :goto_4e

    .line 1089
    :pswitch_90
    move v11, v14

    .line 1090
    move/from16 v8, v29

    .line 1092
    goto :goto_4e

    .line 1093
    :pswitch_91
    move v8, v13

    .line 1094
    goto :goto_4d

    .line 1095
    :cond_41
    if-ne v2, v5, :cond_42

    .line 1097
    packed-switch v0, :pswitch_data_1f

    .line 1100
    move/from16 v11, v16

    .line 1102
    :goto_49
    :pswitch_92
    move/from16 v28, v11

    .line 1104
    goto :goto_4a

    .line 1105
    :pswitch_93
    move v11, v14

    .line 1106
    goto :goto_4a

    .line 1107
    :pswitch_94
    move v11, v14

    .line 1108
    move/from16 v28, v19

    .line 1110
    goto :goto_4a

    .line 1111
    :pswitch_95
    move v11, v14

    .line 1112
    goto :goto_49

    .line 1113
    :pswitch_96
    move v11, v13

    .line 1114
    goto :goto_49

    .line 1115
    :goto_4a
    move/from16 v8, v28

    .line 1117
    goto :goto_4e

    .line 1118
    :cond_42
    if-ne v2, v3, :cond_43

    .line 1120
    packed-switch v0, :pswitch_data_20

    .line 1123
    move/from16 v13, v16

    .line 1125
    :pswitch_97
    move/from16 v25, v13

    .line 1127
    goto :goto_4c

    .line 1128
    :pswitch_98
    const/16 v13, 0xf4

    .line 1130
    :goto_4b
    move/from16 v25, v13

    .line 1132
    :pswitch_99
    move v13, v14

    .line 1133
    goto :goto_4c

    .line 1134
    :pswitch_9a
    move v13, v14

    .line 1135
    move/from16 v25, v17

    .line 1137
    goto :goto_4c

    .line 1138
    :pswitch_9b
    const/16 v13, 0xe7

    .line 1140
    goto :goto_4b

    .line 1141
    :pswitch_9c
    move v13, v14

    .line 1142
    move/from16 v25, v30

    .line 1144
    :goto_4c
    move v11, v13

    .line 1145
    move/from16 v8, v25

    .line 1147
    goto :goto_4e

    .line 1148
    :cond_43
    move v8, v4

    .line 1149
    :goto_4d
    move v11, v8

    .line 1150
    :goto_4e
    filled-new-array {v8, v11}, [I

    .line 1153
    move-result-object v0

    .line 1154
    goto/16 :goto_5e

    .line 1156
    :cond_44
    if-ne v0, v7, :cond_52

    .line 1158
    const/16 v0, 0xf0

    .line 1160
    const/16 v6, 0xfa

    .line 1162
    if-ne v1, v5, :cond_48

    .line 1164
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 1167
    move-result v1

    .line 1168
    if-nez v2, :cond_45

    .line 1170
    packed-switch v1, :pswitch_data_21

    .line 1173
    move/from16 v11, v16

    .line 1175
    goto/16 :goto_53

    .line 1177
    :goto_4f
    :pswitch_9d
    move v11, v14

    .line 1178
    goto/16 :goto_54

    .line 1180
    :pswitch_9e
    const/16 v11, 0xf9

    .line 1182
    move v13, v11

    .line 1183
    goto :goto_4f

    .line 1184
    :pswitch_9f
    move v11, v13

    .line 1185
    goto :goto_54

    .line 1186
    :cond_45
    if-ne v2, v5, :cond_46

    .line 1188
    packed-switch v1, :pswitch_data_22

    .line 1191
    move/from16 v6, v16

    .line 1193
    :goto_50
    move v13, v6

    .line 1194
    goto :goto_52

    .line 1195
    :pswitch_a0
    move v6, v13

    .line 1196
    goto :goto_52

    .line 1197
    :pswitch_a1
    move v6, v13

    .line 1198
    :goto_51
    :pswitch_a2
    move v13, v14

    .line 1199
    :goto_52
    move v11, v13

    .line 1200
    move v13, v6

    .line 1201
    goto :goto_54

    .line 1202
    :cond_46
    if-ne v2, v3, :cond_47

    .line 1204
    packed-switch v1, :pswitch_data_23

    .line 1207
    move/from16 v6, v16

    .line 1209
    goto :goto_50

    .line 1210
    :pswitch_a3
    const/16 v6, 0xb6

    .line 1212
    goto :goto_50

    .line 1213
    :pswitch_a4
    move v6, v14

    .line 1214
    goto :goto_50

    .line 1215
    :pswitch_a5
    const/16 v6, 0xdf

    .line 1217
    goto :goto_50

    .line 1218
    :pswitch_a6
    move v6, v0

    .line 1219
    goto :goto_50

    .line 1220
    :pswitch_a7
    const/16 v6, 0xec

    .line 1222
    goto :goto_51

    .line 1223
    :pswitch_a8
    move v13, v14

    .line 1224
    const/16 v6, 0xee

    .line 1226
    goto :goto_52

    .line 1227
    :pswitch_a9
    move v13, v14

    .line 1228
    move/from16 v6, v17

    .line 1230
    goto :goto_52

    .line 1231
    :pswitch_aa
    move v13, v14

    .line 1232
    move/from16 v6, v18

    .line 1234
    goto :goto_52

    .line 1235
    :pswitch_ab
    move v13, v14

    .line 1236
    move/from16 v6, v30

    .line 1238
    goto :goto_52

    .line 1239
    :cond_47
    move v11, v4

    .line 1240
    :goto_53
    :pswitch_ac
    move v13, v11

    .line 1241
    :goto_54
    filled-new-array {v13, v11}, [I

    .line 1244
    move-result-object v0

    .line 1245
    goto/16 :goto_5e

    .line 1247
    :cond_48
    if-ne v1, v15, :cond_4d

    .line 1249
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 1252
    move-result v0

    .line 1253
    if-nez v2, :cond_4a

    .line 1255
    if-eq v0, v9, :cond_49

    .line 1257
    if-eq v0, v8, :cond_49

    .line 1259
    move/from16 v0, v16

    .line 1261
    goto :goto_55

    .line 1262
    :cond_49
    move v0, v5

    .line 1263
    :goto_55
    move/from16 v1, v16

    .line 1265
    goto :goto_58

    .line 1266
    :cond_4a
    if-ne v2, v5, :cond_4b

    .line 1268
    packed-switch v0, :pswitch_data_24

    .line 1271
    goto :goto_56

    .line 1272
    :pswitch_ad
    move v0, v5

    .line 1273
    goto :goto_57

    .line 1274
    :cond_4b
    if-ne v2, v3, :cond_4c

    .line 1276
    :goto_56
    move/from16 v0, v16

    .line 1278
    :goto_57
    move v1, v0

    .line 1279
    goto :goto_58

    .line 1280
    :cond_4c
    move v0, v4

    .line 1281
    goto :goto_57

    .line 1282
    :goto_58
    filled-new-array {v1, v0}, [I

    .line 1285
    move-result-object v0

    .line 1286
    goto/16 :goto_5e

    .line 1288
    :cond_4d
    if-ne v1, v12, :cond_51

    .line 1290
    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 1293
    move-result v1

    .line 1294
    const/16 v7, 0xea

    .line 1296
    const/16 v8, 0xa9

    .line 1298
    const/16 v9, 0xa1

    .line 1300
    const/16 v11, 0xf6

    .line 1302
    const/16 v12, 0x98

    .line 1304
    const/16 v15, 0x90

    .line 1306
    const/16 v17, 0xfc

    .line 1308
    const/16 v18, 0x8a

    .line 1310
    if-nez v2, :cond_4e

    .line 1312
    packed-switch v1, :pswitch_data_25

    .line 1315
    move/from16 v13, v16

    .line 1317
    :pswitch_ae
    move/from16 v29, v13

    .line 1319
    goto :goto_59

    .line 1320
    :pswitch_af
    move/from16 v29, v17

    .line 1322
    move/from16 v13, v18

    .line 1324
    goto :goto_59

    .line 1325
    :pswitch_b0
    move/from16 v29, v6

    .line 1327
    move v13, v15

    .line 1328
    goto :goto_59

    .line 1329
    :pswitch_b1
    move/from16 v29, v11

    .line 1331
    move v13, v12

    .line 1332
    goto :goto_59

    .line 1333
    :pswitch_b2
    move/from16 v29, v0

    .line 1335
    move v13, v9

    .line 1336
    goto :goto_59

    .line 1337
    :pswitch_b3
    move/from16 v29, v7

    .line 1339
    move v13, v8

    .line 1340
    goto :goto_59

    .line 1341
    :pswitch_b4
    move v13, v14

    .line 1342
    :goto_59
    move/from16 v0, v29

    .line 1344
    goto/16 :goto_5d

    .line 1346
    :cond_4e
    if-ne v2, v5, :cond_4f

    .line 1348
    packed-switch v1, :pswitch_data_26

    .line 1351
    move/from16 v13, v16

    .line 1353
    :pswitch_b5
    move/from16 v24, v13

    .line 1355
    goto :goto_5a

    .line 1356
    :pswitch_b6
    move/from16 v24, v17

    .line 1358
    move/from16 v13, v18

    .line 1360
    goto :goto_5a

    .line 1361
    :pswitch_b7
    move/from16 v24, v6

    .line 1363
    move v13, v15

    .line 1364
    goto :goto_5a

    .line 1365
    :pswitch_b8
    move/from16 v24, v11

    .line 1367
    move v13, v12

    .line 1368
    goto :goto_5a

    .line 1369
    :pswitch_b9
    move/from16 v24, v0

    .line 1371
    move v13, v9

    .line 1372
    goto :goto_5a

    .line 1373
    :pswitch_ba
    move/from16 v24, v7

    .line 1375
    move v13, v8

    .line 1376
    goto :goto_5a

    .line 1377
    :pswitch_bb
    move v13, v14

    .line 1378
    move/from16 v24, v23

    .line 1380
    goto :goto_5a

    .line 1381
    :pswitch_bc
    move v13, v14

    .line 1382
    move/from16 v24, v21

    .line 1384
    goto :goto_5a

    .line 1385
    :pswitch_bd
    move v13, v14

    .line 1386
    goto :goto_5a

    .line 1387
    :pswitch_be
    move v13, v14

    .line 1388
    move/from16 v24, v28

    .line 1390
    goto :goto_5a

    .line 1391
    :pswitch_bf
    move v13, v14

    .line 1392
    move/from16 v24, v19

    .line 1394
    :goto_5a
    move/from16 v0, v24

    .line 1396
    goto :goto_5d

    .line 1397
    :cond_4f
    if-ne v2, v3, :cond_50

    .line 1399
    packed-switch v1, :pswitch_data_27

    .line 1402
    move/from16 v13, v16

    .line 1404
    :pswitch_c0
    move v14, v13

    .line 1405
    goto :goto_5c

    .line 1406
    :pswitch_c1
    const/16 v0, 0xf1

    .line 1408
    :goto_5b
    move v13, v0

    .line 1409
    goto :goto_5c

    .line 1410
    :pswitch_c2
    move/from16 v13, v26

    .line 1412
    goto :goto_5c

    .line 1413
    :pswitch_c3
    const/16 v13, 0xe4

    .line 1415
    goto :goto_5c

    .line 1416
    :pswitch_c4
    const/16 v0, 0xde

    .line 1418
    goto :goto_5b

    .line 1419
    :pswitch_c5
    move v13, v10

    .line 1420
    :goto_5c
    move v0, v13

    .line 1421
    move v13, v14

    .line 1422
    goto :goto_5d

    .line 1423
    :cond_50
    move v0, v4

    .line 1424
    move v13, v0

    .line 1425
    :goto_5d
    filled-new-array {v0, v13}, [I

    .line 1428
    move-result-object v0

    .line 1429
    goto :goto_5e

    .line 1430
    :cond_51
    const/4 v0, 0x0

    .line 1431
    goto :goto_5e

    .line 1432
    :cond_52
    new-array v0, v3, [I

    .line 1434
    aput v4, v0, v16

    .line 1436
    aput v4, v0, v5

    .line 1438
    :goto_5e
    if-eqz v0, :cond_54

    .line 1440
    aget v1, v0, v16

    .line 1442
    if-ne v1, v4, :cond_53

    .line 1444
    aget v2, v0, v5

    .line 1446
    if-ne v2, v4, :cond_53

    .line 1448
    goto :goto_5f

    .line 1449
    :cond_53
    aget v2, v0, v5

    .line 1451
    sub-int/2addr v1, v2

    .line 1452
    invoke-static/range {p5 .. p6}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    .line 1455
    move-result v2

    .line 1456
    int-to-double v3, v1

    .line 1457
    int-to-double v1, v2

    .line 1458
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 1460
    div-double/2addr v1, v6

    .line 1461
    mul-double/2addr v1, v3

    .line 1462
    aget v0, v0, v5

    .line 1464
    int-to-double v3, v0

    .line 1465
    add-double/2addr v1, v3

    .line 1466
    double-to-int v0, v1

    .line 1467
    return v0

    .line 1468
    :cond_54
    :goto_5f
    return v4

    .line 1469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1495
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1521
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 1547
    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 1561
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 1583
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 1605
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    .line 1631
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    .line 1657
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_23
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch

    .line 1683
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch

    .line 1709
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch

    .line 1735
    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_36
        :pswitch_2e
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch

    .line 1761
    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    .line 1775
    :pswitch_data_d
    .packed-switch 0x6
        :pswitch_40
        :pswitch_3e
        :pswitch_3f
        :pswitch_3c
        :pswitch_3d
    .end packed-switch

    .line 1789
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_41
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_53
        :pswitch_53
        :pswitch_41
        :pswitch_41
    .end packed-switch

    .line 1815
    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch

    .line 1841
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
    .end packed-switch

    .line 1867
    :pswitch_data_11
    .packed-switch 0x6
        :pswitch_55
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_54
    .end packed-switch

    .line 1881
    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_59
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
    .end packed-switch

    .line 1895
    :pswitch_data_13
    .packed-switch 0x6
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
    .end packed-switch

    .line 1909
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch

    .line 1935
    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_67
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_66
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
    .end packed-switch

    .line 1961
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6e
        :pswitch_6d
        :pswitch_64
        :pswitch_64
        :pswitch_6d
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch

    .line 1987
    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_71
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
    .end packed-switch

    .line 2013
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_71
        :pswitch_70
        :pswitch_73
        :pswitch_73
        :pswitch_72
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
    .end packed-switch

    .line 2039
    :pswitch_data_19
    .packed-switch 0x0
        :pswitch_74
        :pswitch_76
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
    .end packed-switch

    .line 2065
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_77
    .end packed-switch

    .line 2089
    :pswitch_data_1b
    .packed-switch 0x1
        :pswitch_81
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
    .end packed-switch

    .line 2113
    :pswitch_data_1c
    .packed-switch 0x6
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
    .end packed-switch

    .line 2127
    :pswitch_data_1d
    .packed-switch 0x6
        :pswitch_8b
        :pswitch_8a
        :pswitch_8c
        :pswitch_89
        :pswitch_88
    .end packed-switch

    .line 2141
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8f
        :pswitch_8e
        :pswitch_8e
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
    .end packed-switch

    .line 2167
    :pswitch_data_1f
    .packed-switch 0x0
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_94
        :pswitch_93
        :pswitch_93
        :pswitch_92
        :pswitch_92
        :pswitch_92
        :pswitch_92
        :pswitch_92
    .end packed-switch

    .line 2193
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_97
        :pswitch_99
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_98
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
    .end packed-switch

    .line 2219
    :pswitch_data_21
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9d
        :pswitch_9d
        :pswitch_9d
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
    .end packed-switch

    .line 2245
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_a2
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
    .end packed-switch

    .line 2271
    :pswitch_data_23
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a0
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
    .end packed-switch

    .line 2297
    :pswitch_data_24
    .packed-switch 0x6
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
    .end packed-switch

    .line 2311
    :pswitch_data_25
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
    .end packed-switch

    .line 2337
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
    .end packed-switch

    .line 2363
    :pswitch_data_27
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
    .end packed-switch
.end method

.method public static roundHalfUp(D)I
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 3
    mul-double/2addr p0, v0

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 7
    move-result-wide p0

    .line 8
    long-to-int p0, p0

    .line 9
    return p0
.end method
