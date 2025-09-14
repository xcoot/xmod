.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEdgeCooldown:Z

.field mOverscrollState:I

.field public final mPivotEdge:Landroid/graphics/PointF;

.field public final mReachedEdgeCoord:Landroid/graphics/PointF;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;


# direct methods
.method public static -$$Nest$monScrollStateChanged(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 5
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 7
    iget v3, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 9
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isAtEdge(I)Z

    .line 12
    move-result v2

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eqz v2, :cond_7

    .line 18
    iget v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 20
    if-eqz v2, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->isAtLeftEdge()Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 29
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->isAtRightEdge()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 35
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 37
    if-nez v2, :cond_3

    .line 39
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationVibrationHelper:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    .line 41
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    .line 43
    if-eqz v7, :cond_3

    .line 45
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_3

    .line 51
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    const/4 v8, -0x2

    .line 54
    const-string v9, "accessibility_display_magnification_edge_haptic_enabled"

    .line 56
    invoke-static {v7, v9, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 59
    move-result v7

    .line 60
    if-ne v7, v6, :cond_3

    .line 62
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mIsVibrationEffectSupportedProvider:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;

    .line 64
    invoke-interface {v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;->isVibrationEffectSupported()Z

    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_2

    .line 70
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    .line 72
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 74
    invoke-virtual {v7, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    .line 80
    const-wide/16 v7, 0xa

    .line 82
    const/16 v9, 0x7f

    .line 84
    invoke-static {v7, v8, v9}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v2, v7}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 91
    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 93
    iget v7, v2, Landroid/graphics/PointF;->x:F

    .line 95
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_7

    .line 101
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 103
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_4

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    .line 112
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 115
    iget-object v7, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 117
    invoke-virtual {v7, v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationBounds(ILandroid/graphics/Rect;)V

    .line 120
    iget v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 122
    if-ne v7, v6, :cond_5

    .line 124
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 126
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 128
    int-to-float v2, v2

    .line 129
    iget-object v8, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 131
    invoke-virtual {v8, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    .line 134
    move-result v8

    .line 135
    invoke-virtual {v7, v2, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    if-ne v7, v5, :cond_6

    .line 141
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 143
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 145
    int-to-float v2, v2

    .line 146
    iget-object v8, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 148
    invoke-virtual {v8, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    .line 151
    move-result v8

    .line 152
    invoke-virtual {v7, v2, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 155
    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 160
    move-result v7

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 164
    move-result v8

    .line 165
    invoke-virtual {v2, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 168
    iput-boolean v6, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 170
    :cond_7
    :goto_2
    iget v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 172
    if-eqz v2, :cond_14

    .line 174
    if-eq v2, v6, :cond_9

    .line 176
    if-eq v2, v5, :cond_9

    .line 178
    const/4 v3, 0x3

    .line 179
    if-eq v2, v3, :cond_8

    .line 181
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 183
    const-string v1, "Invalid overscroll state"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto/16 :goto_6

    .line 190
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 193
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 195
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 198
    goto/16 :goto_6

    .line 200
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 203
    move-result v2

    .line 204
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 206
    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 208
    sub-float/2addr v2, v7

    .line 209
    iget v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 211
    const/high16 v8, 0x3f800000    # 1.0f

    .line 213
    const/4 v9, 0x0

    .line 214
    if-ne v7, v6, :cond_a

    .line 216
    cmpg-float v10, v2, v9

    .line 218
    if-ltz v10, :cond_b

    .line 220
    :cond_a
    if-ne v7, v5, :cond_c

    .line 222
    cmpl-float v5, v2, v9

    .line 224
    if-lez v5, :cond_c

    .line 226
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 229
    const/high16 v2, -0x40800000    # -1.0f

    .line 231
    goto/16 :goto_5

    .line 233
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 236
    move-result v5

    .line 237
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 239
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 241
    sub-float/2addr v5, v7

    .line 242
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 245
    move-result v2

    .line 246
    float-to-double v10, v2

    .line 247
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 250
    move-result v2

    .line 251
    float-to-double v12, v2

    .line 252
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    .line 255
    move-result-wide v10

    .line 256
    double-to-float v2, v10

    .line 257
    new-instance v5, Landroid/graphics/Rect;

    .line 259
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 262
    iget-object v7, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 264
    invoke-virtual {v7, v3, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationBounds(ILandroid/graphics/Rect;)V

    .line 267
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 270
    move-result v7

    .line 271
    int-to-float v7, v7

    .line 272
    div-float v7, v2, v7

    .line 274
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 277
    move-result v5

    .line 278
    int-to-float v5, v5

    .line 279
    const v10, 0x3d4ccccd    # 0.05f

    .line 282
    mul-float/2addr v5, v10

    .line 283
    iget-boolean v10, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 285
    if-eqz v10, :cond_d

    .line 287
    cmpl-float v2, v2, v5

    .line 289
    if-lez v2, :cond_d

    .line 291
    iput-boolean v4, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 293
    :cond_d
    sub-float v2, v8, v7

    .line 295
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 297
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 300
    move-result v4

    .line 301
    const v5, 0x3fd9999a    # 1.7f

    .line 304
    cmpg-float v5, v4, v5

    .line 306
    if-gez v5, :cond_f

    .line 308
    :cond_e
    :goto_3
    move v5, v8

    .line 309
    goto :goto_4

    .line 310
    :cond_f
    const/high16 v5, 0x40000000    # 2.0f

    .line 312
    cmpg-float v5, v4, v5

    .line 314
    if-gez v5, :cond_10

    .line 316
    goto :goto_3

    .line 317
    :cond_10
    const v5, 0x400ccccd    # 2.2f

    .line 320
    cmpg-float v5, v4, v5

    .line 322
    if-gez v5, :cond_11

    .line 324
    const v5, 0x3f733333    # 0.95f

    .line 327
    goto :goto_4

    .line 328
    :cond_11
    const/high16 v5, 0x40200000    # 2.5f

    .line 330
    cmpg-float v5, v4, v5

    .line 332
    if-gez v5, :cond_12

    .line 334
    const v5, 0x3f8ccccd    # 1.1f

    .line 337
    goto :goto_4

    .line 338
    :cond_12
    const v5, 0x402ccccd    # 2.7f

    .line 341
    cmpg-float v5, v4, v5

    .line 343
    if-gez v5, :cond_e

    .line 345
    const v5, 0x3fa66666    # 1.3f

    .line 348
    :goto_4
    mul-float/2addr v4, v5

    .line 349
    mul-float/2addr v4, v2

    .line 350
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 352
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 355
    move-result v2

    .line 356
    invoke-static {v4, v8, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 359
    move-result v2

    .line 360
    :goto_5
    cmpg-float v4, v2, v9

    .line 362
    if-gez v4, :cond_13

    .line 364
    goto :goto_6

    .line 365
    :cond_13
    iget-object v10, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 367
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 369
    iget v13, v4, Landroid/graphics/PointF;->x:F

    .line 371
    iget v14, v4, Landroid/graphics/PointF;->y:F

    .line 373
    const/4 v15, 0x1

    .line 374
    const/16 v16, 0x0

    .line 376
    iget v11, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 378
    move v12, v2

    .line 379
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 382
    cmpl-float v2, v2, v8

    .line 384
    if-nez v2, :cond_15

    .line 386
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 388
    invoke-virtual {v2, v3, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 394
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 396
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 399
    goto :goto_6

    .line 400
    :cond_14
    new-instance v2, Landroid/graphics/PointF;

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 405
    move-result v3

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 409
    move-result v4

    .line 410
    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 413
    move-object/from16 v3, p2

    .line 415
    invoke-static {v1, v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    .line 418
    move-result v1

    .line 419
    iput v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 421
    :cond_15
    :goto_6
    return-void
.end method

.method public static -$$Nest$msetScaleAndCenterToEdgeIfNeeded(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 11
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 13
    iget v2, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 18
    move-result v3

    .line 19
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 21
    iget v4, p0, Landroid/graphics/PointF;->x:F

    .line 23
    iget v5, p0, Landroid/graphics/PointF;->y:F

    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 30
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 9
    new-instance v0, Landroid/graphics/PointF;

    .line 11
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 13
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 18
    new-instance v0, Landroid/graphics/PointF;

    .line 20
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 23
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 25
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 27
    return-void
.end method


# virtual methods
.method public final clearEdgeState()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 6
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 8
    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 13
    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 16
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "OverscrollHandler {mOverscrollState="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "mPivotEdge.x="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 21
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v1, "mPivotEdge.y="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 34
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v1, "mReachedEdgeCoord.x="

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 47
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, "mReachedEdgeCoord.y="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 60
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, "mEdgeCooldown="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 73
    const-string/jumbo v1, "}"

    .line 76
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
