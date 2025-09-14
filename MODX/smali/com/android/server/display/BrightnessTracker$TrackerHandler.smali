.class public final Lcom/android/server/display/BrightnessTracker$TrackerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 7
    if-eqz v2, :cond_e

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v2, v3, :cond_5

    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v2, v3, :cond_4

    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq v2, v3, :cond_3

    .line 18
    const/4 v3, 0x4

    .line 19
    if-eq v2, v3, :cond_1

    .line 21
    const/4 v3, 0x5

    .line 22
    if-eq v2, v3, :cond_0

    .line 24
    goto/16 :goto_3

    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 28
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    check-cast v1, Landroid/hardware/Sensor;

    .line 32
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 34
    if-eq v2, v1, :cond_f

    .line 36
    iput-object v1, v0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 41
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 44
    goto/16 :goto_3

    .line 46
    :cond_1
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 48
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    check-cast v1, Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    move-result v1

    .line 56
    iput-boolean v1, v2, Lcom/android/server/display/BrightnessTracker;->mShouldCollectColorSample:Z

    .line 58
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 60
    iget-boolean v1, v0, Lcom/android/server/display/BrightnessTracker;->mShouldCollectColorSample:Z

    .line 62
    if-eqz v1, :cond_2

    .line 64
    iget-boolean v2, v0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 66
    if-nez v2, :cond_2

    .line 68
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 71
    goto/16 :goto_3

    .line 73
    :cond_2
    if-nez v1, :cond_f

    .line 75
    iget-boolean v1, v0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 77
    if-eqz v1, :cond_f

    .line 79
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 82
    goto/16 :goto_3

    .line 84
    :cond_3
    iget-object v1, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 86
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 89
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 91
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 94
    goto/16 :goto_3

    .line 96
    :cond_4
    iget-object v1, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 98
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 101
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 103
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 106
    goto/16 :goto_3

    .line 108
    :cond_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    check-cast v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 112
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 114
    const/4 v4, 0x0

    .line 115
    if-ne v1, v3, :cond_6

    .line 117
    move v1, v3

    .line 118
    goto :goto_0

    .line 119
    :cond_6
    move v1, v4

    .line 120
    :goto_0
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 122
    iget v5, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    .line 124
    iget v6, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    .line 126
    iget-boolean v7, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->wasShortTermModelActive:Z

    .line 128
    iget-boolean v8, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    .line 130
    iget-wide v9, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    .line 132
    iget-object v11, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    .line 134
    iget-object v12, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxValues:[F

    .line 136
    iget-object v2, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxTimestamps:[J

    .line 138
    iget-object v13, v0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 140
    monitor-enter v13

    .line 141
    :try_start_0
    iget-boolean v14, v0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 143
    if-nez v14, :cond_7

    .line 145
    monitor-exit v13

    .line 146
    goto/16 :goto_3

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    goto/16 :goto_2

    .line 151
    :cond_7
    iget v14, v0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 153
    iput v5, v0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 155
    if-nez v1, :cond_8

    .line 157
    monitor-exit v13

    .line 158
    goto/16 :goto_3

    .line 160
    :cond_8
    new-instance v1, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 162
    invoke-direct {v1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 165
    invoke-virtual {v1, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 168
    invoke-virtual {v1, v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 171
    invoke-virtual {v1, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 174
    invoke-virtual {v1, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 177
    invoke-virtual {v1, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 180
    invoke-virtual {v1, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 183
    array-length v6, v12

    .line 184
    if-nez v6, :cond_9

    .line 186
    monitor-exit v13

    .line 187
    goto/16 :goto_3

    .line 189
    :cond_9
    array-length v6, v2

    .line 190
    new-array v6, v6, [J

    .line 192
    iget-object v7, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 194
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 200
    move-result-wide v7

    .line 201
    iget-object v9, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 203
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 209
    move-result-wide v9

    .line 210
    :goto_1
    array-length v11, v2

    .line 211
    if-ge v4, v11, :cond_a

    .line 213
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 215
    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 218
    move-result-wide v15

    .line 219
    aget-wide v17, v2, v4

    .line 221
    sub-long v15, v15, v17

    .line 223
    sub-long v15, v7, v15

    .line 225
    aput-wide v15, v6, v4

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 229
    goto :goto_1

    .line 230
    :cond_a
    invoke-virtual {v1, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 233
    invoke-virtual {v1, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 236
    iget v2, v0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 238
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 241
    invoke-virtual {v1, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 244
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 247
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 253
    move-result-object v2

    .line 254
    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_d

    .line 260
    iget-object v4, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 262
    if-eqz v4, :cond_d

    .line 264
    iget v4, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    .line 266
    invoke-virtual {v1, v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 269
    iget-object v2, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 271
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 280
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 287
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 293
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    .line 296
    move-result v2

    .line 297
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 300
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 302
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 309
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 315
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    .line 318
    move-result v2

    .line 319
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 322
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 324
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 331
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 334
    move-result-object v2

    .line 335
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 337
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    .line 340
    move-result v2

    .line 341
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 344
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 346
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 348
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 353
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 356
    move-result-object v2

    .line 357
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 359
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsStrength()I

    .line 362
    move-result v2

    .line 363
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 366
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 368
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 370
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 375
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 381
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsOffsetFactor()F

    .line 384
    move-result v2

    .line 385
    mul-float/2addr v2, v5

    .line 386
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 389
    iget-boolean v2, v0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 391
    if-eqz v2, :cond_b

    .line 393
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 395
    iget v4, v0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 397
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    .line 402
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 405
    move-result-object v2

    .line 406
    move-object v5, v2

    .line 407
    check-cast v5, Landroid/hardware/display/DisplayManagerInternal;

    .line 409
    int-to-long v7, v4

    .line 410
    const-wide/16 v9, 0x0

    .line 412
    const/4 v6, 0x0

    .line 413
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;

    .line 416
    move-result-object v2

    .line 417
    if-eqz v2, :cond_b

    .line 419
    sget-object v4, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 421
    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    .line 424
    move-result-object v5

    .line 425
    if-eqz v5, :cond_b

    .line 427
    invoke-virtual {v2}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    .line 430
    move-result-wide v5

    .line 431
    long-to-float v5, v5

    .line 432
    iget v6, v0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    .line 434
    div-float/2addr v5, v6

    .line 435
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 437
    mul-float/2addr v5, v6

    .line 438
    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    .line 441
    move-result-object v2

    .line 442
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 445
    move-result v4

    .line 446
    int-to-long v4, v4

    .line 447
    invoke-virtual {v1, v2, v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 450
    :cond_b
    invoke-virtual {v1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    .line 453
    move-result-object v1

    .line 454
    sget-boolean v2, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 456
    if-eqz v2, :cond_c

    .line 458
    const-string v2, "BrightnessTracker"

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    .line 462
    const-string v5, "Event: "

    .line 464
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1}, Landroid/hardware/display/BrightnessChangeEvent;->toString()Ljava/lang/String;

    .line 470
    move-result-object v5

    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    move-result-object v4

    .line 478
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_c
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 483
    monitor-enter v2

    .line 484
    :try_start_2
    iput-boolean v3, v0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 486
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 488
    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 491
    monitor-exit v2

    .line 492
    goto :goto_3

    .line 493
    :catchall_1
    move-exception v0

    .line 494
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 495
    throw v0

    .line 496
    :cond_d
    :try_start_3
    sget-boolean v0, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 498
    if-eqz v0, :cond_f

    .line 500
    const-string v0, "BrightnessTracker"

    .line 502
    const-string v1, "Ignoring event due to null focusedTask."

    .line 504
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 507
    goto :goto_3

    .line 508
    :goto_2
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 509
    throw v0

    .line 510
    :cond_e
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 512
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 514
    check-cast v1, Ljava/lang/Float;

    .line 516
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 519
    move-result v1

    .line 520
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mbackgroundStart(Lcom/android/server/display/BrightnessTracker;F)V

    .line 523
    :catch_0
    :cond_f
    :goto_3
    return-void
.end method
