.class public final Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlignment:I

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mControlTargetHeight:I

.field public mIsIntersectWithIme:Z

.field public final mRecomputeConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mRecomputeConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/16 v0, 0x11

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    return-void
.end method

.method public static isLetterboxedByAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method


# virtual methods
.method public final getAlignment()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mIsIntersectWithIme:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    .line 6
    .line 7
    and-int/lit8 p0, p0, 0x7

    .line 8
    .line 9
    or-int/lit8 p0, p0, 0x30

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    .line 13
    .line 14
    :goto_0
    return p0
.end method

.method public final getHorizontalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getAlignment()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/lit8 p0, p0, 0x7

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sub-int/2addr p0, p1

    .line 22
    add-int/lit8 p0, p0, 0x1

    .line 23
    .line 24
    int-to-float p0, p0

    .line 25
    const/high16 p1, 0x3f000000    # 0.5f

    .line 26
    .line 27
    mul-float/2addr p0, p1

    .line 28
    float-to-int p0, p0

    .line 29
    return p0

    .line 30
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sub-int/2addr p0, p1

    .line 37
    return p0

    .line 38
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    return p0
.end method

.method public final getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getAlignment()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/lit8 p0, p0, 0x70

    .line 6
    .line 7
    const/16 v0, 0x30

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x50

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    sub-int/2addr p0, p1

    .line 24
    add-int/lit8 p0, p0, 0x1

    .line 25
    .line 26
    int-to-float p0, p0

    .line 27
    const/high16 p1, 0x3f000000    # 0.5f

    .line 28
    .line 29
    mul-float/2addr p0, p1

    .line 30
    float-to-int p0, p0

    .line 31
    return p0

    .line 32
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    sub-int/2addr p0, p1

    .line 39
    return p0

    .line 40
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    return p0
.end method

.method public final updateResolvedBoundsPosition(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-boolean v1, v1, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    move v1, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    const/4 v3, 0x2

    .line 30
    const-string v4, "MultiTaskingAppCompatReachabilityPolicy"

    .line 31
    .line 32
    if-eqz v1, :cond_8

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iget-object v6, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 51
    .line 52
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 57
    .line 58
    iget-object v7, v7, Lcom/android/server/wm/AppCompatController;->mAppCompatSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 59
    .line 60
    invoke-virtual {v7}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_1

    .line 65
    .line 66
    iget-object v7, v7, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move-object v7, v5

    .line 70
    :goto_1
    if-nez v6, :cond_2

    .line 71
    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p2, "adjustSizeCompatBounds: resolvedAppBounds is null. r="

    .line 75
    .line 76
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :cond_2
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    .line 92
    .line 93
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eq v4, v0, :cond_3

    .line 100
    .line 101
    if-ne v4, v3, :cond_5

    .line 102
    .line 103
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-le v4, v1, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    move v0, v2

    .line 115
    :goto_2
    move v2, v0

    .line 116
    :cond_5
    if-eqz v2, :cond_6

    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    sub-int/2addr v0, v1

    .line 127
    div-int/2addr v0, v3

    .line 128
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 129
    .line 130
    sub-int/2addr v0, v1

    .line 131
    invoke-virtual {p0, p2, v7}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    iget p2, v7, Landroid/graphics/Rect;->top:I

    .line 136
    .line 137
    sub-int/2addr p0, p2

    .line 138
    invoke-virtual {v7, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    invoke-virtual {p0, p2, v7}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getHorizontalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 147
    .line 148
    sub-int/2addr p0, v0

    .line 149
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    sub-int/2addr p2, v0

    .line 158
    div-int/2addr p2, v3

    .line 159
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 160
    .line 161
    sub-int/2addr p2, v0

    .line 162
    invoke-virtual {v7, p0, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 163
    .line 164
    .line 165
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_7

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getCompatScale()F

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    goto :goto_4

    .line 176
    :cond_7
    const/high16 p0, 0x3f800000    # 1.0f

    .line 177
    .line 178
    :goto_4
    iget p1, v7, Landroid/graphics/Rect;->left:I

    .line 179
    .line 180
    int-to-float p1, p1

    .line 181
    div-float/2addr p1, p0

    .line 182
    const/high16 p2, 0x3f000000    # 0.5f

    .line 183
    .line 184
    add-float/2addr p1, p2

    .line 185
    float-to-int p1, p1

    .line 186
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 187
    .line 188
    sub-int/2addr p1, v0

    .line 189
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 190
    .line 191
    int-to-float v0, v0

    .line 192
    div-float/2addr v0, p0

    .line 193
    add-float/2addr v0, p2

    .line 194
    float-to-int p0, v0

    .line 195
    iget p2, v5, Landroid/graphics/Rect;->top:I

    .line 196
    .line 197
    sub-int/2addr p0, p2

    .line 198
    invoke-virtual {v5, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 202
    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_8
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->isLetterboxedByAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_d

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 216
    .line 217
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 222
    .line 223
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    iget-object v6, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 228
    .line 229
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    if-nez v6, :cond_9

    .line 234
    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string p2, "adjustAspectRatioBounds: resolvedAppBounds is null. r="

    .line 238
    .line 239
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_9
    iget p1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 254
    .line 255
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 256
    .line 257
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    if-eq p1, v0, :cond_b

    .line 262
    .line 263
    if-ne p1, v3, :cond_a

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_a
    move v0, v2

    .line 267
    goto :goto_6

    .line 268
    :cond_b
    :goto_5
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-le p1, v1, :cond_a

    .line 277
    .line 278
    :goto_6
    if-eqz v0, :cond_c

    .line 279
    .line 280
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    iget p1, v5, Landroid/graphics/Rect;->top:I

    .line 285
    .line 286
    sub-int/2addr p0, p1

    .line 287
    invoke-virtual {v5, v2, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6, v2, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 291
    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_c
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getHorizontalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 299
    .line 300
    sub-int/2addr p0, p1

    .line 301
    invoke-virtual {v5, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 305
    .line 306
    .line 307
    :cond_d
    :goto_7
    return-void
.end method
