.class public final Lcom/android/server/wallpaper/WallpaperDataParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mImageWallpaper:Landroid/content/ComponentName;

.field public final mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public final mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field public final mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

.field public final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperDisplayHelper;Lcom/android/server/wallpaper/WallpaperCropper;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const p2, 0x104064e

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    .line 26
    .line 27
    iput-object p4, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 28
    .line 29
    iput-object p5, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 30
    .line 31
    return-void
.end method

.method public static ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public static isSameWithPreviousWallpaper(ILcom/android/server/wallpaper/WallpaperData;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-string v3, " "

    .line 6
    .line 7
    const-string v4, "failed parsing "

    .line 8
    .line 9
    iget v0, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 10
    .line 11
    move/from16 v5, p0

    .line 12
    .line 13
    invoke-static {v0, v5}, Lcom/android/server/wallpaper/WallpaperDataParser;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v7, "WallpaperDataParser"

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const-string v0, "isSameWithPreviousWallpaper file is not exists."

    .line 31
    .line 32
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v6

    .line 36
    :cond_0
    iget v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 37
    .line 38
    new-instance v8, Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v8, Landroid/os/RemoteCallbackList;

    .line 44
    .line 45
    invoke-direct {v8}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v8, Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-direct {v8, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    .line 52
    .line 53
    new-instance v8, Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v8, Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v8, Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v8, Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 69
    .line 70
    invoke-direct {v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->assertModeIsPresent(I)V

    .line 74
    .line 75
    .line 76
    iput v0, v8, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 77
    .line 78
    iget v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 79
    .line 80
    const/4 v10, 0x0

    .line 81
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    .line 82
    .line 83
    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_f

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-static {v11}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 87
    .line 88
    .line 89
    move-result-object v12
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_a

    .line 90
    move-object v14, v2

    .line 91
    move-object v13, v10

    .line 92
    :goto_0
    :try_start_2
    invoke-interface {v12}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 93
    .line 94
    .line 95
    move-result v15
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    .line 96
    const/4 v6, 0x2

    .line 97
    if-ne v15, v6, :cond_6

    .line 98
    .line 99
    :try_start_3
    invoke-interface {v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->containsSystem(I)Z

    .line 104
    .line 105
    .line 106
    move-result v16

    .line 107
    if-eqz v16, :cond_1

    .line 108
    .line 109
    const-string/jumbo v9, "wp"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-nez v9, :cond_2

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    move-object v2, v14

    .line 121
    const/4 v6, 0x1

    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :catch_1
    move-exception v0

    .line 125
    move-object v2, v14

    .line 126
    const/4 v6, 0x1

    .line 127
    goto/16 :goto_6

    .line 128
    .line 129
    :catch_2
    move-exception v0

    .line 130
    move-object v2, v14

    .line 131
    const/4 v6, 0x1

    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :catch_3
    move-exception v0

    .line 135
    move-object v2, v14

    .line 136
    const/4 v6, 0x1

    .line 137
    goto/16 :goto_8

    .line 138
    .line 139
    :catch_4
    move-exception v0

    .line 140
    move-object v2, v14

    .line 141
    const/4 v6, 0x1

    .line 142
    goto/16 :goto_9

    .line 143
    .line 144
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_6

    .line 149
    .line 150
    const-string v9, "kwp"

    .line 151
    .line 152
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_6

    .line 157
    .line 158
    :cond_2
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-nez v6, :cond_3

    .line 163
    .line 164
    const-string/jumbo v6, "width"

    .line 165
    .line 166
    .line 167
    invoke-interface {v12, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    iput v6, v8, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 176
    .line 177
    const-string v6, "height"

    .line 178
    .line 179
    invoke-interface {v12, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    iput v6, v8, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 188
    .line 189
    :cond_3
    const-string/jumbo v6, "name"

    .line 190
    .line 191
    .line 192
    invoke-interface {v12, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    if-nez v6, :cond_4

    .line 197
    .line 198
    move-object v14, v2

    .line 199
    goto :goto_2

    .line 200
    :cond_4
    move-object v14, v6

    .line 201
    :goto_2
    const-string v6, "component"

    .line 202
    .line 203
    invoke-interface {v12, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    if-eqz v6, :cond_5

    .line 208
    .line 209
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 210
    .line 211
    .line 212
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 213
    move-object v13, v6

    .line 214
    goto :goto_3

    .line 215
    :cond_5
    move-object v13, v10

    .line 216
    :cond_6
    :goto_3
    const/4 v6, 0x1

    .line 217
    if-ne v15, v6, :cond_7

    .line 218
    .line 219
    goto/16 :goto_a

    .line 220
    .line 221
    :cond_7
    const/4 v6, 0x0

    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :catch_5
    move-exception v0

    .line 225
    const/4 v6, 0x1

    .line 226
    move-object v2, v14

    .line 227
    goto/16 :goto_4

    .line 228
    .line 229
    :catch_6
    move-exception v0

    .line 230
    const/4 v6, 0x1

    .line 231
    move-object v2, v14

    .line 232
    goto/16 :goto_6

    .line 233
    .line 234
    :catch_7
    move-exception v0

    .line 235
    const/4 v6, 0x1

    .line 236
    move-object v2, v14

    .line 237
    goto/16 :goto_7

    .line 238
    .line 239
    :catch_8
    move-exception v0

    .line 240
    const/4 v6, 0x1

    .line 241
    move-object v2, v14

    .line 242
    goto/16 :goto_8

    .line 243
    .line 244
    :catch_9
    move-exception v0

    .line 245
    const/4 v6, 0x1

    .line 246
    move-object v2, v14

    .line 247
    goto/16 :goto_9

    .line 248
    .line 249
    :catch_a
    move-exception v0

    .line 250
    const/4 v6, 0x1

    .line 251
    move-object v13, v10

    .line 252
    goto :goto_4

    .line 253
    :catch_b
    move-exception v0

    .line 254
    const/4 v6, 0x1

    .line 255
    move-object v13, v10

    .line 256
    goto :goto_6

    .line 257
    :catch_c
    move-exception v0

    .line 258
    const/4 v6, 0x1

    .line 259
    move-object v13, v10

    .line 260
    goto :goto_7

    .line 261
    :catch_d
    move-exception v0

    .line 262
    const/4 v6, 0x1

    .line 263
    move-object v13, v10

    .line 264
    goto/16 :goto_8

    .line 265
    .line 266
    :catch_e
    move-exception v0

    .line 267
    const/4 v6, 0x1

    .line 268
    move-object v13, v10

    .line 269
    goto/16 :goto_9

    .line 270
    .line 271
    :catch_f
    move-exception v0

    .line 272
    const/4 v6, 0x1

    .line 273
    move-object v11, v10

    .line 274
    move-object v13, v11

    .line 275
    goto :goto_4

    .line 276
    :catch_10
    move-exception v0

    .line 277
    const/4 v6, 0x1

    .line 278
    move-object v11, v10

    .line 279
    move-object v13, v11

    .line 280
    goto :goto_6

    .line 281
    :catch_11
    move-exception v0

    .line 282
    const/4 v6, 0x1

    .line 283
    move-object v11, v10

    .line 284
    move-object v13, v11

    .line 285
    goto :goto_7

    .line 286
    :catch_12
    move-exception v0

    .line 287
    const/4 v6, 0x1

    .line 288
    move-object v11, v10

    .line 289
    move-object v13, v11

    .line 290
    goto :goto_8

    .line 291
    :catch_13
    move-exception v0

    .line 292
    const/4 v6, 0x1

    .line 293
    move-object v11, v10

    .line 294
    move-object v13, v11

    .line 295
    goto :goto_9

    .line 296
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    :goto_5
    move-object v14, v2

    .line 318
    goto :goto_a

    .line 319
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    goto :goto_5

    .line 341
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    goto :goto_5

    .line 363
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    goto :goto_5

    .line 385
    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :goto_a
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 408
    .line 409
    .line 410
    if-nez v13, :cond_8

    .line 411
    .line 412
    move-object v0, v10

    .line 413
    goto :goto_b

    .line 414
    :cond_8
    invoke-virtual {v13}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    :goto_b
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 419
    .line 420
    if-nez v2, :cond_9

    .line 421
    .line 422
    goto :goto_c

    .line 423
    :cond_9
    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    const-string v3, ".xml file : width="

    .line 430
    .line 431
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget v3, v8, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 435
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    const-string v3, " height="

    .line 440
    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    iget v4, v8, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 445
    .line 446
    const-string v5, " name="

    .line 447
    .line 448
    const-string v9, " component="

    .line 449
    .line 450
    invoke-static {v4, v5, v14, v9, v2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string/jumbo v2, "service : width="

    .line 466
    .line 467
    .line 468
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 472
    .line 473
    iget v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 474
    .line 475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 482
    .line 483
    iget v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 484
    .line 485
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    const-string v2, "WallpaperData"

    .line 514
    .line 515
    if-nez v0, :cond_b

    .line 516
    .line 517
    iget v0, v8, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 518
    .line 519
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 520
    .line 521
    iget v4, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 522
    .line 523
    if-ne v0, v4, :cond_a

    .line 524
    .line 525
    iget v0, v8, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 526
    .line 527
    iget v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 528
    .line 529
    if-eq v0, v3, :cond_b

    .line 530
    .line 531
    :cond_a
    const-string v0, "isSameWallpaperData: mSemWallpaperData.mWidth or mSemWallpaperData.mHeight is different."

    .line 532
    .line 533
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    :goto_d
    const/4 v6, 0x0

    .line 537
    goto :goto_e

    .line 538
    :cond_b
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-eqz v0, :cond_e

    .line 545
    .line 546
    if-nez v13, :cond_d

    .line 547
    .line 548
    new-instance v0, Landroid/content/ComponentName;

    .line 549
    .line 550
    const-string v3, "com.android.systemui"

    .line 551
    .line 552
    const-string v4, "com.android.systemui.ImageWallpaper"

    .line 553
    .line 554
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 558
    .line 559
    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-nez v0, :cond_c

    .line 564
    .line 565
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 566
    .line 567
    if-nez v0, :cond_e

    .line 568
    .line 569
    :cond_c
    const-string v0, "Same Image Wallpaper!"

    .line 570
    .line 571
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    goto :goto_e

    .line 575
    :cond_d
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 576
    .line 577
    invoke-virtual {v13, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-eqz v0, :cond_e

    .line 582
    .line 583
    const-string v0, "Same Live wallpaper!"

    .line 584
    .line 585
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    goto :goto_e

    .line 589
    :cond_e
    const-string v0, "Different wallpaper"

    .line 590
    .line 591
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .line 593
    .line 594
    goto :goto_d

    .line 595
    :goto_e
    return v6
.end method

.method public static makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getInfoFileName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Lcom/android/internal/util/JournaledFile;

    .line 19
    .line 20
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/io/File;

    .line 26
    .line 27
    const-string v2, ".tmp"

    .line 28
    .line 29
    invoke-static {p0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public static screenDimensionPairs()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "Portrait"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/util/Pair;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "Landscape"

    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/util/Pair;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "SquarePortrait"

    .line 33
    .line 34
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/util/Pair;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string v5, "SquareLandscape"

    .line 45
    .line 46
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method


# virtual methods
.method public parseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "id"

    .line 9
    .line 10
    const/4 v5, -0x1

    .line 11
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    iput v4, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 18
    .line 19
    sget v6, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    .line 20
    .line 21
    if-le v4, v6, :cond_1

    .line 22
    .line 23
    sput v4, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iput v4, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string/jumbo v4, "which"

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const-string/jumbo v5, "parseWallpaperAttributes: Loaded which = "

    .line 40
    .line 41
    .line 42
    const-string v6, "WallpaperDataParser"

    .line 43
    .line 44
    invoke-static {v4, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 48
    .line 49
    new-instance v4, Landroid/graphics/Rect;

    .line 50
    .line 51
    const-string v5, "cropLeft"

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-interface {v1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const-string v8, "cropTop"

    .line 59
    .line 60
    invoke-interface {v1, v3, v8, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    const-string v10, "cropRight"

    .line 65
    .line 66
    invoke-interface {v1, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    const-string v12, "cropBottom"

    .line 71
    .line 72
    invoke-interface {v1, v3, v12, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    invoke-direct {v4, v7, v9, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    .line 78
    .line 79
    new-instance v7, Landroid/graphics/Rect;

    .line 80
    .line 81
    const-string/jumbo v9, "totalCropLeft"

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v3, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const-string/jumbo v11, "totalCropTop"

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v3, v11, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    const-string/jumbo v13, "totalCropRight"

    .line 96
    .line 97
    .line 98
    invoke-interface {v1, v3, v13, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    const-string/jumbo v14, "totalCropBottom"

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v3, v14, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    invoke-direct {v7, v9, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_7

    .line 117
    .line 118
    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    .line 119
    .line 120
    iget-object v11, v2, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 121
    .line 122
    invoke-virtual {v9, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_7

    .line 127
    .line 128
    new-instance v9, Landroid/util/SparseArray;

    .line 129
    .line 130
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v9, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 134
    .line 135
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperDataParser;->screenDimensionPairs()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-eqz v11, :cond_4

    .line 148
    .line 149
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    check-cast v11, Landroid/util/Pair;

    .line 154
    .line 155
    new-instance v13, Landroid/graphics/Rect;

    .line 156
    .line 157
    new-instance v14, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v15, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v15, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    invoke-interface {v1, v3, v14, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    new-instance v15, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v3, Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const/4 v15, 0x0

    .line 194
    invoke-interface {v1, v15, v3, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v15, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v15, Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    move-object/from16 v16, v5

    .line 215
    .line 216
    const/4 v5, 0x0

    .line 217
    const/4 v15, 0x0

    .line 218
    invoke-interface {v1, v15, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v15, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v15, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    move-object/from16 v17, v8

    .line 239
    .line 240
    const/4 v8, 0x0

    .line 241
    const/4 v15, 0x0

    .line 242
    invoke-interface {v1, v15, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    invoke-direct {v13, v14, v3, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-nez v3, :cond_2

    .line 254
    .line 255
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 256
    .line 257
    iget-object v5, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v5, Ljava/lang/Integer;

    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    invoke-virtual {v3, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_2
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-nez v3, :cond_3

    .line 273
    .line 274
    invoke-virtual {v13, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_3

    .line 279
    .line 280
    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v3, Ljava/lang/Integer;

    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mOrientationWhenSet:I

    .line 289
    .line 290
    :cond_3
    move-object/from16 v5, v16

    .line 291
    .line 292
    move-object/from16 v8, v17

    .line 293
    .line 294
    const/4 v3, 0x0

    .line 295
    const/4 v6, 0x0

    .line 296
    goto/16 :goto_1

    .line 297
    .line 298
    :cond_4
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 299
    .line 300
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-nez v3, :cond_5

    .line 305
    .line 306
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_5

    .line 311
    .line 312
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-nez v3, :cond_6

    .line 317
    .line 318
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 319
    .line 320
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_5
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 325
    .line 326
    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 327
    .line 328
    .line 329
    :cond_6
    :goto_2
    const-string/jumbo v3, "sampleSize"

    .line 330
    .line 331
    .line 332
    const/high16 v4, 0x3f800000    # 1.0f

    .line 333
    .line 334
    const/4 v5, 0x0

    .line 335
    invoke-interface {v1, v5, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_7
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-nez v3, :cond_8

    .line 347
    .line 348
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 349
    .line 350
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 351
    .line 352
    .line 353
    :cond_8
    :goto_3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 354
    .line 355
    const/4 v3, 0x0

    .line 356
    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-nez p3, :cond_9

    .line 361
    .line 362
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-nez v4, :cond_9

    .line 367
    .line 368
    const-string/jumbo v4, "width"

    .line 369
    .line 370
    .line 371
    const/4 v5, 0x0

    .line 372
    invoke-interface {v1, v5, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    iput v4, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 377
    .line 378
    const-string v4, "height"

    .line 379
    .line 380
    invoke-interface {v1, v5, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    iput v4, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 385
    .line 386
    goto :goto_4

    .line 387
    :cond_9
    const/4 v5, 0x0

    .line 388
    :goto_4
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    if-nez v4, :cond_a

    .line 393
    .line 394
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 395
    .line 396
    const-string/jumbo v6, "paddingLeft"

    .line 397
    .line 398
    .line 399
    invoke-interface {v1, v5, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 404
    .line 405
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 406
    .line 407
    const-string/jumbo v6, "paddingTop"

    .line 408
    .line 409
    .line 410
    invoke-interface {v1, v5, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 415
    .line 416
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 417
    .line 418
    const-string/jumbo v6, "paddingRight"

    .line 419
    .line 420
    .line 421
    invoke-interface {v1, v5, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 426
    .line 427
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 428
    .line 429
    const-string/jumbo v4, "paddingBottom"

    .line 430
    .line 431
    .line 432
    invoke-interface {v1, v5, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 437
    .line 438
    :cond_a
    const-string v0, "dimAmount"

    .line 439
    .line 440
    const/4 v3, 0x0

    .line 441
    invoke-interface {v1, v5, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    iput v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 446
    .line 447
    :try_start_0
    const-class v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 448
    .line 449
    const-string v4, "bindSource"

    .line 450
    .line 451
    const-string v6, "UNKNOWN"

    .line 452
    .line 453
    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    if-eqz v4, :cond_b

    .line 458
    .line 459
    move-object v6, v4

    .line 460
    :cond_b
    invoke-static {v0, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .line 466
    goto :goto_5

    .line 467
    :catch_0
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->UNKNOWN:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 468
    .line 469
    :goto_5
    iput-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 470
    .line 471
    const-string v0, "dimAmountsCount"

    .line 472
    .line 473
    const/4 v4, 0x0

    .line 474
    const/4 v5, 0x0

    .line 475
    invoke-interface {v1, v4, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-lez v0, :cond_d

    .line 480
    .line 481
    new-instance v4, Landroid/util/SparseArray;

    .line 482
    .line 483
    invoke-direct {v4, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 484
    .line 485
    .line 486
    const/4 v5, 0x0

    .line 487
    :goto_6
    if-ge v5, v0, :cond_c

    .line 488
    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    const-string v7, "dimUID"

    .line 492
    .line 493
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    const/4 v7, 0x0

    .line 504
    const/4 v8, 0x0

    .line 505
    invoke-interface {v1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    new-instance v8, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    const-string v9, "dimValue"

    .line 512
    .line 513
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v8

    .line 523
    invoke-interface {v1, v7, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-virtual {v4, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    add-int/lit8 v5, v5, 0x1

    .line 535
    .line 536
    goto :goto_6

    .line 537
    :cond_c
    const/4 v7, 0x0

    .line 538
    iput-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    .line 539
    .line 540
    goto :goto_7

    .line 541
    :cond_d
    const/4 v7, 0x0

    .line 542
    :goto_7
    const-string v0, "colorsCount"

    .line 543
    .line 544
    const/4 v3, 0x0

    .line 545
    invoke-interface {v1, v7, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    const-string v4, "allColorsCount"

    .line 550
    .line 551
    invoke-interface {v1, v7, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    const/4 v3, 0x1

    .line 556
    const/4 v5, 0x2

    .line 557
    const-string v6, "colorHints"

    .line 558
    .line 559
    if-lez v4, :cond_10

    .line 560
    .line 561
    new-instance v0, Ljava/util/HashMap;

    .line 562
    .line 563
    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 564
    .line 565
    .line 566
    const/4 v7, 0x0

    .line 567
    :goto_8
    if-ge v7, v4, :cond_e

    .line 568
    .line 569
    new-instance v8, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    const-string v9, "allColorsValue"

    .line 572
    .line 573
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v8

    .line 583
    const/4 v9, 0x0

    .line 584
    const/4 v10, 0x0

    .line 585
    invoke-interface {v1, v9, v8, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 586
    .line 587
    .line 588
    move-result v8

    .line 589
    new-instance v11, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string v12, "allColorsPopulation"

    .line 592
    .line 593
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v11

    .line 603
    invoke-interface {v1, v9, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 604
    .line 605
    .line 606
    move-result v11

    .line 607
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 608
    .line 609
    .line 610
    move-result-object v8

    .line 611
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object v11

    .line 615
    invoke-virtual {v0, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    add-int/lit8 v7, v7, 0x1

    .line 619
    .line 620
    goto :goto_8

    .line 621
    :cond_e
    const/4 v9, 0x0

    .line 622
    const/4 v10, 0x0

    .line 623
    invoke-interface {v1, v9, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    new-instance v6, Landroid/app/WallpaperColors;

    .line 628
    .line 629
    invoke-direct {v6, v0, v4}, Landroid/app/WallpaperColors;-><init>(Ljava/util/Map;I)V

    .line 630
    .line 631
    .line 632
    iput-object v6, v2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 633
    .line 634
    :cond_f
    const/4 v0, 0x0

    .line 635
    goto :goto_b

    .line 636
    :cond_10
    if-lez v0, :cond_f

    .line 637
    .line 638
    const/4 v4, 0x0

    .line 639
    const/4 v7, 0x0

    .line 640
    const/4 v8, 0x0

    .line 641
    const/4 v9, 0x0

    .line 642
    :goto_9
    if-ge v9, v0, :cond_13

    .line 643
    .line 644
    new-instance v10, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    const-string v11, "colorValue"

    .line 647
    .line 648
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v10

    .line 658
    const/4 v11, 0x0

    .line 659
    const/4 v12, 0x0

    .line 660
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 661
    .line 662
    .line 663
    move-result v10

    .line 664
    invoke-static {v10}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 665
    .line 666
    .line 667
    move-result-object v10

    .line 668
    if-nez v9, :cond_11

    .line 669
    .line 670
    move-object v4, v10

    .line 671
    goto :goto_a

    .line 672
    :cond_11
    if-ne v9, v3, :cond_12

    .line 673
    .line 674
    move-object v7, v10

    .line 675
    goto :goto_a

    .line 676
    :cond_12
    if-ne v9, v5, :cond_13

    .line 677
    .line 678
    move-object v8, v10

    .line 679
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 680
    .line 681
    goto :goto_9

    .line 682
    :cond_13
    const/4 v0, 0x0

    .line 683
    const/4 v9, 0x0

    .line 684
    invoke-interface {v1, v0, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 685
    .line 686
    .line 687
    move-result v6

    .line 688
    new-instance v9, Landroid/app/WallpaperColors;

    .line 689
    .line 690
    invoke-direct {v9, v4, v7, v8, v6}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    .line 691
    .line 692
    .line 693
    iput-object v9, v2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 694
    .line 695
    :goto_b
    const-string/jumbo v4, "name"

    .line 696
    .line 697
    .line 698
    invoke-interface {v1, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    iput-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 703
    .line 704
    const-string v6, ""

    .line 705
    .line 706
    if-nez v4, :cond_14

    .line 707
    .line 708
    iput-object v6, v2, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 709
    .line 710
    :cond_14
    const-string v4, "backup"

    .line 711
    .line 712
    const/4 v7, 0x0

    .line 713
    invoke-interface {v1, v0, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    iput-boolean v4, v2, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 718
    .line 719
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 720
    .line 721
    const-string v7, "creationTime"

    .line 722
    .line 723
    invoke-interface {v1, v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v7

    .line 727
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 728
    .line 729
    .line 730
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 731
    .line 732
    .line 733
    move-result v8

    .line 734
    if-eqz v8, :cond_15

    .line 735
    .line 736
    goto :goto_c

    .line 737
    :cond_15
    iput-object v7, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    .line 738
    .line 739
    :goto_c
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 740
    .line 741
    const-string v7, "isPreloaded"

    .line 742
    .line 743
    invoke-interface {v1, v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v7

    .line 747
    const-string/jumbo v8, "true"

    .line 748
    .line 749
    .line 750
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v7

    .line 754
    iput-boolean v7, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 755
    .line 756
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 757
    .line 758
    const-string v7, "isCopied"

    .line 759
    .line 760
    invoke-interface {v1, v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v7

    .line 764
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v7

    .line 768
    iput-boolean v7, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    .line 769
    .line 770
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 771
    .line 772
    const-string v7, "lastCallingPackage"

    .line 773
    .line 774
    invoke-interface {v1, v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v7

    .line 778
    iput-object v7, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 779
    .line 780
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 781
    .line 782
    const-string v7, "lastClearCallstackWithNullPackage"

    .line 783
    .line 784
    invoke-interface {v1, v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v7

    .line 788
    iput-object v7, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    .line 789
    .line 790
    const-string/jumbo v4, "type"

    .line 791
    .line 792
    .line 793
    const/4 v7, 0x0

    .line 794
    invoke-interface {v1, v0, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 795
    .line 796
    .line 797
    move-result v4

    .line 798
    const/16 v0, 0x9

    .line 799
    .line 800
    if-ne v4, v0, :cond_16

    .line 801
    .line 802
    const/16 v4, 0x3e8

    .line 803
    .line 804
    :cond_16
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 805
    .line 806
    iput v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 807
    .line 808
    if-ne v4, v3, :cond_17

    .line 809
    .line 810
    const-string/jumbo v4, "motionPkgName"

    .line 811
    .line 812
    .line 813
    const/4 v7, 0x0

    .line 814
    invoke-interface {v1, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 819
    .line 820
    :cond_17
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 821
    .line 822
    iget v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 823
    .line 824
    const/4 v7, 0x4

    .line 825
    if-ne v4, v7, :cond_18

    .line 826
    .line 827
    const-string v4, "animatedPkgName"

    .line 828
    .line 829
    const/4 v7, 0x0

    .line 830
    invoke-interface {v1, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v4

    .line 834
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 835
    .line 836
    :cond_18
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 837
    .line 838
    iget v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 839
    .line 840
    const/16 v7, 0x8

    .line 841
    .line 842
    if-ne v4, v7, :cond_19

    .line 843
    .line 844
    const-string/jumbo v4, "videoFilePath"

    .line 845
    .line 846
    .line 847
    const/4 v7, 0x0

    .line 848
    invoke-interface {v1, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v4

    .line 852
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 853
    .line 854
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 855
    .line 856
    const-string/jumbo v4, "videoPkgName"

    .line 857
    .line 858
    .line 859
    invoke-interface {v1, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v4

    .line 863
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 864
    .line 865
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 866
    .line 867
    const-string/jumbo v4, "videoFileName"

    .line 868
    .line 869
    .line 870
    invoke-interface {v1, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v4

    .line 874
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 875
    .line 876
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 877
    .line 878
    const-string/jumbo v4, "videoDefaultHasBeenUsed"

    .line 879
    .line 880
    .line 881
    invoke-interface {v1, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v4

    .line 885
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v4

    .line 889
    iput-boolean v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    .line 890
    .line 891
    goto :goto_d

    .line 892
    :cond_19
    const/4 v7, 0x0

    .line 893
    :goto_d
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 894
    .line 895
    const-string v4, "externalParams"

    .line 896
    .line 897
    invoke-interface {v1, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v4

    .line 901
    invoke-static {v4}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->fromJson(Ljava/lang/String;)Landroid/os/Bundle;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 906
    .line 907
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 908
    .line 909
    const-string/jumbo v4, "uri"

    .line 910
    .line 911
    .line 912
    invoke-interface {v1, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v4

    .line 916
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 917
    .line 918
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 919
    .line 920
    const-string v2, "history"

    .line 921
    .line 922
    invoke-interface {v1, v7, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 927
    .line 928
    .line 929
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    if-eqz v2, :cond_1a

    .line 934
    .line 935
    goto :goto_11

    .line 936
    :cond_1a
    const-string v2, ";"

    .line 937
    .line 938
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    array-length v2, v1

    .line 943
    const/4 v4, 0x0

    .line 944
    :goto_e
    if-ge v4, v2, :cond_1d

    .line 945
    .line 946
    aget-object v7, v1, v4

    .line 947
    .line 948
    const-string v8, "::"

    .line 949
    .line 950
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v7

    .line 954
    aget-object v8, v7, v3

    .line 955
    .line 956
    const/4 v9, 0x0

    .line 957
    aget-object v10, v7, v9

    .line 958
    .line 959
    array-length v11, v7

    .line 960
    if-le v11, v5, :cond_1b

    .line 961
    .line 962
    aget-object v11, v7, v5

    .line 963
    .line 964
    goto :goto_f

    .line 965
    :cond_1b
    move-object v11, v6

    .line 966
    :goto_f
    array-length v12, v7

    .line 967
    const/4 v13, 0x3

    .line 968
    if-le v12, v13, :cond_1c

    .line 969
    .line 970
    aget-object v7, v7, v13

    .line 971
    .line 972
    goto :goto_10

    .line 973
    :cond_1c
    move-object v7, v6

    .line 974
    :goto_10
    invoke-virtual {v0, v8, v10, v11, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    add-int/lit8 v4, v4, 0x1

    .line 978
    .line 979
    goto :goto_e

    .line 980
    :cond_1d
    :goto_11
    return-void
.end method

.method public final restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperData;)Z
    .locals 12

    .line 1
    const-string v0, "WallpaperDataParser"

    .line 2
    .line 3
    const-string v1, "couldn\'t resolve identifier pkg="

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x4

    .line 13
    if-le v2, v4, :cond_c

    .line 14
    .line 15
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string/jumbo v5, "res:"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_c

    .line 29
    .line 30
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/16 v5, 0x3a

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x0

    .line 43
    if-lez v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v7, v6

    .line 51
    :goto_0
    const/16 v8, 0x2f

    .line 52
    .line 53
    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-lez v8, :cond_1

    .line 58
    .line 59
    add-int/lit8 v9, v8, 0x1

    .line 60
    .line 61
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object v9, v6

    .line 67
    :goto_1
    const/4 v10, 0x1

    .line 68
    if-lez v5, :cond_2

    .line 69
    .line 70
    if-lez v8, :cond_2

    .line 71
    .line 72
    sub-int v11, v8, v5

    .line 73
    .line 74
    if-le v11, v10, :cond_2

    .line 75
    .line 76
    add-int/2addr v5, v10

    .line 77
    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move-object v5, v6

    .line 83
    :goto_2
    if-eqz v7, :cond_c

    .line 84
    .line 85
    if-eqz v9, :cond_c

    .line 86
    .line 87
    if-eqz v5, :cond_c

    .line 88
    .line 89
    const/4 v8, -0x1

    .line 90
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {p0, v7, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0, v2, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-nez v8, :cond_3

    .line 105
    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, " type="

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p1, " ident="

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    .line 137
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 144
    .line 145
    .line 146
    return v3

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    move-object v1, v6

    .line 149
    move-object v4, v1

    .line 150
    goto/16 :goto_d

    .line 151
    .line 152
    :catch_0
    move-exception p0

    .line 153
    move-object v1, v6

    .line 154
    move-object v4, v1

    .line 155
    goto/16 :goto_9

    .line 156
    .line 157
    :catch_1
    move-object v1, v6

    .line 158
    move-object v4, v1

    .line 159
    goto/16 :goto_b

    .line 160
    .line 161
    :catch_2
    move-object v1, v6

    .line 162
    move-object v4, v1

    .line 163
    goto/16 :goto_c

    .line 164
    .line 165
    :cond_3
    :try_start_1
    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 166
    .line 167
    .line 168
    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    invoke-virtual {p1, v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_4

    .line 178
    .line 179
    invoke-virtual {p1, v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 191
    .line 192
    .line 193
    goto :goto_7

    .line 194
    :catchall_1
    move-exception p1

    .line 195
    move-object v1, v6

    .line 196
    move-object v4, v1

    .line 197
    :goto_3
    move-object v6, p0

    .line 198
    move-object p0, p1

    .line 199
    goto/16 :goto_d

    .line 200
    .line 201
    :catch_3
    move-exception p1

    .line 202
    move-object v1, v6

    .line 203
    move-object v4, v1

    .line 204
    :goto_4
    move-object v6, p0

    .line 205
    move-object p0, p1

    .line 206
    goto/16 :goto_9

    .line 207
    .line 208
    :catch_4
    move-object v1, v6

    .line 209
    move-object v4, v1

    .line 210
    :catch_5
    :goto_5
    move-object v6, p0

    .line 211
    goto/16 :goto_b

    .line 212
    .line 213
    :catch_6
    move-object v1, v6

    .line 214
    move-object v4, v1

    .line 215
    :catch_7
    :goto_6
    move-object v6, p0

    .line 216
    goto/16 :goto_c

    .line 217
    .line 218
    :cond_4
    :goto_7
    new-instance v1, Ljava/io/FileOutputStream;

    .line 219
    .line 220
    invoke-virtual {p1, v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    .line 226
    .line 227
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 234
    .line 235
    .line 236
    const p1, 0x8000

    .line 237
    .line 238
    .line 239
    :try_start_4
    new-array p1, p1, [B

    .line 240
    .line 241
    :goto_8
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-lez v5, :cond_5

    .line 246
    .line 247
    invoke-virtual {v1, p1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, p1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :catchall_2
    move-exception p1

    .line 255
    goto :goto_3

    .line 256
    :catch_8
    move-exception p1

    .line 257
    goto :goto_4

    .line 258
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v5, "Restored wallpaper: "

    .line 264
    .line 265
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 276
    .line 277
    .line 278
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 282
    .line 283
    .line 284
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 285
    .line 286
    .line 287
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 291
    .line 292
    .line 293
    return v10

    .line 294
    :catchall_3
    move-exception p1

    .line 295
    move-object v4, v6

    .line 296
    goto :goto_3

    .line 297
    :catch_9
    move-exception p1

    .line 298
    move-object v4, v6

    .line 299
    goto :goto_4

    .line 300
    :catch_a
    move-object v4, v6

    .line 301
    goto :goto_5

    .line 302
    :catch_b
    move-object v4, v6

    .line 303
    goto :goto_6

    .line 304
    :goto_9
    :try_start_5
    const-string p1, "IOException while restoring wallpaper "

    .line 305
    .line 306
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 307
    .line 308
    .line 309
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 310
    .line 311
    .line 312
    if-eqz v1, :cond_6

    .line 313
    .line 314
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 315
    .line 316
    .line 317
    :cond_6
    if-eqz v4, :cond_7

    .line 318
    .line 319
    :goto_a
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 320
    .line 321
    .line 322
    :cond_7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 326
    .line 327
    .line 328
    goto :goto_e

    .line 329
    :catchall_4
    move-exception p0

    .line 330
    goto :goto_d

    .line 331
    :goto_b
    :try_start_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    const-string p1, "Resource not found: "

    .line 337
    .line 338
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 349
    .line 350
    .line 351
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 352
    .line 353
    .line 354
    if-eqz v1, :cond_8

    .line 355
    .line 356
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 357
    .line 358
    .line 359
    :cond_8
    if-eqz v4, :cond_7

    .line 360
    .line 361
    goto :goto_a

    .line 362
    :goto_c
    :try_start_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string p1, "Package name "

    .line 368
    .line 369
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string p1, " not found"

    .line 376
    .line 377
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 385
    .line 386
    .line 387
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 388
    .line 389
    .line 390
    if-eqz v1, :cond_9

    .line 391
    .line 392
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 393
    .line 394
    .line 395
    :cond_9
    if-eqz v4, :cond_7

    .line 396
    .line 397
    goto :goto_a

    .line 398
    :goto_d
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 399
    .line 400
    .line 401
    if-eqz v1, :cond_a

    .line 402
    .line 403
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 404
    .line 405
    .line 406
    :cond_a
    if-eqz v4, :cond_b

    .line 407
    .line 408
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 409
    .line 410
    .line 411
    :cond_b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 415
    .line 416
    .line 417
    throw p0

    .line 418
    :cond_c
    :goto_e
    return v3
.end method

.method public writeWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-interface {v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    .line 12
    .line 13
    iget v5, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 14
    .line 15
    const-string v6, "id"

    .line 16
    .line 17
    invoke-interface {v1, v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v5, "which"

    .line 21
    .line 22
    .line 23
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 24
    .line 25
    invoke-interface {v1, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 33
    .line 34
    const-string v7, "cropBottom"

    .line 35
    .line 36
    const-string v8, "cropRight"

    .line 37
    .line 38
    const-string v9, "cropTop"

    .line 39
    .line 40
    const-string v10, "cropLeft"

    .line 41
    .line 42
    if-eqz v5, :cond_6

    .line 43
    .line 44
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    .line 45
    .line 46
    iget-object v12, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 47
    .line 48
    invoke-virtual {v5, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_6

    .line 53
    .line 54
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 55
    .line 56
    if-nez v5, :cond_0

    .line 57
    .line 58
    const-string v5, "WallpaperDataParser"

    .line 59
    .line 60
    const-string v12, "cropHints should not be null when saved"

    .line 61
    .line 62
    invoke-static {v5, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    new-instance v5, Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 71
    .line 72
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    .line 73
    .line 74
    iget-object v12, v3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-direct {v5, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperDataParser;->screenDimensionPairs()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    if-eqz v13, :cond_4

    .line 92
    .line 93
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    check-cast v13, Landroid/util/Pair;

    .line 98
    .line 99
    iget-object v14, v3, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 100
    .line 101
    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v15, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    check-cast v14, Landroid/graphics/Rect;

    .line 114
    .line 115
    if-nez v14, :cond_1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v11, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v11, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    iget v15, v14, Landroid/graphics/Rect;->left:I

    .line 135
    .line 136
    invoke-interface {v1, v4, v11, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    .line 138
    .line 139
    new-instance v11, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v15, Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    iget v15, v14, Landroid/graphics/Rect;->top:I

    .line 156
    .line 157
    invoke-interface {v1, v4, v11, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    .line 159
    .line 160
    new-instance v11, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v15, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    iget v15, v14, Landroid/graphics/Rect;->right:I

    .line 177
    .line 178
    invoke-interface {v1, v4, v11, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    .line 180
    .line 181
    new-instance v11, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v15, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    iget v15, v14, Landroid/graphics/Rect;->bottom:I

    .line 198
    .line 199
    invoke-interface {v1, v4, v11, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    .line 201
    .line 202
    iget v11, v3, Lcom/android/server/wallpaper/WallpaperData;->mOrientationWhenSet:I

    .line 203
    .line 204
    iget-boolean v15, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mIsFoldable:Z

    .line 205
    .line 206
    if-eqz v15, :cond_2

    .line 207
    .line 208
    invoke-virtual {v6, v11}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getUnfoldedOrientation(I)I

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    const/4 v4, -0x1

    .line 213
    if-eq v15, v4, :cond_2

    .line 214
    .line 215
    move v11, v15

    .line 216
    :cond_2
    iget-object v4, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v4, Ljava/lang/Integer;

    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-ne v4, v11, :cond_3

    .line 225
    .line 226
    invoke-virtual {v5, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 227
    .line 228
    .line 229
    :cond_3
    const/4 v4, 0x0

    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_4
    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 233
    .line 234
    const/4 v11, 0x0

    .line 235
    invoke-interface {v1, v11, v10, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    .line 237
    .line 238
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 239
    .line 240
    invoke-interface {v1, v11, v9, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    .line 242
    .line 243
    iget v4, v5, Landroid/graphics/Rect;->right:I

    .line 244
    .line 245
    invoke-interface {v1, v11, v8, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    .line 247
    .line 248
    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 249
    .line 250
    invoke-interface {v1, v11, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    .line 252
    .line 253
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 254
    .line 255
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 256
    .line 257
    const-string/jumbo v5, "totalCropLeft"

    .line 258
    .line 259
    .line 260
    invoke-interface {v1, v11, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    .line 262
    .line 263
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 264
    .line 265
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 266
    .line 267
    const-string/jumbo v5, "totalCropTop"

    .line 268
    .line 269
    .line 270
    invoke-interface {v1, v11, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    .line 272
    .line 273
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 274
    .line 275
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 276
    .line 277
    const-string/jumbo v5, "totalCropRight"

    .line 278
    .line 279
    .line 280
    invoke-interface {v1, v11, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    .line 282
    .line 283
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 284
    .line 285
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 286
    .line 287
    const-string/jumbo v5, "totalCropBottom"

    .line 288
    .line 289
    .line 290
    invoke-interface {v1, v11, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    .line 292
    .line 293
    const-string/jumbo v4, "sampleSize"

    .line 294
    .line 295
    .line 296
    iget v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 297
    .line 298
    invoke-interface {v1, v11, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    .line 300
    .line 301
    :cond_5
    const/4 v4, 0x0

    .line 302
    goto :goto_1

    .line 303
    :cond_6
    move-object v11, v4

    .line 304
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-nez v4, :cond_5

    .line 309
    .line 310
    const/4 v4, 0x0

    .line 311
    invoke-virtual {v6, v4}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    const-string/jumbo v6, "width"

    .line 316
    .line 317
    .line 318
    iget v12, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 319
    .line 320
    invoke-interface {v1, v11, v6, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    .line 322
    .line 323
    const-string v6, "height"

    .line 324
    .line 325
    iget v12, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 326
    .line 327
    invoke-interface {v1, v11, v6, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    .line 329
    .line 330
    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 331
    .line 332
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 333
    .line 334
    invoke-interface {v1, v11, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    .line 336
    .line 337
    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 338
    .line 339
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 340
    .line 341
    invoke-interface {v1, v11, v9, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    .line 343
    .line 344
    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 345
    .line 346
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 347
    .line 348
    invoke-interface {v1, v11, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    .line 350
    .line 351
    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 352
    .line 353
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 354
    .line 355
    invoke-interface {v1, v11, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    .line 357
    .line 358
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 359
    .line 360
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 361
    .line 362
    if-eqz v6, :cond_7

    .line 363
    .line 364
    const-string/jumbo v7, "paddingLeft"

    .line 365
    .line 366
    .line 367
    invoke-interface {v1, v11, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    .line 369
    .line 370
    :cond_7
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 371
    .line 372
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 373
    .line 374
    if-eqz v6, :cond_8

    .line 375
    .line 376
    const-string/jumbo v7, "paddingTop"

    .line 377
    .line 378
    .line 379
    invoke-interface {v1, v11, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    .line 381
    .line 382
    :cond_8
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 383
    .line 384
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 385
    .line 386
    if-eqz v6, :cond_9

    .line 387
    .line 388
    const-string/jumbo v7, "paddingRight"

    .line 389
    .line 390
    .line 391
    invoke-interface {v1, v11, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    .line 393
    .line 394
    :cond_9
    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 395
    .line 396
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 397
    .line 398
    if-eqz v5, :cond_a

    .line 399
    .line 400
    const-string/jumbo v6, "paddingBottom"

    .line 401
    .line 402
    .line 403
    invoke-interface {v1, v11, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    .line 405
    .line 406
    :cond_a
    :goto_1
    const-string v5, "dimAmount"

    .line 407
    .line 408
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 409
    .line 410
    invoke-interface {v1, v11, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    .line 412
    .line 413
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 414
    .line 415
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    const-string v6, "bindSource"

    .line 420
    .line 421
    invoke-interface {v1, v11, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    .line 423
    .line 424
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    .line 425
    .line 426
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    const-string v6, "dimAmountsCount"

    .line 431
    .line 432
    invoke-interface {v1, v11, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    .line 434
    .line 435
    const/4 v6, 0x1

    .line 436
    if-lez v5, :cond_b

    .line 437
    .line 438
    move v5, v4

    .line 439
    move v7, v5

    .line 440
    :goto_2
    iget-object v8, v3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    .line 441
    .line 442
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    if-ge v5, v8, :cond_b

    .line 447
    .line 448
    const-string v8, "dimUID"

    .line 449
    .line 450
    invoke-static {v7, v8}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    iget-object v9, v3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    .line 455
    .line 456
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 457
    .line 458
    .line 459
    move-result v9

    .line 460
    invoke-interface {v1, v11, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 461
    .line 462
    .line 463
    const-string v8, "dimValue"

    .line 464
    .line 465
    invoke-static {v7, v8}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    iget-object v9, v3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    .line 470
    .line 471
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    check-cast v9, Ljava/lang/Float;

    .line 476
    .line 477
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 478
    .line 479
    .line 480
    move-result v9

    .line 481
    invoke-interface {v1, v11, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    .line 483
    .line 484
    add-int/2addr v7, v6

    .line 485
    add-int/lit8 v5, v5, 0x1

    .line 486
    .line 487
    const/4 v11, 0x0

    .line 488
    goto :goto_2

    .line 489
    :cond_b
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 490
    .line 491
    if-eqz v5, :cond_e

    .line 492
    .line 493
    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    const-string v7, "colorsCount"

    .line 502
    .line 503
    const/4 v8, 0x0

    .line 504
    invoke-interface {v1, v8, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    .line 506
    .line 507
    if-lez v5, :cond_c

    .line 508
    .line 509
    move v7, v4

    .line 510
    :goto_3
    if-ge v7, v5, :cond_c

    .line 511
    .line 512
    iget-object v9, v3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 513
    .line 514
    invoke-virtual {v9}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    check-cast v9, Landroid/graphics/Color;

    .line 523
    .line 524
    const-string v10, "colorValue"

    .line 525
    .line 526
    invoke-static {v7, v10}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v10

    .line 530
    invoke-virtual {v9}, Landroid/graphics/Color;->toArgb()I

    .line 531
    .line 532
    .line 533
    move-result v9

    .line 534
    invoke-interface {v1, v8, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    .line 536
    .line 537
    add-int/lit8 v7, v7, 0x1

    .line 538
    .line 539
    goto :goto_3

    .line 540
    :cond_c
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 541
    .line 542
    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    const-string v7, "allColorsCount"

    .line 551
    .line 552
    invoke-interface {v1, v8, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    .line 554
    .line 555
    if-lez v5, :cond_d

    .line 556
    .line 557
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 558
    .line 559
    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    move v7, v4

    .line 572
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    if-eqz v8, :cond_d

    .line 577
    .line 578
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v8

    .line 582
    check-cast v8, Ljava/util/Map$Entry;

    .line 583
    .line 584
    const-string v9, "allColorsValue"

    .line 585
    .line 586
    invoke-static {v7, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v9

    .line 590
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v10

    .line 594
    check-cast v10, Ljava/lang/Integer;

    .line 595
    .line 596
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 597
    .line 598
    .line 599
    move-result v10

    .line 600
    const/4 v11, 0x0

    .line 601
    invoke-interface {v1, v11, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    .line 603
    .line 604
    new-instance v9, Ljava/lang/StringBuilder;

    .line 605
    .line 606
    const-string v10, "allColorsPopulation"

    .line 607
    .line 608
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v8

    .line 622
    check-cast v8, Ljava/lang/Integer;

    .line 623
    .line 624
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 625
    .line 626
    .line 627
    move-result v8

    .line 628
    invoke-interface {v1, v11, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    .line 630
    .line 631
    add-int/2addr v7, v6

    .line 632
    goto :goto_4

    .line 633
    :cond_d
    const/4 v11, 0x0

    .line 634
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 635
    .line 636
    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getColorHints()I

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    const-string v7, "colorHints"

    .line 641
    .line 642
    invoke-interface {v1, v11, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    .line 644
    .line 645
    goto :goto_5

    .line 646
    :cond_e
    const/4 v11, 0x0

    .line 647
    :goto_5
    const-string/jumbo v5, "name"

    .line 648
    .line 649
    .line 650
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 651
    .line 652
    invoke-interface {v1, v11, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    .line 654
    .line 655
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 656
    .line 657
    if-eqz v5, :cond_f

    .line 658
    .line 659
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    .line 660
    .line 661
    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v5

    .line 665
    if-nez v5, :cond_f

    .line 666
    .line 667
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 668
    .line 669
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    const-string v7, "component"

    .line 674
    .line 675
    invoke-interface {v1, v11, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 676
    .line 677
    .line 678
    :cond_f
    iget-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 679
    .line 680
    if-eqz v5, :cond_10

    .line 681
    .line 682
    const-string v5, "backup"

    .line 683
    .line 684
    invoke-interface {v1, v11, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    .line 686
    .line 687
    :cond_10
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 688
    .line 689
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    .line 690
    .line 691
    if-eqz v5, :cond_11

    .line 692
    .line 693
    const-string v7, "creationTime"

    .line 694
    .line 695
    invoke-interface {v1, v11, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 696
    .line 697
    .line 698
    :cond_11
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 699
    .line 700
    iget-boolean v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 701
    .line 702
    const-string/jumbo v7, "true"

    .line 703
    .line 704
    .line 705
    if-eqz v5, :cond_12

    .line 706
    .line 707
    const-string v5, "isPreloaded"

    .line 708
    .line 709
    invoke-interface {v1, v11, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    .line 711
    .line 712
    :cond_12
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 713
    .line 714
    iget-boolean v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    .line 715
    .line 716
    if-eqz v5, :cond_13

    .line 717
    .line 718
    const-string v5, "isCopied"

    .line 719
    .line 720
    invoke-interface {v1, v11, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    .line 722
    .line 723
    :cond_13
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 724
    .line 725
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 726
    .line 727
    if-eqz v5, :cond_14

    .line 728
    .line 729
    const-string v8, "lastCallingPackage"

    .line 730
    .line 731
    invoke-interface {v1, v11, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 732
    .line 733
    .line 734
    :cond_14
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 735
    .line 736
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    .line 737
    .line 738
    if-eqz v5, :cond_15

    .line 739
    .line 740
    const-string v8, "lastClearCallstackWithNullPackage"

    .line 741
    .line 742
    invoke-interface {v1, v11, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 743
    .line 744
    .line 745
    :cond_15
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 746
    .line 747
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 748
    .line 749
    if-eqz v5, :cond_16

    .line 750
    .line 751
    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    if-eqz v5, :cond_16

    .line 756
    .line 757
    const-string v8, "externalParams"

    .line 758
    .line 759
    invoke-interface {v1, v11, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 760
    .line 761
    .line 762
    :cond_16
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 763
    .line 764
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 765
    .line 766
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v5

    .line 770
    const-string/jumbo v8, "type"

    .line 771
    .line 772
    .line 773
    invoke-interface {v1, v11, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    .line 775
    .line 776
    iget v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 777
    .line 778
    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    .line 779
    .line 780
    .line 781
    move-result v5

    .line 782
    const/16 v8, 0x8

    .line 783
    .line 784
    if-nez v5, :cond_19

    .line 785
    .line 786
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 787
    .line 788
    iget v9, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 789
    .line 790
    if-ne v9, v8, :cond_19

    .line 791
    .line 792
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 793
    .line 794
    if-eqz v5, :cond_17

    .line 795
    .line 796
    const-string/jumbo v9, "videoFilePath"

    .line 797
    .line 798
    .line 799
    const/4 v10, 0x0

    .line 800
    invoke-interface {v1, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    .line 802
    .line 803
    goto :goto_6

    .line 804
    :cond_17
    const/4 v10, 0x0

    .line 805
    :goto_6
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 806
    .line 807
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 808
    .line 809
    if-eqz v5, :cond_18

    .line 810
    .line 811
    const-string/jumbo v9, "videoPkgName"

    .line 812
    .line 813
    .line 814
    invoke-interface {v1, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    .line 816
    .line 817
    :cond_18
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 818
    .line 819
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 820
    .line 821
    if-eqz v5, :cond_19

    .line 822
    .line 823
    const-string/jumbo v9, "videoFileName"

    .line 824
    .line 825
    .line 826
    invoke-interface {v1, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 827
    .line 828
    .line 829
    :cond_19
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 830
    .line 831
    iget v9, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 832
    .line 833
    invoke-static {v9}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    .line 834
    .line 835
    .line 836
    move-result v9

    .line 837
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 838
    .line 839
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 840
    .line 841
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v5, v9, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    if-ne v0, v8, :cond_1b

    .line 850
    .line 851
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 852
    .line 853
    iget-boolean v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    .line 854
    .line 855
    if-eqz v0, :cond_1b

    .line 856
    .line 857
    if-eqz v0, :cond_1a

    .line 858
    .line 859
    goto :goto_7

    .line 860
    :cond_1a
    const-string v7, "false"

    .line 861
    .line 862
    :goto_7
    const-string/jumbo v0, "videoDefaultHasBeenUsed"

    .line 863
    .line 864
    .line 865
    const/4 v5, 0x0

    .line 866
    invoke-interface {v1, v5, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 867
    .line 868
    .line 869
    :cond_1b
    const-string v0, "kwp"

    .line 870
    .line 871
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    move-result v0

    .line 875
    if-eqz v0, :cond_1d

    .line 876
    .line 877
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 878
    .line 879
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    .line 880
    .line 881
    .line 882
    move-result v0

    .line 883
    if-nez v0, :cond_1c

    .line 884
    .line 885
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 886
    .line 887
    iget v5, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 888
    .line 889
    if-ne v5, v6, :cond_1c

    .line 890
    .line 891
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 892
    .line 893
    if-eqz v0, :cond_1c

    .line 894
    .line 895
    const-string/jumbo v5, "motionPkgName"

    .line 896
    .line 897
    .line 898
    const/4 v7, 0x0

    .line 899
    invoke-interface {v1, v7, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 900
    .line 901
    .line 902
    :cond_1c
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 903
    .line 904
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    .line 905
    .line 906
    .line 907
    move-result v0

    .line 908
    if-nez v0, :cond_1d

    .line 909
    .line 910
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 911
    .line 912
    iget v5, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 913
    .line 914
    const/4 v7, 0x4

    .line 915
    if-ne v5, v7, :cond_1d

    .line 916
    .line 917
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 918
    .line 919
    if-eqz v0, :cond_1d

    .line 920
    .line 921
    const-string v5, "animatedPkgName"

    .line 922
    .line 923
    const/4 v7, 0x0

    .line 924
    invoke-interface {v1, v7, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 925
    .line 926
    .line 927
    :cond_1d
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 928
    .line 929
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    .line 930
    .line 931
    .line 932
    move-result v0

    .line 933
    if-nez v0, :cond_1f

    .line 934
    .line 935
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 936
    .line 937
    iget v5, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 938
    .line 939
    const/4 v7, 0x3

    .line 940
    if-eq v5, v7, :cond_1e

    .line 941
    .line 942
    const/4 v7, 0x5

    .line 943
    if-eq v5, v7, :cond_1e

    .line 944
    .line 945
    if-eqz v5, :cond_1e

    .line 946
    .line 947
    const/16 v7, 0x3e8

    .line 948
    .line 949
    if-eq v5, v7, :cond_1e

    .line 950
    .line 951
    const/16 v7, 0x9

    .line 952
    .line 953
    if-ne v5, v7, :cond_1f

    .line 954
    .line 955
    :cond_1e
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 956
    .line 957
    if-eqz v0, :cond_1f

    .line 958
    .line 959
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    const-string/jumbo v5, "uri"

    .line 964
    .line 965
    .line 966
    const/4 v7, 0x0

    .line 967
    invoke-interface {v1, v7, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 968
    .line 969
    .line 970
    :cond_1f
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 971
    .line 972
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistoryList()Ljava/util/ArrayList;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    if-eqz v0, :cond_22

    .line 977
    .line 978
    new-instance v3, Ljava/lang/StringBuffer;

    .line 979
    .line 980
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 984
    .line 985
    .line 986
    move-result v5

    .line 987
    sub-int/2addr v5, v6

    .line 988
    if-ltz v5, :cond_22

    .line 989
    .line 990
    move v11, v4

    .line 991
    :goto_8
    if-gt v11, v5, :cond_21

    .line 992
    .line 993
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v4

    .line 997
    check-cast v4, Ljava/lang/String;

    .line 998
    .line 999
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1000
    .line 1001
    .line 1002
    if-eq v11, v5, :cond_20

    .line 1003
    .line 1004
    const-string v4, ";"

    .line 1005
    .line 1006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1007
    .line 1008
    .line 1009
    :cond_20
    add-int/lit8 v11, v11, 0x1

    .line 1010
    .line 1011
    goto :goto_8

    .line 1012
    :cond_21
    const-string v0, "history"

    .line 1013
    .line 1014
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v3

    .line 1018
    const/4 v4, 0x0

    .line 1019
    invoke-interface {v1, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1020
    .line 1021
    .line 1022
    goto :goto_9

    .line 1023
    :cond_22
    const/4 v4, 0x0

    .line 1024
    :goto_9
    invoke-interface {v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1025
    .line 1026
    .line 1027
    return-void
.end method
