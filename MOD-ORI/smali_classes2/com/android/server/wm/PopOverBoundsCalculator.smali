.class public abstract Lcom/android/server/wm/PopOverBoundsCalculator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 15
    .line 16
    new-instance v3, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 41
    .line 42
    iget v3, v3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 43
    .line 44
    :goto_0
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v7, 0x1

    .line 78
    const/4 v8, 0x0

    .line 79
    if-eq v3, v7, :cond_4

    .line 80
    .line 81
    const/4 v9, 0x3

    .line 82
    if-ne v3, v9, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v9, v8

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    :goto_2
    move v9, v7

    .line 88
    :goto_3
    if-eqz v9, :cond_5

    .line 89
    .line 90
    iget v10, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    iget v10, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 94
    .line 95
    :goto_4
    if-eqz v9, :cond_6

    .line 96
    .line 97
    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 101
    .line 102
    :goto_5
    new-instance v11, Landroid/graphics/Rect;

    .line 103
    .line 104
    iget-object v12, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 105
    .line 106
    invoke-virtual {v12, v3, v10, v9}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    iget-object v9, v9, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-direct {v11, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 113
    .line 114
    .line 115
    iget v9, v11, Landroid/graphics/Rect;->top:I

    .line 116
    .line 117
    iget v10, v11, Landroid/graphics/Rect;->bottom:I

    .line 118
    .line 119
    invoke-virtual {v6, v8, v9, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    .line 121
    .line 122
    iget-object v8, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 123
    .line 124
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    const/4 v9, -0x1

    .line 133
    if-eqz v8, :cond_7

    .line 134
    .line 135
    const-string/jumbo v10, "task_bar_current_size"

    .line 136
    .line 137
    .line 138
    invoke-static {v8, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    goto :goto_6

    .line 143
    :cond_7
    move v8, v9

    .line 144
    :goto_6
    if-eq v8, v9, :cond_8

    .line 145
    .line 146
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 147
    .line 148
    if-eq v8, v9, :cond_8

    .line 149
    .line 150
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 155
    .line 156
    :cond_8
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 157
    .line 158
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-eqz v9, :cond_9

    .line 163
    .line 164
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 165
    .line 166
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    add-int/2addr v1, p0

    .line 171
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_9
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-eqz v8, :cond_a

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    invoke-virtual {v1, v3, p0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    .line 194
    .line 195
    if-eqz v3, :cond_b

    .line 196
    .line 197
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    .line 198
    .line 199
    if-eqz v1, :cond_b

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 202
    .line 203
    .line 204
    :cond_b
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 205
    .line 206
    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 207
    .line 208
    iget v8, p0, Landroid/graphics/Rect;->top:I

    .line 209
    .line 210
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    add-int/2addr v3, v1

    .line 215
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 216
    .line 217
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 218
    .line 219
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 220
    .line 221
    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    .line 222
    .line 223
    add-int/2addr v3, v8

    .line 224
    sub-int/2addr v1, v3

    .line 225
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 226
    .line 227
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 228
    .line 229
    iget v3, v6, Landroid/graphics/Rect;->left:I

    .line 230
    .line 231
    iget v8, p0, Landroid/graphics/Rect;->left:I

    .line 232
    .line 233
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    add-int/2addr v3, v1

    .line 238
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 239
    .line 240
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 241
    .line 242
    iget v3, v6, Landroid/graphics/Rect;->right:I

    .line 243
    .line 244
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 245
    .line 246
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    sub-int/2addr v1, p0

    .line 251
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 252
    .line 253
    :goto_7
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 254
    .line 255
    const/high16 v1, 0x41400000    # 12.0f

    .line 256
    .line 257
    mul-float/2addr v1, v5

    .line 258
    float-to-int v1, v1

    .line 259
    add-int/2addr p0, v1

    .line 260
    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 261
    .line 262
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 263
    .line 264
    const/high16 v3, 0x41800000    # 16.0f

    .line 265
    .line 266
    mul-float/2addr v3, v5

    .line 267
    float-to-int v3, v3

    .line 268
    sub-int/2addr p0, v3

    .line 269
    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 270
    .line 271
    iget p0, v2, Landroid/graphics/Rect;->left:I

    .line 272
    .line 273
    add-int/2addr p0, v1

    .line 274
    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 275
    .line 276
    iget p0, v2, Landroid/graphics/Rect;->right:I

    .line 277
    .line 278
    sub-int/2addr p0, v1

    .line 279
    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 280
    .line 281
    iget-object p0, v0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 282
    .line 283
    aget p0, p0, v4

    .line 284
    .line 285
    int-to-float p0, p0

    .line 286
    mul-float/2addr p0, v5

    .line 287
    float-to-int p0, p0

    .line 288
    iget-object v1, v0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 289
    .line 290
    aget v1, v1, v4

    .line 291
    .line 292
    int-to-float v1, v1

    .line 293
    mul-float/2addr v1, v5

    .line 294
    float-to-int v1, v1

    .line 295
    iget-object v3, v0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 296
    .line 297
    aget v3, v3, v4

    .line 298
    .line 299
    iget-object v0, v0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    .line 300
    .line 301
    aget-object v0, v0, v4

    .line 302
    .line 303
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 304
    .line 305
    int-to-float v4, v4

    .line 306
    mul-float/2addr v4, v5

    .line 307
    float-to-int v4, v4

    .line 308
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 309
    .line 310
    int-to-float v0, v0

    .line 311
    mul-float/2addr v0, v5

    .line 312
    float-to-int v0, v0

    .line 313
    new-instance v5, Landroid/graphics/Rect;

    .line 314
    .line 315
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 316
    .line 317
    .line 318
    and-int/lit8 v6, v3, 0x70

    .line 319
    .line 320
    const/16 v8, 0x10

    .line 321
    .line 322
    const/4 v9, 0x2

    .line 323
    if-eq v6, v8, :cond_e

    .line 324
    .line 325
    const/16 v8, 0x20

    .line 326
    .line 327
    if-eq v6, v8, :cond_d

    .line 328
    .line 329
    const/16 v4, 0x40

    .line 330
    .line 331
    if-eq v6, v4, :cond_c

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_c
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 335
    .line 336
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    div-int/2addr v6, v9

    .line 341
    add-int/2addr v6, v4

    .line 342
    div-int/lit8 v4, p0, 0x2

    .line 343
    .line 344
    sub-int/2addr v6, v4

    .line 345
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 346
    .line 347
    add-int/2addr v6, p0

    .line 348
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_d
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 352
    .line 353
    sub-int/2addr v6, v4

    .line 354
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 355
    .line 356
    sub-int/2addr v6, p0

    .line 357
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 358
    .line 359
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 360
    .line 361
    if-ge v6, v4, :cond_f

    .line 362
    .line 363
    add-int/2addr p0, v4

    .line 364
    iput p0, v5, Landroid/graphics/Rect;->right:I

    .line 365
    .line 366
    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_e
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 370
    .line 371
    add-int/2addr v6, v4

    .line 372
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 373
    .line 374
    add-int/2addr v6, p0

    .line 375
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 376
    .line 377
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 378
    .line 379
    if-ge v4, v6, :cond_f

    .line 380
    .line 381
    sub-int p0, v4, p0

    .line 382
    .line 383
    iput p0, v5, Landroid/graphics/Rect;->left:I

    .line 384
    .line 385
    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 386
    .line 387
    :cond_f
    :goto_8
    and-int/lit8 p0, v3, 0x7

    .line 388
    .line 389
    if-eq p0, v7, :cond_12

    .line 390
    .line 391
    if-eq p0, v9, :cond_11

    .line 392
    .line 393
    const/4 v0, 0x4

    .line 394
    if-eq p0, v0, :cond_10

    .line 395
    .line 396
    goto :goto_9

    .line 397
    :cond_10
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 398
    .line 399
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    div-int/2addr v0, v9

    .line 404
    add-int/2addr v0, p0

    .line 405
    div-int/lit8 p0, v1, 0x2

    .line 406
    .line 407
    sub-int/2addr v0, p0

    .line 408
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 409
    .line 410
    add-int/2addr v0, v1

    .line 411
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_11
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 415
    .line 416
    sub-int/2addr p0, v0

    .line 417
    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    .line 418
    .line 419
    sub-int/2addr p0, v1

    .line 420
    iput p0, v5, Landroid/graphics/Rect;->top:I

    .line 421
    .line 422
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 423
    .line 424
    if-ge p0, v0, :cond_13

    .line 425
    .line 426
    add-int/2addr v1, v0

    .line 427
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 428
    .line 429
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 430
    .line 431
    goto :goto_9

    .line 432
    :cond_12
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 433
    .line 434
    add-int/2addr p0, v0

    .line 435
    iput p0, v5, Landroid/graphics/Rect;->top:I

    .line 436
    .line 437
    add-int/2addr p0, v1

    .line 438
    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    .line 439
    .line 440
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 441
    .line 442
    if-ge v0, p0, :cond_13

    .line 443
    .line 444
    sub-int p0, v0, v1

    .line 445
    .line 446
    iput p0, v5, Landroid/graphics/Rect;->top:I

    .line 447
    .line 448
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 449
    .line 450
    :cond_13
    :goto_9
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 451
    .line 452
    .line 453
    return-object v5
.end method
