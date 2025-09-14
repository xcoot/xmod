.class public final Lcom/android/server/accessibility/autoaction/actiontype/Zoom;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mType:Ljava/lang/String;


# virtual methods
.method public final generateTouchEvent(IIIIII)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 12
    .line 13
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 18
    .line 19
    invoke-virtual {v6}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const/4 v7, 0x0

    .line 24
    move v8, v7

    .line 25
    :goto_0
    array-length v9, v6

    .line 26
    if-ge v8, v9, :cond_1

    .line 27
    .line 28
    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 29
    .line 30
    invoke-virtual {v9, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    if-eqz v9, :cond_0

    .line 35
    .line 36
    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 37
    .line 38
    invoke-virtual {v9, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    if-eqz v9, :cond_0

    .line 47
    .line 48
    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 49
    .line 50
    invoke-virtual {v9, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    const-string/jumbo v10, "touchscreen"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_0

    .line 70
    .line 71
    move v5, v8

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    :goto_1
    sub-int v6, v1, v2

    .line 77
    .line 78
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    const v9, 0x10505fe

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    div-int/2addr v6, v8

    .line 96
    const/16 v8, 0xa

    .line 97
    .line 98
    if-ge v6, v8, :cond_2

    .line 99
    .line 100
    :goto_2
    move v6, v8

    .line 101
    goto :goto_3

    .line 102
    :cond_2
    const/16 v8, 0x14

    .line 103
    .line 104
    if-le v6, v8, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    :goto_3
    add-int/lit8 v8, v6, 0x4

    .line 108
    .line 109
    const/16 v9, 0x118

    .line 110
    .line 111
    div-int v8, v9, v8

    .line 112
    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v24

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v26

    .line 121
    const/4 v15, 0x1

    .line 122
    new-array v14, v15, [Landroid/view/MotionEvent$PointerCoords;

    .line 123
    .line 124
    const/4 v13, 0x2

    .line 125
    new-array v11, v13, [Landroid/view/MotionEvent$PointerCoords;

    .line 126
    .line 127
    filled-new-array {v7}, [I

    .line 128
    .line 129
    .line 130
    move-result-object v16

    .line 131
    filled-new-array {v7, v15}, [I

    .line 132
    .line 133
    .line 134
    move-result-object v28

    .line 135
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    .line 136
    .line 137
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 138
    .line 139
    .line 140
    aput-object v9, v14, v7

    .line 141
    .line 142
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    .line 143
    .line 144
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 145
    .line 146
    .line 147
    aput-object v9, v11, v7

    .line 148
    .line 149
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    .line 150
    .line 151
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 152
    .line 153
    .line 154
    aput-object v9, v11, v15

    .line 155
    .line 156
    aget-object v10, v14, v7

    .line 157
    .line 158
    const/high16 v12, 0x3f800000    # 1.0f

    .line 159
    .line 160
    iput v12, v10, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 161
    .line 162
    aget-object v13, v11, v7

    .line 163
    .line 164
    iput v12, v13, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 165
    .line 166
    iput v12, v9, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 167
    .line 168
    move/from16 v12, p1

    .line 169
    .line 170
    int-to-float v12, v12

    .line 171
    iput v12, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 172
    .line 173
    iput v12, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 174
    .line 175
    iput v12, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 176
    .line 177
    int-to-float v12, v1

    .line 178
    iput v12, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 179
    .line 180
    iput v12, v13, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 181
    .line 182
    int-to-float v10, v3

    .line 183
    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 184
    .line 185
    const/16 v22, 0x1002

    .line 186
    .line 187
    const/high16 v23, 0x800000

    .line 188
    .line 189
    const/4 v13, 0x0

    .line 190
    const/16 v18, 0x1

    .line 191
    .line 192
    const/16 v19, 0x0

    .line 193
    .line 194
    const/high16 v20, 0x3f800000    # 1.0f

    .line 195
    .line 196
    const/high16 v21, 0x3f800000    # 1.0f

    .line 197
    .line 198
    const/16 v29, 0x0

    .line 199
    .line 200
    move-wide/from16 v9, v24

    .line 201
    .line 202
    move-object/from16 v30, v11

    .line 203
    .line 204
    move-wide/from16 v11, v26

    .line 205
    .line 206
    const/4 v7, 0x2

    .line 207
    move-object/from16 v31, v14

    .line 208
    .line 209
    move/from16 v14, v18

    .line 210
    .line 211
    move/from16 v32, v15

    .line 212
    .line 213
    move-object/from16 v15, v16

    .line 214
    .line 215
    move-object/from16 v16, v31

    .line 216
    .line 217
    move/from16 v17, v19

    .line 218
    .line 219
    move/from16 v18, v20

    .line 220
    .line 221
    move/from16 v19, v21

    .line 222
    .line 223
    move/from16 v20, v5

    .line 224
    .line 225
    move/from16 v21, v29

    .line 226
    .line 227
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 232
    .line 233
    .line 234
    iget-object v10, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 235
    .line 236
    invoke-virtual {v10, v9, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 240
    .line 241
    .line 242
    int-to-long v14, v8

    .line 243
    add-long v26, v26, v14

    .line 244
    .line 245
    const/16 v13, 0x105

    .line 246
    .line 247
    const/4 v8, 0x2

    .line 248
    const/16 v17, 0x0

    .line 249
    .line 250
    const/high16 v18, 0x3f800000    # 1.0f

    .line 251
    .line 252
    const/high16 v19, 0x3f800000    # 1.0f

    .line 253
    .line 254
    const/16 v21, 0x0

    .line 255
    .line 256
    move-wide/from16 v9, v24

    .line 257
    .line 258
    move-wide/from16 v11, v26

    .line 259
    .line 260
    move-wide/from16 v33, v14

    .line 261
    .line 262
    move v14, v8

    .line 263
    move-object/from16 v15, v28

    .line 264
    .line 265
    move-object/from16 v16, v30

    .line 266
    .line 267
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 272
    .line 273
    .line 274
    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 275
    .line 276
    invoke-virtual {v9, v8, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 280
    .line 281
    .line 282
    add-long v26, v26, v33

    .line 283
    .line 284
    const/4 v8, 0x0

    .line 285
    :goto_4
    if-ge v8, v6, :cond_4

    .line 286
    .line 287
    const/4 v9, 0x0

    .line 288
    aget-object v10, v30, v9

    .line 289
    .line 290
    iget v9, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 291
    .line 292
    sub-int v11, v2, v1

    .line 293
    .line 294
    int-to-float v11, v11

    .line 295
    int-to-float v12, v6

    .line 296
    div-float/2addr v11, v12

    .line 297
    add-float/2addr v11, v9

    .line 298
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 299
    .line 300
    aget-object v9, v30, v32

    .line 301
    .line 302
    iget v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 303
    .line 304
    sub-int v11, p5, v3

    .line 305
    .line 306
    int-to-float v11, v11

    .line 307
    div-float/2addr v11, v12

    .line 308
    add-float/2addr v11, v10

    .line 309
    iput v11, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 310
    .line 311
    add-long v26, v26, v33

    .line 312
    .line 313
    const/16 v22, 0x1002

    .line 314
    .line 315
    const/high16 v23, 0x800000

    .line 316
    .line 317
    const/4 v13, 0x2

    .line 318
    const/4 v14, 0x2

    .line 319
    const/16 v17, 0x0

    .line 320
    .line 321
    const/high16 v18, 0x3f800000    # 1.0f

    .line 322
    .line 323
    const/high16 v19, 0x3f800000    # 1.0f

    .line 324
    .line 325
    const/16 v21, 0x0

    .line 326
    .line 327
    move-wide/from16 v9, v24

    .line 328
    .line 329
    move-wide/from16 v11, v26

    .line 330
    .line 331
    move-object/from16 v15, v28

    .line 332
    .line 333
    move-object/from16 v16, v30

    .line 334
    .line 335
    move/from16 v20, v5

    .line 336
    .line 337
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 342
    .line 343
    .line 344
    iget-object v10, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 345
    .line 346
    invoke-virtual {v10, v9, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 347
    .line 348
    .line 349
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 350
    .line 351
    .line 352
    add-int/lit8 v8, v8, 0x1

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_4
    add-long v26, v26, v33

    .line 356
    .line 357
    const/16 v22, 0x1002

    .line 358
    .line 359
    const/high16 v23, 0x800000

    .line 360
    .line 361
    const/16 v13, 0x106

    .line 362
    .line 363
    const/4 v14, 0x2

    .line 364
    const/16 v17, 0x0

    .line 365
    .line 366
    const/high16 v18, 0x3f800000    # 1.0f

    .line 367
    .line 368
    const/high16 v19, 0x3f800000    # 1.0f

    .line 369
    .line 370
    const/16 v21, 0x0

    .line 371
    .line 372
    move-wide/from16 v9, v24

    .line 373
    .line 374
    move-wide/from16 v11, v26

    .line 375
    .line 376
    move-object/from16 v15, v28

    .line 377
    .line 378
    move-object/from16 v16, v30

    .line 379
    .line 380
    move/from16 v20, v5

    .line 381
    .line 382
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 387
    .line 388
    .line 389
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 390
    .line 391
    invoke-virtual {v3, v1, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 395
    .line 396
    .line 397
    add-long v26, v26, v33

    .line 398
    .line 399
    const/4 v1, 0x0

    .line 400
    aget-object v1, v31, v1

    .line 401
    .line 402
    int-to-float v2, v2

    .line 403
    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 404
    .line 405
    const/4 v13, 0x1

    .line 406
    const/4 v14, 0x1

    .line 407
    move-wide/from16 v11, v26

    .line 408
    .line 409
    move-object/from16 v16, v31

    .line 410
    .line 411
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 416
    .line 417
    .line 418
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 419
    .line 420
    invoke-virtual {v0, v1, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 424
    .line 425
    .line 426
    sub-long v26, v26, v24

    .line 427
    .line 428
    :try_start_0
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .line 430
    .line 431
    goto :goto_5

    .line 432
    :catch_0
    move-exception v0

    .line 433
    move-object v1, v0

    .line 434
    const-string v0, "Zoom"

    .line 435
    .line 436
    const-string v2, "InterruptedException : "

    .line 437
    .line 438
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    .line 440
    .line 441
    :goto_5
    return-void
.end method

.method public final getTopPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "activity"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    .line 23
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    const-string p0, ""

    .line 35
    .line 36
    :goto_0
    return-object p0
.end method

.method public final performCornerAction(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 15
    .line 16
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 25
    .line 26
    invoke-virtual {v4, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 27
    .line 28
    .line 29
    aget-object v0, v1, v3

    .line 30
    .line 31
    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 32
    .line 33
    float-to-int v4, v1

    .line 34
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 35
    .line 36
    float-to-int v5, v0

    .line 37
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->getTopPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string/jumbo v1, "com.samsung.android.messaging"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const-string/jumbo v1, "com.sec.android.app.launcher"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const/16 v0, 0x32

    .line 61
    .line 62
    :goto_0
    move v6, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    :goto_1
    const/16 v0, 0x14

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    .line 68
    .line 69
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;

    .line 70
    .line 71
    move-object v2, v1

    .line 72
    move-object v3, p0

    .line 73
    move v7, p1

    .line 74
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/Zoom;IIII)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method
