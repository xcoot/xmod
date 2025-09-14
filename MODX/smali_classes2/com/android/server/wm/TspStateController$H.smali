.class public final Lcom/android/server/wm/TspStateController$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TspStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TspStateController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/TspStateController$H;->this$0:Lcom/android/server/wm/TspStateController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x5

    .line 7
    const-string v5, "1"

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/TspStateController$H;->this$0:Lcom/android/server/wm/TspStateController;

    .line 10
    .line 11
    if-eq v0, v2, :cond_8

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    .line 21
    .line 22
    const-string/jumbo v0, "tspstatemanager"

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p1, "finishScreenTurningOn TSP_COMMAND_TYPE_PORT"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v2, p1, v2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz p1, :cond_1a

    .line 50
    .line 51
    const-string p1, "finishScreenTurningOn TSP_COMMAND_TYPE_LAND"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    .line 69
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    .line 70
    .line 71
    if-eqz v0, :cond_1a

    .line 72
    .line 73
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    iput-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    .line 87
    .line 88
    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    .line 92
    .line 93
    if-eqz v0, :cond_1a

    .line 94
    .line 95
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    .line 98
    .line 99
    if-nez v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/android/server/wm/TspGripCommand;->reset()V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v2, "default_input_method"

    .line 111
    .line 112
    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_5

    .line 121
    .line 122
    const-string v2, "SamsungKeypad"

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_6

    .line 129
    .line 130
    const-string v2, "honeyboard"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    if-eqz p1, :cond_7

    .line 144
    .line 145
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mTspDeadzone:Landroid/os/Bundle;

    .line 146
    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 150
    .line 151
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Landroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mImeWindow:Lcom/android/server/wm/WindowState;

    .line 155
    .line 156
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TspStateController;->updateTspCommand(Lcom/android/server/wm/TspGripCommand;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    .line 163
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    .line 164
    .line 165
    if-eqz v0, :cond_1a

    .line 166
    .line 167
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    .line 173
    .line 174
    const-string v6, "0"

    .line 175
    .line 176
    if-eqz v0, :cond_b

    .line 177
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    .line 179
    .line 180
    if-eqz v0, :cond_a

    .line 181
    .line 182
    iget-object v7, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    .line 183
    .line 184
    if-ne p1, v7, :cond_9

    .line 185
    .line 186
    iget-boolean v7, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    .line 187
    .line 188
    if-nez v7, :cond_a

    .line 189
    .line 190
    :cond_9
    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    .line 191
    .line 192
    invoke-virtual {p0, v4, v6, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_a
    if-nez v0, :cond_b

    .line 197
    .line 198
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    .line 199
    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    .line 203
    .line 204
    if-ne p1, v0, :cond_b

    .line 205
    .line 206
    iput-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    .line 207
    .line 208
    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 209
    .line 210
    .line 211
    :cond_b
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_NOTE_MODE:Z

    .line 212
    .line 213
    if-eqz v0, :cond_d

    .line 214
    .line 215
    if-eqz p1, :cond_d

    .line 216
    .line 217
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsTspNoteMode:Z

    .line 218
    .line 219
    iget-boolean v4, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    .line 220
    .line 221
    if-eq v4, v0, :cond_d

    .line 222
    .line 223
    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    .line 224
    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_c
    move-object v5, v6

    .line 229
    :goto_1
    const/4 v0, 0x6

    .line 230
    invoke-virtual {p0, v0, v5, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 231
    .line 232
    .line 233
    :cond_d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    .line 234
    .line 235
    if-eqz v0, :cond_1a

    .line 236
    .line 237
    if-eqz p1, :cond_10

    .line 238
    .line 239
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    .line 240
    .line 241
    if-ne v0, p1, :cond_10

    .line 242
    .line 243
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mImeWindow:Lcom/android/server/wm/WindowState;

    .line 244
    .line 245
    if-eqz v0, :cond_10

    .line 246
    .line 247
    iget-boolean v4, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    .line 248
    .line 249
    if-eqz v4, :cond_10

    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    .line 252
    .line 253
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_e

    .line 258
    .line 259
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    .line 261
    .line 262
    :cond_e
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-eqz p1, :cond_f

    .line 267
    .line 268
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    .line 270
    .line 271
    :cond_f
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    .line 277
    .line 278
    goto/16 :goto_6

    .line 279
    .line 280
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    .line 281
    .line 282
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    .line 285
    .line 286
    .line 287
    if-eqz p1, :cond_19

    .line 288
    .line 289
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 290
    .line 291
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 292
    .line 293
    const/16 v5, 0x7d0

    .line 294
    .line 295
    if-lt v4, v5, :cond_11

    .line 296
    .line 297
    const/16 v5, 0xbb7

    .line 298
    .line 299
    if-gt v4, v5, :cond_11

    .line 300
    .line 301
    move v4, v2

    .line 302
    goto :goto_2

    .line 303
    :cond_11
    move v4, v3

    .line 304
    :goto_2
    if-nez v4, :cond_14

    .line 305
    .line 306
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 307
    .line 308
    if-eqz v1, :cond_12

    .line 309
    .line 310
    const-string v4, "com.sec.android."

    .line 311
    .line 312
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-nez v4, :cond_13

    .line 317
    .line 318
    const-string v4, "com.samsung."

    .line 319
    .line 320
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-nez v4, :cond_13

    .line 325
    .line 326
    const-string v4, "com.android.settings"

    .line 327
    .line 328
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_12

    .line 333
    .line 334
    goto :goto_3

    .line 335
    :cond_12
    move v2, v3

    .line 336
    :cond_13
    :goto_3
    move v4, v2

    .line 337
    :cond_14
    if-nez v4, :cond_18

    .line 338
    .line 339
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_USE_SMALLER_GRIPZONE_ON_GAME:Z

    .line 340
    .line 341
    if-eqz v1, :cond_17

    .line 342
    .line 343
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    .line 344
    .line 345
    if-nez v1, :cond_15

    .line 346
    .line 347
    new-instance v1, Lcom/samsung/android/game/SemGameManager;

    .line 348
    .line 349
    invoke-direct {v1}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    .line 350
    .line 351
    .line 352
    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    .line 353
    .line 354
    :cond_15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    .line 355
    .line 356
    if-eqz v1, :cond_16

    .line 357
    .line 358
    invoke-virtual {v1}, Lcom/samsung/android/game/SemGameManager;->isForegroundGame()Z

    .line 359
    .line 360
    .line 361
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_4

    .line 363
    :catch_0
    move-exception v1

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v4, "Exception in checking isForegroundGame, "

    .line 367
    .line 368
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    const-string v2, "TspStateManager"

    .line 383
    .line 384
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    :cond_16
    :goto_4
    if-eqz v3, :cond_17

    .line 388
    .line 389
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 390
    .line 391
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    .line 392
    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    .line 398
    .line 399
    .line 400
    :cond_18
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    .line 405
    .line 406
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mTspDeadzone:Landroid/os/Bundle;

    .line 407
    .line 408
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 409
    .line 410
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Landroid/os/Bundle;)V

    .line 411
    .line 412
    .line 413
    :cond_19
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspStateController;->updateTspCommand(Lcom/android/server/wm/TspGripCommand;)V

    .line 414
    .line 415
    .line 416
    :cond_1a
    :goto_6
    return-void
.end method
