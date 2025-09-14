.class public abstract Lcom/android/server/wm/ConfigurationContainer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final BOUNDS_CHANGE_NONE:I = 0x0

.field static final BOUNDS_CHANGE_POSITION:I = 0x1

.field static final BOUNDS_CHANGE_SIZE:I = 0x2


# instance fields
.field private mChangeListeners:Ljava/util/ArrayList;

.field private mFullConfiguration:Landroid/content/res/Configuration;

.field private mHasOverrideConfiguration:Z

.field private mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mRequestsTmpConfig:Landroid/content/res/Configuration;

.field private mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mResolvedTmpConfig:Landroid/content/res/Configuration;

.field private mReturnBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 17
    .line 18
    new-instance v0, Landroid/content/res/Configuration;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 24
    .line 25
    new-instance v0, Landroid/content/res/Configuration;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 31
    .line 32
    new-instance v0, Landroid/content/res/Configuration;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v0, Landroid/content/res/Configuration;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 52
    .line 53
    new-instance v0, Landroid/content/res/Configuration;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    .line 59
    .line 60
    new-instance v0, Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 66
    .line 67
    return-void
.end method

.method public static applySizeOverrideIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZZZLcom/android/server/wm/Task;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 12
    .line 13
    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerFlags;->mInsetsDecoupledConfiguration:Z

    .line 14
    .line 15
    const-wide/32 v4, 0x138268ed

    .line 16
    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    const-wide/32 v10, 0x90d3a73

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v10, v11}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v4, v5}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    move v1, v9

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v1, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1, v4, v5}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_0
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v3}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    iget-object v4, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    iget-object v4, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    :cond_3
    move v4, v9

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    move v4, v6

    .line 80
    :goto_1
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const/4 v7, -0x1

    .line 87
    if-ne v5, v7, :cond_5

    .line 88
    .line 89
    if-nez p5, :cond_5

    .line 90
    .line 91
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 92
    .line 93
    iget v5, v5, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 94
    .line 95
    :cond_5
    if-nez p4, :cond_7

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    if-nez p6, :cond_6

    .line 100
    .line 101
    if-nez v4, :cond_6

    .line 102
    .line 103
    if-ne v5, v7, :cond_7

    .line 104
    .line 105
    :cond_6
    return-void

    .line 106
    :cond_7
    if-eqz v4, :cond_8

    .line 107
    .line 108
    return-void

    .line 109
    :cond_8
    if-eqz p5, :cond_9

    .line 110
    .line 111
    iget-object v1, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    invoke-virtual {v1, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 115
    .line 116
    .line 117
    iput v6, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 118
    .line 119
    iput v6, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 120
    .line 121
    iput v6, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 122
    .line 123
    iput v6, v8, Landroid/content/res/Configuration;->orientation:I

    .line 124
    .line 125
    :cond_9
    if-eq v5, v9, :cond_a

    .line 126
    .line 127
    const/4 v1, 0x3

    .line 128
    if-ne v5, v1, :cond_b

    .line 129
    .line 130
    :cond_a
    move v6, v9

    .line 131
    :cond_b
    if-eqz v6, :cond_c

    .line 132
    .line 133
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 134
    .line 135
    :goto_2
    move v4, v1

    .line 136
    goto :goto_3

    .line 137
    :cond_c
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_3
    if-eqz v6, :cond_d

    .line 141
    .line 142
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 143
    .line 144
    :goto_4
    move v7, v1

    .line 145
    goto :goto_5

    .line 146
    :cond_d
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :goto_5
    iget-object v1, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-eqz v1, :cond_e

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_13

    .line 162
    .line 163
    :cond_e
    iget-object v1, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 164
    .line 165
    iget-object v10, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 166
    .line 167
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v1, v10}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-eqz p7, :cond_10

    .line 181
    .line 182
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    if-eqz v10, :cond_11

    .line 187
    .line 188
    iget v11, v10, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    .line 189
    .line 190
    if-nez v11, :cond_f

    .line 191
    .line 192
    iget v12, v10, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 193
    .line 194
    if-eqz v12, :cond_11

    .line 195
    .line 196
    :cond_f
    iget v12, v10, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 197
    .line 198
    invoke-virtual {v1, v12, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 199
    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_10
    move-object/from16 v10, p7

    .line 203
    .line 204
    :cond_11
    :goto_6
    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 205
    .line 206
    invoke-virtual {v11, v5, v4, v7}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorFrame:Landroid/graphics/Rect;

    .line 211
    .line 212
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 213
    .line 214
    .line 215
    if-eqz v10, :cond_13

    .line 216
    .line 217
    iget v5, v10, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    .line 218
    .line 219
    if-nez v5, :cond_12

    .line 220
    .line 221
    iget v11, v10, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 222
    .line 223
    if-eqz v11, :cond_13

    .line 224
    .line 225
    :cond_12
    iget v10, v10, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 226
    .line 227
    neg-int v10, v10

    .line 228
    neg-int v5, v5

    .line 229
    invoke-virtual {v1, v10, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 230
    .line 231
    .line 232
    :cond_13
    iget v5, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 233
    .line 234
    int-to-float v5, v5

    .line 235
    const/4 v10, 0x0

    .line 236
    cmpl-float v10, v5, v10

    .line 237
    .line 238
    if-nez v10, :cond_14

    .line 239
    .line 240
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 241
    .line 242
    int-to-float v5, v2

    .line 243
    :cond_14
    const v2, 0x3bcccccd    # 0.00625f

    .line 244
    .line 245
    .line 246
    mul-float/2addr v5, v2

    .line 247
    iget v2, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 248
    .line 249
    const/high16 v10, 0x3f000000    # 0.5f

    .line 250
    .line 251
    if-nez v2, :cond_15

    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    int-to-float v2, v2

    .line 258
    div-float/2addr v2, v5

    .line 259
    add-float/2addr v2, v10

    .line 260
    float-to-int v2, v2

    .line 261
    iput v2, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 262
    .line 263
    :cond_15
    iget v2, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 264
    .line 265
    if-nez v2, :cond_16

    .line 266
    .line 267
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    int-to-float v1, v1

    .line 272
    div-float/2addr v1, v5

    .line 273
    add-float/2addr v1, v10

    .line 274
    float-to-int v1, v1

    .line 275
    iput v1, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 276
    .line 277
    :cond_16
    iget v1, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 278
    .line 279
    if-nez v1, :cond_17

    .line 280
    .line 281
    if-ne v3, v9, :cond_17

    .line 282
    .line 283
    new-instance v1, Landroid/view/DisplayInfo;

    .line 284
    .line 285
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 286
    .line 287
    invoke-direct {v1, v2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 288
    .line 289
    .line 290
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 291
    .line 292
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    .line 293
    .line 294
    const/4 v10, 0x1

    .line 295
    move-object v0, p0

    .line 296
    move v2, v6

    .line 297
    move v3, v4

    .line 298
    move v4, v7

    .line 299
    move-object/from16 v6, p3

    .line 300
    .line 301
    move v7, v10

    .line 302
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRanges(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;Z)V

    .line 303
    .line 304
    .line 305
    :cond_17
    iget v0, v8, Landroid/content/res/Configuration;->orientation:I

    .line 306
    .line 307
    if-nez v0, :cond_19

    .line 308
    .line 309
    iget v0, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 310
    .line 311
    iget v1, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 312
    .line 313
    if-gt v0, v1, :cond_18

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_18
    const/4 v9, 0x2

    .line 317
    :goto_7
    iput v9, v8, Landroid/content/res/Configuration;->orientation:I

    .line 318
    .line 319
    :cond_19
    return-void
.end method

.method public static equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    if-eq p0, p1, :cond_2

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
.end method

.method public static isCompatibleActivityType(II)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p0, v1, :cond_1

    .line 8
    .line 9
    return v2

    .line 10
    :cond_1
    if-eqz p0, :cond_3

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_2
    move v0, v2

    .line 16
    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v3, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 21
    .line 22
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 23
    .line 24
    and-int/lit8 v4, v3, 0x30

    .line 25
    .line 26
    and-int/lit8 p1, p1, 0x30

    .line 27
    .line 28
    if-ne v4, p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    and-int/lit8 v3, v3, -0x31

    .line 32
    .line 33
    or-int/2addr p1, v3

    .line 34
    iput p1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 35
    .line 36
    move p1, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    move p1, v0

    .line 39
    :goto_1
    if-eqz p2, :cond_3

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, p2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {v2, p2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, v2, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 60
    .line 61
    move p2, v1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    :goto_2
    move p2, v0

    .line 64
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 65
    .line 66
    if-nez p3, :cond_4

    .line 67
    .line 68
    move p3, v0

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    :goto_4
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/ConfigurationContainer;->setOverrideGender(Landroid/content/res/Configuration;I)Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-nez p1, :cond_5

    .line 79
    .line 80
    if-nez p2, :cond_5

    .line 81
    .line 82
    if-eqz p3, :cond_6

    .line 83
    .line 84
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    if-nez p1, :cond_7

    .line 90
    .line 91
    if-nez p2, :cond_7

    .line 92
    .line 93
    if-eqz p3, :cond_8

    .line 94
    .line 95
    :cond_7
    move v0, v1

    .line 96
    :cond_8
    return v0
.end method

.method public containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public diffRequestedOverrideBounds(Landroid/graphics/Rect;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 v1, 0x1

    .line 28
    :cond_2
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v0, v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eq p0, p1, :cond_4

    .line 49
    .line 50
    :cond_3
    or-int/lit8 v1, v1, 0x2

    .line 51
    .line 52
    :cond_4
    return v1
.end method

.method public diffRequestedOverrideMaxBounds(Landroid/graphics/Rect;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentRequestedOverrideMaxBounds(Landroid/graphics/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideMaxBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 v1, 0x1

    .line 28
    :cond_2
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v0, v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eq p0, p1, :cond_4

    .line 49
    .line 50
    :cond_3
    or-int/lit8 v1, v1, 0x2

    .line 51
    .line 52
    :cond_4
    return v1
.end method

.method public dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method public dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 3
    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    .line 6
    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_2
    invoke-static {p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_3

    .line 13
    const-string/jumbo v5, "\u2514\u2500 "

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "\u251c\u2500 "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mode="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " override-mode="

    const-string v5, " requested-bounds="

    .line 15
    invoke-static {v4, v1, v0, v3, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bounds="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    const-string p2, "   "

    goto :goto_1

    :cond_4
    const-string/jumbo p2, "\u2502  "

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_2
    if-ltz p3, :cond_6

    .line 21
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-nez p3, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 22
    :goto_3
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "-----------------------------------------------"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "#"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p3, " "

    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "   Full="

    .line 61
    .line 62
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 66
    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, "   Merg="

    .line 86
    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 91
    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-boolean p3, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 103
    .line 104
    if-eqz p3, :cond_1

    .line 105
    .line 106
    iget-object p3, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 109
    .line 110
    invoke-virtual {p3, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-eqz p3, :cond_0

    .line 115
    .line 116
    const-string p3, "   Over="

    .line 117
    .line 118
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 123
    .line 124
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    const-string p3, "   Over(Request)="

    .line 136
    .line 137
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 142
    .line 143
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance p3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, "   Over(Resolve)="

    .line 162
    .line 163
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 167
    .line 168
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    .line 179
    .line 180
    .line 181
    move-result p3

    .line 182
    add-int/lit8 p3, p3, -0x1

    .line 183
    .line 184
    :goto_1
    if-ltz p3, :cond_2

    .line 185
    .line 186
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, "  "

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/ConfigurationContainer;->dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    add-int/lit8 p3, p3, -0x1

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_2
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7

    .line 1
    const-wide p2, 0x10b00000001L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    iget-boolean v4, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    if-ne p4, v5, :cond_1

    .line 22
    .line 23
    move v5, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v5, v3

    .line 26
    :goto_0
    invoke-virtual {v4, p1, p2, p3, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 27
    .line 28
    .line 29
    :cond_2
    const-wide p2, 0x10b00000002L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    if-nez p4, :cond_3

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 37
    .line 38
    invoke-virtual {v4, p1, p2, p3, v3}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 42
    .line 43
    const-wide v5, 0x10b00000003L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p1, v5, v6, v3}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 49
    .line 50
    .line 51
    :cond_3
    if-ne p4, v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide p2

    .line 57
    const-wide v2, 0x10b00000013L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 67
    .line 68
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    const-wide v4, 0x10500000002L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public equivalentRequestedOverrideMaxBounds(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideMaxBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getActivityType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
.end method

.method public abstract getChildCount()I
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    return-object p0
.end method

.method public getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public abstract getParent()Lcom/android/server/wm/ConfigurationContainer;
.end method

.method public getPosition(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getRequestedOverrideBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRequestedOverrideBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getRequestedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRequestedOverrideMaxBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    return-object p0
.end method

.method public getRequestedOverrideWindowingMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getResolvedOverrideBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    return-object p0
.end method

.method public getResolvedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStagePosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getStageType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getWindowConfiguration()Landroid/app/WindowConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    return-object p0
.end method

.method public getWindowingMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public hasChild()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-lez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public hasOverrideBounds()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public hasRequestedOverrideConfiguration()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 2
    .line 3
    return p0
.end method

.method public hasStagePosition(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    and-int/2addr p0, p1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public inFreeformWindowingMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x5

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public inFullscreenWindowingMode()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public inMultiWindowMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public inPinnedWindowingMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public inSplitScreenWindowingMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-static {p0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isActivityTypeAssistant()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public isActivityTypeDream()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x5

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public isActivityTypeHome()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isActivityTypeHomeOrRecents()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public isActivityTypeRecents()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x3

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public isActivityTypeStandard()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isActivityTypeStandardOrUndefined()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :cond_1
    :goto_0
    return v0
.end method

.method public isAlwaysOnTop()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isAlwaysOnTopFreeform()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public isCompatible(II)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, p2, :cond_0

    .line 12
    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-ne v1, p1, :cond_1

    .line 17
    .line 18
    move v2, v3

    .line 19
    :cond_1
    if-eqz v0, :cond_2

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    if-eqz p2, :cond_3

    .line 25
    .line 26
    if-ne p2, v3, :cond_4

    .line 27
    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_5

    .line 33
    .line 34
    :cond_4
    return v0

    .line 35
    :cond_5
    return v2
.end method

.method public isDesktopModeEnabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isDexMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isNewDexMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public matchParentBounds()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 17
    .line 18
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->unsetAlwaysOnTop()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    add-int/lit8 p1, p1, -0x1

    .line 50
    .line 51
    :goto_0
    if-ltz p1, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/server/wm/ConfigurationContainerListener;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 p1, p1, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    add-int/lit8 p1, p1, -0x1

    .line 76
    .line 77
    :goto_1
    if-ltz p1, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/android/server/wm/ConfigurationContainerListener;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 88
    .line 89
    invoke-interface {v0, v1}, Lcom/android/server/wm/ConfigurationContainerListener;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 p1, p1, -0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    add-int/lit8 p1, p1, -0x1

    .line 100
    .line 101
    :goto_2
    if-ltz p1, :cond_2

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 108
    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 p1, p1, -0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    return-void
.end method

.method public onMergedOverrideConfigurationChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->unsetAlwaysOnTop()V

    .line 4
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public providesMaxBounds()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;Z)V

    return-void
.end method

.method public registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, p2}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, p0}, Lcom/android/server/wm/ConfigurationContainerListener;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setActivityType(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v1, "setActivityType\'s exception occurs, name="

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", caller="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x7

    .line 53
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "WindowManager"

    .line 65
    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Can\'t change activity type once set: "

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p0, " activityType="

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public setAlwaysOnTop(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setBounds(IIII)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->providesMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideMaxBounds(Landroid/graphics/Rect;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return v0
.end method

.method public setDexTaskDocking(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setEmbedActivityMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setFreeformTaskPinning(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 21
    .line 22
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne p1, v1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 35
    .line 36
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setOverrideGender(Landroid/content/res/Configuration;I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setStageType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setStageType(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setWindowingMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 17
    .line 18
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->providesMaxBounds()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideMaxBounds(Landroid/graphics/Rect;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 41
    .line 42
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
