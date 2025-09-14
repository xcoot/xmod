.class public final Lcom/android/server/wallpaper/WallpaperCropper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final ADD:I = 0x1

.field static final BALANCE:I = 0x3

.field static final MAX_PARALLAX:F = 1.0f

.field static final REMOVE:I = 0x2


# instance fields
.field public final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperDisplayHelper;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 5
    .line 6
    return-void
.end method

.method public static getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    div-float/2addr v1, v2

    .line 17
    iget v2, p2, Landroid/graphics/Point;->x:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    iget v3, p2, Landroid/graphics/Point;->y:I

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    div-float/2addr v2, v3

    .line 24
    cmpl-float v3, v1, v2

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    if-lez v3, :cond_3

    .line 30
    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    iget p3, p1, Landroid/graphics/Point;->y:I

    .line 34
    .line 35
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    sub-int/2addr p3, v0

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, p3

    .line 43
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    add-int/2addr p0, v1

    .line 50
    new-instance v2, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v2, p3, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    .line 54
    .line 55
    new-instance p0, Landroid/graphics/Point;

    .line 56
    .line 57
    iget p3, p1, Landroid/graphics/Point;->y:I

    .line 58
    .line 59
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 60
    .line 61
    invoke-direct {p0, p3, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Landroid/graphics/Point;

    .line 65
    .line 66
    iget p1, p2, Landroid/graphics/Point;->y:I

    .line 67
    .line 68
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 69
    .line 70
    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 71
    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v3, p0

    .line 75
    move v6, p4

    .line 76
    move v7, p5

    .line 77
    invoke-static/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    add-int/2addr p3, p2

    .line 88
    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 89
    .line 90
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 91
    .line 92
    sub-int/2addr p0, p4

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    add-int/2addr p1, p0

    .line 98
    new-instance p4, Landroid/graphics/Rect;

    .line 99
    .line 100
    invoke-direct {p4, p2, p0, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    .line 102
    .line 103
    return-object p4

    .line 104
    :cond_1
    div-float/2addr v1, v2

    .line 105
    const/high16 p1, 0x3f800000    # 1.0f

    .line 106
    .line 107
    sub-float/2addr v1, p1

    .line 108
    cmpl-float p2, v1, p1

    .line 109
    .line 110
    if-lez p2, :cond_9

    .line 111
    .line 112
    sub-float/2addr v1, p1

    .line 113
    mul-float/2addr v1, v2

    .line 114
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    int-to-float p0, p0

    .line 119
    mul-float/2addr v1, p0

    .line 120
    float-to-double p0, v1

    .line 121
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 122
    .line 123
    .line 124
    move-result-wide p0

    .line 125
    double-to-int p0, p0

    .line 126
    if-eqz p4, :cond_2

    .line 127
    .line 128
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 129
    .line 130
    add-int/2addr p1, p0

    .line 131
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_2
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 136
    .line 137
    sub-int/2addr p1, p0

    .line 138
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 139
    .line 140
    goto/16 :goto_3

    .line 141
    .line 142
    :cond_3
    const/4 p2, 0x0

    .line 143
    const/4 p3, 0x2

    .line 144
    if-ne p5, p3, :cond_4

    .line 145
    .line 146
    move p4, p2

    .line 147
    goto :goto_0

    .line 148
    :cond_4
    const/4 p4, 0x1

    .line 149
    if-ne p5, p4, :cond_5

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 152
    .line 153
    .line 154
    move-result p4

    .line 155
    int-to-float p4, p4

    .line 156
    mul-float/2addr p4, v2

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 158
    .line 159
    .line 160
    move-result p5

    .line 161
    int-to-float p5, p5

    .line 162
    sub-float/2addr p4, p5

    .line 163
    float-to-int p4, p4

    .line 164
    goto :goto_0

    .line 165
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 166
    .line 167
    .line 168
    move-result p4

    .line 169
    neg-int p4, p4

    .line 170
    int-to-double p4, p4

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    mul-int/2addr v3, v1

    .line 180
    int-to-float v1, v3

    .line 181
    mul-float/2addr v1, v2

    .line 182
    float-to-double v3, v1

    .line 183
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 184
    .line 185
    .line 186
    move-result-wide v3

    .line 187
    add-double/2addr v3, p4

    .line 188
    double-to-int p4, v3

    .line 189
    :goto_0
    iget p5, p1, Landroid/graphics/Point;->x:I

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    sub-int/2addr p5, v1

    .line 196
    if-lt p5, p4, :cond_8

    .line 197
    .line 198
    div-int/lit8 p2, p4, 0x2

    .line 199
    .line 200
    rem-int/2addr p4, p3

    .line 201
    add-int/2addr p4, p2

    .line 202
    iget p5, p0, Landroid/graphics/Rect;->left:I

    .line 203
    .line 204
    if-ge p5, p2, :cond_6

    .line 205
    .line 206
    sub-int/2addr p2, p5

    .line 207
    add-int/2addr p4, p2

    .line 208
    move p2, p5

    .line 209
    goto :goto_1

    .line 210
    :cond_6
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 211
    .line 212
    iget p5, p0, Landroid/graphics/Rect;->right:I

    .line 213
    .line 214
    sub-int v1, p1, p5

    .line 215
    .line 216
    if-ge v1, p4, :cond_7

    .line 217
    .line 218
    sub-int v1, p1, p5

    .line 219
    .line 220
    sub-int/2addr p4, v1

    .line 221
    add-int/2addr p2, p4

    .line 222
    sub-int p4, p1, p5

    .line 223
    .line 224
    :cond_7
    :goto_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 225
    .line 226
    sub-int/2addr p1, p2

    .line 227
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 228
    .line 229
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 230
    .line 231
    add-int/2addr p1, p4

    .line 232
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_8
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 236
    .line 237
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 238
    .line 239
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 240
    .line 241
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    int-to-float p0, p0

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    int-to-float p1, p1

    .line 251
    div-float/2addr p1, v2

    .line 252
    sub-float/2addr p0, p1

    .line 253
    float-to-int p0, p0

    .line 254
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 255
    .line 256
    div-int/lit8 p2, p0, 0x2

    .line 257
    .line 258
    rem-int/2addr p0, p3

    .line 259
    add-int/2addr p0, p2

    .line 260
    add-int/2addr p0, p1

    .line 261
    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 262
    .line 263
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 264
    .line 265
    sub-int/2addr p0, p2

    .line 266
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 267
    .line 268
    :cond_9
    :goto_3
    return-object v0
.end method

.method public static getOriginalCropHints(Lcom/android/server/wallpaper/WallpaperData;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/graphics/Rect;

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method public static getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Landroid/graphics/Rect;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    neg-int v4, v4

    .line 33
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    neg-int v3, v3

    .line 36
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 37
    .line 38
    .line 39
    const/high16 v3, 0x3f800000    # 1.0f

    .line 40
    .line 41
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 42
    .line 43
    div-float/2addr v3, v4

    .line 44
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method

.method public static getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    const/high16 v1, -0x80000000

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v1

    .line 8
    move v4, v2

    .line 9
    move v1, v0

    .line 10
    move v2, v3

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-ge v4, v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroid/graphics/Rect;

    .line 22
    .line 23
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 36
    .line 37
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public static noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    const/4 v3, 0x1

    .line 5
    const/4 v5, 0x1

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p2

    .line 8
    move-object v2, p1

    .line 9
    move v4, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 15
    .line 16
    int-to-float p2, p2

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    mul-float/2addr p2, v0

    .line 20
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    div-float/2addr p2, p1

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    int-to-float p1, p1

    .line 29
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    mul-float/2addr v0, p2

    .line 35
    sub-float/2addr p1, v0

    .line 36
    const/high16 p2, 0x3f000000    # 0.5f

    .line 37
    .line 38
    add-float/2addr p1, p2

    .line 39
    float-to-int p1, p1

    .line 40
    if-gtz p1, :cond_1

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    if-eqz p3, :cond_2

    .line 44
    .line 45
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    add-int/2addr p2, p1

    .line 48
    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    sub-int/2addr p2, p1

    .line 54
    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 55
    .line 56
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 6
    .line 7
    const-string v3, "WallpaperCropper"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "WPMS.generateCrop"

    .line 13
    .line 14
    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v7, Landroid/view/DisplayInfo;

    .line 28
    .line 29
    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v8, v4, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v8, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 40
    .line 41
    .line 42
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    .line 43
    .line 44
    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-static {v10, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 62
    .line 63
    if-lez v10, :cond_0

    .line 64
    .line 65
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 66
    .line 67
    if-gtz v10, :cond_1

    .line 68
    .line 69
    :cond_0
    move-object/from16 v17, v2

    .line 70
    .line 71
    goto/16 :goto_1e

    .line 72
    .line 73
    :cond_1
    new-instance v10, Landroid/graphics/Point;

    .line 74
    .line 75
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 76
    .line 77
    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 78
    .line 79
    invoke-direct {v10, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 80
    .line 81
    .line 82
    new-instance v12, Landroid/graphics/Rect;

    .line 83
    .line 84
    iget v13, v10, Landroid/graphics/Point;->x:I

    .line 85
    .line 86
    iget v14, v10, Landroid/graphics/Point;->y:I

    .line 87
    .line 88
    invoke-direct {v12, v5, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-eqz v13, :cond_4

    .line 96
    .line 97
    move v13, v5

    .line 98
    :goto_0
    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    if-ge v13, v14, :cond_4

    .line 105
    .line 106
    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 107
    .line 108
    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    iget-object v15, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    check-cast v15, Landroid/graphics/Rect;

    .line 119
    .line 120
    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v16

    .line 124
    if-nez v16, :cond_3

    .line 125
    .line 126
    invoke-virtual {v12, v15}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 127
    .line 128
    .line 129
    move-result v16

    .line 130
    if-nez v16, :cond_2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v9, "Invalid crop "

    .line 139
    .line 140
    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v9, " for orientation "

    .line 147
    .line 148
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v9, " and bitmap size "

    .line 155
    .line 156
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v9, "; clearing suggested crops."

    .line 163
    .line 164
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 175
    .line 176
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 177
    .line 178
    .line 179
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 180
    .line 181
    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    .line 183
    .line 184
    :cond_4
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 185
    .line 186
    const/4 v13, -0x1

    .line 187
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    check-cast v9, Landroid/graphics/Rect;

    .line 192
    .line 193
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-eqz v13, :cond_5

    .line 198
    .line 199
    if-eqz v9, :cond_5

    .line 200
    .line 201
    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-virtual {v13, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 204
    .line 205
    .line 206
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 207
    .line 208
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 209
    .line 210
    .line 211
    :cond_5
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-eqz v9, :cond_8

    .line 216
    .line 217
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 218
    .line 219
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-lez v9, :cond_8

    .line 224
    .line 225
    iget v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 226
    .line 227
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 228
    .line 229
    invoke-virtual {v0, v9, v12, v10}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-instance v9, Landroid/util/SparseArray;

    .line 234
    .line 235
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 236
    .line 237
    .line 238
    move v12, v5

    .line 239
    :goto_2
    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 240
    .line 241
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 242
    .line 243
    .line 244
    move-result v14

    .line 245
    if-ge v12, v14, :cond_7

    .line 246
    .line 247
    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 248
    .line 249
    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 250
    .line 251
    .line 252
    move-result v14

    .line 253
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    check-cast v15, Landroid/graphics/Rect;

    .line 258
    .line 259
    if-eqz v15, :cond_6

    .line 260
    .line 261
    invoke-virtual {v9, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_7
    iput-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 268
    .line 269
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 274
    .line 275
    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_8
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    if-eqz v9, :cond_b

    .line 284
    .line 285
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 286
    .line 287
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-eqz v9, :cond_9

    .line 292
    .line 293
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 294
    .line 295
    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 296
    .line 297
    .line 298
    :cond_9
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 299
    .line 300
    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    if-nez v9, :cond_a

    .line 305
    .line 306
    new-instance v9, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v14, "Ignoring wallpaper.cropHint = "

    .line 309
    .line 310
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 314
    .line 315
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v14, "; not within the bitmap of size "

    .line 319
    .line 320
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 334
    .line 335
    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    .line 337
    .line 338
    :cond_a
    new-instance v9, Landroid/graphics/Point;

    .line 339
    .line 340
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 341
    .line 342
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 343
    .line 344
    .line 345
    move-result v12

    .line 346
    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 347
    .line 348
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    invoke-direct {v9, v12, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 353
    .line 354
    .line 355
    iget v12, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 356
    .line 357
    new-instance v14, Landroid/util/SparseArray;

    .line 358
    .line 359
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v12, v14, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 371
    .line 372
    iget v14, v12, Landroid/graphics/Rect;->left:I

    .line 373
    .line 374
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 375
    .line 376
    invoke-virtual {v9, v14, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 377
    .line 378
    .line 379
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 380
    .line 381
    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 382
    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_b
    new-instance v9, Landroid/graphics/Rect;

    .line 386
    .line 387
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 388
    .line 389
    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 390
    .line 391
    .line 392
    const/4 v0, 0x0

    .line 393
    :goto_3
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 394
    .line 395
    .line 396
    move-result v12

    .line 397
    if-nez v12, :cond_c

    .line 398
    .line 399
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    .line 400
    .line 401
    .line 402
    move-result v12

    .line 403
    if-eqz v12, :cond_c

    .line 404
    .line 405
    iput v5, v9, Landroid/graphics/Rect;->top:I

    .line 406
    .line 407
    iput v5, v9, Landroid/graphics/Rect;->left:I

    .line 408
    .line 409
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 410
    .line 411
    iput v12, v9, Landroid/graphics/Rect;->right:I

    .line 412
    .line 413
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 414
    .line 415
    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_c
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 419
    .line 420
    .line 421
    move-result v12

    .line 422
    if-nez v12, :cond_10

    .line 423
    .line 424
    iget v12, v9, Landroid/graphics/Rect;->right:I

    .line 425
    .line 426
    iget v14, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 427
    .line 428
    if-le v12, v14, :cond_d

    .line 429
    .line 430
    sub-int/2addr v14, v12

    .line 431
    goto :goto_4

    .line 432
    :cond_d
    move v14, v5

    .line 433
    :goto_4
    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 434
    .line 435
    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 436
    .line 437
    if-le v12, v15, :cond_e

    .line 438
    .line 439
    sub-int/2addr v15, v12

    .line 440
    goto :goto_5

    .line 441
    :cond_e
    move v15, v5

    .line 442
    :goto_5
    invoke-virtual {v9, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 443
    .line 444
    .line 445
    iget v12, v9, Landroid/graphics/Rect;->left:I

    .line 446
    .line 447
    if-gez v12, :cond_f

    .line 448
    .line 449
    iput v5, v9, Landroid/graphics/Rect;->left:I

    .line 450
    .line 451
    :cond_f
    iget v12, v9, Landroid/graphics/Rect;->top:I

    .line 452
    .line 453
    if-gez v12, :cond_10

    .line 454
    .line 455
    iput v5, v9, Landroid/graphics/Rect;->top:I

    .line 456
    .line 457
    :cond_10
    :goto_6
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 458
    .line 459
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 460
    .line 461
    .line 462
    move-result v14

    .line 463
    if-gt v12, v14, :cond_12

    .line 464
    .line 465
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 466
    .line 467
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 468
    .line 469
    .line 470
    move-result v14

    .line 471
    if-le v12, v14, :cond_11

    .line 472
    .line 473
    goto :goto_7

    .line 474
    :cond_11
    move v12, v5

    .line 475
    goto :goto_8

    .line 476
    :cond_12
    :goto_7
    const/4 v12, 0x1

    .line 477
    :goto_8
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 478
    .line 479
    .line 480
    move-result v14

    .line 481
    iget v15, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 482
    .line 483
    if-gt v14, v15, :cond_14

    .line 484
    .line 485
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 486
    .line 487
    .line 488
    move-result v14

    .line 489
    sget v15, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    .line 490
    .line 491
    if-gt v14, v15, :cond_14

    .line 492
    .line 493
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 494
    .line 495
    .line 496
    move-result v14

    .line 497
    if-le v14, v15, :cond_13

    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_13
    move v14, v5

    .line 501
    goto :goto_a

    .line 502
    :cond_14
    :goto_9
    const/4 v14, 0x1

    .line 503
    :goto_a
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 504
    .line 505
    .line 506
    move-result v15

    .line 507
    const v17, 0x7f7fffff    # Float.MAX_VALUE

    .line 508
    .line 509
    .line 510
    if-eqz v15, :cond_19

    .line 511
    .line 512
    move v15, v5

    .line 513
    move/from16 v14, v17

    .line 514
    .line 515
    :goto_b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 516
    .line 517
    .line 518
    move-result v13

    .line 519
    if-ge v15, v13, :cond_16

    .line 520
    .line 521
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    .line 522
    .line 523
    .line 524
    move-result v13

    .line 525
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v17

    .line 529
    check-cast v17, Landroid/graphics/Rect;

    .line 530
    .line 531
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 532
    .line 533
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    check-cast v5, Landroid/graphics/Point;

    .line 538
    .line 539
    if-nez v5, :cond_15

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :cond_15
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    .line 543
    .line 544
    .line 545
    move-result v13

    .line 546
    iget v11, v5, Landroid/graphics/Point;->x:I

    .line 547
    .line 548
    div-int/2addr v13, v11

    .line 549
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    .line 550
    .line 551
    .line 552
    move-result v11

    .line 553
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 554
    .line 555
    div-int/2addr v11, v5

    .line 556
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    .line 557
    .line 558
    .line 559
    move-result v5

    .line 560
    int-to-float v5, v5

    .line 561
    const/high16 v11, 0x3f800000    # 1.0f

    .line 562
    .line 563
    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    .line 564
    .line 565
    .line 566
    move-result v5

    .line 567
    invoke-static {v14, v5}, Ljava/lang/Math;->min(FF)F

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    move v14, v5

    .line 572
    :goto_c
    add-int/lit8 v15, v15, 0x1

    .line 573
    .line 574
    const/4 v5, 0x0

    .line 575
    goto :goto_b

    .line 576
    :cond_16
    const/4 v5, -0x1

    .line 577
    const/4 v11, 0x0

    .line 578
    :goto_d
    iget-object v13, v4, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 579
    .line 580
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 581
    .line 582
    .line 583
    move-result v13

    .line 584
    if-ge v11, v13, :cond_17

    .line 585
    .line 586
    iget-object v13, v4, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 587
    .line 588
    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v13

    .line 592
    check-cast v13, Landroid/graphics/Point;

    .line 593
    .line 594
    iget v15, v13, Landroid/graphics/Point;->x:I

    .line 595
    .line 596
    iget v13, v13, Landroid/graphics/Point;->y:I

    .line 597
    .line 598
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    .line 599
    .line 600
    .line 601
    move-result v13

    .line 602
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    add-int/lit8 v11, v11, 0x1

    .line 607
    .line 608
    goto :goto_d

    .line 609
    :cond_17
    mul-int/lit8 v5, v5, 0x2

    .line 610
    .line 611
    sget v4, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    .line 612
    .line 613
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    int-to-float v5, v5

    .line 622
    int-to-float v4, v4

    .line 623
    div-float/2addr v5, v4

    .line 624
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 625
    .line 626
    .line 627
    move-result v11

    .line 628
    int-to-float v11, v11

    .line 629
    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    div-float/2addr v5, v4

    .line 634
    const/high16 v4, 0x3f800000    # 1.0f

    .line 635
    .line 636
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    .line 641
    .line 642
    .line 643
    move-result v17

    .line 644
    cmpl-float v5, v17, v4

    .line 645
    .line 646
    if-lez v5, :cond_18

    .line 647
    .line 648
    const/4 v14, 0x1

    .line 649
    goto :goto_e

    .line 650
    :cond_18
    const/4 v14, 0x0

    .line 651
    :cond_19
    :goto_e
    move/from16 v4, v17

    .line 652
    .line 653
    if-eqz v14, :cond_1a

    .line 654
    .line 655
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    if-nez v5, :cond_1a

    .line 660
    .line 661
    iget v5, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 662
    .line 663
    int-to-float v5, v5

    .line 664
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 665
    .line 666
    .line 667
    move-result v11

    .line 668
    int-to-float v11, v11

    .line 669
    div-float/2addr v5, v11

    .line 670
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 671
    .line 672
    .line 673
    move-result v11

    .line 674
    int-to-float v11, v11

    .line 675
    mul-float/2addr v11, v5

    .line 676
    float-to-int v5, v11

    .line 677
    iget v11, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 678
    .line 679
    if-ge v5, v11, :cond_1a

    .line 680
    .line 681
    iget v5, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 682
    .line 683
    int-to-float v5, v5

    .line 684
    int-to-float v7, v11

    .line 685
    div-float/2addr v5, v7

    .line 686
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 687
    .line 688
    .line 689
    move-result v7

    .line 690
    int-to-float v7, v7

    .line 691
    mul-float/2addr v7, v5

    .line 692
    float-to-int v5, v7

    .line 693
    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 694
    .line 695
    const/4 v12, 0x1

    .line 696
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 697
    .line 698
    const-string v7, "crop: w="

    .line 699
    .line 700
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 704
    .line 705
    .line 706
    move-result v7

    .line 707
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    const-string v7, " h="

    .line 711
    .line 712
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 716
    .line 717
    .line 718
    move-result v11

    .line 719
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .line 728
    .line 729
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 730
    .line 731
    .line 732
    move-result v5

    .line 733
    if-eqz v5, :cond_1b

    .line 734
    .line 735
    new-instance v5, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    const-string v11, "defaultCrops: "

    .line 738
    .line 739
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .line 751
    .line 752
    :cond_1b
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    if-nez v0, :cond_1c

    .line 757
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    const-string v5, "dims: w="

    .line 761
    .line 762
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    iget v5, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 766
    .line 767
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    iget v5, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 774
    .line 775
    invoke-static {v0, v5, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 776
    .line 777
    .line 778
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 779
    .line 780
    const-string/jumbo v5, "meas: w="

    .line 781
    .line 782
    .line 783
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 787
    .line 788
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 795
    .line 796
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .line 805
    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    .line 807
    .line 808
    const-string v5, "crop?="

    .line 809
    .line 810
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    const-string v5, " scale?="

    .line 817
    .line 818
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .line 830
    .line 831
    if-nez v12, :cond_1e

    .line 832
    .line 833
    if-nez v14, :cond_1e

    .line 834
    .line 835
    const/4 v5, 0x0

    .line 836
    invoke-virtual {v1, v5}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    invoke-static {v0, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 845
    .line 846
    .line 847
    move-result v0

    .line 848
    if-nez v0, :cond_1d

    .line 849
    .line 850
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 851
    .line 852
    .line 853
    move-result-object v4

    .line 854
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 855
    .line 856
    .line 857
    :cond_1d
    move v5, v0

    .line 858
    move-object/from16 v17, v2

    .line 859
    .line 860
    goto/16 :goto_20

    .line 861
    .line 862
    :cond_1e
    :try_start_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    iget v5, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 867
    .line 868
    div-int/2addr v0, v5

    .line 869
    const/4 v5, 0x1

    .line 870
    :goto_f
    mul-int/lit8 v7, v5, 0x2

    .line 871
    .line 872
    if-gt v7, v0, :cond_1f

    .line 873
    .line 874
    move v5, v7

    .line 875
    goto :goto_f

    .line 876
    :cond_1f
    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 877
    .line 878
    const/4 v7, 0x0

    .line 879
    iput-boolean v7, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 880
    .line 881
    new-instance v0, Landroid/graphics/Rect;

    .line 882
    .line 883
    invoke-direct {v0, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 884
    .line 885
    .line 886
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 887
    .line 888
    .line 889
    move-result v7

    .line 890
    if-nez v7, :cond_20

    .line 891
    .line 892
    iget v7, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 893
    .line 894
    int-to-float v7, v7

    .line 895
    const/high16 v11, 0x3f800000    # 1.0f

    .line 896
    .line 897
    div-float v7, v11, v7

    .line 898
    .line 899
    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 900
    .line 901
    .line 902
    goto :goto_11

    .line 903
    :catchall_0
    move-exception v0

    .line 904
    const/4 v13, 0x0

    .line 905
    const/16 v18, 0x0

    .line 906
    .line 907
    goto/16 :goto_1d

    .line 908
    .line 909
    :catch_0
    move-exception v0

    .line 910
    move-object/from16 v17, v2

    .line 911
    .line 912
    :goto_10
    const/4 v13, 0x0

    .line 913
    const/16 v18, 0x0

    .line 914
    .line 915
    goto/16 :goto_1c

    .line 916
    .line 917
    :cond_20
    const/high16 v7, 0x3f800000    # 1.0f

    .line 918
    .line 919
    div-float v11, v7, v4

    .line 920
    .line 921
    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->scale(F)V

    .line 922
    .line 923
    .line 924
    :goto_11
    iget v7, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 925
    .line 926
    int-to-float v7, v7

    .line 927
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 928
    .line 929
    .line 930
    move-result v11

    .line 931
    int-to-float v11, v11

    .line 932
    div-float/2addr v7, v11

    .line 933
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 934
    .line 935
    .line 936
    move-result v11

    .line 937
    int-to-float v11, v11

    .line 938
    mul-float/2addr v11, v7

    .line 939
    float-to-int v11, v11

    .line 940
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 941
    .line 942
    .line 943
    move-result v12

    .line 944
    int-to-float v12, v12

    .line 945
    mul-float/2addr v12, v7

    .line 946
    float-to-int v12, v12

    .line 947
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 948
    .line 949
    .line 950
    move-result v13

    .line 951
    if-nez v13, :cond_21

    .line 952
    .line 953
    sget v13, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    .line 954
    .line 955
    if-le v12, v13, :cond_21

    .line 956
    .line 957
    iget v13, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 958
    .line 959
    int-to-float v13, v13

    .line 960
    div-float/2addr v13, v7

    .line 961
    float-to-int v13, v13

    .line 962
    iget v6, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 963
    .line 964
    int-to-float v6, v6

    .line 965
    div-float/2addr v6, v7

    .line 966
    float-to-int v6, v6

    .line 967
    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 968
    .line 969
    .line 970
    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 971
    .line 972
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 973
    .line 974
    .line 975
    move-result v15

    .line 976
    sub-int/2addr v15, v6

    .line 977
    div-int/lit8 v15, v15, 0x2

    .line 978
    .line 979
    add-int/2addr v14, v15

    .line 980
    iput v14, v0, Landroid/graphics/Rect;->left:I

    .line 981
    .line 982
    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 983
    .line 984
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 985
    .line 986
    .line 987
    move-result v15

    .line 988
    sub-int/2addr v15, v13

    .line 989
    div-int/lit8 v15, v15, 0x2

    .line 990
    .line 991
    add-int/2addr v14, v15

    .line 992
    iput v14, v0, Landroid/graphics/Rect;->top:I

    .line 993
    .line 994
    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 995
    .line 996
    add-int/2addr v15, v6

    .line 997
    iput v15, v0, Landroid/graphics/Rect;->right:I

    .line 998
    .line 999
    add-int/2addr v14, v13

    .line 1000
    iput v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 1001
    .line 1002
    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1003
    .line 1004
    .line 1005
    iget v6, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1006
    .line 1007
    int-to-float v6, v6

    .line 1008
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1009
    .line 1010
    div-float v6, v13, v6

    .line 1011
    .line 1012
    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 1013
    .line 1014
    .line 1015
    :cond_21
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v6

    .line 1019
    const/high16 v13, 0x3f000000    # 0.5f

    .line 1020
    .line 1021
    if-nez v6, :cond_22

    .line 1022
    .line 1023
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 1024
    .line 1025
    .line 1026
    move-result v6

    .line 1027
    int-to-float v6, v6

    .line 1028
    mul-float/2addr v6, v7

    .line 1029
    :goto_12
    add-float/2addr v6, v13

    .line 1030
    float-to-int v6, v6

    .line 1031
    goto :goto_13

    .line 1032
    :cond_22
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 1033
    .line 1034
    .line 1035
    move-result v6

    .line 1036
    int-to-float v6, v6

    .line 1037
    div-float/2addr v6, v4

    .line 1038
    goto :goto_12

    .line 1039
    :goto_13
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 1040
    .line 1041
    .line 1042
    move-result v14

    .line 1043
    if-nez v14, :cond_23

    .line 1044
    .line 1045
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 1046
    .line 1047
    .line 1048
    move-result v14

    .line 1049
    int-to-float v14, v14

    .line 1050
    mul-float/2addr v14, v7

    .line 1051
    :goto_14
    add-float/2addr v14, v13

    .line 1052
    float-to-int v14, v14

    .line 1053
    goto :goto_15

    .line 1054
    :cond_23
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 1055
    .line 1056
    .line 1057
    move-result v14

    .line 1058
    int-to-float v14, v14

    .line 1059
    div-float/2addr v14, v4

    .line 1060
    goto :goto_14

    .line 1061
    :goto_15
    const-string v15, "Decode parameters:"

    .line 1062
    .line 1063
    invoke-static {v3, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .line 1065
    .line 1066
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    const-string/jumbo v13, "x"

    .line 1071
    .line 1072
    .line 1073
    move-object/from16 v17, v2

    .line 1074
    .line 1075
    const-string v2, "  cropHint="

    .line 1076
    .line 1077
    if-nez v15, :cond_24

    .line 1078
    .line 1079
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    move/from16 v19, v5

    .line 1091
    .line 1092
    const-string v5, ", estimateCrop="

    .line 1093
    .line 1094
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v5

    .line 1104
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    .line 1106
    .line 1107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    .line 1111
    .line 1112
    const-string v15, "  down sampling="

    .line 1113
    .line 1114
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1118
    .line 1119
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    const-string v8, ", hRatio="

    .line 1123
    .line 1124
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v5

    .line 1134
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    .line 1136
    .line 1137
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1140
    .line 1141
    .line 1142
    const-string v7, "  dest="

    .line 1143
    .line 1144
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v5

    .line 1160
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    .line 1162
    .line 1163
    goto :goto_16

    .line 1164
    :catch_1
    move-exception v0

    .line 1165
    goto/16 :goto_10

    .line 1166
    .line 1167
    :cond_24
    move/from16 v19, v5

    .line 1168
    .line 1169
    :goto_16
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 1170
    .line 1171
    .line 1172
    move-result v5

    .line 1173
    if-eqz v5, :cond_25

    .line 1174
    .line 1175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    .line 1192
    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    .line 1197
    .line 1198
    const-string v5, "  sampleSize="

    .line 1199
    .line 1200
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v2

    .line 1210
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    .line 1212
    .line 1213
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    .line 1217
    .line 1218
    const-string v5, "  targetSize="

    .line 1219
    .line 1220
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v2

    .line 1236
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    .line 1238
    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1242
    .line 1243
    .line 1244
    const-string v5, "  maxTextureSize="

    .line 1245
    .line 1246
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    sget v5, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    .line 1250
    .line 1251
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v2

    .line 1258
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    .line 1260
    .line 1261
    const/4 v2, 0x0

    .line 1262
    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v5

    .line 1266
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v2

    .line 1270
    const-string/jumbo v5, "wallpaper_orig"

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1274
    .line 1275
    .line 1276
    move-result v2

    .line 1277
    if-eqz v2, :cond_26

    .line 1278
    .line 1279
    const-string v2, "decode_record"

    .line 1280
    .line 1281
    goto :goto_17

    .line 1282
    :cond_26
    const-string v2, "decode_lock_record"

    .line 1283
    .line 1284
    :goto_17
    new-instance v5, Ljava/io/File;

    .line 1285
    .line 1286
    iget v7, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 1287
    .line 1288
    invoke-static {v7}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v7

    .line 1292
    invoke-direct {v5, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 1296
    .line 1297
    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1301
    .line 1302
    .line 1303
    const-string/jumbo v7, "record path ="

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v7

    .line 1313
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    const-string v7, ", record name ="

    .line 1317
    .line 1318
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v7

    .line 1325
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v2

    .line 1332
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    .line 1334
    .line 1335
    const/4 v2, 0x0

    .line 1336
    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v7

    .line 1340
    invoke-static {v7}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    iget v7, v10, Landroid/graphics/Point;->x:I

    .line 1345
    .line 1346
    int-to-float v7, v7

    .line 1347
    div-float/2addr v7, v4

    .line 1348
    const/high16 v8, 0x3f000000    # 0.5f

    .line 1349
    .line 1350
    add-float/2addr v7, v8

    .line 1351
    float-to-int v7, v7

    .line 1352
    iget v9, v10, Landroid/graphics/Point;->y:I

    .line 1353
    .line 1354
    int-to-float v9, v9

    .line 1355
    div-float/2addr v9, v4

    .line 1356
    add-float/2addr v9, v8

    .line 1357
    float-to-int v8, v9

    .line 1358
    new-instance v9, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;

    .line 1359
    .line 1360
    move/from16 v10, v19

    .line 1361
    .line 1362
    invoke-direct {v9, v10, v7, v8, v0}, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;-><init>(IIILandroid/graphics/Rect;)V

    .line 1363
    .line 1364
    .line 1365
    invoke-static {v2, v9}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1370
    .line 1371
    .line 1372
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 1373
    .line 1374
    .line 1375
    move-result v2

    .line 1376
    if-nez v2, :cond_27

    .line 1377
    .line 1378
    if-nez v0, :cond_27

    .line 1379
    .line 1380
    const-string v0, "Could not decode new wallpaper"

    .line 1381
    .line 1382
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    .line 1384
    .line 1385
    const/4 v9, 0x0

    .line 1386
    const/4 v13, 0x0

    .line 1387
    const/16 v18, 0x0

    .line 1388
    .line 1389
    goto :goto_1b

    .line 1390
    :cond_27
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 1391
    .line 1392
    .line 1393
    move-result v2

    .line 1394
    if-eqz v2, :cond_28

    .line 1395
    .line 1396
    const/4 v2, 0x1

    .line 1397
    goto :goto_18

    .line 1398
    :cond_28
    const/4 v2, 0x1

    .line 1399
    invoke-static {v0, v14, v6, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    :goto_18
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 1404
    .line 1405
    .line 1406
    move-result v5

    .line 1407
    if-eqz v5, :cond_29

    .line 1408
    .line 1409
    iput v4, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 1410
    .line 1411
    :cond_29
    new-instance v4, Ljava/io/FileOutputStream;

    .line 1412
    .line 1413
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v5

    .line 1417
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    .line 1419
    .line 1420
    :try_start_2
    new-instance v5, Ljava/io/BufferedOutputStream;

    .line 1421
    .line 1422
    const v6, 0x8000

    .line 1423
    .line 1424
    .line 1425
    invoke-direct {v5, v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1426
    .line 1427
    .line 1428
    :try_start_3
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 1429
    .line 1430
    const/4 v7, 0x0

    .line 1431
    invoke-virtual {v6, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage(Z)Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v6

    .line 1435
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v7

    .line 1439
    const/16 v8, 0x64

    .line 1440
    .line 1441
    if-nez v7, :cond_2b

    .line 1442
    .line 1443
    const-string v7, "android.app.cts.wallpapers"

    .line 1444
    .line 1445
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1446
    .line 1447
    .line 1448
    move-result v7

    .line 1449
    if-nez v7, :cond_2a

    .line 1450
    .line 1451
    const-string v7, "com.android.wallpaperbackup"

    .line 1452
    .line 1453
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v6

    .line 1457
    if-eqz v6, :cond_2b

    .line 1458
    .line 1459
    goto :goto_19

    .line 1460
    :catchall_1
    move-exception v0

    .line 1461
    move-object/from16 v18, v4

    .line 1462
    .line 1463
    move-object v13, v5

    .line 1464
    goto :goto_1d

    .line 1465
    :catch_2
    move-exception v0

    .line 1466
    move-object/from16 v18, v4

    .line 1467
    .line 1468
    move-object v13, v5

    .line 1469
    goto :goto_1c

    .line 1470
    :cond_2a
    :goto_19
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1471
    .line 1472
    invoke-virtual {v0, v6, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1473
    .line 1474
    .line 1475
    goto :goto_1a

    .line 1476
    :cond_2b
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1477
    .line 1478
    invoke-virtual {v0, v6, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1479
    .line 1480
    .line 1481
    :goto_1a
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1482
    .line 1483
    .line 1484
    move v9, v2

    .line 1485
    move-object/from16 v18, v4

    .line 1486
    .line 1487
    move-object v13, v5

    .line 1488
    :goto_1b
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1489
    .line 1490
    .line 1491
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1492
    .line 1493
    .line 1494
    move v5, v9

    .line 1495
    goto :goto_20

    .line 1496
    :catchall_2
    move-exception v0

    .line 1497
    move-object/from16 v18, v4

    .line 1498
    .line 1499
    const/4 v13, 0x0

    .line 1500
    goto :goto_1d

    .line 1501
    :catch_3
    move-exception v0

    .line 1502
    move-object/from16 v18, v4

    .line 1503
    .line 1504
    const/4 v13, 0x0

    .line 1505
    :goto_1c
    :try_start_4
    const-string v2, "Error decoding crop"

    .line 1506
    .line 1507
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1508
    .line 1509
    .line 1510
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1511
    .line 1512
    .line 1513
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1514
    .line 1515
    .line 1516
    goto :goto_1f

    .line 1517
    :catchall_3
    move-exception v0

    .line 1518
    :goto_1d
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1519
    .line 1520
    .line 1521
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1522
    .line 1523
    .line 1524
    throw v0

    .line 1525
    :goto_1e
    const-string v0, "Invalid wallpaper data"

    .line 1526
    .line 1527
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    .line 1529
    .line 1530
    :goto_1f
    const/4 v5, 0x0

    .line 1531
    :goto_20
    if-nez v5, :cond_2c

    .line 1532
    .line 1533
    const-string v0, "Unable to apply new wallpaper"

    .line 1534
    .line 1535
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1543
    .line 1544
    .line 1545
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 1546
    .line 1547
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1548
    .line 1549
    .line 1550
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 1551
    .line 1552
    const/4 v2, 0x0

    .line 1553
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1554
    .line 1555
    .line 1556
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1557
    .line 1558
    iput v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 1559
    .line 1560
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v0

    .line 1564
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1565
    .line 1566
    .line 1567
    move-result v0

    .line 1568
    if-eqz v0, :cond_2d

    .line 1569
    .line 1570
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v0

    .line 1574
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v0

    .line 1578
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 1579
    .line 1580
    .line 1581
    :cond_2d
    invoke-virtual/range {v17 .. v17}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1582
    .line 1583
    .line 1584
    return-void
.end method

.method public final getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v6, p1

    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    move/from16 v8, p4

    .line 8
    .line 9
    invoke-static {p1}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, " , orientation = "

    .line 14
    .line 15
    const-string v4, "WallpaperCropper"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 19
    .line 20
    if-eqz v1, :cond_c

    .line 21
    .line 22
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    if-nez v10, :cond_0

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_0
    move v10, v5

    .line 31
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    if-ge v10, v11, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    check-cast v11, Landroid/graphics/Rect;

    .line 42
    .line 43
    if-eqz v11, :cond_2

    .line 44
    .line 45
    iget v12, v11, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    if-ltz v12, :cond_2

    .line 48
    .line 49
    iget v12, v11, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    if-ltz v12, :cond_2

    .line 52
    .line 53
    iget v12, v11, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    iget v13, v7, Landroid/graphics/Point;->x:I

    .line 56
    .line 57
    if-gt v12, v13, :cond_2

    .line 58
    .line 59
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    iget v13, v7, Landroid/graphics/Point;->y:I

    .line 62
    .line 63
    if-le v12, v13, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "invalid crop: "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, " for bitmap size: "

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    new-instance v1, Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1, v7, v1, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    :cond_3
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    check-cast v10, Landroid/graphics/Rect;

    .line 109
    .line 110
    if-eqz v10, :cond_4

    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    const/4 v5, 0x1

    .line 114
    move-object v0, v10

    .line 115
    move-object/from16 v1, p2

    .line 116
    .line 117
    move-object v2, p1

    .line 118
    move/from16 v4, p4

    .line 119
    .line 120
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :cond_4
    iget-object v10, v9, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 126
    .line 127
    invoke-static {v2}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    check-cast v12, Landroid/graphics/Rect;

    .line 136
    .line 137
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    check-cast v13, Landroid/graphics/Point;

    .line 142
    .line 143
    if-eqz v12, :cond_5

    .line 144
    .line 145
    invoke-static {v12, v13, v7, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const/4 v3, 0x0

    .line 150
    const/4 v5, 0x3

    .line 151
    move-object/from16 v1, p2

    .line 152
    .line 153
    move-object v2, p1

    .line 154
    move/from16 v4, p4

    .line 155
    .line 156
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    return-object v0

    .line 161
    :cond_5
    invoke-virtual {v9, v2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getUnfoldedOrientation(I)I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    check-cast v13, Landroid/graphics/Rect;

    .line 170
    .line 171
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    check-cast v12, Landroid/graphics/Point;

    .line 176
    .line 177
    if-eqz v13, :cond_8

    .line 178
    .line 179
    invoke-static {v13, v12, v7, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    const/4 v3, 0x0

    .line 184
    const/4 v5, 0x2

    .line 185
    move-object v0, v9

    .line 186
    move-object/from16 v1, p2

    .line 187
    .line 188
    move-object v2, p1

    .line 189
    move/from16 v4, p4

    .line 190
    .line 191
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-ge v1, v2, :cond_7

    .line 204
    .line 205
    if-eqz v8, :cond_6

    .line 206
    .line 207
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 208
    .line 209
    iget v2, v9, Landroid/graphics/Rect;->left:I

    .line 210
    .line 211
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_6
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 219
    .line 220
    iget v2, v9, Landroid/graphics/Rect;->right:I

    .line 221
    .line 222
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 227
    .line 228
    :goto_2
    const/4 v3, 0x1

    .line 229
    const/4 v5, 0x1

    .line 230
    move-object/from16 v1, p2

    .line 231
    .line 232
    move-object v2, p1

    .line 233
    move/from16 v4, p4

    .line 234
    .line 235
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :cond_7
    return-object v0

    .line 240
    :cond_8
    invoke-virtual {v9, v2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getFoldedOrientation(I)I

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    check-cast v13, Landroid/graphics/Rect;

    .line 249
    .line 250
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    check-cast v12, Landroid/graphics/Point;

    .line 255
    .line 256
    if-eqz v13, :cond_9

    .line 257
    .line 258
    invoke-static {v13, v12, v7, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v5, "getCrop: suggestedCrop = "

    .line 265
    .line 266
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    const/4 v3, 0x0

    .line 286
    const/4 v5, 0x1

    .line 287
    move-object/from16 v1, p2

    .line 288
    .line 289
    move-object v2, p1

    .line 290
    move/from16 v4, p4

    .line 291
    .line 292
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    return-object v0

    .line 297
    :cond_9
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Landroid/graphics/Point;

    .line 302
    .line 303
    if-eqz v3, :cond_b

    .line 304
    .line 305
    invoke-virtual {v9, v11}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getFoldedOrientation(I)I

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    invoke-virtual {v9, v11}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getUnfoldedOrientation(I)I

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    filled-new-array {v12, v9}, [I

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    :goto_3
    const/4 v12, 0x2

    .line 318
    if-ge v5, v12, :cond_b

    .line 319
    .line 320
    aget v12, v9, v5

    .line 321
    .line 322
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v12

    .line 326
    check-cast v12, Landroid/graphics/Rect;

    .line 327
    .line 328
    if-eqz v12, :cond_a

    .line 329
    .line 330
    invoke-virtual {p0, v3, v7, v1, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    new-instance v2, Landroid/util/SparseArray;

    .line 335
    .line 336
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0, p1, v7, v2, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    return-object v0

    .line 347
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v5, "Could not find a proper default crop for display: "

    .line 353
    .line 354
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v5, ", bitmap size: "

    .line 361
    .line 362
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v5, ", suggested crops: "

    .line 369
    .line 370
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v1, ", orientation: "

    .line 377
    .line 378
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v1, ", rtl: "

    .line 385
    .line 386
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v1, ", defaultDisplaySizes: "

    .line 393
    .line 394
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    new-instance v1, Landroid/util/SparseArray;

    .line 408
    .line 409
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, p1, v7, v1, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    return-object v0

    .line 417
    :cond_c
    :goto_4
    new-instance v10, Landroid/graphics/Rect;

    .line 418
    .line 419
    iget v11, v7, Landroid/graphics/Point;->x:I

    .line 420
    .line 421
    iget v12, v7, Landroid/graphics/Point;->y:I

    .line 422
    .line 423
    invoke-direct {v10, v5, v5, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    .line 425
    .line 426
    sget-boolean v11, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 427
    .line 428
    if-eqz v11, :cond_e

    .line 429
    .line 430
    sget-boolean v11, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 431
    .line 432
    if-nez v11, :cond_e

    .line 433
    .line 434
    const/4 v11, 0x1

    .line 435
    if-eqz v2, :cond_d

    .line 436
    .line 437
    if-ne v2, v11, :cond_e

    .line 438
    .line 439
    :cond_d
    move v5, v11

    .line 440
    :cond_e
    invoke-virtual {v9, v2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getUnfoldedOrientation(I)I

    .line 441
    .line 442
    .line 443
    move-result v11

    .line 444
    if-nez v5, :cond_f

    .line 445
    .line 446
    const/4 v12, -0x1

    .line 447
    if-eq v11, v12, :cond_f

    .line 448
    .line 449
    new-instance v1, Landroid/util/SparseArray;

    .line 450
    .line 451
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, p1, v7, v1, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    return-object v0

    .line 462
    :cond_f
    if-eqz v5, :cond_10

    .line 463
    .line 464
    new-instance v1, Landroid/util/SparseArray;

    .line 465
    .line 466
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    const-string v9, "getCrop: foldedOrientation, newSuggestedCrops = "

    .line 475
    .line 476
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0, p1, v7, v1, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    return-object v0

    .line 500
    :cond_10
    iget-boolean v2, v9, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mIsLargeScreen:Z

    .line 501
    .line 502
    if-eqz v2, :cond_12

    .line 503
    .line 504
    iget-boolean v2, v9, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mIsFoldable:Z

    .line 505
    .line 506
    if-nez v2, :cond_12

    .line 507
    .line 508
    iget v2, v6, Landroid/graphics/Point;->x:I

    .line 509
    .line 510
    iget v3, v6, Landroid/graphics/Point;->y:I

    .line 511
    .line 512
    if-ge v2, v3, :cond_12

    .line 513
    .line 514
    new-instance v2, Landroid/graphics/Point;

    .line 515
    .line 516
    iget v3, v6, Landroid/graphics/Point;->y:I

    .line 517
    .line 518
    iget v4, v6, Landroid/graphics/Point;->x:I

    .line 519
    .line 520
    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p0, v2, v7, v1, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-static {v0, v2, v7, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    const/4 v3, 0x0

    .line 532
    const/4 v5, 0x1

    .line 533
    move-object v0, v9

    .line 534
    move-object/from16 v1, p2

    .line 535
    .line 536
    move-object v2, p1

    .line 537
    move/from16 v4, p4

    .line 538
    .line 539
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    if-eqz v8, :cond_11

    .line 544
    .line 545
    iget v1, v9, Landroid/graphics/Rect;->left:I

    .line 546
    .line 547
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 548
    .line 549
    goto :goto_5

    .line 550
    :cond_11
    iget v1, v9, Landroid/graphics/Rect;->right:I

    .line 551
    .line 552
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 553
    .line 554
    goto :goto_5

    .line 555
    :cond_12
    move-object v0, v10

    .line 556
    :goto_5
    const/4 v3, 0x1

    .line 557
    const/4 v5, 0x1

    .line 558
    move-object/from16 v1, p2

    .line 559
    .line 560
    move-object v2, p1

    .line 561
    move/from16 v4, p4

    .line 562
    .line 563
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    return-object v0
.end method

.method public final getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    new-instance v3, Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v4, p3, Landroid/graphics/Point;->x:I

    .line 15
    .line 16
    iget v5, p3, Landroid/graphics/Point;->y:I

    .line 17
    .line 18
    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ne v4, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance p2, Landroid/graphics/Point;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-direct {p2, p3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 45
    .line 46
    .line 47
    new-instance p3, Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-ge v2, p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/graphics/Rect;

    .line 67
    .line 68
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 69
    .line 70
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-object p0

    .line 79
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, "Couldn\'t get default crops from suggested crops "

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, " for bitmap of size "

    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, "; ignoring suggested crops"

    .line 98
    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const-string v0, "WallpaperCropper"

    .line 107
    .line 108
    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    new-instance p2, Landroid/util/SparseArray;

    .line 112
    .line 113
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_3
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 122
    .line 123
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 128
    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/4 v4, 0x4

    .line 138
    if-ge v0, v4, :cond_4

    .line 139
    .line 140
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    new-instance v0, Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 155
    .line 156
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Landroid/graphics/Point;

    .line 161
    .line 162
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 166
    .line 167
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Landroid/graphics/Point;

    .line 172
    .line 173
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 178
    .line 179
    const/4 v5, 0x2

    .line 180
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Landroid/graphics/Point;

    .line 185
    .line 186
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 190
    .line 191
    const/4 v4, 0x3

    .line 192
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Landroid/graphics/Point;

    .line 197
    .line 198
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v4, "getDefaultDisplaySizes which = "

    .line 204
    .line 205
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string p1, " , sizes = "

    .line 212
    .line 213
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const-string v3, "WallpaperDisplayHelper"

    .line 224
    .line 225
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-object p1, v0

    .line 229
    goto :goto_3

    .line 230
    :cond_6
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 231
    .line 232
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-ne v0, v1, :cond_7

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_7
    move v1, v2

    .line 244
    :goto_4
    new-instance v0, Landroid/util/SparseArray;

    .line 245
    .line 246
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 247
    .line 248
    .line 249
    move v3, v2

    .line 250
    :goto_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-ge v3, v4, :cond_9

    .line 255
    .line 256
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    check-cast v5, Landroid/graphics/Point;

    .line 265
    .line 266
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    check-cast v6, Landroid/graphics/Rect;

    .line 271
    .line 272
    if-eqz v6, :cond_8

    .line 273
    .line 274
    invoke-virtual {p0, v5, p3, p2, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_9
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    :goto_6
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-ge v2, v3, :cond_b

    .line 293
    .line 294
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->contains(I)Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-eqz v4, :cond_a

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_a
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    check-cast v4, Landroid/graphics/Point;

    .line 310
    .line 311
    invoke-virtual {p0, v4, p3, v0, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_b
    return-object p2
.end method
