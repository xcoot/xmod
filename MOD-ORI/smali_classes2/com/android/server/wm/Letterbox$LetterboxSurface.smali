.class public final Lcom/android/server/wm/Letterbox$LetterboxSurface;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mColor:Landroid/graphics/Color;

.field public mHasWallpaperBackground:Z

.field public mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

.field public final mLayoutFrameGlobal:Landroid/graphics/Rect;

.field public final mLayoutFrameRelative:Landroid/graphics/Rect;

.field public mParentSurface:Landroid/view/SurfaceControl;

.field public mSurface:Landroid/view/SurfaceControl;

.field public final mSurfaceFrameRelative:Landroid/graphics/Rect;

.field public final mType:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_6

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 28
    .line 29
    iget-object v4, v2, Lcom/android/server/wm/Letterbox;->mInputWindow:Lcom/android/server/wm/WindowState;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->shouldHideLetterboxSurface(Lcom/android/server/wm/WindowState;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_6

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    iget-object v3, v2, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/view/SurfaceControl$Builder;

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v5, "Letterbox - "

    .line 52
    .line 53
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, ""

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v4, 0x4

    .line 75
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "LetterboxSurface.createSurface"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iput-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 94
    .line 95
    const/16 v4, -0x4e20

    .line 96
    .line 97
    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object v4, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 102
    .line 103
    invoke-virtual {v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v3, v2, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iput-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    .line 113
    .line 114
    iget-object v3, v2, Lcom/android/server/wm/Letterbox;->mParentSurfaceSupplier:Ljava/util/function/Supplier;

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Landroid/view/SurfaceControl;

    .line 121
    .line 122
    iput-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mParentSurface:Landroid/view/SurfaceControl;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 125
    .line 126
    iget-object v4, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/graphics/Color;->red()F

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    iget-object v5, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    .line 133
    .line 134
    invoke-virtual {v5}, Landroid/graphics/Color;->green()F

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    iget-object v6, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    .line 139
    .line 140
    invoke-virtual {v6}, Landroid/graphics/Color;->blue()F

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    const/4 v7, 0x3

    .line 145
    new-array v7, v7, [F

    .line 146
    .line 147
    aput v4, v7, v0

    .line 148
    .line 149
    aput v5, v7, v1

    .line 150
    .line 151
    const/4 v1, 0x2

    .line 152
    aput v6, v7, v1

    .line 153
    .line 154
    invoke-virtual {p1, v3, v7}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 158
    .line 159
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 160
    .line 161
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 162
    .line 163
    int-to-float v4, v4

    .line 164
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 165
    .line 166
    int-to-float v3, v3

    .line 167
    invoke-virtual {p1, v1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 171
    .line 172
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    iget-object v4, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 179
    .line 180
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-virtual {p1, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 188
    .line 189
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mParentSurface:Landroid/view/SurfaceControl;

    .line 190
    .line 191
    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 192
    .line 193
    .line 194
    iget-object v1, v2, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    iput-boolean v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mHasWallpaperBackground:Z

    .line 201
    .line 202
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 203
    .line 204
    if-eqz v1, :cond_2

    .line 205
    .line 206
    iget-object v3, v2, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 207
    .line 208
    iget-object v3, v3, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 209
    .line 210
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->hasCapturedLetterboxSurface()Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_2

    .line 219
    .line 220
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 221
    .line 222
    const/4 v2, 0x0

    .line 223
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 227
    .line 228
    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mHasWallpaperBackground:Z

    .line 233
    .line 234
    if-nez v3, :cond_3

    .line 235
    .line 236
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 237
    .line 238
    const/high16 v2, 0x3f800000    # 1.0f

    .line 239
    .line 240
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 241
    .line 242
    .line 243
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 244
    .line 245
    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 246
    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_3
    iget-object v3, v2, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 250
    .line 251
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperDarkScrimAlpha()F

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    iget-object v4, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 256
    .line 257
    invoke-virtual {p1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 258
    .line 259
    .line 260
    iget-object v2, v2, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 261
    .line 262
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperBlurRadiusPx()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-gtz v3, :cond_4

    .line 267
    .line 268
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 269
    .line 270
    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 271
    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_4
    if-eqz v1, :cond_5

    .line 275
    .line 276
    iget-object v0, v2, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 277
    .line 278
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxBackgroundWallpaperBlurColorCurve()Landroid/view/SemBlurInfo$ColorCurve;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    if-eqz v0, :cond_5

    .line 287
    .line 288
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 289
    .line 290
    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurColorCurve(Landroid/view/SurfaceControl;Landroid/view/SemBlurInfo$ColorCurve;)Landroid/view/SurfaceControl$Transaction;

    .line 291
    .line 292
    .line 293
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 294
    .line 295
    invoke-virtual {p1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 296
    .line 297
    .line 298
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 299
    .line 300
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 301
    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 305
    .line 306
    if-eqz v0, :cond_7

    .line 307
    .line 308
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 309
    .line 310
    .line 311
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 312
    .line 313
    if-eqz p1, :cond_9

    .line 314
    .line 315
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 316
    .line 317
    if-eqz p1, :cond_9

    .line 318
    .line 319
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_8

    .line 329
    .line 330
    iget-object p1, p1, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 331
    .line 332
    const/4 v0, 0x0

    .line 333
    iput-object v0, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 337
    .line 338
    iget-object v2, p1, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    .line 339
    .line 340
    iput-object v2, v1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 341
    .line 342
    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 343
    .line 344
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 345
    .line 346
    .line 347
    iget-object p1, p1, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 348
    .line 349
    iget-object p1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 350
    .line 351
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 352
    .line 353
    neg-int v1, v1

    .line 354
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 355
    .line 356
    neg-int v0, v0

    .line 357
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Region;->translate(II)V

    .line 358
    .line 359
    .line 360
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 361
    .line 362
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 363
    .line 364
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 365
    .line 366
    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 367
    .line 368
    .line 369
    :cond_9
    return-void
.end method

.method public final attachInput(Lcom/android/server/wm/WindowState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Letterbox_"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "_"

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    .line 37
    .line 38
    invoke-direct {v0, v2, v1, p1}, Lcom/android/server/wm/Letterbox$InputInterceptor;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;Lcom/android/server/wm/WindowState;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 42
    .line 43
    return-void
.end method

.method public final layout(IIIILandroid/graphics/Point;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget p1, p5, Landroid/graphics/Point;->x:I

    .line 16
    .line 17
    neg-int p1, p1

    .line 18
    iget p2, p5, Landroid/graphics/Point;->y:I

    .line 19
    .line 20
    neg-int p2, p2

    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final needsApplySurfaceChanges()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-boolean v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mHasWallpaperBackground:Z

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/graphics/Color;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mParentSurfaceSupplier:Ljava/util/function/Supplier;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mParentSurface:Landroid/view/SurfaceControl;

    .line 52
    .line 53
    if-eq v0, p0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p0, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 59
    :goto_1
    return p0
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 34
    .line 35
    iget-object v3, v0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 46
    .line 47
    :cond_1
    return-void
.end method
