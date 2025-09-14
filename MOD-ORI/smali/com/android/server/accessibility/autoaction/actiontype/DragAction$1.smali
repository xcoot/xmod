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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->val$displayId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 16
    .line 17
    new-array v5, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 18
    .line 19
    iput-object v5, v2, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 20
    .line 21
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 24
    .line 25
    .line 26
    aput-object v2, v5, v4

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 29
    .line 30
    iget-object v5, v2, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 33
    .line 34
    aget-object v2, v2, v4

    .line 35
    .line 36
    invoke-virtual {v5, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 44
    .line 45
    aget-object v0, v0, v4

    .line 46
    .line 47
    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 48
    .line 49
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v6, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    invoke-direct {v6, v2, v5, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v6}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 70
    .line 71
    invoke-direct {v2, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 78
    .line 79
    iget v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->val$displayId:I

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v13

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v15

    .line 92
    new-array v5, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 93
    .line 94
    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    .line 95
    .line 96
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 97
    .line 98
    .line 99
    aput-object v6, v5, v4

    .line 100
    .line 101
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 102
    .line 103
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    aget-object v5, v5, v4

    .line 108
    .line 109
    invoke-virtual {v6, v7, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 110
    .line 111
    .line 112
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const-string/jumbo v6, "input"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    move-object v12, v5

    .line 122
    check-cast v12, Landroid/hardware/input/InputManager;

    .line 123
    .line 124
    if-nez v12, :cond_0

    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_0
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 129
    .line 130
    aget-object v5, v5, v4

    .line 131
    .line 132
    iget v10, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 133
    .line 134
    iget v11, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 135
    .line 136
    const/16 v17, 0x1

    .line 137
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

    .line 143
    .line 144
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const/16 v12, 0x1002

    .line 149
    .line 150
    invoke-virtual {v5, v12}, Landroid/view/MotionEvent;->setSource(I)V

    .line 151
    .line 152
    .line 153
    const/high16 v11, 0x800000

    .line 154
    .line 155
    invoke-virtual {v5, v11}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 159
    .line 160
    .line 161
    const/4 v10, 0x2

    .line 162
    invoke-virtual {v4, v5, v10}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 166
    .line 167
    .line 168
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    const-string/jumbo v6, "long_press_timeout"

    .line 175
    .line 176
    .line 177
    const/16 v7, 0x1f4

    .line 178
    .line 179
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    const-string/jumbo v6, "drag"

    .line 184
    .line 185
    .line 186
    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_1

    .line 193
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

    .line 199
    .line 200
    .line 201
    new-array v3, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 202
    .line 203
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    .line 204
    .line 205
    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 206
    .line 207
    .line 208
    const/16 v18, 0x0

    .line 209
    .line 210
    aput-object v5, v3, v18

    .line 211
    .line 212
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    const-string/jumbo v6, "display"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 222
    .line 223
    invoke-virtual {v5, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    new-instance v6, Landroid/view/DisplayInfo;

    .line 228
    .line 229
    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 233
    .line 234
    .line 235
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 236
    .line 237
    aget-object v5, v5, v18

    .line 238
    .line 239
    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 240
    .line 241
    iget-object v7, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 242
    .line 243
    aget-object v7, v7, v18

    .line 244
    .line 245
    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 246
    .line 247
    sub-float/2addr v6, v8

    .line 248
    const/high16 v9, 0x41a00000    # 20.0f

    .line 249
    .line 250
    div-float v17, v6, v9

    .line 251
    .line 252
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 253
    .line 254
    iget v6, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 255
    .line 256
    sub-float/2addr v5, v6

    .line 257
    div-float v19, v5, v9

    .line 258
    .line 259
    aget-object v5, v3, v18

    .line 260
    .line 261
    iput v8, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 262
    .line 263
    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 264
    .line 265
    move/from16 v9, v18

    .line 266
    .line 267
    :goto_1
    const/16 v5, 0x14

    .line 268
    .line 269
    const/16 v6, 0xf

    .line 270
    .line 271
    if-ge v9, v5, :cond_2

    .line 272
    .line 273
    aget-object v5, v3, v18

    .line 274
    .line 275
    iget v7, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 276
    .line 277
    add-float v7, v7, v17

    .line 278
    .line 279
    iput v7, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 280
    .line 281
    iget v8, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 282
    .line 283
    add-float v8, v8, v19

    .line 284
    .line 285
    iput v8, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 286
    .line 287
    int-to-long v5, v6

    .line 288
    add-long/2addr v15, v5

    .line 289
    const/16 v20, 0x2

    .line 290
    .line 291
    const/16 v21, 0x1

    .line 292
    .line 293
    move-wide v5, v13

    .line 294
    move/from16 v22, v7

    .line 295
    .line 296
    move/from16 v23, v8

    .line 297
    .line 298
    move-wide v7, v15

    .line 299
    move/from16 v24, v9

    .line 300
    .line 301
    move/from16 v9, v20

    .line 302
    .line 303
    move/from16 v10, v22

    .line 304
    .line 305
    move/from16 v11, v23

    .line 306
    .line 307
    move-object/from16 v20, v3

    .line 308
    .line 309
    move v3, v12

    .line 310
    move/from16 v12, v21

    .line 311
    .line 312
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 317
    .line 318
    .line 319
    const/high16 v12, 0x800000

    .line 320
    .line 321
    invoke-virtual {v5, v12}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 325
    .line 326
    .line 327
    const/4 v11, 0x2

    .line 328
    invoke-virtual {v4, v5, v11}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 332
    .line 333
    .line 334
    add-int/lit8 v9, v24, 0x1

    .line 335
    .line 336
    move v10, v11

    .line 337
    move v11, v12

    .line 338
    const/16 v18, 0x0

    .line 339
    .line 340
    move v12, v3

    .line 341
    move-object/from16 v3, v20

    .line 342
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

    .line 349
    .line 350
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 351
    .line 352
    const/4 v5, 0x0

    .line 353
    aget-object v0, v0, v5

    .line 354
    .line 355
    iget v10, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 356
    .line 357
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 358
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

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4, v5, v13}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 380
    .line 381
    .line 382
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 383
    .line 384
    .line 385
    goto :goto_2

    .line 386
    :catch_0
    move-exception v0

    .line 387
    move-object v2, v0

    .line 388
    const-string v0, "DragAction"

    .line 389
    .line 390
    const-string v3, "InterruptedException!"

    .line 391
    .line 392
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .line 394
    .line 395
    :goto_2
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 396
    .line 397
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 398
    .line 399
    const/4 v2, 0x0

    .line 400
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 401
    .line 402
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 405
    .line 406
    invoke-interface {v3, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 407
    .line 408
    .line 409
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 410
    .line 411
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 412
    .line 413
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 414
    .line 415
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    .line 416
    .line 417
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 418
    .line 419
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 420
    .line 421
    .line 422
    goto :goto_3

    .line 423
    :cond_3
    new-array v2, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 424
    .line 425
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 426
    .line 427
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 428
    .line 429
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 430
    .line 431
    .line 432
    const/4 v4, 0x0

    .line 433
    aput-object v0, v2, v4

    .line 434
    .line 435
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 436
    .line 437
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 438
    .line 439
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    iget-object v5, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 444
    .line 445
    iget-object v5, v5, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 446
    .line 447
    aget-object v5, v5, v4

    .line 448
    .line 449
    invoke-virtual {v0, v2, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 450
    .line 451
    .line 452
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 453
    .line 454
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 455
    .line 456
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 457
    .line 458
    aget-object v0, v0, v4

    .line 459
    .line 460
    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 461
    .line 462
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    new-instance v5, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    .line 468
    .line 469
    invoke-direct {v5, v2, v4, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 476
    .line 477
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 478
    .line 479
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 483
    .line 484
    invoke-direct {v1, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 488
    .line 489
    .line 490
    :goto_3
    return-void
.end method
