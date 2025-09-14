.class public final Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public final mDeltaX:I

.field public final mDeltaY:I

.field public mDrawNeeded:Z

.field public mLastDH:I

.field public mLastDW:I

.field public final mSurface:Landroid/view/Surface;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mText:Ljava/lang/String;

.field public final mTextHeight:I

.field public final mTextPaint:Landroid/graphics/Paint;

.field public final mTextWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 11

    .line 1
    const-string v0, "WatermarkSurface"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aget-object v3, p3, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    and-int/lit8 v3, v3, -0x2

    .line 21
    .line 22
    move v4, v2

    .line 23
    :goto_0
    if-ge v4, v3, :cond_4

    .line 24
    .line 25
    aget-object v5, p3, v2

    .line 26
    .line 27
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    aget-object v6, p3, v2

    .line 32
    .line 33
    add-int/lit8 v7, v4, 0x1

    .line 34
    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/16 v7, 0x46

    .line 40
    .line 41
    const/16 v8, 0x41

    .line 42
    .line 43
    const/16 v9, 0x66

    .line 44
    .line 45
    const/16 v10, 0x61

    .line 46
    .line 47
    if-lt v5, v10, :cond_0

    .line 48
    .line 49
    if-gt v5, v9, :cond_0

    .line 50
    .line 51
    add-int/lit8 v5, v5, -0x57

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    if-lt v5, v8, :cond_1

    .line 55
    .line 56
    if-gt v5, v7, :cond_1

    .line 57
    .line 58
    add-int/lit8 v5, v5, -0x37

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v5, v5, -0x30

    .line 62
    .line 63
    :goto_1
    if-lt v6, v10, :cond_2

    .line 64
    .line 65
    if-gt v6, v9, :cond_2

    .line 66
    .line 67
    add-int/lit8 v6, v6, -0x57

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    if-lt v6, v8, :cond_3

    .line 71
    .line 72
    if-gt v6, v7, :cond_3

    .line 73
    .line 74
    add-int/lit8 v6, v6, -0x37

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    add-int/lit8 v6, v6, -0x30

    .line 78
    .line 79
    :goto_2
    mul-int/lit8 v5, v5, 0x10

    .line 80
    .line 81
    add-int/2addr v5, v6

    .line 82
    rsub-int v5, v5, 0xff

    .line 83
    .line 84
    int-to-char v5, v5

    .line 85
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 96
    .line 97
    const/16 v3, 0x14

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    invoke-static {p3, v4, v4, v3, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    new-instance v5, Landroid/graphics/Paint;

    .line 105
    .line 106
    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 107
    .line 108
    .line 109
    iput-object v5, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 110
    .line 111
    int-to-float v3, v3

    .line 112
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    .line 114
    .line 115
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 116
    .line 117
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    float-to-int v1, v1

    .line 133
    iput v1, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 134
    .line 135
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 136
    .line 137
    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 138
    .line 139
    sub-int/2addr v4, v3

    .line 140
    iput v4, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 141
    .line 142
    const/4 v3, 0x2

    .line 143
    mul-int/2addr v1, v3

    .line 144
    invoke-static {p3, v3, v2, v1, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    iput v1, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 149
    .line 150
    const/4 v1, 0x3

    .line 151
    mul-int/2addr v4, v1

    .line 152
    invoke-static {p3, v1, v2, v4, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    iput v1, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 157
    .line 158
    const/4 v1, 0x4

    .line 159
    const/high16 v3, -0x50000000

    .line 160
    .line 161
    invoke-static {p3, v1, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const/4 v3, 0x5

    .line 166
    const v4, 0x60ffffff

    .line 167
    .line 168
    .line 169
    invoke-static {p3, v3, v2, v4, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    const/4 v4, 0x6

    .line 174
    const/4 v6, 0x7

    .line 175
    invoke-static {p3, v4, v2, v6, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    const/16 v6, 0x8

    .line 180
    .line 181
    invoke-static {p3, v6, v2, v2, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    const/16 v7, 0x9

    .line 186
    .line 187
    invoke-static {p3, v7, v2, v2, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    .line 193
    .line 194
    int-to-float p3, v4

    .line 195
    int-to-float v2, v6

    .line 196
    int-to-float p2, p2

    .line 197
    invoke-virtual {v5, p3, v2, p2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 198
    .line 199
    .line 200
    const/4 p2, 0x0

    .line 201
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    const/4 v1, -0x3

    .line 214
    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    const p3, 0xf4240

    .line 227
    .line 228
    .line 229
    invoke-virtual {p4, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 230
    .line 231
    .line 232
    move-result-object p3

    .line 233
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p3, p2, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 235
    .line 236
    .line 237
    move-result-object p3

    .line 238
    invoke-virtual {p3, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 239
    .line 240
    .line 241
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 242
    .line 243
    invoke-static {p2, p4, p1, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 245
    .line 246
    :catch_0
    move-object v2, p2

    .line 247
    iput-object v2, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 248
    .line 249
    new-instance p1, Landroid/graphics/BLASTBufferQueue;

    .line 250
    .line 251
    const-string v1, "WatermarkSurface"

    .line 252
    .line 253
    const/4 v3, 0x1

    .line 254
    const/4 v4, 0x1

    .line 255
    const/4 v5, 0x1

    .line 256
    move-object v0, p1

    .line 257
    invoke-direct/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    .line 258
    .line 259
    .line 260
    iput-object p1, p0, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 261
    .line 262
    invoke-virtual {p1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iput-object p1, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 267
    .line 268
    return-void
.end method


# virtual methods
.method public final drawIfNeeded()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 25
    .line 26
    .line 27
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    if-eqz v3, :cond_5

    .line 29
    .line 30
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 31
    .line 32
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 33
    .line 34
    .line 35
    iget v2, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 36
    .line 37
    add-int v4, v0, v2

    .line 38
    .line 39
    iget v5, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 40
    .line 41
    div-int/2addr v4, v5

    .line 42
    add-int v6, v0, v2

    .line 43
    .line 44
    mul-int/2addr v4, v5

    .line 45
    sub-int/2addr v6, v4

    .line 46
    div-int/lit8 v4, v5, 0x4

    .line 47
    .line 48
    if-lt v6, v4, :cond_1

    .line 49
    .line 50
    sub-int v4, v5, v4

    .line 51
    .line 52
    if-le v6, v4, :cond_2

    .line 53
    .line 54
    :cond_1
    div-int/lit8 v4, v5, 0x3

    .line 55
    .line 56
    add-int/2addr v5, v4

    .line 57
    :cond_2
    iget v4, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 58
    .line 59
    neg-int v6, v4

    .line 60
    neg-int v7, v2

    .line 61
    :cond_3
    :goto_0
    add-int v8, v1, v4

    .line 62
    .line 63
    if-ge v6, v8, :cond_4

    .line 64
    .line 65
    int-to-float v8, v7

    .line 66
    int-to-float v9, v6

    .line 67
    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, v11, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    add-int/2addr v7, v5

    .line 75
    if-lt v7, v0, :cond_3

    .line 76
    .line 77
    add-int v8, v0, v2

    .line 78
    .line 79
    sub-int/2addr v7, v8

    .line 80
    iget v8, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 81
    .line 82
    add-int/2addr v6, v8

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 85
    .line 86
    invoke-virtual {p0, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method
