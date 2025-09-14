.class public final Lcom/android/server/wm/AppSnapshotLoader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final loadTask(IIZ)Landroid/window/TaskSnapshot;
    .locals 25

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const-string v15, "WindowManager"

    .line 6
    .line 7
    const-string v2, "Failed to retrieve gralloc buffer for bitmap: "

    .line 8
    .line 9
    const-string v3, "Failed to create hardware bitmap: "

    .line 10
    .line 11
    const-string v4, "Failed to load bitmap: "

    .line 12
    .line 13
    move-object/from16 v5, p0

    .line 14
    .line 15
    iget-object v5, v5, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 16
    .line 17
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    const/16 v21, 0x0

    .line 26
    .line 27
    if-nez v7, :cond_0

    .line 28
    .line 29
    return-object v21

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {v6}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v6}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget v8, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    .line 47
    .line 48
    iget v9, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    const/4 v11, 0x1

    .line 55
    const/4 v12, 0x0

    .line 56
    if-nez v8, :cond_1

    .line 57
    .line 58
    move v8, v11

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v8, v12

    .line 61
    :goto_0
    if-nez v8, :cond_2

    .line 62
    .line 63
    move-object/from16 v10, v21

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_2
    const/high16 v13, 0x3f000000    # 0.5f

    .line 67
    .line 68
    const/4 v14, 0x0

    .line 69
    if-eqz v8, :cond_6

    .line 70
    .line 71
    invoke-static {v9, v14}, Ljava/lang/Float;->compare(FF)I

    .line 72
    .line 73
    .line 74
    move-result v16

    .line 75
    if-nez v16, :cond_6

    .line 76
    .line 77
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_3

    .line 82
    .line 83
    if-nez v10, :cond_3

    .line 84
    .line 85
    const v9, 0x3f19999a    # 0.6f

    .line 86
    .line 87
    .line 88
    :goto_1
    move v8, v11

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    if-eqz p3, :cond_4

    .line 91
    .line 92
    move v9, v13

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const/high16 v8, 0x3f800000    # 1.0f

    .line 95
    .line 96
    move v9, v8

    .line 97
    :cond_5
    :goto_2
    move v8, v12

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    if-eqz v8, :cond_8

    .line 100
    .line 101
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-eqz v8, :cond_7

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_7
    if-eqz p3, :cond_5

    .line 109
    .line 110
    mul-float/2addr v9, v13

    .line 111
    goto :goto_2

    .line 112
    :cond_8
    move v8, v12

    .line 113
    move v9, v14

    .line 114
    :goto_3
    new-instance v10, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;

    .line 115
    .line 116
    invoke-direct {v10, v8, v9}, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;-><init>(ZF)V

    .line 117
    .line 118
    .line 119
    :goto_4
    if-eqz v10, :cond_9

    .line 120
    .line 121
    iget-boolean v8, v10, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    .line 122
    .line 123
    if-eqz v8, :cond_9

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :catch_0
    move-object v0, v15

    .line 127
    goto/16 :goto_8

    .line 128
    .line 129
    :cond_9
    move v11, v12

    .line 130
    :goto_5
    if-nez p3, :cond_a

    .line 131
    .line 132
    if-eqz v11, :cond_b

    .line 133
    .line 134
    :cond_a
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    :cond_b
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_c

    .line 143
    .line 144
    return-object v21

    .line 145
    :cond_c
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 146
    .line 147
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-boolean v5, v5, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    .line 151
    .line 152
    if-eqz v5, :cond_d

    .line 153
    .line 154
    iget-boolean v5, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 155
    .line 156
    if-nez v5, :cond_d

    .line 157
    .line 158
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_d
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 162
    .line 163
    :goto_6
    iput-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {v5, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-nez v1, :cond_e

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    return-object v21

    .line 195
    :cond_e
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 196
    .line 197
    invoke-virtual {v1, v4, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    .line 203
    .line 204
    if-nez v4, :cond_f

    .line 205
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    return-object v21

    .line 226
    :cond_f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    if-nez v8, :cond_10

    .line 231
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    return-object v21

    .line 252
    :cond_10
    iget-object v1, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    if-eqz v10, :cond_11

    .line 259
    .line 260
    iget v1, v10, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    .line 261
    .line 262
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    int-to-float v2, v2

    .line 267
    div-float/2addr v2, v1

    .line 268
    float-to-int v2, v2

    .line 269
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    int-to-float v3, v3

    .line 274
    div-float/2addr v3, v1

    .line 275
    float-to-int v1, v3

    .line 276
    new-instance v3, Landroid/graphics/Point;

    .line 277
    .line 278
    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 279
    .line 280
    .line 281
    move-object v11, v3

    .line 282
    goto :goto_7

    .line 283
    :cond_11
    new-instance v1, Landroid/graphics/Point;

    .line 284
    .line 285
    iget v2, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    .line 286
    .line 287
    iget v3, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    .line 288
    .line 289
    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 290
    .line 291
    .line 292
    move-object v11, v1

    .line 293
    :goto_7
    new-instance v22, Landroid/window/TaskSnapshot;

    .line 294
    .line 295
    iget-wide v2, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    .line 296
    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 298
    .line 299
    .line 300
    move-result-wide v9

    .line 301
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    iget v13, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    .line 306
    .line 307
    iget v14, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    .line 308
    .line 309
    new-instance v4, Landroid/graphics/Rect;

    .line 310
    .line 311
    iget v1, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    .line 312
    .line 313
    iget v5, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .line 315
    move-object/from16 v16, v15

    .line 316
    .line 317
    :try_start_1
    iget v15, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    .line 318
    .line 319
    iget v0, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    .line 320
    .line 321
    invoke-direct {v4, v1, v5, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 322
    .line 323
    .line 324
    new-instance v0, Landroid/graphics/Rect;

    .line 325
    .line 326
    iget v1, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    .line 327
    .line 328
    iget v5, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    .line 329
    .line 330
    iget v15, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    .line 331
    .line 332
    move-object/from16 p0, v4

    .line 333
    .line 334
    iget v4, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    .line 335
    .line 336
    invoke-direct {v0, v1, v5, v15, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 337
    .line 338
    .line 339
    iget-boolean v15, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    .line 340
    .line 341
    iget v4, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    .line 342
    .line 343
    iget v5, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    .line 344
    .line 345
    iget-boolean v1, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 346
    .line 347
    move/from16 v17, v15

    .line 348
    .line 349
    new-instance v15, Landroid/graphics/Rect;

    .line 350
    .line 351
    move/from16 v18, v1

    .line 352
    .line 353
    iget v1, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetLeft:I

    .line 354
    .line 355
    move/from16 v20, v4

    .line 356
    .line 357
    iget v4, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetTop:I

    .line 358
    .line 359
    move/from16 p2, v5

    .line 360
    .line 361
    iget v5, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetRight:I

    .line 362
    .line 363
    iget v6, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetBottom:I

    .line 364
    .line 365
    invoke-direct {v15, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 366
    .line 367
    .line 368
    const/16 v19, 0x0

    .line 369
    .line 370
    move-object/from16 v1, v22

    .line 371
    .line 372
    move/from16 v24, p2

    .line 373
    .line 374
    move/from16 v23, v20

    .line 375
    .line 376
    move-object/from16 v20, p0

    .line 377
    .line 378
    move-wide v4, v9

    .line 379
    move-object v6, v7

    .line 380
    move-object v7, v8

    .line 381
    move-object v8, v12

    .line 382
    move v9, v13

    .line 383
    move v10, v14

    .line 384
    move-object/from16 v12, v20

    .line 385
    .line 386
    move-object v13, v0

    .line 387
    move/from16 v14, p3

    .line 388
    .line 389
    move-object/from16 v20, v15

    .line 390
    .line 391
    move-object/from16 v0, v16

    .line 392
    .line 393
    move/from16 v15, v17

    .line 394
    .line 395
    move/from16 v16, v23

    .line 396
    .line 397
    move/from16 v17, v24

    .line 398
    .line 399
    :try_start_2
    invoke-direct/range {v1 .. v20}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 400
    .line 401
    .line 402
    return-object v22

    .line 403
    :catch_1
    move-object/from16 v0, v16

    .line 404
    .line 405
    :catch_2
    :goto_8
    const-string v1, "Unable to load task snapshot data for Id="

    .line 406
    .line 407
    move/from16 v2, p1

    .line 408
    .line 409
    invoke-static {v2, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    return-object v21
.end method
