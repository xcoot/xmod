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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressRunnableInBlackScreen:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    .line 15
    .line 16
    return-void
.end method

.method public static isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
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

    .line 2
    .line 3
    move-object/from16 v10, p5

    .line 4
    .line 5
    const/4 v11, 0x0

    .line 6
    const/4 v12, 0x1

    .line 7
    iget v13, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    .line 8
    .line 9
    iget-object v14, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressRunnableInBlackScreen:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v15, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 19
    .line 20
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 21
    .line 22
    sget v2, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    :cond_1
    :goto_0
    move-object v11, v9

    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    .line 60
    .line 61
    if-eq v1, v2, :cond_3

    .line 62
    .line 63
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 66
    .line 67
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 75
    .line 76
    .line 77
    :cond_3
    iput-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 78
    .line 79
    iput-boolean v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getDownTime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    cmp-long v1, v1, v3

    .line 95
    .line 96
    if-nez v1, :cond_1

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-ne v1, v2, :cond_1

    .line 109
    .line 110
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_1

    .line 115
    .line 116
    invoke-static/range {p5 .. p5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_7

    .line 121
    .line 122
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    iget-object v2, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 127
    .line 128
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 129
    .line 130
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 136
    .line 137
    .line 138
    :cond_5
    if-ne v13, v12, :cond_6

    .line 139
    .line 140
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 141
    .line 142
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 143
    .line 144
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 145
    .line 146
    if-nez v2, :cond_1

    .line 147
    .line 148
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mneedVolumeKeyLongPressBroadCastLocked(Lcom/android/server/media/MediaSessionService;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_1

    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 155
    .line 156
    move-object/from16 v2, p1

    .line 157
    .line 158
    move-object/from16 v3, p7

    .line 159
    .line 160
    move/from16 v4, p2

    .line 161
    .line 162
    move/from16 v5, p3

    .line 163
    .line 164
    move/from16 v6, p4

    .line 165
    .line 166
    move-object/from16 v7, p5

    .line 167
    .line 168
    move/from16 v8, p8

    .line 169
    .line 170
    move-object v11, v9

    .line 171
    move/from16 v9, p9

    .line 172
    .line 173
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 174
    .line 175
    .line 176
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    move-object v11, v9

    .line 180
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-static {v15, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_8

    .line 189
    .line 190
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 191
    .line 192
    move-object/from16 v2, p1

    .line 193
    .line 194
    move/from16 v3, p2

    .line 195
    .line 196
    move/from16 v4, p3

    .line 197
    .line 198
    move/from16 v5, p4

    .line 199
    .line 200
    move-object/from16 v6, p5

    .line 201
    .line 202
    move/from16 v7, p6

    .line 203
    .line 204
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 205
    .line 206
    .line 207
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_7
    move-object v11, v9

    .line 211
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-le v1, v12, :cond_8

    .line 216
    .line 217
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 218
    .line 219
    if-nez v1, :cond_8

    .line 220
    .line 221
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 222
    .line 223
    const/4 v1, 0x0

    .line 224
    iput-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 225
    .line 226
    :cond_8
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_9

    .line 231
    .line 232
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-nez v1, :cond_9

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_9
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 240
    .line 241
    if-nez v1, :cond_a

    .line 242
    .line 243
    goto/16 :goto_c

    .line 244
    .line 245
    :cond_a
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 246
    .line 247
    .line 248
    move-result-wide v1

    .line 249
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getDownTime()J

    .line 250
    .line 251
    .line 252
    move-result-wide v3

    .line 253
    cmp-long v1, v1, v3

    .line 254
    .line 255
    if-nez v1, :cond_1f

    .line 256
    .line 257
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 258
    .line 259
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eq v1, v2, :cond_b

    .line 268
    .line 269
    goto/16 :goto_c

    .line 270
    .line 271
    :cond_b
    :goto_2
    if-ne v13, v12, :cond_c

    .line 272
    .line 273
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 274
    .line 275
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 276
    .line 277
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 278
    .line 279
    if-nez v2, :cond_d

    .line 280
    .line 281
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mneedVolumeKeyLongPressBroadCastLocked(Lcom/android/server/media/MediaSessionService;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_d

    .line 286
    .line 287
    goto/16 :goto_c

    .line 288
    .line 289
    :cond_c
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-static {v15, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-nez v1, :cond_d

    .line 298
    .line 299
    goto/16 :goto_c

    .line 300
    .line 301
    :cond_d
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_e

    .line 306
    .line 307
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_e

    .line 312
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

    .line 317
    .line 318
    iput-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 319
    .line 320
    const/4 v1, 0x0

    .line 321
    iput-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 322
    .line 323
    if-ne v13, v12, :cond_f

    .line 324
    .line 325
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 326
    .line 327
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 328
    .line 329
    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 330
    .line 331
    .line 332
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 333
    .line 334
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 335
    .line 336
    sget v1, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 337
    .line 338
    int-to-long v1, v1

    .line 339
    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    .line 341
    .line 342
    :cond_f
    return-void

    .line 343
    :cond_10
    invoke-static/range {p5 .. p5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_11

    .line 348
    .line 349
    iput-boolean v12, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 350
    .line 351
    if-ne v13, v12, :cond_11

    .line 352
    .line 353
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 354
    .line 355
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 356
    .line 357
    invoke-virtual {v1, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    .line 359
    .line 360
    :cond_11
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 361
    .line 362
    if-eqz v1, :cond_1b

    .line 363
    .line 364
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    if-ne v13, v12, :cond_13

    .line 370
    .line 371
    invoke-static/range {p5 .. p5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-eqz v1, :cond_12

    .line 376
    .line 377
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 378
    .line 379
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 380
    .line 381
    invoke-static {v1, v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 382
    .line 383
    .line 384
    :cond_12
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 385
    .line 386
    invoke-static {v0, v10}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_a

    .line 390
    .line 391
    :cond_13
    invoke-static/range {p5 .. p5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-eqz v0, :cond_1a

    .line 396
    .line 397
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    invoke-static {v15, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_1a

    .line 406
    .line 407
    const-string v1, "No activity for search: "

    .line 408
    .line 409
    const-string/jumbo v0, "voiceIntent: "

    .line 410
    .line 411
    .line 412
    iget-object v2, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 413
    .line 414
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 415
    .line 416
    const-string/jumbo v3, "power"

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    check-cast v2, Landroid/os/PowerManager;

    .line 424
    .line 425
    iget-object v3, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 426
    .line 427
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 428
    .line 429
    if-eqz v3, :cond_14

    .line 430
    .line 431
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    if-eqz v3, :cond_14

    .line 436
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

    .line 441
    .line 442
    .line 443
    const-string v5, "android.speech.extras.EXTRA_SECURE"

    .line 444
    .line 445
    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    .line 446
    .line 447
    const-string v7, "MediaSessionService"

    .line 448
    .line 449
    if-nez v3, :cond_16

    .line 450
    .line 451
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    if-eqz v2, :cond_16

    .line 456
    .line 457
    new-instance v2, Landroid/content/Intent;

    .line 458
    .line 459
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    if-eqz v3, :cond_15

    .line 463
    .line 464
    iget-object v3, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 465
    .line 466
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 467
    .line 468
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    if-eqz v3, :cond_15

    .line 473
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

    .line 478
    .line 479
    .line 480
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_16
    new-instance v2, Landroid/content/Intent;

    .line 485
    .line 486
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    if-eqz v3, :cond_17

    .line 490
    .line 491
    iget-object v3, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 492
    .line 493
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 494
    .line 495
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    if-eqz v3, :cond_17

    .line 500
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

    .line 505
    .line 506
    .line 507
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    :goto_7
    if-eqz p6, :cond_18

    .line 511
    .line 512
    iget-object v3, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 513
    .line 514
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 515
    .line 516
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 517
    .line 518
    .line 519
    :cond_18
    const/high16 v3, 0x10800000

    .line 520
    .line 521
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    .line 523
    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 540
    .line 541
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 542
    .line 543
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 544
    .line 545
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .line 547
    .line 548
    if-eqz p6, :cond_1a

    .line 549
    .line 550
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 551
    .line 552
    :goto_8
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 553
    .line 554
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 555
    .line 556
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

    .line 562
    .line 563
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    .line 575
    .line 576
    if-eqz p6, :cond_1a

    .line 577
    .line 578
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 579
    .line 580
    goto :goto_8

    .line 581
    :goto_9
    if-eqz p6, :cond_19

    .line 582
    .line 583
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 584
    .line 585
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 586
    .line 587
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 588
    .line 589
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

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    if-ne v1, v12, :cond_1e

    .line 597
    .line 598
    if-ne v13, v12, :cond_1c

    .line 599
    .line 600
    iget-object v1, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 601
    .line 602
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 603
    .line 604
    invoke-virtual {v1, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    .line 606
    .line 607
    :cond_1c
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 608
    .line 609
    const/4 v1, 0x0

    .line 610
    invoke-static {v10, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 611
    .line 612
    .line 613
    move-result-object v20

    .line 614
    if-ne v13, v12, :cond_1d

    .line 615
    .line 616
    iget-object v14, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 617
    .line 618
    move-object/from16 v15, p1

    .line 619
    .line 620
    move-object/from16 v16, p7

    .line 621
    .line 622
    move/from16 v17, p2

    .line 623
    .line 624
    move/from16 v18, p3

    .line 625
    .line 626
    move/from16 v19, p4

    .line 627
    .line 628
    move/from16 v21, p8

    .line 629
    .line 630
    move/from16 v22, p9

    .line 631
    .line 632
    invoke-virtual/range {v14 .. v22}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 633
    .line 634
    .line 635
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 636
    .line 637
    move-object/from16 v1, p1

    .line 638
    .line 639
    move-object/from16 v2, p7

    .line 640
    .line 641
    move/from16 v3, p2

    .line 642
    .line 643
    move/from16 v4, p3

    .line 644
    .line 645
    move/from16 v5, p4

    .line 646
    .line 647
    move-object/from16 v6, p5

    .line 648
    .line 649
    move/from16 v7, p8

    .line 650
    .line 651
    move/from16 v8, p9

    .line 652
    .line 653
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 654
    .line 655
    .line 656
    goto :goto_b

    .line 657
    :cond_1d
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 658
    .line 659
    move-object/from16 v2, p1

    .line 660
    .line 661
    move/from16 v3, p2

    .line 662
    .line 663
    move/from16 v4, p3

    .line 664
    .line 665
    move/from16 v5, p4

    .line 666
    .line 667
    move-object/from16 v6, v20

    .line 668
    .line 669
    move/from16 v7, p6

    .line 670
    .line 671
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 672
    .line 673
    .line 674
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 675
    .line 676
    move-object/from16 v1, p1

    .line 677
    .line 678
    move/from16 v2, p2

    .line 679
    .line 680
    move/from16 v3, p3

    .line 681
    .line 682
    move/from16 v4, p4

    .line 683
    .line 684
    move-object/from16 v5, p5

    .line 685
    .line 686
    move/from16 v6, p6

    .line 687
    .line 688
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 689
    .line 690
    .line 691
    :cond_1e
    :goto_b
    return-void

    .line 692
    :cond_1f
    :goto_c
    if-ne v13, v12, :cond_20

    .line 693
    .line 694
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 695
    .line 696
    move-object/from16 v1, p1

    .line 697
    .line 698
    move-object/from16 v2, p7

    .line 699
    .line 700
    move/from16 v3, p2

    .line 701
    .line 702
    move/from16 v4, p3

    .line 703
    .line 704
    move/from16 v5, p4

    .line 705
    .line 706
    move-object/from16 v6, p5

    .line 707
    .line 708
    move/from16 v7, p8

    .line 709
    .line 710
    move/from16 v8, p9

    .line 711
    .line 712
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 713
    .line 714
    .line 715
    goto :goto_d

    .line 716
    :cond_20
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 717
    .line 718
    move-object/from16 v1, p1

    .line 719
    .line 720
    move/from16 v2, p2

    .line 721
    .line 722
    move/from16 v3, p3

    .line 723
    .line 724
    move/from16 v4, p4

    .line 725
    .line 726
    move-object/from16 v5, p5

    .line 727
    .line 728
    move/from16 v6, p6

    .line 729
    .line 730
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 731
    .line 732
    .line 733
    :goto_d
    return-void
.end method
