.class public final Lcom/android/server/wm/CapturedLetterbox;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

.field public final mDisplay:Lcom/android/server/wm/DisplayContent;

.field public mShouldUseCapturedLetterbox:Z

.field public final mShowCapturedLetterboxRunnable:Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CapturedLetterbox;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShowCapturedLetterboxRunnable:Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    return-void
.end method

.method public static checkTime(JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p0

    .line 6
    const-wide/16 p0, 0x64

    .line 7
    .line 8
    cmp-long p0, v0, p0

    .line 9
    .line 10
    if-lez p0, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p1, "Slow operation: "

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string/jumbo p1, "ms so far, now at "

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "CapturedLetterbox"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public final createCapturedLetterboxSurface()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    const-string v2, "CapturedLetterbox"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "There is no wallpaper target."

    .line 16
    .line 17
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetBlurWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    const-string p0, "There is no wallpaper target for blur wallpaper letterbox."

    .line 30
    .line 31
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_d

    .line 40
    .line 41
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_d

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    const-string p0, "There is no wallpaper."

    .line 76
    .line 77
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-nez v3, :cond_4

    .line 86
    .line 87
    const-string p0, "There is no wallpaper parent."

    .line 88
    .line 89
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    const-string v4, "createBlurWallpaperLetterboxSurface"

    .line 94
    .line 95
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 99
    .line 100
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 101
    .line 102
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 109
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 117
    .line 118
    iget-object v1, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    const/4 v8, 0x1

    .line 125
    const/4 v9, 0x0

    .line 126
    if-eqz v7, :cond_b

    .line 127
    .line 128
    iget-object v1, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_b

    .line 135
    .line 136
    iget-object v1, v1, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 137
    .line 138
    iget-object v7, v1, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 139
    .line 140
    if-eqz v7, :cond_b

    .line 141
    .line 142
    iget-object v7, v1, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_5

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_5
    iget-object v1, v1, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 153
    .line 154
    invoke-virtual {v4, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 155
    .line 156
    .line 157
    const/4 v7, 0x0

    .line 158
    invoke-virtual {v4, v1, v7, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v1, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v8}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 165
    .line 166
    .line 167
    const/16 v7, -0x4e20

    .line 168
    .line 169
    invoke-virtual {v4, v1, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 170
    .line 171
    .line 172
    const-string v1, "after reparentToWallpaperParentImmediately"

    .line 173
    .line 174
    invoke-static {v5, v6, v1}, Lcom/android/server/wm/CapturedLetterbox;->checkTime(JLjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    new-instance v10, Landroid/graphics/Rect;

    .line 190
    .line 191
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    if-eqz v11, :cond_6

    .line 199
    .line 200
    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 201
    .line 202
    if-eqz v11, :cond_6

    .line 203
    .line 204
    iget v12, v11, Landroid/view/MagnificationSpec;->scale:F

    .line 205
    .line 206
    int-to-float v13, v7

    .line 207
    mul-float/2addr v13, v12

    .line 208
    float-to-int v13, v13

    .line 209
    int-to-float v14, v1

    .line 210
    mul-float/2addr v14, v12

    .line 211
    float-to-int v12, v14

    .line 212
    iget v14, v11, Landroid/view/MagnificationSpec;->offsetX:F

    .line 213
    .line 214
    float-to-int v14, v14

    .line 215
    iget v11, v11, Landroid/view/MagnificationSpec;->offsetY:F

    .line 216
    .line 217
    float-to-int v11, v11

    .line 218
    add-int/2addr v13, v14

    .line 219
    add-int/2addr v12, v11

    .line 220
    invoke-virtual {v10, v14, v11, v13, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 221
    .line 222
    .line 223
    :cond_6
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    iget v12, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 228
    .line 229
    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    const-string v12, "after getDisplayInfo"

    .line 234
    .line 235
    invoke-static {v5, v6, v12}, Lcom/android/server/wm/CapturedLetterbox;->checkTime(JLjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    if-eqz v11, :cond_7

    .line 239
    .line 240
    iget-object v11, v11, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 241
    .line 242
    invoke-static {v11}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    goto :goto_0

    .line 247
    :cond_7
    move-object v11, v9

    .line 248
    :goto_0
    if-nez v11, :cond_8

    .line 249
    .line 250
    const-string v1, "There is no display token."

    .line 251
    .line 252
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :cond_8
    const-string v12, "after getDisplayToken"

    .line 258
    .line 259
    invoke-static {v5, v6, v12}, Lcom/android/server/wm/CapturedLetterbox;->checkTime(JLjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    new-instance v12, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 263
    .line 264
    invoke-direct {v12, v11}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 265
    .line 266
    .line 267
    const/4 v11, 0x0

    .line 268
    invoke-virtual {v12, v11}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    invoke-virtual {v11, v10}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    check-cast v10, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 277
    .line 278
    invoke-virtual {v10, v7, v1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSize(II)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v1, v3}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setLayer(Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v1, v8}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 291
    .line 292
    invoke-virtual {v1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    const-string v7, "after createDisplayCaptureArgs"

    .line 297
    .line 298
    invoke-static {v5, v6, v7}, Lcom/android/server/wm/CapturedLetterbox;->checkTime(JLjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-static {v1}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const-string v7, "after captureDisplay"

    .line 306
    .line 307
    invoke-static {v5, v6, v7}, Lcom/android/server/wm/CapturedLetterbox;->checkTime(JLjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    if-nez v1, :cond_9

    .line 311
    .line 312
    const-string v1, "There is no screenshot buffer."

    .line 313
    .line 314
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_9
    invoke-virtual {v1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    if-nez v7, :cond_a

    .line 323
    .line 324
    const-string v1, "There is no hardware buffer."

    .line 325
    .line 326
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_a
    new-instance v9, Landroid/view/SurfaceControl$Builder;

    .line 331
    .line 332
    invoke-direct {v9}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v9, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v7}, Landroid/hardware/HardwareBuffer;->getFormat()I

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    invoke-virtual {v2, v9}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    const-string v2, "createCapturedBlurWallpaperSurface"

    .line 360
    .line 361
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 370
    .line 371
    .line 372
    move-result-object v9

    .line 373
    invoke-virtual {v4, v9, v7}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 374
    .line 375
    .line 376
    const-string v1, "after createCapturedBlurWallpaperSurface"

    .line 377
    .line 378
    invoke-static {v5, v6, v1}, Lcom/android/server/wm/CapturedLetterbox;->checkTime(JLjava/lang/String;)V

    .line 379
    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_b
    :goto_1
    const-string v1, "There is no letterbox."

    .line 383
    .line 384
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    :goto_2
    iput-object v9, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    .line 388
    .line 389
    if-nez v9, :cond_c

    .line 390
    .line 391
    return-void

    .line 392
    :cond_c
    invoke-virtual {v4, v9, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 393
    .line 394
    .line 395
    iget-object v1, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    .line 396
    .line 397
    invoke-virtual {v4, v1, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 398
    .line 399
    .line 400
    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    .line 401
    .line 402
    invoke-virtual {v4, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 403
    .line 404
    .line 405
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 406
    .line 407
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 408
    .line 409
    new-instance v0, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda1;

    .line 410
    .line 411
    invoke-direct {v0, v4}, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :cond_d
    :goto_3
    const-string p0, "Multi window is not supported."

    .line 422
    .line 423
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 428
    .line 429
    const-string v0, "The surface already exists."

    .line 430
    .line 431
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw p0
.end method

.method public final removeCapturedLetterboxSurface()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "CapturedLetterbox"

    .line 7
    .line 8
    const-string/jumbo v1, "removeCapturedLetterboxSurface"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    .line 38
    .line 39
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
