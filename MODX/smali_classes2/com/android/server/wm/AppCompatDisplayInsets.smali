.class public final Lcom/android/server/wm/AppCompatDisplayInsets;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHeight:I

.field public final mIsFloating:Z

.field public final mIsInFixedOrientationOrAspectRatioLetterbox:Z

.field public final mIsRotationCompatMode:Z

.field public final mNonDecorInsets:[Landroid/graphics/Rect;

.field public final mOriginalRequestedOrientation:I

.field public final mStableInsets:[Landroid/graphics/Rect;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V
    .locals 16

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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    new-array v4, v3, [Landroid/graphics/Rect;

    .line 12
    .line 13
    iput-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 14
    .line 15
    new-array v4, v3, [Landroid/graphics/Rect;

    .line 16
    .line 17
    iput-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 18
    .line 19
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x1

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 28
    .line 29
    iget-object v7, v7, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 30
    .line 31
    invoke-virtual {v7, v2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldCreateAppCompatDisplayInsetsForRotationCompat(Lcom/android/server/wm/ActivityRecord;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    move v7, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v7, v5

    .line 40
    :goto_0
    iput-boolean v7, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    .line 41
    .line 42
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    .line 44
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 45
    .line 46
    iget-object v8, v8, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    move v4, v6

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v4, v5

    .line 58
    :goto_1
    const/4 v7, 0x0

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    move-object v4, v7

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move-object/from16 v4, p3

    .line 64
    .line 65
    :goto_2
    iget-object v8, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 66
    .line 67
    iget v8, v8, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 68
    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    iput-boolean v8, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    .line 78
    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    iput v9, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRequestedOrientation:I

    .line 84
    .line 85
    if-eqz v8, :cond_4

    .line 86
    .line 87
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iput v2, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iput v1, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 106
    .line 107
    new-instance v1, Landroid/graphics/Rect;

    .line 108
    .line 109
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .line 111
    .line 112
    move v2, v5

    .line 113
    :goto_3
    if-ge v2, v3, :cond_3

    .line 114
    .line 115
    iget-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 116
    .line 117
    aput-object v1, v4, v2

    .line 118
    .line 119
    iget-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 120
    .line 121
    aput-object v1, v4, v2

    .line 122
    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_3
    iput-boolean v5, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    .line 127
    .line 128
    return-void

    .line 129
    :cond_4
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 130
    .line 131
    if-eqz v4, :cond_5

    .line 132
    .line 133
    move v9, v6

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    move v9, v5

    .line 136
    :goto_4
    iput-boolean v9, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    .line 137
    .line 138
    if-eqz v9, :cond_6

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    if-eqz v8, :cond_7

    .line 142
    .line 143
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    goto :goto_5

    .line 148
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_8

    .line 157
    .line 158
    if-eqz v9, :cond_8

    .line 159
    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    goto :goto_6

    .line 169
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    :goto_6
    const/4 v8, 0x3

    .line 180
    if-eq v2, v6, :cond_a

    .line 181
    .line 182
    if-ne v2, v8, :cond_9

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_9
    move v9, v5

    .line 186
    goto :goto_8

    .line 187
    :cond_a
    :goto_7
    move v9, v6

    .line 188
    :goto_8
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-eqz v9, :cond_b

    .line 197
    .line 198
    new-instance v9, Landroid/graphics/Point;

    .line 199
    .line 200
    invoke-direct {v9, v11, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 201
    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_b
    new-instance v9, Landroid/graphics/Point;

    .line 205
    .line 206
    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 207
    .line 208
    .line 209
    :goto_9
    iget v10, v9, Landroid/graphics/Point;->x:I

    .line 210
    .line 211
    iput v10, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 212
    .line 213
    iget v9, v9, Landroid/graphics/Point;->y:I

    .line 214
    .line 215
    iput v9, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 216
    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    if-eqz v9, :cond_c

    .line 226
    .line 227
    goto :goto_a

    .line 228
    :cond_c
    new-instance v7, Landroid/graphics/Rect;

    .line 229
    .line 230
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 231
    .line 232
    .line 233
    :goto_a
    iget-object v9, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 234
    .line 235
    move v10, v5

    .line 236
    :goto_b
    if-ge v10, v3, :cond_13

    .line 237
    .line 238
    iget-object v11, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 239
    .line 240
    new-instance v12, Landroid/graphics/Rect;

    .line 241
    .line 242
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 243
    .line 244
    .line 245
    aput-object v12, v11, v10

    .line 246
    .line 247
    iget-object v11, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 248
    .line 249
    new-instance v12, Landroid/graphics/Rect;

    .line 250
    .line 251
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 252
    .line 253
    .line 254
    aput-object v12, v11, v10

    .line 255
    .line 256
    if-eq v10, v6, :cond_e

    .line 257
    .line 258
    if-ne v10, v8, :cond_d

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_d
    move v11, v5

    .line 262
    goto :goto_d

    .line 263
    :cond_e
    :goto_c
    move v11, v6

    .line 264
    :goto_d
    if-eqz v11, :cond_f

    .line 265
    .line 266
    iget v12, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 267
    .line 268
    goto :goto_e

    .line 269
    :cond_f
    iget v12, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 270
    .line 271
    :goto_e
    if-eqz v11, :cond_10

    .line 272
    .line 273
    iget v11, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 274
    .line 275
    goto :goto_f

    .line 276
    :cond_10
    iget v11, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 277
    .line 278
    :goto_f
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    if-eqz p4, :cond_11

    .line 283
    .line 284
    iget-object v14, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 285
    .line 286
    aget-object v14, v14, v10

    .line 287
    .line 288
    iget-object v15, v13, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 289
    .line 290
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 291
    .line 292
    .line 293
    iget-object v14, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 294
    .line 295
    aget-object v14, v14, v10

    .line 296
    .line 297
    iget-object v13, v13, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    .line 298
    .line 299
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 300
    .line 301
    .line 302
    goto :goto_10

    .line 303
    :cond_11
    iget-object v14, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 304
    .line 305
    aget-object v14, v14, v10

    .line 306
    .line 307
    iget-object v15, v13, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 308
    .line 309
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 310
    .line 311
    .line 312
    iget-object v14, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 313
    .line 314
    aget-object v14, v14, v10

    .line 315
    .line 316
    iget-object v13, v13, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 317
    .line 318
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 319
    .line 320
    .line 321
    :goto_10
    if-nez v7, :cond_12

    .line 322
    .line 323
    goto :goto_11

    .line 324
    :cond_12
    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v2, v7, v10}, Lcom/android/server/wm/DisplayContent;->rotateBounds(ILandroid/graphics/Rect;I)V

    .line 328
    .line 329
    .line 330
    iget-object v13, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 331
    .line 332
    aget-object v13, v13, v10

    .line 333
    .line 334
    invoke-static {v7, v12, v11, v13}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 335
    .line 336
    .line 337
    iget-object v13, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 338
    .line 339
    aget-object v13, v13, v10

    .line 340
    .line 341
    invoke-static {v7, v12, v11, v13}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 342
    .line 343
    .line 344
    :goto_11
    add-int/lit8 v10, v10, 0x1

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :cond_13
    return-void
.end method

.method public static updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    sub-int/2addr v0, v2

    .line 18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    sub-int/2addr v0, p1

    .line 27
    iget p1, p3, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    add-int/2addr v0, p1

    .line 30
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    sub-int/2addr p0, p2

    .line 39
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    add-int/2addr p0, p1

    .line 42
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final getBoundsByRotation(ILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    move v2, p0

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    move v2, p1

    .line 19
    :goto_1
    if-eqz v1, :cond_3

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_3
    move p1, p0

    .line 23
    :goto_2
    invoke-virtual {p2, v0, v0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
