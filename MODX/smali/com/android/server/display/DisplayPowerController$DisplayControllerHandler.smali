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

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 9
    goto/16 :goto_6

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 13
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 18
    goto/16 :goto_6

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 22
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayPowerController;->restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V

    .line 25
    goto/16 :goto_6

    .line 27
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 29
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    if-ne v1, p1, :cond_1b

    .line 35
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 38
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 40
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 43
    goto/16 :goto_6

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 47
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 49
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 51
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 54
    move-result p1

    .line 55
    iget-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 60
    iget-object v2, v2, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 62
    if-eqz v2, :cond_0

    .line 64
    iget v2, v2, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 66
    invoke-static {v2, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_0

    .line 72
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 74
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 76
    iput p1, v0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 84
    goto/16 :goto_6

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

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    goto/16 :goto_6

    .line 100
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 102
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 105
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    goto/16 :goto_6

    .line 112
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 114
    if-ne p1, v3, :cond_1

    .line 116
    move v2, v3

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 121
    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0, p1, v3}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    .line 126
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 128
    invoke-virtual {p1, v2}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 131
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    goto/16 :goto_6

    .line 138
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 140
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 145
    goto/16 :goto_6

    .line 147
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    instance-of v1, v0, Ljava/lang/Float;

    .line 151
    if-eqz v1, :cond_3

    .line 153
    check-cast v0, Ljava/lang/Float;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 158
    move-result v0

    .line 159
    goto :goto_1

    .line 160
    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 162
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 164
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 166
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 168
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 170
    const-string v5, "Switching user newUserId="

    .line 172
    const-string v6, " userSerial="

    .line 174
    const-string v7, " newBrightness="

    .line 176
    invoke-static {v1, p1, v5, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v5

    .line 187
    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    .line 193
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 195
    if-nez v4, :cond_5

    .line 197
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 199
    if-eqz v4, :cond_5

    .line 201
    sget-boolean v5, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 203
    if-eqz v5, :cond_4

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    .line 207
    const-string v6, "Used id updated from "

    .line 209
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    iget v6, v4, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v6, " to "

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v5

    .line 229
    const-string v6, "BrightnessTracker"

    .line 231
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_4
    iput v1, v4, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 236
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    .line 239
    move-result v1

    .line 240
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 242
    invoke-virtual {v4}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 245
    move-result v4

    .line 246
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 248
    iget-object v6, v5, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 250
    iput p1, v6, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    .line 252
    invoke-virtual {v5, v1, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    .line 255
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 257
    iget-object v1, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 259
    monitor-enter v1

    .line 260
    :try_start_2
    iget v4, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 262
    cmpl-float v5, v0, v4

    .line 264
    if-eqz v5, :cond_6

    .line 266
    move v2, v3

    .line 267
    :cond_6
    cmpl-float v3, v0, v4

    .line 269
    if-eqz v3, :cond_7

    .line 271
    iput v0, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 273
    :cond_7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    if-eqz v2, :cond_8

    .line 276
    iget-object v0, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    .line 278
    iget-object p1, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 280
    invoke-virtual {v0, p1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 283
    :cond_8
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 285
    if-nez p1, :cond_9

    .line 287
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 289
    if-eqz p1, :cond_9

    .line 291
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 294
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 297
    goto/16 :goto_6

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

    .line 304
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 306
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 309
    move-result v0

    .line 310
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 312
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 314
    monitor-enter v1

    .line 315
    const/16 p0, 0x1a1

    .line 317
    :try_start_4
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 320
    monitor-exit v1

    .line 321
    goto/16 :goto_6

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

    .line 328
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 330
    if-eqz p1, :cond_1b

    .line 332
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    .line 337
    goto/16 :goto_6

    .line 339
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 341
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 343
    if-nez p1, :cond_a

    .line 345
    goto/16 :goto_6

    .line 347
    :cond_a
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    .line 349
    array-length p1, p0

    .line 350
    new-array p1, p1, [F

    .line 352
    array-length p1, p0

    .line 353
    if-lez p1, :cond_b

    .line 355
    aget p0, p0, v2

    .line 357
    throw v1

    .line 358
    :cond_b
    throw v1

    .line 359
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 361
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 363
    if-eqz p1, :cond_c

    .line 365
    return-void

    .line 366
    :cond_c
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V

    .line 369
    goto/16 :goto_6

    .line 371
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 373
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 375
    invoke-virtual {p1, v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 378
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 380
    iget-object v0, p1, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 382
    iget-object v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 384
    if-nez v4, :cond_d

    .line 386
    goto :goto_2

    .line 387
    :cond_d
    if-eqz v4, :cond_e

    .line 389
    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 391
    invoke-virtual {v5, v4}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    .line 394
    iput-boolean v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 396
    :cond_e
    iput-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 398
    :goto_2
    iget-object v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 400
    iget-object v4, v0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 402
    iput-boolean v2, v4, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 404
    iget-boolean v5, v0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 406
    if-eqz v5, :cond_f

    .line 408
    iget-object v4, v4, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 410
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 413
    move-result-object v4

    .line 414
    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 417
    iput-boolean v2, v0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 419
    :cond_f
    iget-object p1, p1, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 421
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 423
    if-eqz v0, :cond_10

    .line 425
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    .line 427
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    .line 430
    :cond_10
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 432
    iget-object v0, p1, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 434
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->stopObserving()V

    .line 437
    iget-object v0, p1, Lcom/android/server/display/BrightnessThrottler;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 439
    iget-object v0, v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 441
    iget-object v4, p1, Lcom/android/server/display/BrightnessThrottler;->mDeviceConfigListener:Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;

    .line 443
    invoke-interface {v0, v4}, Landroid/provider/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 446
    const/high16 v0, 0x3f800000    # 1.0f

    .line 448
    iput v0, p1, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 450
    iput v2, p1, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 452
    const/4 v0, -0x1

    .line 453
    iput v0, p1, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 455
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 457
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;

    .line 459
    iget-object v4, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 461
    iget-object v4, v4, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 463
    invoke-interface {v4, v0}, Landroid/provider/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 466
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClampers:Ljava/util/List;

    .line 468
    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    .line 470
    const/4 v5, 0x2

    .line 471
    invoke-direct {v4, v5}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 474
    check-cast v0, Ljava/util/ArrayList;

    .line 476
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 479
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 481
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    .line 483
    const/4 v4, 0x3

    .line 484
    invoke-direct {v0, v4}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 487
    check-cast p1, Ljava/util/ArrayList;

    .line 489
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 492
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 494
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 497
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 499
    move v0, v3

    .line 500
    :goto_3
    const/4 v4, 0x7

    .line 501
    if-gt v0, v4, :cond_11

    .line 503
    invoke-virtual {p1, v0}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    .line 506
    add-int/lit8 v0, v0, 0x1

    .line 508
    goto :goto_3

    .line 509
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 514
    if-eqz p1, :cond_12

    .line 516
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 518
    goto :goto_4

    .line 519
    :cond_12
    const/4 p1, 0x0

    .line 520
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    .line 523
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 525
    if-eqz p1, :cond_14

    .line 527
    iput-boolean v3, p1, Lcom/android/server/display/DisplayPowerState;->mStopped:Z

    .line 529
    iget-object v0, p1, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 531
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 534
    iput-boolean v2, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 536
    iput-boolean v3, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 538
    iget-object v0, p1, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 540
    if-eqz v0, :cond_13

    .line 542
    iget-object v3, p1, Lcom/android/server/display/DisplayPowerState;->mAsyncDestroyExecutor:Ljava/util/concurrent/Executor;

    .line 544
    new-instance v4, Lcom/android/server/display/DisplayPowerState$$ExternalSyntheticLambda0;

    .line 546
    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ColorFade;)V

    .line 549
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 552
    :cond_13
    iput-object v1, p1, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 554
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 556
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 559
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 561
    :cond_14
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 563
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 565
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 568
    move-result p1

    .line 569
    if-nez p1, :cond_15

    .line 571
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 573
    if-eqz p1, :cond_15

    .line 575
    invoke-virtual {p1, v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 578
    :cond_15
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    .line 580
    if-eqz p1, :cond_1b

    .line 582
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 584
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 587
    goto/16 :goto_6

    .line 589
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 591
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 593
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 595
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 598
    move-result p1

    .line 599
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 602
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 604
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 607
    goto/16 :goto_6

    .line 609
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 611
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 613
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 615
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 618
    move-result v1

    .line 619
    iget-object v4, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 621
    monitor-enter v4

    .line 622
    :try_start_5
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 624
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 626
    iput v1, v0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 628
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 629
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 631
    if-lez p1, :cond_16

    .line 633
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 635
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 637
    const-string v0, "[api] ForceSlowChange is requested from DisplayManager"

    .line 639
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 644
    iput-boolean v3, p1, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 646
    :cond_16
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 648
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

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

    .line 657
    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 659
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 661
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 663
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 665
    if-ne v4, v3, :cond_17

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

    .line 673
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 675
    if-lez p1, :cond_18

    .line 677
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 679
    iput-boolean v3, p1, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    .line 681
    :cond_18
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 683
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 685
    if-eqz p1, :cond_1a

    .line 687
    if-eqz v0, :cond_19

    .line 689
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    .line 692
    move-result v0

    .line 693
    if-eqz v0, :cond_19

    .line 695
    move v2, v3

    .line 696
    :cond_19
    iget-object p1, p1, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 698
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 701
    move-result-object v0

    .line 702
    const/4 v1, 0x4

    .line 703
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 706
    move-result-object p1

    .line 707
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 710
    :cond_1a
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 712
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 715
    goto :goto_6

    .line 716
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 718
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 720
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 722
    if-ne v1, p1, :cond_1b

    .line 724
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 727
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 729
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 732
    goto :goto_6

    .line 733
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 735
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 737
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 739
    if-ne v1, p1, :cond_1b

    .line 741
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 744
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 746
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 749
    goto :goto_6

    .line 750
    :pswitch_13
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 752
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

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
