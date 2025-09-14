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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    if-eqz v2, :cond_e

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v2, v3, :cond_5

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v2, v3, :cond_4

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq v2, v3, :cond_3

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    if-eq v2, v3, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x5

    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 27
    .line 28
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Landroid/hardware/Sensor;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 33
    .line 34
    if-eq v2, v1, :cond_f

    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_1
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 47
    .line 48
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput-boolean v1, v2, Lcom/android/server/display/BrightnessTracker;->mShouldCollectColorSample:Z

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 59
    .line 60
    iget-boolean v1, v0, Lcom/android/server/display/BrightnessTracker;->mShouldCollectColorSample:Z

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-boolean v2, v0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_2
    if-nez v1, :cond_f

    .line 74
    .line 75
    iget-boolean v1, v0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 76
    .line 77
    if-eqz v1, :cond_f

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_3
    iget-object v1, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 87
    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_4
    iget-object v1, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 99
    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 111
    .line 112
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    if-ne v1, v3, :cond_6

    .line 116
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

    .line 121
    .line 122
    iget v5, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    .line 123
    .line 124
    iget v6, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    .line 125
    .line 126
    iget-boolean v7, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->wasShortTermModelActive:Z

    .line 127
    .line 128
    iget-boolean v8, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    .line 129
    .line 130
    iget-wide v9, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    .line 131
    .line 132
    iget-object v11, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v12, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxValues:[F

    .line 135
    .line 136
    iget-object v2, v2, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxTimestamps:[J

    .line 137
    .line 138
    iget-object v13, v0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter v13

    .line 141
    :try_start_0
    iget-boolean v14, v0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 142
    .line 143
    if-nez v14, :cond_7

    .line 144
    .line 145
    monitor-exit v13

    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :catchall_0
    move-exception v0

    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_7
    iget v14, v0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 152
    .line 153
    iput v5, v0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 154
    .line 155
    if-nez v1, :cond_8

    .line 156
    .line 157
    monitor-exit v13

    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :cond_8
    new-instance v1, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 161
    .line 162
    invoke-direct {v1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 181
    .line 182
    .line 183
    array-length v6, v12

    .line 184
    if-nez v6, :cond_9

    .line 185
    .line 186
    monitor-exit v13

    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :cond_9
    array-length v6, v2

    .line 190
    new-array v6, v6, [J

    .line 191
    .line 192
    iget-object v7, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 193
    .line 194
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v7

    .line 201
    iget-object v9, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 202
    .line 203
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    :goto_1
    array-length v11, v2

    .line 211
    if-ge v4, v11, :cond_a

    .line 212
    .line 213
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 214
    .line 215
    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 216
    .line 217
    .line 218
    move-result-wide v15

    .line 219
    aget-wide v17, v2, v4

    .line 220
    .line 221
    sub-long v15, v15, v17

    .line 222
    .line 223
    sub-long v15, v7, v15

    .line 224
    .line 225
    aput-wide v15, v6, v4

    .line 226
    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_a
    invoke-virtual {v1, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 234
    .line 235
    .line 236
    iget v2, v0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 242
    .line 243
    .line 244
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_d

    .line 259
    .line 260
    iget-object v4, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 261
    .line 262
    if-eqz v4, :cond_d

    .line 263
    .line 264
    iget v4, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    .line 265
    .line 266
    invoke-virtual {v1, v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 267
    .line 268
    .line 269
    iget-object v2, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    .line 277
    .line 278
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 279
    .line 280
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 286
    .line 287
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 292
    .line 293
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 298
    .line 299
    .line 300
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 301
    .line 302
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 308
    .line 309
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 314
    .line 315
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 320
    .line 321
    .line 322
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 323
    .line 324
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 330
    .line 331
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 336
    .line 337
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 342
    .line 343
    .line 344
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 345
    .line 346
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 352
    .line 353
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 358
    .line 359
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsStrength()I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 364
    .line 365
    .line 366
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 367
    .line 368
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 374
    .line 375
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    .line 380
    .line 381
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsOffsetFactor()F

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    mul-float/2addr v2, v5

    .line 386
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 387
    .line 388
    .line 389
    iget-boolean v2, v0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 390
    .line 391
    if-eqz v2, :cond_b

    .line 392
    .line 393
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 394
    .line 395
    iget v4, v0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    .line 401
    .line 402
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    move-object v5, v2

    .line 407
    check-cast v5, Landroid/hardware/display/DisplayManagerInternal;

    .line 408
    .line 409
    int-to-long v7, v4

    .line 410
    const-wide/16 v9, 0x0

    .line 411
    .line 412
    const/4 v6, 0x0

    .line 413
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    if-eqz v2, :cond_b

    .line 418
    .line 419
    sget-object v4, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 420
    .line 421
    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    if-eqz v5, :cond_b

    .line 426
    .line 427
    invoke-virtual {v2}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    .line 428
    .line 429
    .line 430
    move-result-wide v5

    .line 431
    long-to-float v5, v5

    .line 432
    iget v6, v0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    .line 433
    .line 434
    div-float/2addr v5, v6

    .line 435
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 436
    .line 437
    mul-float/2addr v5, v6

    .line 438
    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    int-to-long v4, v4

    .line 447
    invoke-virtual {v1, v2, v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 448
    .line 449
    .line 450
    :cond_b
    invoke-virtual {v1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    sget-boolean v2, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 455
    .line 456
    if-eqz v2, :cond_c

    .line 457
    .line 458
    const-string v2, "BrightnessTracker"

    .line 459
    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v5, "Event: "

    .line 463
    .line 464
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Landroid/hardware/display/BrightnessChangeEvent;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    :cond_c
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 482
    .line 483
    monitor-enter v2

    .line 484
    :try_start_2
    iput-boolean v3, v0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 485
    .line 486
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 487
    .line 488
    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 489
    .line 490
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

    .line 497
    .line 498
    if-eqz v0, :cond_f

    .line 499
    .line 500
    const-string v0, "BrightnessTracker"

    .line 501
    .line 502
    const-string v1, "Ignoring event due to null focusedTask."

    .line 503
    .line 504
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 505
    .line 506
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

    .line 511
    .line 512
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v1, Ljava/lang/Float;

    .line 515
    .line 516
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mbackgroundStart(Lcom/android/server/display/BrightnessTracker;F)V

    .line 521
    .line 522
    .line 523
    :catch_0
    :cond_f
    :goto_3
    return-void
.end method
