.class public final Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 6
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->val$displayId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 5
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 14
    move-result v0

    .line 15
    iget-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 17
    new-array v5, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 19
    iput-object v5, v2, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 21
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    .line 23
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 26
    aput-object v2, v5, v4

    .line 28
    iget-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 30
    iget-object v5, v2, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    .line 32
    iget-object v2, v2, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 34
    aget-object v2, v2, v4

    .line 36
    invoke-virtual {v5, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 39
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 41
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 43
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 45
    aget-object v0, v0, v4

    .line 47
    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 49
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    new-instance v6, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    .line 56
    invoke-direct {v6, v2, v5, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    .line 59
    invoke-virtual {v2, v6}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 64
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 71
    invoke-direct {v2, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 79
    iget v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->val$displayId:I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    move-result-wide v13

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 91
    move-result-wide v15

    .line 92
    new-array v5, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 94
    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    .line 96
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 99
    aput-object v6, v5, v4

    .line 101
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 103
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 106
    move-result v7

    .line 107
    aget-object v5, v5, v4

    .line 109
    invoke-virtual {v6, v7, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 112
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 114
    const-string/jumbo v6, "input"

    .line 117
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    move-result-object v5

    .line 121
    move-object v12, v5

    .line 122
    check-cast v12, Landroid/hardware/input/InputManager;

    .line 124
    if-nez v12, :cond_0

    .line 126
    goto/16 :goto_2

    .line 128
    :cond_0
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 130
    aget-object v5, v5, v4

    .line 132
    iget v10, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 134
    iget v11, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 136
    const/16 v17, 0x1

    .line 138
    const/4 v9, 0x0

    .line 139
    move-wide v5, v13

    .line 140
    move-wide v7, v15

    .line 141
    move-object v4, v12

    .line 142
    move/from16 v12, v17

    .line 144
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 147
    move-result-object v5

    .line 148
    const/16 v12, 0x1002

    .line 150
    invoke-virtual {v5, v12}, Landroid/view/MotionEvent;->setSource(I)V

    .line 153
    const/high16 v11, 0x800000

    .line 155
    invoke-virtual {v5, v11}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 158
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 161
    const/4 v10, 0x2

    .line 162
    invoke-virtual {v4, v5, v10}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 165
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 168
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 173
    move-result-object v5

    .line 174
    const-string/jumbo v6, "long_press_timeout"

    .line 177
    const/16 v7, 0x1f4

    .line 179
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 182
    move-result v5

    .line 183
    const-string/jumbo v6, "drag"

    .line 186
    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    .line 188
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_1

    .line 194
    const/4 v5, 0x0

    .line 195
    goto :goto_0

    .line 196
    :cond_1
    add-int/2addr v5, v7

    .line 197
    :goto_0
    int-to-long v5, v5

    .line 198
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    new-array v3, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 203
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    .line 205
    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 208
    const/16 v18, 0x0

    .line 210
    aput-object v5, v3, v18

    .line 212
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 214
    const-string/jumbo v6, "display"

    .line 217
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 223
    invoke-virtual {v5, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 226
    move-result-object v5

    .line 227
    new-instance v6, Landroid/view/DisplayInfo;

    .line 229
    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 232
    invoke-virtual {v5, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 235
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 237
    aget-object v5, v5, v18

    .line 239
    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 241
    iget-object v7, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 243
    aget-object v7, v7, v18

    .line 245
    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 247
    sub-float/2addr v6, v8

    .line 248
    const/high16 v9, 0x41a00000    # 20.0f

    .line 250
    div-float v17, v6, v9

    .line 252
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 254
    iget v6, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 256
    sub-float/2addr v5, v6

    .line 257
    div-float v19, v5, v9

    .line 259
    aget-object v5, v3, v18

    .line 261
    iput v8, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 263
    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 265
    move/from16 v9, v18

    .line 267
    :goto_1
    const/16 v5, 0x14

    .line 269
    const/16 v6, 0xf

    .line 271
    if-ge v9, v5, :cond_2

    .line 273
    aget-object v5, v3, v18

    .line 275
    iget v7, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 277
    add-float v7, v7, v17

    .line 279
    iput v7, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 281
    iget v8, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 283
    add-float v8, v8, v19

    .line 285
    iput v8, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 287
    int-to-long v5, v6

    .line 288
    add-long/2addr v15, v5

    .line 289
    const/16 v20, 0x2

    .line 291
    const/16 v21, 0x1

    .line 293
    move-wide v5, v13

    .line 294
    move/from16 v22, v7

    .line 296
    move/from16 v23, v8

    .line 298
    move-wide v7, v15

    .line 299
    move/from16 v24, v9

    .line 301
    move/from16 v9, v20

    .line 303
    move/from16 v10, v22

    .line 305
    move/from16 v11, v23

    .line 307
    move-object/from16 v20, v3

    .line 309
    move v3, v12

    .line 310
    move/from16 v12, v21

    .line 312
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 315
    move-result-object v5

    .line 316
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 319
    const/high16 v12, 0x800000

    .line 321
    invoke-virtual {v5, v12}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 324
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 327
    const/4 v11, 0x2

    .line 328
    invoke-virtual {v4, v5, v11}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 331
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 334
    add-int/lit8 v9, v24, 0x1

    .line 336
    move v10, v11

    .line 337
    move v11, v12

    .line 338
    const/16 v18, 0x0

    .line 340
    move v12, v3

    .line 341
    move-object/from16 v3, v20

    .line 343
    goto :goto_1

    .line 344
    :cond_2
    move v3, v12

    .line 345
    move v12, v11

    .line 346
    move v11, v10

    .line 347
    int-to-long v5, v6

    .line 348
    add-long v7, v15, v5

    .line 350
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 352
    const/4 v5, 0x0

    .line 353
    aget-object v0, v0, v5

    .line 355
    iget v10, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 357
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 359
    const/4 v15, 0x1

    .line 360
    const/4 v9, 0x1

    .line 361
    move-wide v5, v13

    .line 362
    move v13, v11

    .line 363
    move v11, v0

    .line 364
    move v0, v12

    .line 365
    move v12, v15

    .line 366
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 373
    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 376
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 379
    invoke-virtual {v4, v5, v13}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 382
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 385
    goto :goto_2

    .line 386
    :catch_0
    move-exception v0

    .line 387
    move-object v2, v0

    .line 388
    const-string v0, "DragAction"

    .line 390
    const-string v3, "InterruptedException!"

    .line 392
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    :goto_2
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 397
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 399
    const/4 v2, 0x0

    .line 400
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 402
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    .line 404
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 406
    invoke-interface {v3, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 409
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 411
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 413
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 415
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    .line 417
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 419
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 422
    goto :goto_3

    .line 423
    :cond_3
    new-array v2, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 425
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 427
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 429
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 432
    const/4 v4, 0x0

    .line 433
    aput-object v0, v2, v4

    .line 435
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 437
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 439
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 442
    move-result v2

    .line 443
    iget-object v5, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 445
    iget-object v5, v5, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 447
    aget-object v5, v5, v4

    .line 449
    invoke-virtual {v0, v2, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 452
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 454
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 456
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 458
    aget-object v0, v0, v4

    .line 460
    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 462
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 464
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    new-instance v5, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    .line 469
    invoke-direct {v5, v2, v4, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    .line 472
    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 475
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 477
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 479
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 484
    invoke-direct {v1, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 487
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 490
    :goto_3
    return-void
.end method
