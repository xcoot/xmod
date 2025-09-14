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

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 6
    .line 7
    iget v3, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isAtEdge(I)Z

    .line 10
    .line 11
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

    .line 17
    .line 18
    iget v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->isAtLeftEdge()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->isAtRightEdge()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationVibrationHelper:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    .line 40
    .line 41
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    .line 42
    .line 43
    if-eqz v7, :cond_3

    .line 44
    .line 45
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_3

    .line 50
    .line 51
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    .line 53
    const/4 v8, -0x2

    .line 54
    const-string v9, "accessibility_display_magnification_edge_haptic_enabled"

    .line 55
    .line 56
    invoke-static {v7, v9, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-ne v7, v6, :cond_3

    .line 61
    .line 62
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mIsVibrationEffectSupportedProvider:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;

    .line 63
    .line 64
    invoke-interface {v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;->isVibrationEffectSupported()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_2

    .line 69
    .line 70
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 73
    .line 74
    invoke-virtual {v7, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    .line 79
    .line 80
    const-wide/16 v7, 0xa

    .line 81
    .line 82
    const/16 v9, 0x7f

    .line 83
    .line 84
    invoke-static {v7, v8, v9}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v2, v7}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 92
    .line 93
    iget v7, v2, Landroid/graphics/PointF;->x:F

    .line 94
    .line 95
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_7

    .line 100
    .line 101
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 102
    .line 103
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v7, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 116
    .line 117
    invoke-virtual {v7, v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationBounds(ILandroid/graphics/Rect;)V

    .line 118
    .line 119
    .line 120
    iget v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 121
    .line 122
    if-ne v7, v6, :cond_5

    .line 123
    .line 124
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 125
    .line 126
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 127
    .line 128
    int-to-float v2, v2

    .line 129
    iget-object v8, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 130
    .line 131
    invoke-virtual {v8, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    invoke-virtual {v7, v2, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    if-ne v7, v5, :cond_6

    .line 140
    .line 141
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 142
    .line 143
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 144
    .line 145
    int-to-float v2, v2

    .line 146
    iget-object v8, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 147
    .line 148
    invoke-virtual {v8, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    invoke-virtual {v7, v2, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 156
    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    invoke-virtual {v2, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 166
    .line 167
    .line 168
    iput-boolean v6, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 169
    .line 170
    :cond_7
    :goto_2
    iget v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 171
    .line 172
    if-eqz v2, :cond_14

    .line 173
    .line 174
    if-eq v2, v6, :cond_9

    .line 175
    .line 176
    if-eq v2, v5, :cond_9

    .line 177
    .line 178
    const/4 v3, 0x3

    .line 179
    if-eq v2, v3, :cond_8

    .line 180
    .line 181
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 182
    .line 183
    const-string v1, "Invalid overscroll state"

    .line 184
    .line 185
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    goto/16 :goto_6

    .line 189
    .line 190
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 191
    .line 192
    .line 193
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 194
    .line 195
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_6

    .line 199
    .line 200
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 205
    .line 206
    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 207
    .line 208
    sub-float/2addr v2, v7

    .line 209
    iget v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 210
    .line 211
    const/high16 v8, 0x3f800000    # 1.0f

    .line 212
    .line 213
    const/4 v9, 0x0

    .line 214
    if-ne v7, v6, :cond_a

    .line 215
    .line 216
    cmpg-float v10, v2, v9

    .line 217
    .line 218
    if-ltz v10, :cond_b

    .line 219
    .line 220
    :cond_a
    if-ne v7, v5, :cond_c

    .line 221
    .line 222
    cmpl-float v5, v2, v9

    .line 223
    .line 224
    if-lez v5, :cond_c

    .line 225
    .line 226
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 227
    .line 228
    .line 229
    const/high16 v2, -0x40800000    # -1.0f

    .line 230
    .line 231
    goto/16 :goto_5

    .line 232
    .line 233
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 238
    .line 239
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 240
    .line 241
    sub-float/2addr v5, v7

    .line 242
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    float-to-double v10, v2

    .line 247
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    float-to-double v12, v2

    .line 252
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    .line 253
    .line 254
    .line 255
    move-result-wide v10

    .line 256
    double-to-float v2, v10

    .line 257
    new-instance v5, Landroid/graphics/Rect;

    .line 258
    .line 259
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 260
    .line 261
    .line 262
    iget-object v7, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 263
    .line 264
    invoke-virtual {v7, v3, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationBounds(ILandroid/graphics/Rect;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    int-to-float v7, v7

    .line 272
    div-float v7, v2, v7

    .line 273
    .line 274
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    int-to-float v5, v5

    .line 279
    const v10, 0x3d4ccccd    # 0.05f

    .line 280
    .line 281
    .line 282
    mul-float/2addr v5, v10

    .line 283
    iget-boolean v10, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 284
    .line 285
    if-eqz v10, :cond_d

    .line 286
    .line 287
    cmpl-float v2, v2, v5

    .line 288
    .line 289
    if-lez v2, :cond_d

    .line 290
    .line 291
    iput-boolean v4, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 292
    .line 293
    :cond_d
    sub-float v2, v8, v7

    .line 294
    .line 295
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 296
    .line 297
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    const v5, 0x3fd9999a    # 1.7f

    .line 302
    .line 303
    .line 304
    cmpg-float v5, v4, v5

    .line 305
    .line 306
    if-gez v5, :cond_f

    .line 307
    .line 308
    :cond_e
    :goto_3
    move v5, v8

    .line 309
    goto :goto_4

    .line 310
    :cond_f
    const/high16 v5, 0x40000000    # 2.0f

    .line 311
    .line 312
    cmpg-float v5, v4, v5

    .line 313
    .line 314
    if-gez v5, :cond_10

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_10
    const v5, 0x400ccccd    # 2.2f

    .line 318
    .line 319
    .line 320
    cmpg-float v5, v4, v5

    .line 321
    .line 322
    if-gez v5, :cond_11

    .line 323
    .line 324
    const v5, 0x3f733333    # 0.95f

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_11
    const/high16 v5, 0x40200000    # 2.5f

    .line 329
    .line 330
    cmpg-float v5, v4, v5

    .line 331
    .line 332
    if-gez v5, :cond_12

    .line 333
    .line 334
    const v5, 0x3f8ccccd    # 1.1f

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_12
    const v5, 0x402ccccd    # 2.7f

    .line 339
    .line 340
    .line 341
    cmpg-float v5, v4, v5

    .line 342
    .line 343
    if-gez v5, :cond_e

    .line 344
    .line 345
    const v5, 0x3fa66666    # 1.3f

    .line 346
    .line 347
    .line 348
    :goto_4
    mul-float/2addr v4, v5

    .line 349
    mul-float/2addr v4, v2

    .line 350
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 351
    .line 352
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    invoke-static {v4, v8, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    :goto_5
    cmpg-float v4, v2, v9

    .line 361
    .line 362
    if-gez v4, :cond_13

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_13
    iget-object v10, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 366
    .line 367
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 368
    .line 369
    iget v13, v4, Landroid/graphics/PointF;->x:F

    .line 370
    .line 371
    iget v14, v4, Landroid/graphics/PointF;->y:F

    .line 372
    .line 373
    const/4 v15, 0x1

    .line 374
    const/16 v16, 0x0

    .line 375
    .line 376
    iget v11, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 377
    .line 378
    move v12, v2

    .line 379
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 380
    .line 381
    .line 382
    cmpl-float v2, v2, v8

    .line 383
    .line 384
    if-nez v2, :cond_15

    .line 385
    .line 386
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 387
    .line 388
    invoke-virtual {v2, v3, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 392
    .line 393
    .line 394
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 395
    .line 396
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 397
    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_14
    new-instance v2, Landroid/graphics/PointF;

    .line 401
    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 411
    .line 412
    .line 413
    move-object/from16 v3, p2

    .line 414
    .line 415
    invoke-static {v1, v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    iput v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 420
    .line 421
    :cond_15
    :goto_6
    return-void
.end method

.method public static -$$Nest$msetScaleAndCenterToEdgeIfNeeded(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 12
    .line 13
    iget v2, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 20
    .line 21
    iget v4, p0, Landroid/graphics/PointF;->x:F

    .line 22
    .line 23
    iget v5, p0, Landroid/graphics/PointF;->y:F

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/PointF;

    .line 10
    .line 11
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 12
    .line 13
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/PointF;

    .line 19
    .line 20
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 26
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

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 5
    .line 6
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 7
    .line 8
    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 14
    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 17
    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OverscrollHandler {mOverscrollState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "mPivotEdge.x="

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 20
    .line 21
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "mPivotEdge.y="

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 33
    .line 34
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "mReachedEdgeCoord.x="

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 46
    .line 47
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "mReachedEdgeCoord.y="

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 59
    .line 60
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "mEdgeCooldown="

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    .line 72
    .line 73
    const-string/jumbo v1, "}"

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
