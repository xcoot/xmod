.class public final Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBackColorSurface:Landroid/view/SurfaceControl;

.field public final mContext:Landroid/content/Context;

.field public mCurRotation:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mEndLuma:F

.field public mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

.field public mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field public mFinishAnimReady:Z

.field public mFinishAnimStartTime:J

.field public final mOriginalHeight:I

.field public final mOriginalRotation:I

.field public final mOriginalWidth:I

.field public mRotateAlphaAnimation:Landroid/view/animation/Animation;

.field public mRotateEnterAnimation:Landroid/view/animation/Animation;

.field public final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field public mRotateExitAnimation:Landroid/view/animation/Animation;

.field public final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field public mRoundedCornerOverlay:[Landroid/view/SurfaceControl;

.field public mScreenshotLayer:Landroid/view/SurfaceControl;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field public final mStartLuma:F

.field public mStarted:Z

.field public mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

.field public final mTmpFloats:[F


# direct methods
.method public constructor <init>(ILcom/android/server/wm/DisplayContent;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    const/4 v6, 0x1

    .line 9
    const-string v7, "WindowManager"

    .line 10
    .line 11
    const-string v8, "Unable to take screenshot of display "

    .line 12
    .line 13
    const-string v9, "Display does not have a physical address: "

    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v10, 0x9

    .line 19
    .line 20
    new-array v10, v10, [F

    .line 21
    .line 22
    iput-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 23
    .line 24
    new-instance v10, Landroid/view/animation/Transformation;

    .line 25
    .line 26
    invoke-direct {v10}, Landroid/view/animation/Transformation;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 30
    .line 31
    new-instance v10, Landroid/view/animation/Transformation;

    .line 32
    .line 33
    invoke-direct {v10}, Landroid/view/animation/Transformation;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 37
    .line 38
    new-instance v10, Landroid/graphics/Matrix;

    .line 39
    .line 40
    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 44
    .line 45
    iget-object v10, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    .line 47
    iput-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 48
    .line 49
    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    iput-object v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 54
    .line 55
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    iget-object v13, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 68
    .line 69
    iget v14, v13, Landroid/view/DisplayInfo;->rotation:I

    .line 70
    .line 71
    iput v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 72
    .line 73
    invoke-static {v2, v14}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    if-eq v15, v6, :cond_1

    .line 78
    .line 79
    if-ne v15, v0, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v15, 0x0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    move v15, v6

    .line 85
    :goto_1
    if-eqz v15, :cond_2

    .line 86
    .line 87
    move v4, v11

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move v4, v12

    .line 90
    :goto_2
    iput v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 91
    .line 92
    if-eqz v15, :cond_3

    .line 93
    .line 94
    move v15, v12

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    move v15, v11

    .line 97
    :goto_3
    iput v15, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 98
    .line 99
    iget v5, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 100
    .line 101
    iget v6, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 102
    .line 103
    if-le v5, v4, :cond_4

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    goto :goto_4

    .line 107
    :cond_4
    const/4 v0, 0x0

    .line 108
    :goto_4
    if-le v6, v15, :cond_5

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    goto :goto_5

    .line 112
    :cond_5
    const/4 v2, 0x0

    .line 113
    :goto_5
    if-ne v0, v2, :cond_7

    .line 114
    .line 115
    if-ne v5, v4, :cond_6

    .line 116
    .line 117
    if-eq v6, v15, :cond_7

    .line 118
    .line 119
    :cond_6
    const/4 v2, 0x1

    .line 120
    goto :goto_6

    .line 121
    :cond_7
    const/4 v2, 0x0

    .line 122
    :goto_6
    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 123
    .line 124
    invoke-direct {v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;-><init>(Lcom/android/server/wm/ScreenRotationAnimation;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 128
    .line 129
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    .line 130
    .line 131
    const/4 v4, 0x3

    .line 132
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    const/4 v0, 0x1

    .line 142
    goto :goto_7

    .line 143
    :cond_8
    const/4 v0, 0x0

    .line 144
    :goto_7
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 145
    .line 146
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 147
    .line 148
    invoke-interface {v10}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    check-cast v10, Landroid/view/SurfaceControl$Transaction;

    .line 153
    .line 154
    :try_start_0
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_BLACK_SNAPSHOT_TRANSITION:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    move/from16 v16, v0

    .line 157
    .line 158
    const-string v0, "ScreenRotationAnimation"

    .line 159
    .line 160
    if-eqz v15, :cond_9

    .line 161
    .line 162
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->isSizeRatioChanging()Z

    .line 163
    .line 164
    .line 165
    move-result v15

    .line 166
    if-eqz v15, :cond_9

    .line 167
    .line 168
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const-string v8, "BlackSnapshotLayer"

    .line 173
    .line 174
    invoke-virtual {v4, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    const/4 v8, 0x1

    .line 179
    invoke-virtual {v4, v8}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 196
    .line 197
    const/16 v4, 0x1e

    .line 198
    .line 199
    invoke-virtual {v10, v0, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 200
    .line 201
    .line 202
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 203
    .line 204
    const v4, 0x1eab90

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 208
    .line 209
    .line 210
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 211
    .line 212
    const/4 v4, 0x0

    .line 213
    invoke-virtual {v10, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 214
    .line 215
    .line 216
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 217
    .line 218
    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 219
    .line 220
    .line 221
    goto/16 :goto_c

    .line 222
    .line 223
    :catch_0
    move-exception v0

    .line 224
    goto/16 :goto_b

    .line 225
    .line 226
    :cond_9
    if-eqz v2, :cond_c

    .line 227
    .line 228
    invoke-static {}, Lcom/android/window/flags/Flags;->deleteCaptureDisplay()Z

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    if-nez v15, :cond_c

    .line 233
    .line 234
    iget-object v13, v13, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 235
    .line 236
    instance-of v15, v13, Landroid/view/DisplayAddress$Physical;

    .line 237
    .line 238
    if-nez v15, :cond_a

    .line 239
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_a
    check-cast v13, Landroid/view/DisplayAddress$Physical;

    .line 257
    .line 258
    invoke-virtual {v13}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    .line 259
    .line 260
    .line 261
    move-result-wide v17

    .line 262
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    if-nez v9, :cond_b

    .line 267
    .line 268
    const-string v0, "Display token is null."

    .line 269
    .line 270
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_b
    const/4 v13, 0x0

    .line 275
    invoke-virtual {v1, v10, v13}, Lcom/android/server/wm/ScreenRotationAnimation;->setSkipScreenshotForRoundedCornerOverlays(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->findRoundedCornerOverlays()[Landroid/view/SurfaceControl;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    iput-object v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRoundedCornerOverlay:[Landroid/view/SurfaceControl;

    .line 283
    .line 284
    new-instance v13, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 285
    .line 286
    invoke-direct {v13, v9}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 287
    .line 288
    .line 289
    new-instance v9, Landroid/graphics/Rect;

    .line 290
    .line 291
    const/4 v15, 0x0

    .line 292
    invoke-direct {v9, v15, v15, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v13, v9}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    check-cast v9, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 300
    .line 301
    const/4 v11, 0x1

    .line 302
    invoke-virtual {v9, v11}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    check-cast v9, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 307
    .line 308
    invoke-virtual {v9, v11}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    check-cast v9, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 313
    .line 314
    invoke-virtual {v9, v11}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    check-cast v9, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 319
    .line 320
    invoke-virtual {v9}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    invoke-static {v9}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    goto :goto_8

    .line 329
    :cond_c
    if-eqz v2, :cond_d

    .line 330
    .line 331
    const/4 v9, 0x0

    .line 332
    invoke-virtual {v1, v10, v9}, Lcom/android/server/wm/ScreenRotationAnimation;->setSkipScreenshotForRoundedCornerOverlays(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 333
    .line 334
    .line 335
    new-instance v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 336
    .line 337
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    invoke-direct {v9, v13}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 342
    .line 343
    .line 344
    const/4 v13, 0x1

    .line 345
    invoke-virtual {v9, v13}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    check-cast v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 350
    .line 351
    invoke-virtual {v9, v13}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    check-cast v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 356
    .line 357
    new-instance v13, Landroid/graphics/Rect;

    .line 358
    .line 359
    const/4 v15, 0x0

    .line 360
    invoke-direct {v13, v15, v15, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v9, v13}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    check-cast v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 368
    .line 369
    const/4 v11, 0x1

    .line 370
    invoke-virtual {v9, v11}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    check-cast v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 375
    .line 376
    invoke-virtual {v9}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    invoke-static {v9}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    goto :goto_8

    .line 385
    :cond_d
    new-instance v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 386
    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    invoke-direct {v9, v13}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 392
    .line 393
    .line 394
    const/4 v13, 0x1

    .line 395
    invoke-virtual {v9, v13}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    check-cast v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 400
    .line 401
    invoke-virtual {v9, v13}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    check-cast v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 406
    .line 407
    new-instance v13, Landroid/graphics/Rect;

    .line 408
    .line 409
    const/4 v15, 0x0

    .line 410
    invoke-direct {v13, v15, v15, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v9, v13}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    check-cast v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 418
    .line 419
    const/4 v11, 0x1

    .line 420
    invoke-virtual {v9, v11}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    check-cast v9, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 425
    .line 426
    invoke-virtual {v9}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    invoke-static {v9}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    :goto_8
    if-nez v9, :cond_e

    .line 435
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    :cond_e
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    if-eqz v8, :cond_f

    .line 457
    .line 458
    const/4 v8, 0x1

    .line 459
    goto :goto_9

    .line 460
    :cond_f
    move/from16 v8, v16

    .line 461
    .line 462
    :goto_9
    const/4 v11, 0x0

    .line 463
    invoke-virtual {v3, v11}, Lcom/android/server/wm/DisplayContent;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    const-string v12, "BackColorSurface"

    .line 468
    .line 469
    invoke-virtual {v11, v12}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 474
    .line 475
    .line 476
    move-result-object v11

    .line 477
    invoke-virtual {v11, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 478
    .line 479
    .line 480
    move-result-object v11

    .line 481
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 482
    .line 483
    .line 484
    move-result-object v11

    .line 485
    iput-object v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 486
    .line 487
    const-string v11, "RotationLayer"

    .line 488
    .line 489
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    .line 490
    .line 491
    .line 492
    move-result-object v12

    .line 493
    invoke-virtual {v12, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 494
    .line 495
    .line 496
    move-result-object v12

    .line 497
    const/4 v13, 0x1

    .line 498
    invoke-virtual {v12, v13}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 499
    .line 500
    .line 501
    move-result-object v12

    .line 502
    invoke-virtual {v12, v8}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    invoke-virtual {v8, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 515
    .line 516
    .line 517
    move-result-object v8

    .line 518
    iput-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 519
    .line 520
    const/16 v12, 0x1e

    .line 521
    .line 522
    const/4 v13, 0x1

    .line 523
    invoke-virtual {v10, v8, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 524
    .line 525
    .line 526
    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 527
    .line 528
    invoke-static {v8, v10, v4, v11}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    const-string v8, "EnterBlackFrameLayer"

    .line 536
    .line 537
    invoke-virtual {v4, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 554
    .line 555
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    const-string v4, "ScreenRotationAnimation#getMedianBorderLuma"

    .line 560
    .line 561
    const-wide/16 v11, 0x20

    .line 562
    .line 563
    invoke-static {v11, v12, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    invoke-static {v0, v4}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    iput v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    .line 575
    .line 576
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 577
    .line 578
    .line 579
    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 580
    .line 581
    const v11, 0x1eab90

    .line 582
    .line 583
    .line 584
    invoke-virtual {v10, v8, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 585
    .line 586
    .line 587
    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 588
    .line 589
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 590
    .line 591
    .line 592
    move-result-object v11

    .line 593
    invoke-virtual {v10, v8, v11}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 594
    .line 595
    .line 596
    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 597
    .line 598
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsHdrLayers()Z

    .line 599
    .line 600
    .line 601
    move-result v11

    .line 602
    const/4 v12, 0x1

    .line 603
    xor-int/2addr v11, v12

    .line 604
    invoke-virtual {v10, v8, v11}, Landroid/view/SurfaceControl$Transaction;->setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 605
    .line 606
    .line 607
    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 608
    .line 609
    const/4 v11, -0x1

    .line 610
    invoke-virtual {v10, v8, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 611
    .line 612
    .line 613
    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 614
    .line 615
    const/4 v11, 0x3

    .line 616
    new-array v11, v11, [F

    .line 617
    .line 618
    const/4 v12, 0x0

    .line 619
    aput v4, v11, v12

    .line 620
    .line 621
    const/4 v12, 0x1

    .line 622
    aput v4, v11, v12

    .line 623
    .line 624
    const/4 v12, 0x2

    .line 625
    aput v4, v11, v12

    .line 626
    .line 627
    invoke-virtual {v10, v8, v11}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 628
    .line 629
    .line 630
    iget-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 631
    .line 632
    const/high16 v8, 0x3f800000    # 1.0f

    .line 633
    .line 634
    invoke-virtual {v10, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 635
    .line 636
    .line 637
    iget-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 638
    .line 639
    invoke-virtual {v10, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 640
    .line 641
    .line 642
    iget-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 643
    .line 644
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 645
    .line 646
    .line 647
    move-result-object v8

    .line 648
    invoke-virtual {v10, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 649
    .line 650
    .line 651
    iget-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 652
    .line 653
    invoke-virtual {v10, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 654
    .line 655
    .line 656
    iget-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 657
    .line 658
    invoke-virtual {v10, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 662
    .line 663
    .line 664
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRoundedCornerOverlay:[Landroid/view/SurfaceControl;

    .line 665
    .line 666
    if-eqz v0, :cond_11

    .line 667
    .line 668
    array-length v4, v0

    .line 669
    const/4 v13, 0x0

    .line 670
    :goto_a
    if-ge v13, v4, :cond_11

    .line 671
    .line 672
    aget-object v8, v0, v13

    .line 673
    .line 674
    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    .line 675
    .line 676
    .line 677
    move-result v9

    .line 678
    if-eqz v9, :cond_10

    .line 679
    .line 680
    invoke-virtual {v10, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 681
    .line 682
    .line 683
    :cond_10
    const/4 v8, 0x1

    .line 684
    add-int/2addr v13, v8

    .line 685
    goto :goto_a

    .line 686
    :goto_b
    const-string v4, "Unable to allocate freeze surface"

    .line 687
    .line 688
    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    .line 690
    .line 691
    :cond_11
    :goto_c
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 692
    .line 693
    if-eqz v0, :cond_12

    .line 694
    .line 695
    if-eqz v2, :cond_12

    .line 696
    .line 697
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 702
    .line 703
    new-instance v3, Landroid/graphics/Rect;

    .line 704
    .line 705
    iget v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 706
    .line 707
    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 708
    .line 709
    const/4 v8, 0x0

    .line 710
    invoke-direct {v3, v8, v8, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 711
    .line 712
    .line 713
    new-instance v4, Landroid/graphics/Rect;

    .line 714
    .line 715
    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v0, v2, v3, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;

    .line 719
    .line 720
    .line 721
    :cond_12
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 722
    .line 723
    const/4 v2, 0x2

    .line 724
    aget-boolean v0, v0, v2

    .line 725
    .line 726
    if-eqz v0, :cond_13

    .line 727
    .line 728
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 729
    .line 730
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 735
    .line 736
    const/4 v6, 0x0

    .line 737
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v7

    .line 741
    const-wide v3, 0x6f2cc97f2c6d3671L    # 3.4097662774123394E227

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    const/4 v5, 0x0

    .line 747
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    :cond_13
    move/from16 v2, p1

    .line 751
    .line 752
    if-ne v2, v14, :cond_14

    .line 753
    .line 754
    invoke-virtual {v1, v10, v14}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 755
    .line 756
    .line 757
    goto :goto_d

    .line 758
    :cond_14
    iput v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 759
    .line 760
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 761
    .line 762
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 763
    .line 764
    .line 765
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 766
    .line 767
    invoke-virtual {v1, v10, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 768
    .line 769
    .line 770
    :goto_d
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 771
    .line 772
    .line 773
    return-void
.end method


# virtual methods
.method public final kill()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 48
    .line 49
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 50
    .line 51
    if-eqz v0, :cond_10

    .line 52
    .line 53
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    aget-boolean v2, v2, v3

    .line 57
    .line 58
    if-eqz v2, :cond_6

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    const-wide v3, -0x50d7c0b99ff2cc69L    # -1.597615251876223E-81

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_7

    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 101
    .line 102
    .line 103
    :cond_7
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 106
    .line 107
    if-eqz v2, :cond_9

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_8

    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 118
    .line 119
    .line 120
    :cond_8
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 121
    .line 122
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 123
    .line 124
    if-eqz v2, :cond_b

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_a

    .line 131
    .line 132
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 135
    .line 136
    .line 137
    :cond_a
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 138
    .line 139
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRoundedCornerOverlay:[Landroid/view/SurfaceControl;

    .line 140
    .line 141
    if-eqz v2, :cond_f

    .line 142
    .line 143
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 144
    .line 145
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 146
    .line 147
    if-eqz v2, :cond_c

    .line 148
    .line 149
    if-ne v2, p0, :cond_e

    .line 150
    .line 151
    :cond_c
    const/4 v2, 0x1

    .line 152
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSkipScreenshotForRoundedCornerOverlays(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRoundedCornerOverlay:[Landroid/view/SurfaceControl;

    .line 156
    .line 157
    array-length v3, v2

    .line 158
    const/4 v4, 0x0

    .line 159
    :goto_0
    if-ge v4, v3, :cond_e

    .line 160
    .line 161
    aget-object v5, v2, v4

    .line 162
    .line 163
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_d

    .line 168
    .line 169
    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 170
    .line 171
    .line 172
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_e
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRoundedCornerOverlay:[Landroid/view/SurfaceControl;

    .line 176
    .line 177
    :cond_f
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 178
    .line 179
    .line 180
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 181
    .line 182
    if-eqz v0, :cond_11

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 185
    .line 186
    .line 187
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 188
    .line 189
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 190
    .line 191
    if-eqz v0, :cond_12

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 194
    .line 195
    .line 196
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 197
    .line 198
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 199
    .line 200
    if-eqz v0, :cond_13

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 203
    .line 204
    .line 205
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 206
    .line 207
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 208
    .line 209
    if-eqz v0, :cond_14

    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 212
    .line 213
    .line 214
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 215
    .line 216
    :cond_14
    return-void
.end method

.method public final setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 5

    .line 1
    iput p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 4
    .line 5
    invoke-static {p2, v0}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 10
    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eq p2, v2, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    iget v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 21
    .line 22
    if-eq p2, v2, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq p2, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/high16 p2, 0x43870000    # 270.0f

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 31
    .line 32
    .line 33
    int-to-float p2, v4

    .line 34
    invoke-virtual {v0, v3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/high16 p2, 0x43340000    # 180.0f

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 41
    .line 42
    .line 43
    int-to-float p2, v4

    .line 44
    int-to-float v1, v1

    .line 45
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/high16 p2, 0x42b40000    # 90.0f

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 52
    .line 53
    .line 54
    int-to-float p2, v1

    .line 55
    invoke-virtual {v0, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    aget p2, v0, p2

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    aget v1, v0, v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    aget v5, v0, p2

    .line 26
    .line 27
    const/4 p2, 0x3

    .line 28
    aget v6, v0, p2

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    aget v7, v0, p2

    .line 32
    .line 33
    const/4 p2, 0x4

    .line 34
    aget v8, v0, p2

    .line 35
    .line 36
    move-object v3, p1

    .line 37
    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 41
    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final setSkipScreenshotForRoundedCornerOverlays(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 10
    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
