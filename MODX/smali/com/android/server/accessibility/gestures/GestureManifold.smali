.class public final Lcom/android/server/accessibility/gestures/GestureManifold;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;


# instance fields
.field public final mEvents:Ljava/util/List;

.field public final mGestures:Ljava/util/List;

.field public final mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

.field public final mMultiFingerGestures:Ljava/util/List;

.field public mMultiFingerGesturesEnabled:Z

.field public mSendMotionEventsEnabled:Z

.field public mServiceHandlesDoubleTap:Z

.field public final mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public mTwoFingerPassthroughEnabled:Z

.field public final mTwoFingerSwipes:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold$Listener;Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v6, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 16
    new-instance v7, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v7, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    .line 23
    new-instance v8, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v8, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerSwipes:Ljava/util/List;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    .line 39
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 41
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    .line 45
    new-instance v1, Lcom/android/server/accessibility/gestures/MultiTap;

    .line 47
    const/16 v2, 0x11

    .line 49
    const/4 v3, 0x2

    .line 50
    invoke-direct {v1, p1, v3, v2, p0}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 53
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    .line 58
    const/16 v2, 0x12

    .line 60
    invoke-direct {v1, p1, v3, v2, p0}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 63
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;

    .line 68
    invoke-direct {v1, p1, p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 71
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    .line 76
    const/4 v2, 0x1

    .line 77
    const/4 v4, 0x4

    .line 78
    invoke-direct {v1, p1, v2, v4, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 81
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    .line 86
    const/4 v4, 0x3

    .line 87
    invoke-direct {v1, p1, v0, v4, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 90
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    .line 95
    invoke-direct {v0, p1, v3, v2, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 98
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    .line 103
    invoke-direct {v0, p1, v4, v3, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 106
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 111
    const/4 v4, 0x5

    .line 112
    const/4 v2, 0x0

    .line 113
    const/4 v3, 0x1

    .line 114
    move-object v0, v9

    .line 115
    move-object v1, p1

    .line 116
    move-object v5, p0

    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 120
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 125
    const/16 v4, 0x9

    .line 127
    const/4 v3, 0x2

    .line 128
    move-object v0, v9

    .line 129
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 132
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 137
    const/16 v4, 0xa

    .line 139
    const/4 v3, 0x3

    .line 140
    move-object v0, v9

    .line 141
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 144
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 149
    const/16 v4, 0xb

    .line 151
    const/4 v2, 0x1

    .line 152
    const/4 v3, 0x2

    .line 153
    move-object v0, v9

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 157
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 162
    const/16 v4, 0xc

    .line 164
    const/4 v3, 0x3

    .line 165
    move-object v0, v9

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 169
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 174
    const/4 v4, 0x6

    .line 175
    const/4 v3, 0x0

    .line 176
    move-object v0, v9

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 180
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 185
    const/16 v4, 0x8

    .line 187
    const/4 v2, 0x3

    .line 188
    const/4 v3, 0x2

    .line 189
    move-object v0, v9

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 193
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 198
    const/16 v4, 0xf

    .line 200
    const/4 v3, 0x0

    .line 201
    move-object v0, v9

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 205
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 210
    const/16 v4, 0x10

    .line 212
    const/4 v3, 0x1

    .line 213
    move-object v0, v9

    .line 214
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 217
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 222
    const/4 v4, 0x7

    .line 223
    const/4 v2, 0x2

    .line 224
    const/4 v3, 0x3

    .line 225
    move-object v0, v9

    .line 226
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 229
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 234
    const/16 v4, 0xd

    .line 236
    const/4 v3, 0x0

    .line 237
    move-object v0, v9

    .line 238
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 241
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v9, Lcom/android/server/accessibility/gestures/Swipe;

    .line 246
    const/16 v4, 0xe

    .line 248
    const/4 v3, 0x1

    .line 249
    move-object v0, v9

    .line 250
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 253
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 258
    const/16 v4, 0x13

    .line 260
    move-object v0, v6

    .line 261
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 264
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 269
    const/16 v4, 0x14

    .line 271
    const/4 v3, 0x2

    .line 272
    move-object v0, v6

    .line 273
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 276
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    .line 281
    const/4 v3, 0x2

    .line 282
    const/16 v4, 0x28

    .line 284
    const/4 v2, 0x2

    .line 285
    move-object v0, v6

    .line 286
    move-object v1, p1

    .line 287
    move-object v5, p0

    .line 288
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 291
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 296
    const/16 v4, 0x15

    .line 298
    const/4 v2, 0x2

    .line 299
    const/4 v3, 0x3

    .line 300
    move-object v0, v6

    .line 301
    move-object v1, p1

    .line 302
    move-object v5, p0

    .line 303
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 306
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    .line 311
    const/4 v3, 0x3

    .line 312
    const/16 v4, 0x2b

    .line 314
    const/4 v2, 0x2

    .line 315
    move-object v0, v6

    .line 316
    move-object v1, p1

    .line 317
    move-object v5, p0

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 321
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 326
    const/16 v4, 0x16

    .line 328
    const/4 v2, 0x3

    .line 329
    const/4 v3, 0x1

    .line 330
    move-object v0, v6

    .line 331
    move-object v1, p1

    .line 332
    move-object v5, p0

    .line 333
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 336
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 341
    const/16 v4, 0x17

    .line 343
    const/4 v3, 0x2

    .line 344
    move-object v0, v6

    .line 345
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 348
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    .line 353
    const/4 v3, 0x1

    .line 354
    const/16 v4, 0x2c

    .line 356
    const/4 v2, 0x3

    .line 357
    move-object v0, v6

    .line 358
    move-object v1, p1

    .line 359
    move-object v5, p0

    .line 360
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 363
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    .line 368
    const/4 v3, 0x2

    .line 369
    const/16 v4, 0x29

    .line 371
    const/4 v2, 0x3

    .line 372
    move-object v0, v6

    .line 373
    move-object v1, p1

    .line 374
    move-object v5, p0

    .line 375
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 378
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 383
    const/16 v4, 0x18

    .line 385
    const/4 v2, 0x3

    .line 386
    const/4 v3, 0x3

    .line 387
    move-object v0, v6

    .line 388
    move-object v1, p1

    .line 389
    move-object v5, p0

    .line 390
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 393
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    .line 398
    const/4 v3, 0x3

    .line 399
    const/16 v4, 0x2d

    .line 401
    const/4 v2, 0x3

    .line 402
    move-object v0, v6

    .line 403
    move-object v1, p1

    .line 404
    move-object v5, p0

    .line 405
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 408
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 413
    const/16 v4, 0x18

    .line 415
    const/4 v2, 0x3

    .line 416
    const/4 v3, 0x3

    .line 417
    move-object v0, v6

    .line 418
    move-object v1, p1

    .line 419
    move-object v5, p0

    .line 420
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 423
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 428
    const/16 v4, 0x25

    .line 430
    const/4 v2, 0x4

    .line 431
    const/4 v3, 0x1

    .line 432
    move-object v0, v6

    .line 433
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 436
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 441
    const/16 v4, 0x26

    .line 443
    const/4 v3, 0x2

    .line 444
    move-object v0, v6

    .line 445
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 448
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    .line 453
    const/4 v3, 0x2

    .line 454
    const/16 v4, 0x2a

    .line 456
    const/4 v2, 0x4

    .line 457
    move-object v0, v6

    .line 458
    move-object v1, p1

    .line 459
    move-object v5, p0

    .line 460
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 463
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    .line 468
    const/16 v4, 0x27

    .line 470
    const/4 v2, 0x4

    .line 471
    const/4 v3, 0x3

    .line 472
    move-object v0, v6

    .line 473
    move-object v1, p1

    .line 474
    move-object v5, p0

    .line 475
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 478
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 483
    const/16 v4, 0x1a

    .line 485
    const/4 v2, 0x2

    .line 486
    move-object v0, v6

    .line 487
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 490
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 495
    const/16 v4, 0x1b

    .line 497
    const/4 v3, 0x0

    .line 498
    move-object v0, v6

    .line 499
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 502
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 507
    const/16 v4, 0x1c

    .line 509
    const/4 v3, 0x1

    .line 510
    move-object v0, v6

    .line 511
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 514
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 519
    const/16 v4, 0x19

    .line 521
    const/4 v3, 0x2

    .line 522
    move-object v0, v6

    .line 523
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 526
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 532
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 534
    const/16 v4, 0x1e

    .line 536
    const/4 v2, 0x3

    .line 537
    const/4 v3, 0x3

    .line 538
    move-object v0, v6

    .line 539
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 542
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 547
    const/16 v4, 0x1f

    .line 549
    const/4 v3, 0x0

    .line 550
    move-object v0, v6

    .line 551
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 554
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 559
    const/16 v4, 0x20

    .line 561
    const/4 v3, 0x1

    .line 562
    move-object v0, v6

    .line 563
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 566
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 571
    const/16 v4, 0x1d

    .line 573
    const/4 v3, 0x2

    .line 574
    move-object v0, v6

    .line 575
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 578
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 583
    const/16 v4, 0x22

    .line 585
    const/4 v2, 0x4

    .line 586
    const/4 v3, 0x3

    .line 587
    move-object v0, v6

    .line 588
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 591
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 596
    const/16 v4, 0x23

    .line 598
    const/4 v3, 0x0

    .line 599
    move-object v0, v6

    .line 600
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 603
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 608
    const/16 v4, 0x24

    .line 610
    const/4 v3, 0x1

    .line 611
    move-object v0, v6

    .line 612
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 615
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v6, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    .line 620
    const/16 v4, 0x21

    .line 622
    const/4 v3, 0x2

    .line 623
    move-object v0, v6

    .line 624
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 627
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v6, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;

    .line 632
    const/4 v3, 0x1

    .line 633
    const/16 v4, 0x3e8

    .line 635
    const/4 v2, 0x2

    .line 636
    move-object v0, v6

    .line 637
    move-object v1, p1

    .line 638
    move-object v5, p0

    .line 639
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 642
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 21
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v0

    .line 37
    if-lez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 41
    const/4 v1, 0x0

    .line 42
    check-cast v0, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/view/MotionEvent;

    .line 50
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method

.method public final onStateChanged(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    move/from16 v3, p3

    .line 6
    move-object/from16 v5, p4

    .line 8
    move-object/from16 v4, p5

    .line 10
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 12
    iget-object v7, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    .line 14
    const/4 v8, 0x5

    .line 15
    const/16 v9, 0x12

    .line 17
    const/16 v10, 0x11

    .line 19
    const/4 v11, 0x1

    .line 20
    if-ne v2, v11, :cond_3

    .line 22
    iget v12, v6, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 24
    if-ne v12, v8, :cond_0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-eq v1, v10, :cond_2

    .line 29
    if-ne v1, v9, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    check-cast v7, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 34
    invoke-virtual {v7}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureStarted()V

    .line 37
    goto/16 :goto_5

    .line 39
    :cond_2
    :goto_0
    iget-boolean v0, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    .line 41
    if-eqz v0, :cond_13

    .line 43
    check-cast v7, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 45
    invoke-virtual {v7}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureStarted()V

    .line 48
    goto/16 :goto_5

    .line 50
    :cond_3
    :goto_1
    const/4 v12, 0x2

    .line 51
    if-ne v2, v12, :cond_8

    .line 53
    if-eq v1, v10, :cond_6

    .line 55
    if-eq v1, v9, :cond_4

    .line 57
    new-instance v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 59
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 62
    move-result v3

    .line 63
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 65
    invoke-direct {v2, p1, v3, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 68
    check-cast v7, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 70
    invoke-virtual {v7, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget-boolean v2, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    .line 76
    if-eqz v2, :cond_5

    .line 78
    new-instance v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 80
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 83
    move-result v3

    .line 84
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 86
    invoke-direct {v2, p1, v3, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 89
    check-cast v7, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 91
    invoke-virtual {v7, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    check-cast v7, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 97
    invoke-virtual {v7, v5, v4, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    iget-boolean v2, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    .line 103
    if-eqz v2, :cond_7

    .line 105
    new-instance v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 107
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 110
    move-result v3

    .line 111
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 113
    invoke-direct {v2, p1, v3, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 116
    check-cast v7, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 118
    invoke-virtual {v7, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 121
    goto :goto_2

    .line 122
    :cond_7
    check-cast v7, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 124
    invoke-virtual {v7, v5, v4, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 127
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 130
    goto/16 :goto_5

    .line 132
    :cond_8
    const/4 v1, 0x3

    .line 133
    if-ne v2, v1, :cond_13

    .line 135
    iget v1, v6, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 137
    if-ne v1, v8, :cond_13

    .line 139
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    .line 141
    check-cast v0, Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 146
    move-result-object v0

    .line 147
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_a

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 159
    iget v1, v1, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 161
    if-ne v1, v11, :cond_9

    .line 163
    return-void

    .line 164
    :cond_a
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 166
    if-eqz v0, :cond_b

    .line 168
    const-string v0, "GestureManifold"

    .line 170
    const-string v1, "Cancelling."

    .line 172
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_b
    check-cast v7, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 177
    iget-object v0, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 179
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 181
    const-wide/16 v9, 0x3000

    .line 183
    invoke-virtual {v1, v9, v10}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_c

    .line 189
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v2, "event="

    .line 196
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    const-string v2, ";rawEvent="

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, ";policyFlags="

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    const-string v2, "TouchExplorer.onGestureCancelled"

    .line 224
    invoke-virtual {v0, v2, v9, v10, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 227
    :cond_c
    iget-object v0, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 229
    iget v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 231
    const/4 v2, 0x0

    .line 232
    if-ne v1, v8, :cond_d

    .line 234
    move v1, v11

    .line 235
    goto :goto_3

    .line 236
    :cond_d
    move v1, v2

    .line 237
    :goto_3
    if-eqz v1, :cond_10

    .line 239
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 242
    move-result v0

    .line 243
    if-ne v0, v11, :cond_e

    .line 245
    goto :goto_4

    .line 246
    :cond_e
    move v11, v2

    .line 247
    :goto_4
    iget-object v0, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 249
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 252
    const/high16 v0, 0x80000

    .line 254
    iget-object v1, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 256
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 259
    if-eqz v11, :cond_f

    .line 261
    const/high16 v0, 0x200000

    .line 263
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 266
    :cond_f
    iget-object v0, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 268
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 270
    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 272
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    goto :goto_5

    .line 276
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_12

    .line 282
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 285
    move-result v1

    .line 286
    if-ne v1, v12, :cond_12

    .line 288
    iget-object v1, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 290
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    .line 293
    move-result v1

    .line 294
    shl-int v2, v11, v1

    .line 296
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 298
    iget-object v1, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 300
    invoke-virtual {v1, v5, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 303
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_11

    .line 309
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->run()V

    .line 312
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 315
    :cond_11
    iget-object v0, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 317
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 320
    iget-object v0, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 322
    const/4 v1, 0x7

    .line 323
    move/from16 v3, p3

    .line 325
    move-object/from16 v4, p4

    .line 327
    move-object/from16 v5, p4

    .line 329
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 332
    goto :goto_5

    .line 333
    :cond_12
    iget-object v0, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 335
    iget-boolean v1, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 337
    if-eqz v1, :cond_13

    .line 339
    new-instance v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 341
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 343
    iget v3, v7, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 345
    invoke-direct {v1, v2, v3, v0}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 348
    invoke-virtual {v7, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 351
    :cond_13
    :goto_5
    return-void
.end method
