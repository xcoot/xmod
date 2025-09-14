.class public final Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsLongPressing:Z

.field public final mKeyType:I

.field public final mLongPressRunnableInBlackScreen:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

.field public final mMultiTapKeyCode:I

.field public final mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

.field public mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 6
    new-instance p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 12
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressRunnableInBlackScreen:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 14
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    .line 16
    return-void
.end method

.method public static isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getFlags()I

    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0x80

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p0, v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method


# virtual methods
.method public final handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v10, p5

    .line 5
    const/4 v11, 0x0

    .line 6
    const/4 v12, 0x1

    .line 7
    iget v13, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    .line 9
    iget-object v14, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressRunnableInBlackScreen:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 11
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v15, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 20
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 22
    sget v2, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 29
    const/4 v9, 0x0

    .line 30
    if-nez v1, :cond_2

    .line 32
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 34
    if-nez v1, :cond_2

    .line 36
    :cond_1
    :goto_0
    move-object v11, v9

    .line 37
    goto/16 :goto_1

    .line 39
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 45
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_4

    .line 51
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 53
    if-eqz v1, :cond_3

    .line 55
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 58
    move-result v1

    .line 59
    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    .line 61
    if-eq v1, v2, :cond_3

    .line 63
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 65
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 67
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 69
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 74
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 77
    :cond_3
    iput-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 79
    iput-boolean v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 84
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 89
    move-result-wide v1

    .line 90
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getDownTime()J

    .line 93
    move-result-wide v3

    .line 94
    cmp-long v1, v1, v3

    .line 96
    if-nez v1, :cond_1

    .line 98
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 100
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 103
    move-result v1

    .line 104
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 107
    move-result v2

    .line 108
    if-ne v1, v2, :cond_1

    .line 110
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_1

    .line 116
    invoke-static/range {p5 .. p5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_7

    .line 122
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 124
    if-eqz v1, :cond_5

    .line 126
    iget-object v2, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 128
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 130
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 135
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 138
    :cond_5
    if-ne v13, v12, :cond_6

    .line 140
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 142
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 144
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 146
    if-nez v2, :cond_1

    .line 148
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mneedVolumeKeyLongPressBroadCastLocked(Lcom/android/server/media/MediaSessionService;)Z

    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_1

    .line 154
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 156
    move-object/from16 v2, p1

    .line 158
    move-object/from16 v3, p7

    .line 160
    move/from16 v4, p2

    .line 162
    move/from16 v5, p3

    .line 164
    move/from16 v6, p4

    .line 166
    move-object/from16 v7, p5

    .line 168
    move/from16 v8, p8

    .line 170
    move-object v11, v9

    .line 171
    move/from16 v9, p9

    .line 173
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 176
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 178
    goto :goto_1

    .line 179
    :cond_6
    move-object v11, v9

    .line 180
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 183
    move-result v1

    .line 184
    invoke-static {v15, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_8

    .line 190
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 192
    move-object/from16 v2, p1

    .line 194
    move/from16 v3, p2

    .line 196
    move/from16 v4, p3

    .line 198
    move/from16 v5, p4

    .line 200
    move-object/from16 v6, p5

    .line 202
    move/from16 v7, p6

    .line 204
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 207
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 209
    goto :goto_1

    .line 210
    :cond_7
    move-object v11, v9

    .line 211
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 214
    move-result v1

    .line 215
    if-le v1, v12, :cond_8

    .line 217
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 219
    if-nez v1, :cond_8

    .line 221
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 223
    const/4 v1, 0x0

    .line 224
    iput-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 226
    :cond_8
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_9

    .line 232
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 235
    move-result v1

    .line 236
    if-nez v1, :cond_9

    .line 238
    goto :goto_2

    .line 239
    :cond_9
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 241
    if-nez v1, :cond_a

    .line 243
    goto/16 :goto_c

    .line 245
    :cond_a
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 248
    move-result-wide v1

    .line 249
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getDownTime()J

    .line 252
    move-result-wide v3

    .line 253
    cmp-long v1, v1, v3

    .line 255
    if-nez v1, :cond_1f

    .line 257
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 259
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 262
    move-result v1

    .line 263
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 266
    move-result v2

    .line 267
    if-eq v1, v2, :cond_b

    .line 269
    goto/16 :goto_c

    .line 271
    :cond_b
    :goto_2
    if-ne v13, v12, :cond_c

    .line 273
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 275
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 277
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 279
    if-nez v2, :cond_d

    .line 281
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mneedVolumeKeyLongPressBroadCastLocked(Lcom/android/server/media/MediaSessionService;)Z

    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_d

    .line 287
    goto/16 :goto_c

    .line 289
    :cond_c
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 292
    move-result v1

    .line 293
    invoke-static {v15, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    .line 296
    move-result v1

    .line 297
    if-nez v1, :cond_d

    .line 299
    goto/16 :goto_c

    .line 301
    :cond_d
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_e

    .line 307
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_e

    .line 313
    move v1, v12

    .line 314
    goto :goto_3

    .line 315
    :cond_e
    const/4 v1, 0x0

    .line 316
    :goto_3
    if-eqz v1, :cond_10

    .line 318
    iput-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 320
    const/4 v1, 0x0

    .line 321
    iput-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 323
    if-ne v13, v12, :cond_f

    .line 325
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 327
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 329
    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 334
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 336
    sget v1, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 338
    int-to-long v1, v1

    .line 339
    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    :cond_f
    return-void

    .line 343
    :cond_10
    invoke-static/range {p5 .. p5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_11

    .line 349
    iput-boolean v12, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 351
    if-ne v13, v12, :cond_11

    .line 353
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 355
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 357
    invoke-virtual {v1, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    :cond_11
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 362
    if-eqz v1, :cond_1b

    .line 364
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    if-ne v13, v12, :cond_13

    .line 371
    invoke-static/range {p5 .. p5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    .line 374
    move-result v1

    .line 375
    if-eqz v1, :cond_12

    .line 377
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 379
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 381
    invoke-static {v1, v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 384
    :cond_12
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 386
    invoke-static {v0, v10}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 389
    goto/16 :goto_a

    .line 391
    :cond_13
    invoke-static/range {p5 .. p5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    .line 394
    move-result v0

    .line 395
    if-eqz v0, :cond_1a

    .line 397
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 400
    move-result v0

    .line 401
    invoke-static {v15, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_1a

    .line 407
    const-string v1, "No activity for search: "

    .line 409
    const-string/jumbo v0, "voiceIntent: "

    .line 412
    iget-object v2, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 414
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 416
    const-string/jumbo v3, "power"

    .line 419
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 422
    move-result-object v2

    .line 423
    check-cast v2, Landroid/os/PowerManager;

    .line 425
    iget-object v3, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 427
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 429
    if-eqz v3, :cond_14

    .line 431
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 434
    move-result v3

    .line 435
    if-eqz v3, :cond_14

    .line 437
    move v3, v12

    .line 438
    goto :goto_4

    .line 439
    :cond_14
    const/4 v3, 0x0

    .line 440
    :goto_4
    const-string/jumbo v4, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    .line 443
    const-string v5, "android.speech.extras.EXTRA_SECURE"

    .line 445
    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    .line 447
    const-string v7, "MediaSessionService"

    .line 449
    if-nez v3, :cond_16

    .line 451
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 454
    move-result v2

    .line 455
    if-eqz v2, :cond_16

    .line 457
    new-instance v2, Landroid/content/Intent;

    .line 459
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    if-eqz v3, :cond_15

    .line 464
    iget-object v3, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 466
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 468
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 471
    move-result v3

    .line 472
    if-eqz v3, :cond_15

    .line 474
    move v11, v12

    .line 475
    goto :goto_5

    .line 476
    :cond_15
    const/4 v11, 0x0

    .line 477
    :goto_5
    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    goto :goto_7

    .line 484
    :cond_16
    new-instance v2, Landroid/content/Intent;

    .line 486
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    if-eqz v3, :cond_17

    .line 491
    iget-object v3, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 493
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 495
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 498
    move-result v3

    .line 499
    if-eqz v3, :cond_17

    .line 501
    move v11, v12

    .line 502
    goto :goto_6

    .line 503
    :cond_17
    const/4 v11, 0x0

    .line 504
    :goto_6
    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_7
    if-eqz p6, :cond_18

    .line 512
    iget-object v3, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 514
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 516
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 519
    :cond_18
    const/high16 v3, 0x10800000

    .line 521
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    .line 526
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    move-result-object v0

    .line 536
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 541
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 543
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 545
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    if-eqz p6, :cond_1a

    .line 550
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 552
    :goto_8
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 554
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 557
    goto :goto_a

    .line 558
    :catchall_0
    move-exception v0

    .line 559
    goto :goto_9

    .line 560
    :catch_0
    move-exception v0

    .line 561
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 563
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    move-result-object v0

    .line 573
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    if-eqz p6, :cond_1a

    .line 578
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 580
    goto :goto_8

    .line 581
    :goto_9
    if-eqz p6, :cond_19

    .line 583
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 585
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 587
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 590
    :cond_19
    throw v0

    .line 591
    :cond_1a
    :goto_a
    return-void

    .line 592
    :cond_1b
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 595
    move-result v1

    .line 596
    if-ne v1, v12, :cond_1e

    .line 598
    if-ne v13, v12, :cond_1c

    .line 600
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 602
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 604
    invoke-virtual {v1, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 607
    :cond_1c
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 609
    const/4 v1, 0x0

    .line 610
    invoke-static {v10, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 613
    move-result-object v20

    .line 614
    if-ne v13, v12, :cond_1d

    .line 616
    iget-object v14, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 618
    move-object/from16 v15, p1

    .line 620
    move-object/from16 v16, p7

    .line 622
    move/from16 v17, p2

    .line 624
    move/from16 v18, p3

    .line 626
    move/from16 v19, p4

    .line 628
    move/from16 v21, p8

    .line 630
    move/from16 v22, p9

    .line 632
    invoke-virtual/range {v14 .. v22}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 635
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 637
    move-object/from16 v1, p1

    .line 639
    move-object/from16 v2, p7

    .line 641
    move/from16 v3, p2

    .line 643
    move/from16 v4, p3

    .line 645
    move/from16 v5, p4

    .line 647
    move-object/from16 v6, p5

    .line 649
    move/from16 v7, p8

    .line 651
    move/from16 v8, p9

    .line 653
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 656
    goto :goto_b

    .line 657
    :cond_1d
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 659
    move-object/from16 v2, p1

    .line 661
    move/from16 v3, p2

    .line 663
    move/from16 v4, p3

    .line 665
    move/from16 v5, p4

    .line 667
    move-object/from16 v6, v20

    .line 669
    move/from16 v7, p6

    .line 671
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 674
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 676
    move-object/from16 v1, p1

    .line 678
    move/from16 v2, p2

    .line 680
    move/from16 v3, p3

    .line 682
    move/from16 v4, p4

    .line 684
    move-object/from16 v5, p5

    .line 686
    move/from16 v6, p6

    .line 688
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 691
    :cond_1e
    :goto_b
    return-void

    .line 692
    :cond_1f
    :goto_c
    if-ne v13, v12, :cond_20

    .line 694
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 696
    move-object/from16 v1, p1

    .line 698
    move-object/from16 v2, p7

    .line 700
    move/from16 v3, p2

    .line 702
    move/from16 v4, p3

    .line 704
    move/from16 v5, p4

    .line 706
    move-object/from16 v6, p5

    .line 708
    move/from16 v7, p8

    .line 710
    move/from16 v8, p9

    .line 712
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 715
    goto :goto_d

    .line 716
    :cond_20
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 718
    move-object/from16 v1, p1

    .line 720
    move/from16 v2, p2

    .line 722
    move/from16 v3, p3

    .line 724
    move/from16 v4, p4

    .line 726
    move-object/from16 v5, p5

    .line 728
    move/from16 v6, p6

    .line 730
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 733
    :goto_d
    return-void
.end method
