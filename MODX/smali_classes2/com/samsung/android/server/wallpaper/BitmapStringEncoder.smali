.class public abstract Lcom/samsung/android/server/wallpaper/BitmapStringEncoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sDigits:[C


# direct methods
.method public static encodeToString([ILandroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v2, v1, 0x4

    .line 5
    .line 6
    new-array v3, v2, [I

    .line 7
    .line 8
    const/16 v4, 0x3c

    .line 9
    .line 10
    new-array v5, v4, [I

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/16 v8, 0xc8

    .line 21
    .line 22
    const/16 v9, 0x1e

    .line 23
    .line 24
    const/4 v10, 0x1

    .line 25
    move-object/from16 v11, p1

    .line 26
    .line 27
    invoke-static {v11, v9, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    div-int/lit8 v9, v9, 0x4

    .line 40
    .line 41
    div-int/lit8 v11, v11, 0x13

    .line 42
    .line 43
    const/4 v12, 0x0

    .line 44
    move v13, v12

    .line 45
    move v14, v13

    .line 46
    :goto_0
    const/16 v15, 0x14

    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    if-ge v13, v15, :cond_1

    .line 50
    .line 51
    move v15, v12

    .line 52
    :goto_1
    if-ge v15, v4, :cond_0

    .line 53
    .line 54
    add-int/lit8 v17, v14, 0x1

    .line 55
    .line 56
    mul-int v18, v9, v15

    .line 57
    .line 58
    add-int v10, v18, v9

    .line 59
    .line 60
    mul-int v4, v11, v13

    .line 61
    .line 62
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    aput v4, v5, v14

    .line 67
    .line 68
    add-int/lit8 v15, v15, 0x1

    .line 69
    .line 70
    move/from16 v14, v17

    .line 71
    .line 72
    const/4 v4, 0x3

    .line 73
    const/4 v10, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    add-int/lit8 v13, v13, 0x1

    .line 76
    .line 77
    const/16 v4, 0x3c

    .line 78
    .line 79
    const/4 v10, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    .line 83
    .line 84
    const/4 v4, 0x3

    .line 85
    aput v4, v3, v12

    .line 86
    .line 87
    const/4 v8, 0x1

    .line 88
    aput v15, v3, v8

    .line 89
    .line 90
    const/4 v8, 0x2

    .line 91
    aput v6, v3, v8

    .line 92
    .line 93
    aput v7, v3, v4

    .line 94
    .line 95
    move v4, v12

    .line 96
    :goto_2
    if-ge v4, v1, :cond_2

    .line 97
    .line 98
    add-int/lit8 v6, v4, 0x4

    .line 99
    .line 100
    aget v7, v0, v4

    .line 101
    .line 102
    aput v7, v3, v6

    .line 103
    .line 104
    add-int/lit8 v4, v4, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    add-int/lit8 v0, v1, 0x23

    .line 108
    .line 109
    new-array v4, v0, [I

    .line 110
    .line 111
    move v7, v12

    .line 112
    const/16 v6, 0x3c

    .line 113
    .line 114
    :goto_3
    if-ge v7, v6, :cond_3

    .line 115
    .line 116
    aget v9, v5, v7

    .line 117
    .line 118
    add-int/lit8 v10, v7, 0x1

    .line 119
    .line 120
    aget v10, v5, v10

    .line 121
    .line 122
    div-int/lit8 v11, v7, 0x2

    .line 123
    .line 124
    const/high16 v13, 0xf80000

    .line 125
    .line 126
    and-int v14, v9, v13

    .line 127
    .line 128
    shl-int/lit8 v14, v14, 0x7

    .line 129
    .line 130
    const v15, 0xf800

    .line 131
    .line 132
    .line 133
    and-int v16, v9, v15

    .line 134
    .line 135
    shl-int/lit8 v16, v16, 0xa

    .line 136
    .line 137
    or-int v14, v14, v16

    .line 138
    .line 139
    and-int/lit16 v9, v9, 0xf8

    .line 140
    .line 141
    shl-int/lit8 v9, v9, 0xd

    .line 142
    .line 143
    or-int/2addr v9, v14

    .line 144
    and-int/2addr v13, v10

    .line 145
    shr-int/lit8 v13, v13, 0x8

    .line 146
    .line 147
    or-int/2addr v9, v13

    .line 148
    and-int v13, v10, v15

    .line 149
    .line 150
    shr-int/lit8 v13, v13, 0x5

    .line 151
    .line 152
    or-int/2addr v9, v13

    .line 153
    and-int/lit16 v10, v10, 0xf8

    .line 154
    .line 155
    shr-int/2addr v10, v8

    .line 156
    or-int/2addr v9, v10

    .line 157
    aput v9, v4, v11

    .line 158
    .line 159
    add-int/lit8 v7, v7, 0x2

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    add-int/lit8 v5, v1, 0x22

    .line 163
    .line 164
    aput v2, v4, v5

    .line 165
    .line 166
    if-lez v2, :cond_4

    .line 167
    .line 168
    add-int/lit8 v1, v1, 0x21

    .line 169
    .line 170
    move v5, v12

    .line 171
    :goto_4
    if-ge v5, v2, :cond_4

    .line 172
    .line 173
    sub-int v6, v1, v5

    .line 174
    .line 175
    aget v7, v3, v5

    .line 176
    .line 177
    aput v7, v4, v6

    .line 178
    .line 179
    add-int/lit8 v5, v5, 0x1

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_4
    sget-object v1, Lcom/samsung/android/server/wallpaper/BitmapStringEncoder;->sDigits:[C

    .line 183
    .line 184
    const/16 v2, 0x4f

    .line 185
    .line 186
    if-nez v1, :cond_6

    .line 187
    .line 188
    new-array v1, v2, [C

    .line 189
    .line 190
    sput-object v1, Lcom/samsung/android/server/wallpaper/BitmapStringEncoder;->sDigits:[C

    .line 191
    .line 192
    new-instance v1, Ljava/util/Random;

    .line 193
    .line 194
    const-wide/32 v5, 0x106053b

    .line 195
    .line 196
    .line 197
    invoke-direct {v1, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 198
    .line 199
    .line 200
    new-instance v3, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    move v5, v12

    .line 206
    :goto_5
    if-ge v5, v2, :cond_5

    .line 207
    .line 208
    sget-object v6, Lcom/samsung/android/server/wallpaper/BitmapStringEncoder;->sDigits:[C

    .line 209
    .line 210
    add-int/lit8 v7, v5, 0x30

    .line 211
    .line 212
    int-to-char v7, v7

    .line 213
    aput-char v7, v6, v5

    .line 214
    .line 215
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    add-int/lit8 v5, v5, 0x1

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_5
    invoke-static {v3, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 226
    .line 227
    .line 228
    move v1, v12

    .line 229
    :goto_6
    if-ge v1, v2, :cond_6

    .line 230
    .line 231
    sget-object v5, Lcom/samsung/android/server/wallpaper/BitmapStringEncoder;->sDigits:[C

    .line 232
    .line 233
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    check-cast v6, Ljava/lang/Character;

    .line 238
    .line 239
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    aput-char v6, v5, v1

    .line 244
    .line 245
    add-int/lit8 v1, v1, 0x1

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_6
    sget-object v1, Lcom/samsung/android/server/wallpaper/BitmapStringEncoder;->sDigits:[C

    .line 249
    .line 250
    mul-int/lit8 v3, v0, 0x5

    .line 251
    .line 252
    new-array v3, v3, [C

    .line 253
    .line 254
    const-wide v5, 0x4053c00000000000L    # 79.0

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    .line 260
    .line 261
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 262
    .line 263
    .line 264
    move-result-wide v5

    .line 265
    double-to-int v5, v5

    .line 266
    new-instance v6, Ljava/util/Random;

    .line 267
    .line 268
    const-wide/32 v7, 0x12f0edc

    .line 269
    .line 270
    .line 271
    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 272
    .line 273
    .line 274
    move v7, v12

    .line 275
    move v8, v7

    .line 276
    :goto_7
    if-ge v12, v0, :cond_8

    .line 277
    .line 278
    aget v9, v4, v12

    .line 279
    .line 280
    move v10, v5

    .line 281
    :goto_8
    if-lez v10, :cond_7

    .line 282
    .line 283
    div-int v11, v9, v10

    .line 284
    .line 285
    add-int/2addr v11, v8

    .line 286
    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    add-int/2addr v8, v11

    .line 291
    rem-int/2addr v8, v2

    .line 292
    add-int/lit8 v11, v7, 0x1

    .line 293
    .line 294
    aget-char v13, v1, v8

    .line 295
    .line 296
    aput-char v13, v3, v7

    .line 297
    .line 298
    rem-int/2addr v9, v10

    .line 299
    div-int/lit8 v10, v10, 0x4f

    .line 300
    .line 301
    move v7, v11

    .line 302
    goto :goto_8

    .line 303
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_8
    new-instance v0, Ljava/lang/String;

    .line 307
    .line 308
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 309
    .line 310
    .line 311
    return-object v0
.end method
