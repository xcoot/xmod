.class public final Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 12
    .line 13
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayPowerController;->restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 30
    .line 31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    if-ne v1, p1, :cond_1b

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 48
    .line 49
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    iget v2, v2, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 65
    .line 66
    invoke-static {v2, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 75
    .line 76
    iput p1, v0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 77
    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    :try_start_1
    monitor-exit v1

    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0

    .line 93
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 113
    .line 114
    if-ne p1, v3, :cond_1

    .line 115
    .line 116
    move v2, v3

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 120
    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    invoke-virtual {v0, p1, v3}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 129
    .line 130
    .line 131
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 139
    .line 140
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    .line 149
    instance-of v1, v0, Ljava/lang/Float;

    .line 150
    .line 151
    if-eqz v1, :cond_3

    .line 152
    .line 153
    check-cast v0, Ljava/lang/Float;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    goto :goto_1

    .line 160
    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 161
    .line 162
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 163
    .line 164
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 165
    .line 166
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 167
    .line 168
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 169
    .line 170
    const-string v5, "Switching user newUserId="

    .line 171
    .line 172
    const-string v6, " userSerial="

    .line 173
    .line 174
    const-string v7, " newBrightness="

    .line 175
    .line 176
    invoke-static {v1, p1, v5, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    .line 191
    .line 192
    .line 193
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 194
    .line 195
    if-nez v4, :cond_5

    .line 196
    .line 197
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 198
    .line 199
    if-eqz v4, :cond_5

    .line 200
    .line 201
    sget-boolean v5, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 202
    .line 203
    if-eqz v5, :cond_4

    .line 204
    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v6, "Used id updated from "

    .line 208
    .line 209
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget v6, v4, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 213
    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v6, " to "

    .line 218
    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    const-string v6, "BrightnessTracker"

    .line 230
    .line 231
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :cond_4
    iput v1, v4, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 235
    .line 236
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 241
    .line 242
    invoke-virtual {v4}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 247
    .line 248
    iget-object v6, v5, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 249
    .line 250
    iput p1, v6, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    .line 251
    .line 252
    invoke-virtual {v5, v1, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 256
    .line 257
    iget-object v1, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 258
    .line 259
    monitor-enter v1

    .line 260
    :try_start_2
    iget v4, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 261
    .line 262
    cmpl-float v5, v0, v4

    .line 263
    .line 264
    if-eqz v5, :cond_6

    .line 265
    .line 266
    move v2, v3

    .line 267
    :cond_6
    cmpl-float v3, v0, v4

    .line 268
    .line 269
    if-eqz v3, :cond_7

    .line 270
    .line 271
    iput v0, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 272
    .line 273
    :cond_7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    if-eqz v2, :cond_8

    .line 275
    .line 276
    iget-object v0, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    .line 277
    .line 278
    iget-object p1, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 279
    .line 280
    invoke-virtual {v0, p1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 281
    .line 282
    .line 283
    :cond_8
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 284
    .line 285
    if-nez p1, :cond_9

    .line 286
    .line 287
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 288
    .line 289
    if-eqz p1, :cond_9

    .line 290
    .line 291
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 292
    .line 293
    .line 294
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_6

    .line 298
    .line 299
    :catchall_1
    move-exception p0

    .line 300
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 301
    throw p0

    .line 302
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 303
    .line 304
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 305
    .line 306
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 311
    .line 312
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 313
    .line 314
    monitor-enter v1

    .line 315
    const/16 p0, 0x1a1

    .line 316
    .line 317
    :try_start_4
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 318
    .line 319
    .line 320
    monitor-exit v1

    .line 321
    goto/16 :goto_6

    .line 322
    .line 323
    :catchall_2
    move-exception p0

    .line 324
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 325
    throw p0

    .line 326
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 327
    .line 328
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 329
    .line 330
    if-eqz p1, :cond_1b

    .line 331
    .line 332
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 333
    .line 334
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_6

    .line 338
    .line 339
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 340
    .line 341
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 342
    .line 343
    if-nez p1, :cond_a

    .line 344
    .line 345
    goto/16 :goto_6

    .line 346
    .line 347
    :cond_a
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    .line 348
    .line 349
    array-length p1, p0

    .line 350
    new-array p1, p1, [F

    .line 351
    .line 352
    array-length p1, p0

    .line 353
    if-lez p1, :cond_b

    .line 354
    .line 355
    aget p0, p0, v2

    .line 356
    .line 357
    throw v1

    .line 358
    :cond_b
    throw v1

    .line 359
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 360
    .line 361
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 362
    .line 363
    if-eqz p1, :cond_c

    .line 364
    .line 365
    return-void

    .line 366
    :cond_c
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_6

    .line 370
    .line 371
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 372
    .line 373
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 374
    .line 375
    invoke-virtual {p1, v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 379
    .line 380
    iget-object v0, p1, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 381
    .line 382
    iget-object v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 383
    .line 384
    if-nez v4, :cond_d

    .line 385
    .line 386
    goto :goto_2

    .line 387
    :cond_d
    if-eqz v4, :cond_e

    .line 388
    .line 389
    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 390
    .line 391
    invoke-virtual {v5, v4}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    .line 392
    .line 393
    .line 394
    iput-boolean v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 395
    .line 396
    :cond_e
    iput-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 397
    .line 398
    :goto_2
    iget-object v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 399
    .line 400
    iget-object v4, v0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 401
    .line 402
    iput-boolean v2, v4, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 403
    .line 404
    iget-boolean v5, v0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 405
    .line 406
    if-eqz v5, :cond_f

    .line 407
    .line 408
    iget-object v4, v4, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 415
    .line 416
    .line 417
    iput-boolean v2, v0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 418
    .line 419
    :cond_f
    iget-object p1, p1, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 420
    .line 421
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 422
    .line 423
    if-eqz v0, :cond_10

    .line 424
    .line 425
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    .line 426
    .line 427
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    .line 428
    .line 429
    .line 430
    :cond_10
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 431
    .line 432
    iget-object v0, p1, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->stopObserving()V

    .line 435
    .line 436
    .line 437
    iget-object v0, p1, Lcom/android/server/display/BrightnessThrottler;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 438
    .line 439
    iget-object v0, v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 440
    .line 441
    iget-object v4, p1, Lcom/android/server/display/BrightnessThrottler;->mDeviceConfigListener:Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;

    .line 442
    .line 443
    invoke-interface {v0, v4}, Landroid/provider/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 444
    .line 445
    .line 446
    const/high16 v0, 0x3f800000    # 1.0f

    .line 447
    .line 448
    iput v0, p1, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 449
    .line 450
    iput v2, p1, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 451
    .line 452
    const/4 v0, -0x1

    .line 453
    iput v0, p1, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 454
    .line 455
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 456
    .line 457
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;

    .line 458
    .line 459
    iget-object v4, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 460
    .line 461
    iget-object v4, v4, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 462
    .line 463
    invoke-interface {v4, v0}, Landroid/provider/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 464
    .line 465
    .line 466
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClampers:Ljava/util/List;

    .line 467
    .line 468
    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    .line 469
    .line 470
    const/4 v5, 0x2

    .line 471
    invoke-direct {v4, v5}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 472
    .line 473
    .line 474
    check-cast v0, Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 477
    .line 478
    .line 479
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 480
    .line 481
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    .line 482
    .line 483
    const/4 v4, 0x3

    .line 484
    invoke-direct {v0, v4}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 485
    .line 486
    .line 487
    check-cast p1, Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 490
    .line 491
    .line 492
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 493
    .line 494
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 498
    .line 499
    move v0, v3

    .line 500
    :goto_3
    const/4 v4, 0x7

    .line 501
    if-gt v0, v4, :cond_11

    .line 502
    .line 503
    invoke-virtual {p1, v0}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    .line 504
    .line 505
    .line 506
    add-int/lit8 v0, v0, 0x1

    .line 507
    .line 508
    goto :goto_3

    .line 509
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 513
    .line 514
    if-eqz p1, :cond_12

    .line 515
    .line 516
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 517
    .line 518
    goto :goto_4

    .line 519
    :cond_12
    const/4 p1, 0x0

    .line 520
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 524
    .line 525
    if-eqz p1, :cond_14

    .line 526
    .line 527
    iput-boolean v3, p1, Lcom/android/server/display/DisplayPowerState;->mStopped:Z

    .line 528
    .line 529
    iget-object v0, p1, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 532
    .line 533
    .line 534
    iput-boolean v2, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 535
    .line 536
    iput-boolean v3, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 537
    .line 538
    iget-object v0, p1, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 539
    .line 540
    if-eqz v0, :cond_13

    .line 541
    .line 542
    iget-object v3, p1, Lcom/android/server/display/DisplayPowerState;->mAsyncDestroyExecutor:Ljava/util/concurrent/Executor;

    .line 543
    .line 544
    new-instance v4, Lcom/android/server/display/DisplayPowerState$$ExternalSyntheticLambda0;

    .line 545
    .line 546
    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ColorFade;)V

    .line 547
    .line 548
    .line 549
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 550
    .line 551
    .line 552
    :cond_13
    iput-object v1, p1, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 553
    .line 554
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 555
    .line 556
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 560
    .line 561
    :cond_14
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 562
    .line 563
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 564
    .line 565
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 566
    .line 567
    .line 568
    move-result p1

    .line 569
    if-nez p1, :cond_15

    .line 570
    .line 571
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 572
    .line 573
    if-eqz p1, :cond_15

    .line 574
    .line 575
    invoke-virtual {p1, v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 576
    .line 577
    .line 578
    :cond_15
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    .line 579
    .line 580
    if-eqz p1, :cond_1b

    .line 581
    .line 582
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 583
    .line 584
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_6

    .line 588
    .line 589
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 590
    .line 591
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 592
    .line 593
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 594
    .line 595
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 596
    .line 597
    .line 598
    move-result p1

    .line 599
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 600
    .line 601
    .line 602
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 603
    .line 604
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_6

    .line 608
    .line 609
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 610
    .line 611
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 612
    .line 613
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 614
    .line 615
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    iget-object v4, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 620
    .line 621
    monitor-enter v4

    .line 622
    :try_start_5
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 623
    .line 624
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 625
    .line 626
    iput v1, v0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 627
    .line 628
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 629
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 630
    .line 631
    if-lez p1, :cond_16

    .line 632
    .line 633
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 634
    .line 635
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 636
    .line 637
    const-string v0, "[api] ForceSlowChange is requested from DisplayManager"

    .line 638
    .line 639
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 643
    .line 644
    iput-boolean v3, p1, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 645
    .line 646
    :cond_16
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 647
    .line 648
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 649
    .line 650
    .line 651
    goto :goto_6

    .line 652
    :catchall_3
    move-exception p0

    .line 653
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 654
    throw p0

    .line 655
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    .line 657
    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 658
    .line 659
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 660
    .line 661
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 662
    .line 663
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 664
    .line 665
    if-ne v4, v3, :cond_17

    .line 666
    .line 667
    move v4, v3

    .line 668
    goto :goto_5

    .line 669
    :cond_17
    move v4, v2

    .line 670
    :goto_5
    invoke-virtual {v1, v0, v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 671
    .line 672
    .line 673
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 674
    .line 675
    if-lez p1, :cond_18

    .line 676
    .line 677
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 678
    .line 679
    iput-boolean v3, p1, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    .line 680
    .line 681
    :cond_18
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 682
    .line 683
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 684
    .line 685
    if-eqz p1, :cond_1a

    .line 686
    .line 687
    if-eqz v0, :cond_19

    .line 688
    .line 689
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-eqz v0, :cond_19

    .line 694
    .line 695
    move v2, v3

    .line 696
    :cond_19
    iget-object p1, p1, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 697
    .line 698
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    const/4 v1, 0x4

    .line 703
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 708
    .line 709
    .line 710
    :cond_1a
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 711
    .line 712
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 713
    .line 714
    .line 715
    goto :goto_6

    .line 716
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 717
    .line 718
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 719
    .line 720
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 721
    .line 722
    if-ne v1, p1, :cond_1b

    .line 723
    .line 724
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 725
    .line 726
    .line 727
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 728
    .line 729
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 730
    .line 731
    .line 732
    goto :goto_6

    .line 733
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 734
    .line 735
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 736
    .line 737
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    .line 739
    if-ne v1, p1, :cond_1b

    .line 740
    .line 741
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 742
    .line 743
    .line 744
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 745
    .line 746
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 747
    .line 748
    .line 749
    goto :goto_6

    .line 750
    :pswitch_13
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 751
    .line 752
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 753
    .line 754
    .line 755
    :cond_1b
    :goto_6
    return-void

    .line 756
    nop

    .line 757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
