.class public final Lcom/android/server/wm/TrustedPresentationListenerController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public final mHandlerThreadLock:Ljava/lang/Object;

.field public mLastWindowHandles:[Landroid/view/InputWindowHandle;

.field public final mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

.field public mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThreadLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 17
    .line 18
    return-void
.end method

.method public static addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/util/Pair;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/util/Pair;

    .line 10
    .line 11
    new-instance v1, Landroid/util/IntArray;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/util/IntArray;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    if-eqz p3, :cond_1

    .line 28
    .line 29
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Landroid/util/IntArray;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/util/IntArray;->add(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Landroid/util/IntArray;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroid/util/IntArray;->add(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method


# virtual methods
.method public final computeTpl([Landroid/view/InputWindowHandle;)V
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:[Landroid/view/InputWindowHandle;

    .line 6
    .line 7
    if-eqz v1, :cond_17

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    if-eqz v1, :cond_17

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_c

    .line 23
    .line 24
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Landroid/graphics/Matrix;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 32
    .line 33
    .line 34
    const/16 v4, 0x9

    .line 35
    .line 36
    new-array v4, v4, [F

    .line 37
    .line 38
    new-instance v5, Landroid/graphics/Region;

    .line 39
    .line 40
    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TPL_enabled:[Z

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    aget-boolean v10, v8, v9

    .line 51
    .line 52
    if-eqz v10, :cond_1

    .line 53
    .line 54
    iget-object v10, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:[Landroid/view/InputWindowHandle;

    .line 55
    .line 56
    array-length v10, v10

    .line 57
    int-to-long v10, v10

    .line 58
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 59
    .line 60
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v17

    .line 68
    const/4 v15, 0x1

    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    const-wide v13, 0x58f0d07fa42a324fL    # 2.713694087337687E120

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    new-instance v10, Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v11, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:[Landroid/view/InputWindowHandle;

    .line 85
    .line 86
    array-length v12, v11

    .line 87
    const/4 v14, 0x0

    .line 88
    :goto_0
    if-ge v14, v12, :cond_16

    .line 89
    .line 90
    aget-object v15, v11, v14

    .line 91
    .line 92
    iget-boolean v13, v15, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    .line 93
    .line 94
    if-nez v13, :cond_3

    .line 95
    .line 96
    aget-boolean v13, v8, v9

    .line 97
    .line 98
    if-eqz v13, :cond_2

    .line 99
    .line 100
    iget-object v13, v15, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 107
    .line 108
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v20

    .line 112
    const-wide v16, 0x6b1c82dcb03b3054L    # 9.153606029436428E207

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    const/16 v18, 0x0

    .line 118
    .line 119
    const/16 v19, 0x0

    .line 120
    .line 121
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    move-object/from16 v17, v1

    .line 125
    .line 126
    move-object/from16 v20, v3

    .line 127
    .line 128
    move-object/from16 v21, v4

    .line 129
    .line 130
    move-object v4, v5

    .line 131
    move v1, v9

    .line 132
    move-object/from16 v18, v11

    .line 133
    .line 134
    move/from16 v19, v12

    .line 135
    .line 136
    move/from16 v22, v14

    .line 137
    .line 138
    move-object v3, v2

    .line 139
    move-wide v11, v6

    .line 140
    const/4 v2, 0x0

    .line 141
    goto/16 :goto_a

    .line 142
    .line 143
    :cond_3
    iget-object v13, v15, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    .line 144
    .line 145
    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v15}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    iget-object v9, v1, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 153
    .line 154
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    check-cast v9, Ljava/util/ArrayList;

    .line 159
    .line 160
    if-eqz v9, :cond_14

    .line 161
    .line 162
    new-instance v13, Landroid/graphics/Region;

    .line 163
    .line 164
    invoke-direct {v13}, Landroid/graphics/Region;-><init>()V

    .line 165
    .line 166
    .line 167
    move-object/from16 v17, v1

    .line 168
    .line 169
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 170
    .line 171
    invoke-virtual {v13, v2, v5, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 172
    .line 173
    .line 174
    iget-object v1, v15, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 180
    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    aget v18, v4, v1

    .line 184
    .line 185
    mul-float v18, v18, v18

    .line 186
    .line 187
    const/4 v1, 0x1

    .line 188
    aget v19, v4, v1

    .line 189
    .line 190
    mul-float v19, v19, v19

    .line 191
    .line 192
    add-float v1, v19, v18

    .line 193
    .line 194
    move-object/from16 v18, v11

    .line 195
    .line 196
    move/from16 v19, v12

    .line 197
    .line 198
    float-to-double v11, v1

    .line 199
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 200
    .line 201
    .line 202
    move-result-wide v11

    .line 203
    double-to-float v1, v11

    .line 204
    const/4 v11, 0x4

    .line 205
    aget v11, v4, v11

    .line 206
    .line 207
    mul-float/2addr v11, v11

    .line 208
    const/4 v12, 0x3

    .line 209
    aget v12, v4, v12

    .line 210
    .line 211
    mul-float/2addr v12, v12

    .line 212
    add-float/2addr v12, v11

    .line 213
    float-to-double v11, v12

    .line 214
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 215
    .line 216
    .line 217
    move-result-wide v11

    .line 218
    double-to-float v11, v11

    .line 219
    new-instance v12, Landroid/graphics/RectF;

    .line 220
    .line 221
    invoke-direct {v12, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 222
    .line 223
    .line 224
    move-object/from16 v20, v3

    .line 225
    .line 226
    iget-object v3, v15, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    .line 227
    .line 228
    const/16 v16, 0x1

    .line 229
    .line 230
    aget-boolean v21, v8, v16

    .line 231
    .line 232
    if-eqz v21, :cond_4

    .line 233
    .line 234
    move-object/from16 v21, v4

    .line 235
    .line 236
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    move/from16 v22, v14

    .line 241
    .line 242
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v14

    .line 246
    move-object/from16 v23, v2

    .line 247
    .line 248
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    move-object/from16 v25, v9

    .line 253
    .line 254
    move-object/from16 v24, v10

    .line 255
    .line 256
    float-to-double v9, v1

    .line 257
    move-object/from16 v26, v5

    .line 258
    .line 259
    move-wide/from16 v27, v6

    .line 260
    .line 261
    float-to-double v5, v11

    .line 262
    sget-object v29, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 263
    .line 264
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    filled-new-array {v4, v14, v2, v7, v5}, [Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v34

    .line 276
    const/16 v33, 0x0

    .line 277
    .line 278
    const-wide v30, -0x47a5b213e60cccecL    # -3.09206546421734E-37

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    const/16 v32, 0x280

    .line 284
    .line 285
    invoke-static/range {v29 .. v34}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_4
    move-object/from16 v23, v2

    .line 290
    .line 291
    move-object/from16 v21, v4

    .line 292
    .line 293
    move-object/from16 v26, v5

    .line 294
    .line 295
    move-wide/from16 v27, v6

    .line 296
    .line 297
    move-object/from16 v25, v9

    .line 298
    .line 299
    move-object/from16 v24, v10

    .line 300
    .line 301
    move/from16 v22, v14

    .line 302
    .line 303
    :goto_1
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    const/high16 v4, -0x40800000    # -1.0f

    .line 308
    .line 309
    if-eqz v2, :cond_9

    .line 310
    .line 311
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_5

    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :cond_5
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    const/4 v5, 0x0

    .line 324
    cmpl-float v2, v2, v5

    .line 325
    .line 326
    if-eqz v2, :cond_9

    .line 327
    .line 328
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    cmpl-float v2, v2, v5

    .line 333
    .line 334
    if-nez v2, :cond_6

    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_6
    mul-float/2addr v1, v11

    .line 338
    const/high16 v2, 0x3f800000    # 1.0f

    .line 339
    .line 340
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    const/4 v2, 0x1

    .line 345
    aget-boolean v4, v8, v2

    .line 346
    .line 347
    if-eqz v4, :cond_7

    .line 348
    .line 349
    float-to-double v4, v1

    .line 350
    sget-object v29, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 351
    .line 352
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v34

    .line 360
    const/16 v33, 0x0

    .line 361
    .line 362
    const-wide v30, 0xc7911e0fc813d91L

    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    const/16 v32, 0x2

    .line 368
    .line 369
    invoke-static/range {v29 .. v34}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    :cond_7
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    int-to-float v4, v4

    .line 381
    div-float/2addr v2, v4

    .line 382
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    int-to-float v3, v3

    .line 391
    div-float/2addr v4, v3

    .line 392
    mul-float/2addr v4, v2

    .line 393
    mul-float/2addr v4, v1

    .line 394
    const/4 v1, 0x1

    .line 395
    aget-boolean v2, v8, v1

    .line 396
    .line 397
    if-eqz v2, :cond_8

    .line 398
    .line 399
    float-to-double v1, v4

    .line 400
    sget-object v29, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 401
    .line 402
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v34

    .line 410
    const/16 v33, 0x0

    .line 411
    .line 412
    const-wide v30, -0x652440cf159cb8cL    # -1.317716381413378E278

    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    const/16 v32, 0x2

    .line 418
    .line 419
    invoke-static/range {v29 .. v34}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    :cond_8
    const/4 v1, 0x1

    .line 423
    new-array v2, v1, [F

    .line 424
    .line 425
    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;

    .line 426
    .line 427
    invoke-direct {v1, v2}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;-><init>([F)V

    .line 428
    .line 429
    .line 430
    invoke-static {v13, v1}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 431
    .line 432
    .line 433
    const/4 v1, 0x0

    .line 434
    aget v2, v2, v1

    .line 435
    .line 436
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    mul-float/2addr v3, v1

    .line 445
    div-float/2addr v2, v3

    .line 446
    mul-float/2addr v4, v2

    .line 447
    :cond_9
    :goto_2
    iget v1, v15, Landroid/view/InputWindowHandle;->alpha:F

    .line 448
    .line 449
    const/4 v2, 0x1

    .line 450
    aget-boolean v3, v8, v2

    .line 451
    .line 452
    if-eqz v3, :cond_a

    .line 453
    .line 454
    float-to-double v2, v4

    .line 455
    float-to-double v5, v1

    .line 456
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 457
    .line 458
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v14

    .line 474
    const/4 v13, 0x0

    .line 475
    const-wide v10, 0xbdbbfb5325b3d44L

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    const/16 v12, 0x1a

    .line 481
    .line 482
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    :cond_a
    const/4 v2, 0x0

    .line 486
    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-ge v2, v3, :cond_13

    .line 491
    .line 492
    move-object/from16 v9, v25

    .line 493
    .line 494
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    check-cast v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    .line 499
    .line 500
    iget-object v5, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    .line 501
    .line 502
    iget-boolean v6, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    .line 503
    .line 504
    iget-object v7, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 505
    .line 506
    invoke-virtual {v7}, Landroid/window/TrustedPresentationThresholds;->getMinAlpha()F

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    cmpl-float v7, v1, v7

    .line 511
    .line 512
    if-ltz v7, :cond_b

    .line 513
    .line 514
    iget-object v7, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 515
    .line 516
    invoke-virtual {v7}, Landroid/window/TrustedPresentationThresholds;->getMinFractionRendered()F

    .line 517
    .line 518
    .line 519
    move-result v7

    .line 520
    cmpl-float v7, v4, v7

    .line 521
    .line 522
    if-ltz v7, :cond_b

    .line 523
    .line 524
    const/4 v7, 0x1

    .line 525
    goto :goto_4

    .line 526
    :cond_b
    const/4 v7, 0x0

    .line 527
    :goto_4
    iput-boolean v7, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    .line 528
    .line 529
    const/4 v10, 0x1

    .line 530
    aget-boolean v11, v8, v10

    .line 531
    .line 532
    if-eqz v11, :cond_c

    .line 533
    .line 534
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v29

    .line 538
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v30

    .line 542
    float-to-double v10, v1

    .line 543
    iget-object v12, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 544
    .line 545
    invoke-virtual {v12}, Landroid/window/TrustedPresentationThresholds;->getMinAlpha()F

    .line 546
    .line 547
    .line 548
    move-result v12

    .line 549
    float-to-double v12, v12

    .line 550
    move-object/from16 v25, v15

    .line 551
    .line 552
    float-to-double v14, v4

    .line 553
    move/from16 v35, v1

    .line 554
    .line 555
    iget-object v1, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 556
    .line 557
    invoke-virtual {v1}, Landroid/window/TrustedPresentationThresholds;->getMinFractionRendered()F

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    move/from16 v36, v2

    .line 562
    .line 563
    float-to-double v1, v1

    .line 564
    sget-object v37, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 565
    .line 566
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 567
    .line 568
    .line 569
    move-result-object v31

    .line 570
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 571
    .line 572
    .line 573
    move-result-object v32

    .line 574
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 575
    .line 576
    .line 577
    move-result-object v33

    .line 578
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 579
    .line 580
    .line 581
    move-result-object v34

    .line 582
    filled-new-array/range {v29 .. v34}, [Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v42

    .line 586
    const/16 v41, 0x0

    .line 587
    .line 588
    const-wide v38, -0x1f348c21345dc04bL    # -1.884566701359065E158

    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    const/16 v40, 0xaa0

    .line 594
    .line 595
    invoke-static/range {v37 .. v42}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    goto :goto_5

    .line 599
    :cond_c
    move/from16 v35, v1

    .line 600
    .line 601
    move/from16 v36, v2

    .line 602
    .line 603
    move-object/from16 v25, v15

    .line 604
    .line 605
    :goto_5
    iget v1, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    .line 606
    .line 607
    if-eqz v6, :cond_10

    .line 608
    .line 609
    if-nez v7, :cond_10

    .line 610
    .line 611
    iget-boolean v2, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    .line 612
    .line 613
    if-eqz v2, :cond_d

    .line 614
    .line 615
    const/4 v2, 0x0

    .line 616
    iput-boolean v2, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    .line 617
    .line 618
    move-object/from16 v10, v24

    .line 619
    .line 620
    invoke-static {v10, v5, v1, v2}, Lcom/android/server/wm/TrustedPresentationListenerController;->addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V

    .line 621
    .line 622
    .line 623
    aget-boolean v6, v8, v2

    .line 624
    .line 625
    if-eqz v6, :cond_e

    .line 626
    .line 627
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    int-to-long v11, v1

    .line 632
    sget-object v29, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 633
    .line 634
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 635
    .line 636
    .line 637
    move-result-object v6

    .line 638
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v34

    .line 642
    const/16 v33, 0x0

    .line 643
    .line 644
    const-wide v30, 0x568b544bbdca3c3bL    # 8.022997441390794E108

    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    const/16 v32, 0x4

    .line 650
    .line 651
    invoke-static/range {v29 .. v34}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    goto :goto_6

    .line 655
    :cond_d
    move-object/from16 v10, v24

    .line 656
    .line 657
    :cond_e
    :goto_6
    const-wide/16 v11, -0x1

    .line 658
    .line 659
    iput-wide v11, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    .line 660
    .line 661
    :cond_f
    move-wide/from16 v11, v27

    .line 662
    .line 663
    goto :goto_7

    .line 664
    :cond_10
    move-object/from16 v10, v24

    .line 665
    .line 666
    if-nez v6, :cond_f

    .line 667
    .line 668
    if-eqz v7, :cond_f

    .line 669
    .line 670
    move-wide/from16 v11, v27

    .line 671
    .line 672
    iput-wide v11, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    .line 673
    .line 674
    iget-object v2, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    .line 675
    .line 676
    new-instance v6, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;

    .line 677
    .line 678
    const/4 v13, 0x0

    .line 679
    invoke-direct {v6, v13, v0}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    iget-object v13, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 683
    .line 684
    invoke-virtual {v13}, Landroid/window/TrustedPresentationThresholds;->getStabilityRequirementMillis()I

    .line 685
    .line 686
    .line 687
    move-result v13

    .line 688
    int-to-double v13, v13

    .line 689
    const-wide/high16 v27, 0x3ff8000000000000L    # 1.5

    .line 690
    .line 691
    mul-double v13, v13, v27

    .line 692
    .line 693
    double-to-long v13, v13

    .line 694
    invoke-virtual {v2, v6, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    .line 696
    .line 697
    :goto_7
    iget-boolean v2, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    .line 698
    .line 699
    if-nez v2, :cond_11

    .line 700
    .line 701
    if-eqz v7, :cond_11

    .line 702
    .line 703
    iget-wide v6, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    .line 704
    .line 705
    sub-long v6, v11, v6

    .line 706
    .line 707
    iget-object v2, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 708
    .line 709
    invoke-virtual {v2}, Landroid/window/TrustedPresentationThresholds;->getStabilityRequirementMillis()I

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    int-to-long v13, v2

    .line 714
    cmp-long v2, v6, v13

    .line 715
    .line 716
    if-lez v2, :cond_11

    .line 717
    .line 718
    const/4 v2, 0x1

    .line 719
    iput-boolean v2, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    .line 720
    .line 721
    invoke-static {v10, v5, v1, v2}, Lcom/android/server/wm/TrustedPresentationListenerController;->addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V

    .line 722
    .line 723
    .line 724
    const/4 v2, 0x0

    .line 725
    aget-boolean v3, v8, v2

    .line 726
    .line 727
    if-eqz v3, :cond_12

    .line 728
    .line 729
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    int-to-long v5, v1

    .line 734
    sget-object v27, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 735
    .line 736
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v32

    .line 744
    const/16 v31, 0x0

    .line 745
    .line 746
    const-wide v28, 0x4b0551b010a7372fL    # 2.5524542683740336E53

    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    const/16 v30, 0x4

    .line 752
    .line 753
    invoke-static/range {v27 .. v32}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    goto :goto_8

    .line 757
    :cond_11
    const/4 v2, 0x0

    .line 758
    :cond_12
    :goto_8
    add-int/lit8 v1, v36, 0x1

    .line 759
    .line 760
    move v2, v1

    .line 761
    move-object/from16 v24, v10

    .line 762
    .line 763
    move-wide/from16 v27, v11

    .line 764
    .line 765
    move-object/from16 v15, v25

    .line 766
    .line 767
    move/from16 v1, v35

    .line 768
    .line 769
    move-object/from16 v25, v9

    .line 770
    .line 771
    goto/16 :goto_3

    .line 772
    .line 773
    :cond_13
    move-object/from16 v25, v15

    .line 774
    .line 775
    move-object/from16 v10, v24

    .line 776
    .line 777
    move-wide/from16 v11, v27

    .line 778
    .line 779
    const/4 v2, 0x0

    .line 780
    goto :goto_9

    .line 781
    :cond_14
    move-object/from16 v17, v1

    .line 782
    .line 783
    move-object/from16 v23, v2

    .line 784
    .line 785
    move-object/from16 v20, v3

    .line 786
    .line 787
    move-object/from16 v21, v4

    .line 788
    .line 789
    move-object/from16 v26, v5

    .line 790
    .line 791
    move-object/from16 v18, v11

    .line 792
    .line 793
    move/from16 v19, v12

    .line 794
    .line 795
    move/from16 v22, v14

    .line 796
    .line 797
    move-object/from16 v25, v15

    .line 798
    .line 799
    const/4 v2, 0x0

    .line 800
    move-wide v11, v6

    .line 801
    :goto_9
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 802
    .line 803
    move-object/from16 v3, v23

    .line 804
    .line 805
    move-object/from16 v4, v26

    .line 806
    .line 807
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 808
    .line 809
    .line 810
    const/4 v1, 0x1

    .line 811
    aget-boolean v5, v8, v1

    .line 812
    .line 813
    if-eqz v5, :cond_15

    .line 814
    .line 815
    move-object/from16 v5, v25

    .line 816
    .line 817
    iget-object v5, v5, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 818
    .line 819
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v5

    .line 823
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v6

    .line 827
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v6

    .line 831
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v7

    .line 835
    sget-object v23, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 836
    .line 837
    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v28

    .line 841
    const-wide v24, -0xfc2b3ca4a2bc081L    # -4.548520085728638E232

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    const/16 v26, 0x0

    .line 847
    .line 848
    const/16 v27, 0x0

    .line 849
    .line 850
    invoke-static/range {v23 .. v28}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    :cond_15
    :goto_a
    add-int/lit8 v14, v22, 0x1

    .line 854
    .line 855
    move v9, v1

    .line 856
    move-object v2, v3

    .line 857
    move-object v5, v4

    .line 858
    move-wide v6, v11

    .line 859
    move-object/from16 v1, v17

    .line 860
    .line 861
    move-object/from16 v11, v18

    .line 862
    .line 863
    move/from16 v12, v19

    .line 864
    .line 865
    move-object/from16 v3, v20

    .line 866
    .line 867
    move-object/from16 v4, v21

    .line 868
    .line 869
    goto/16 :goto_0

    .line 870
    .line 871
    :cond_16
    const/4 v2, 0x0

    .line 872
    move v13, v2

    .line 873
    :goto_b
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 874
    .line 875
    .line 876
    move-result v0

    .line 877
    if-ge v13, v0, :cond_17

    .line 878
    .line 879
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    check-cast v0, Landroid/util/Pair;

    .line 884
    .line 885
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    check-cast v1, Landroid/window/ITrustedPresentationListener;

    .line 890
    .line 891
    :try_start_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 892
    .line 893
    check-cast v2, Landroid/util/IntArray;

    .line 894
    .line 895
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast v0, Landroid/util/IntArray;

    .line 902
    .line 903
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    invoke-interface {v1, v2, v0}, Landroid/window/ITrustedPresentationListener;->onTrustedPresentationChanged([I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    .line 909
    .line 910
    :catch_0
    add-int/lit8 v13, v13, 0x1

    .line 911
    .line 912
    goto :goto_b

    .line 913
    :cond_17
    :goto_c
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "TrustedPresentationListenerController:"

    .line 2
    .line 3
    const-string v1, "  Active unique listeners ("

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "):"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    move v1, v0

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ge v1, v2, :cond_1

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "    window="

    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    move v3, v0

    .line 74
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ge v3, v4, :cond_0

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v6, "      listener="

    .line 89
    .line 90
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    .line 94
    .line 95
    invoke-interface {v6}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, " id="

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v6, " thresholds="

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v4, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 118
    .line 119
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method

.method public final startHandlerThreadIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThreadLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v2, "WindowInfosListenerForTpl"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method
