.class public final Lcom/android/server/wallpaper/WallpaperDisplayHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultDisplaySizes:Landroid/util/SparseArray;

.field public final mDisplayDatas:Landroid/util/SparseArray;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mFoldableOrientationPairs:Ljava/util/List;

.field public final mIsFoldable:Z

.field public final mIsLargeScreen:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;Lcom/android/server/wm/WindowManagerInternal;Z)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mFoldableOrientationPairs:Ljava/util/List;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mIsLargeScreen:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 31
    .line 32
    iput-boolean p4, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mIsFoldable:Z

    .line 33
    .line 34
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-interface {p2, v0}, Landroid/view/WindowManager;->getPossibleMaximumWindowMetrics(I)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x1

    .line 46
    if-eqz p4, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    const/4 p4, 0x2

    .line 53
    if-ne p3, p4, :cond_1

    .line 54
    .line 55
    move p3, p2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move p3, v0

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p4, 0x0

    .line 63
    const/4 v1, -0x1

    .line 64
    move v2, p4

    .line 65
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_9

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroid/view/WindowMetrics;

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-instance v5, Landroid/graphics/Point;

    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 92
    .line 93
    .line 94
    new-instance v4, Landroid/graphics/Point;

    .line 95
    .line 96
    iget v6, v5, Landroid/graphics/Point;->y:I

    .line 97
    .line 98
    iget v7, v5, Landroid/graphics/Point;->x:I

    .line 99
    .line 100
    invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 101
    .line 102
    .line 103
    invoke-static {v5, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_5

    .line 116
    .line 117
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Landroid/graphics/Point;

    .line 122
    .line 123
    invoke-static {v6}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 128
    .line 129
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    check-cast v8, Landroid/graphics/Point;

    .line 134
    .line 135
    if-eqz v8, :cond_4

    .line 136
    .line 137
    iget v9, v8, Landroid/graphics/Point;->x:I

    .line 138
    .line 139
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 140
    .line 141
    mul-int/2addr v9, v8

    .line 142
    iget v8, v6, Landroid/graphics/Point;->x:I

    .line 143
    .line 144
    iget v10, v6, Landroid/graphics/Point;->y:I

    .line 145
    .line 146
    mul-int/2addr v8, v10

    .line 147
    if-ge v9, v8, :cond_3

    .line 148
    .line 149
    :cond_4
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplaySizes:Landroid/util/SparseArray;

    .line 150
    .line 151
    invoke-virtual {v8, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mIsLargeScreen:Z

    .line 156
    .line 157
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 158
    .line 159
    int-to-float v6, v6

    .line 160
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getDensity()F

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    div-float/2addr v6, v7

    .line 165
    const/high16 v7, 0x44160000    # 600.0f

    .line 166
    .line 167
    cmpl-float v6, v6, v7

    .line 168
    .line 169
    if-ltz v6, :cond_6

    .line 170
    .line 171
    move v6, p2

    .line 172
    goto :goto_3

    .line 173
    :cond_6
    move v6, v0

    .line 174
    :goto_3
    or-int/2addr v4, v6

    .line 175
    iput-boolean v4, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mIsLargeScreen:Z

    .line 176
    .line 177
    if-eqz p3, :cond_2

    .line 178
    .line 179
    invoke-static {v5}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 184
    .line 185
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 186
    .line 187
    mul-int/2addr v6, v5

    .line 188
    int-to-float v5, v6

    .line 189
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getDensity()F

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getDensity()F

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    mul-float/2addr v3, v6

    .line 198
    div-float/2addr v5, v3

    .line 199
    cmpg-float v3, v2, p4

    .line 200
    .line 201
    if-gtz v3, :cond_7

    .line 202
    .line 203
    move v1, v4

    .line 204
    move v2, v5

    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :cond_7
    cmpl-float v3, v5, v2

    .line 208
    .line 209
    if-lez v3, :cond_8

    .line 210
    .line 211
    new-instance v3, Landroid/util/Pair;

    .line 212
    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_8
    new-instance v3, Landroid/util/Pair;

    .line 226
    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :goto_4
    new-instance v4, Landroid/util/Pair;

    .line 239
    .line 240
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v5, Ljava/lang/Integer;

    .line 243
    .line 244
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    invoke-static {v5}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v6, Ljava/lang/Integer;

    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    invoke-static {v6}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mFoldableOrientationPairs:Ljava/util/List;

    .line 276
    .line 277
    check-cast v5, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mFoldableOrientationPairs:Ljava/util/List;

    .line 283
    .line 284
    check-cast v3, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :cond_9
    return-void
.end method


# virtual methods
.method public final ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getMaximumSizeDimension(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    iget p2, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 6
    .line 7
    if-ge p2, p0, :cond_0

    .line 8
    .line 9
    iput p0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 10
    .line 11
    :cond_0
    iget p2, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 12
    .line 13
    if-ge p2, p0, :cond_1

    .line 14
    .line 15
    iput p0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object v0
.end method

.method public final getFoldedOrientation(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mFoldableOrientationPairs:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/util/Pair;

    .line 20
    .line 21
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    const/4 p0, -0x1

    .line 45
    return p0
.end method

.method public final getMaximumSizeDimension(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Invalid displayId="

    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "WallpaperDisplayHelper"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public final getUnfoldedOrientation(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mFoldableOrientationPairs:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/util/Pair;

    .line 20
    .line 21
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    const/4 p0, -0x1

    .line 45
    return p0
.end method

.method public final isUsableDisplay(Landroid/view/Display;I)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/Display;->hasAccess(I)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->isHomeSupportedOnDisplay(I)Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method
