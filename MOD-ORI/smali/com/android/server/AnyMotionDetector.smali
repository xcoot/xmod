.class public final Lcom/android/server/AnyMotionDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAccelSensor:Landroid/hardware/Sensor;

.field public final mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

.field public mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/AnyMotionDetector$1;

.field public final mLock:Ljava/lang/Object;

.field public mMeasurementInProgress:Z

.field public final mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

.field public mMeasurementTimeoutIsActive:Z

.field public final mNumSufficientSamples:I

.field public mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field public final mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorRestart:Lcom/android/server/AnyMotionDetector$2;

.field public mSensorRestartIsActive:Z

.field public mState:I

.field public final mThresholdAngle:F

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

.field public volatile mWakelockTimeoutIsActive:Z


# direct methods
.method public static -$$Nest$mstopOrientationMeasurementLocked(Lcom/android/server/AnyMotionDetector;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    .line 4
    .line 5
    const-string v2, "AnyMotionDetector"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v4, "stopOrientationMeasurement. mMeasurementInProgress="

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v4, v0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 18
    .line 19
    invoke-static {v2, v3, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-boolean v3, v0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 23
    .line 24
    const/4 v4, -0x1

    .line 25
    if-eqz v3, :cond_11

    .line 26
    .line 27
    iget-object v3, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v5, v0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 30
    .line 31
    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    iput-boolean v3, v0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 36
    .line 37
    iget-object v5, v0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 38
    .line 39
    iget-object v6, v0, Lcom/android/server/AnyMotionDetector;->mListener:Lcom/android/server/AnyMotionDetector$1;

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 42
    .line 43
    .line 44
    iput-boolean v3, v0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 45
    .line 46
    iget-object v5, v0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 47
    .line 48
    iput-object v5, v0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 49
    .line 50
    iget-object v5, v0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 51
    .line 52
    iget v6, v5, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 53
    .line 54
    if-lez v6, :cond_1

    .line 55
    .line 56
    iget-object v5, v5, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 57
    .line 58
    const/high16 v7, 0x3f800000    # 1.0f

    .line 59
    .line 60
    int-to-float v8, v6

    .line 61
    div-float/2addr v7, v8

    .line 62
    new-instance v14, Lcom/android/server/AnyMotionDetector$Vector3;

    .line 63
    .line 64
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 65
    .line 66
    mul-float v9, v8, v7

    .line 67
    .line 68
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 69
    .line 70
    mul-float v10, v8, v7

    .line 71
    .line 72
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 73
    .line 74
    mul-float v11, v8, v7

    .line 75
    .line 76
    iget-wide v12, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 77
    .line 78
    move-object v8, v14

    .line 79
    invoke-direct/range {v8 .. v13}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(FFFJ)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v14, 0x0

    .line 84
    :goto_0
    iput-object v14, v0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 85
    .line 86
    if-nez v6, :cond_2

    .line 87
    .line 88
    const-string v5, "No accelerometer data acquired for orientation measurement."

    .line 89
    .line 90
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_2
    if-eqz v1, :cond_5

    .line 94
    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v6, "mRunningStats = "

    .line 98
    .line 99
    .line 100
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v6, v0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 104
    .line 105
    invoke-virtual {v6}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object v5, v0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 120
    .line 121
    const-string/jumbo v6, "null"

    .line 122
    .line 123
    .line 124
    if-nez v5, :cond_3

    .line 125
    .line 126
    move-object v5, v6

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    :goto_1
    iget-object v7, v0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 133
    .line 134
    if-nez v7, :cond_4

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string/jumbo v8, "mCurrentGravityVector = "

    .line 144
    .line 145
    .line 146
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string/jumbo v7, "mPreviousGravityVector = "

    .line 162
    .line 163
    .line 164
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :cond_5
    iget-object v5, v0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 178
    .line 179
    const/4 v6, 0x1

    .line 180
    if-eqz v5, :cond_b

    .line 181
    .line 182
    iget-object v7, v0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 183
    .line 184
    if-nez v7, :cond_6

    .line 185
    .line 186
    goto/16 :goto_3

    .line 187
    .line 188
    :cond_6
    iget v7, v5, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 189
    .line 190
    mul-float/2addr v7, v7

    .line 191
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 192
    .line 193
    mul-float/2addr v8, v8

    .line 194
    add-float/2addr v8, v7

    .line 195
    iget v7, v5, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 196
    .line 197
    mul-float/2addr v7, v7

    .line 198
    add-float/2addr v7, v8

    .line 199
    float-to-double v7, v7

    .line 200
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 201
    .line 202
    .line 203
    move-result-wide v7

    .line 204
    double-to-float v7, v7

    .line 205
    new-instance v14, Lcom/android/server/AnyMotionDetector$Vector3;

    .line 206
    .line 207
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 208
    .line 209
    div-float v9, v8, v7

    .line 210
    .line 211
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 212
    .line 213
    div-float v10, v8, v7

    .line 214
    .line 215
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 216
    .line 217
    div-float v11, v8, v7

    .line 218
    .line 219
    iget-wide v12, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 220
    .line 221
    move-object v8, v14

    .line 222
    invoke-direct/range {v8 .. v13}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(FFFJ)V

    .line 223
    .line 224
    .line 225
    iget-object v5, v0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 226
    .line 227
    iget v7, v5, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 228
    .line 229
    mul-float/2addr v7, v7

    .line 230
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 231
    .line 232
    mul-float/2addr v8, v8

    .line 233
    add-float/2addr v8, v7

    .line 234
    iget v7, v5, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 235
    .line 236
    mul-float/2addr v7, v7

    .line 237
    add-float/2addr v7, v8

    .line 238
    float-to-double v7, v7

    .line 239
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 240
    .line 241
    .line 242
    move-result-wide v7

    .line 243
    double-to-float v7, v7

    .line 244
    new-instance v15, Lcom/android/server/AnyMotionDetector$Vector3;

    .line 245
    .line 246
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 247
    .line 248
    div-float v16, v8, v7

    .line 249
    .line 250
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 251
    .line 252
    div-float v17, v8, v7

    .line 253
    .line 254
    iget v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 255
    .line 256
    div-float v7, v8, v7

    .line 257
    .line 258
    iget-wide v12, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 259
    .line 260
    move-object v8, v15

    .line 261
    move/from16 v9, v16

    .line 262
    .line 263
    move/from16 v10, v17

    .line 264
    .line 265
    move v11, v7

    .line 266
    invoke-direct/range {v8 .. v13}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(FFFJ)V

    .line 267
    .line 268
    .line 269
    iget v5, v14, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 270
    .line 271
    mul-float v8, v5, v7

    .line 272
    .line 273
    iget v9, v14, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 274
    .line 275
    mul-float v10, v9, v17

    .line 276
    .line 277
    sub-float/2addr v8, v10

    .line 278
    mul-float v9, v9, v16

    .line 279
    .line 280
    iget v10, v14, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 281
    .line 282
    mul-float/2addr v7, v10

    .line 283
    sub-float/2addr v9, v7

    .line 284
    mul-float v10, v10, v17

    .line 285
    .line 286
    mul-float v5, v5, v16

    .line 287
    .line 288
    sub-float/2addr v10, v5

    .line 289
    mul-float/2addr v8, v8

    .line 290
    mul-float/2addr v9, v9

    .line 291
    add-float/2addr v9, v8

    .line 292
    mul-float/2addr v10, v10

    .line 293
    add-float/2addr v10, v9

    .line 294
    float-to-double v7, v10

    .line 295
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 296
    .line 297
    .line 298
    move-result-wide v7

    .line 299
    double-to-float v5, v7

    .line 300
    float-to-double v7, v5

    .line 301
    iget v5, v15, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 302
    .line 303
    iget v9, v14, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 304
    .line 305
    mul-float/2addr v9, v5

    .line 306
    iget v5, v14, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 307
    .line 308
    iget v10, v15, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 309
    .line 310
    mul-float/2addr v5, v10

    .line 311
    add-float/2addr v5, v9

    .line 312
    iget v9, v14, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 313
    .line 314
    iget v10, v15, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 315
    .line 316
    mul-float/2addr v9, v10

    .line 317
    add-float/2addr v9, v5

    .line 318
    float-to-double v9, v9

    .line 319
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 320
    .line 321
    .line 322
    move-result-wide v7

    .line 323
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    .line 324
    .line 325
    .line 326
    move-result-wide v7

    .line 327
    double-to-float v5, v7

    .line 328
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v8, "angleBetween: this = "

    .line 335
    .line 336
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v14}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v8, ", other = "

    .line 347
    .line 348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v15}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v8, ", degrees = "

    .line 359
    .line 360
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-static {v7, v5, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v7, v0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 367
    .line 368
    if-eqz v1, :cond_7

    .line 369
    .line 370
    new-instance v8, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string/jumbo v9, "getStationaryStatus: angle = "

    .line 373
    .line 374
    .line 375
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v9, " energy = "

    .line 382
    .line 383
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget v9, v7, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 387
    .line 388
    invoke-static {v8, v9, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_7
    iget v8, v0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    .line 392
    .line 393
    cmpg-float v8, v5, v8

    .line 394
    .line 395
    if-gez v8, :cond_8

    .line 396
    .line 397
    iget v7, v7, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 398
    .line 399
    const/high16 v8, 0x40a00000    # 5.0f

    .line 400
    .line 401
    cmpg-float v7, v7, v8

    .line 402
    .line 403
    if-gez v7, :cond_8

    .line 404
    .line 405
    move v5, v3

    .line 406
    goto :goto_4

    .line 407
    :cond_8
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    if-eqz v5, :cond_a

    .line 412
    .line 413
    :cond_9
    move v5, v6

    .line 414
    goto :goto_4

    .line 415
    :cond_a
    iget-object v5, v0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 416
    .line 417
    iget-wide v7, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 418
    .line 419
    iget-object v5, v0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 420
    .line 421
    iget-wide v9, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 422
    .line 423
    sub-long/2addr v7, v9

    .line 424
    const-wide/32 v9, 0x1d4c0

    .line 425
    .line 426
    .line 427
    cmp-long v5, v7, v9

    .line 428
    .line 429
    if-lez v5, :cond_9

    .line 430
    .line 431
    if-eqz v1, :cond_b

    .line 432
    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    const-string/jumbo v9, "getStationaryStatus: mPreviousGravityVector is too stale at "

    .line 436
    .line 437
    .line 438
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v7, " ms ago. Returning RESULT_UNKNOWN."

    .line 445
    .line 446
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    :cond_b
    :goto_3
    move v5, v4

    .line 457
    :goto_4
    iget-object v7, v0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 458
    .line 459
    invoke-virtual {v7}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 460
    .line 461
    .line 462
    if-eqz v1, :cond_c

    .line 463
    .line 464
    const-string/jumbo v7, "getStationaryStatus() returned "

    .line 465
    .line 466
    .line 467
    invoke-static {v5, v7, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    :cond_c
    if-eq v5, v4, :cond_f

    .line 471
    .line 472
    iget-object v4, v0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 473
    .line 474
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    if-eqz v4, :cond_d

    .line 479
    .line 480
    iget-object v4, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 481
    .line 482
    iget-object v6, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 483
    .line 484
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    .line 486
    .line 487
    iput-boolean v3, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 488
    .line 489
    iget-object v4, v0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 490
    .line 491
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 492
    .line 493
    .line 494
    :cond_d
    if-eqz v1, :cond_e

    .line 495
    .line 496
    const-string v1, "Moved from STATE_ACTIVE to STATE_INACTIVE. status = "

    .line 497
    .line 498
    invoke-static {v5, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    :cond_e
    iput v3, v0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 502
    .line 503
    goto :goto_5

    .line 504
    :cond_f
    if-eqz v1, :cond_10

    .line 505
    .line 506
    const-string/jumbo v1, "stopOrientationMeasurementLocked(): another measurement scheduled in 5000 milliseconds."

    .line 507
    .line 508
    .line 509
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    :cond_10
    iget-object v1, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 513
    .line 514
    iget-object v2, v0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Lcom/android/server/AnyMotionDetector$2;

    .line 515
    .line 516
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    iget-object v2, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 521
    .line 522
    const-wide/16 v3, 0x1388

    .line 523
    .line 524
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 525
    .line 526
    .line 527
    iput-boolean v6, v0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 528
    .line 529
    :goto_5
    move v4, v5

    .line 530
    :cond_11
    return v4
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "AnyMotionDetector"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V
    .locals 5

    .line 1
    const-string/jumbo v0, "mNumSufficientSamples = "

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/AnyMotionDetector$1;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/android/server/AnyMotionDetector$1;-><init>(Lcom/android/server/AnyMotionDetector;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Lcom/android/server/AnyMotionDetector$1;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/AnyMotionDetector$2;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, p0, v3}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;I)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Lcom/android/server/AnyMotionDetector$2;

    .line 33
    .line 34
    new-instance v2, Lcom/android/server/AnyMotionDetector$2;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v2, p0, v3}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;I)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 41
    .line 42
    new-instance v2, Lcom/android/server/AnyMotionDetector$2;

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-direct {v2, p0, v3}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;I)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 49
    .line 50
    sget-boolean v2, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    const-string v3, "AnyMotionDetector"

    .line 55
    .line 56
    const-string v4, "AnyMotionDetector instantiated."

    .line 57
    .line 58
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    monitor-enter v1

    .line 62
    :try_start_0
    const-string v3, "AnyMotionDetector"

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual {p1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 76
    .line 77
    iput-object p3, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 78
    .line 79
    invoke-virtual {p3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    .line 84
    .line 85
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 86
    .line 87
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 88
    .line 89
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 90
    .line 91
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 92
    .line 93
    iput v3, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 94
    .line 95
    iput-object p4, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    .line 96
    .line 97
    iput p5, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    .line 98
    .line 99
    new-instance p1, Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 108
    .line 109
    const-wide p1, 0x404f400000000000L    # 62.5

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 115
    .line 116
    .line 117
    move-result-wide p1

    .line 118
    double-to-int p1, p1

    .line 119
    iput p1, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    .line 120
    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    const-string p0, "AnyMotionDetector"

    .line 124
    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    monitor-exit v1

    .line 144
    return-void

    .line 145
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p0
.end method


# virtual methods
.method public final startOrientationMeasurementLocked()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "startOrientationMeasurementLocked: mMeasurementInProgress="

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", (mAccelSensor != null)="

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move v2, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    :goto_0
    const-string v3, "AnyMotionDetector"

    .line 32
    .line 33
    invoke-static {v3, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mListener:Lcom/android/server/AnyMotionDetector$1;

    .line 47
    .line 48
    const v4, 0x9c40

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 67
    .line 68
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-wide/16 v3, 0xbb8

    .line 73
    .line 74
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 75
    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iput v3, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 11
    .line 12
    sget-boolean v1, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "AnyMotionDetector"

    .line 17
    .line 18
    const-string v2, "Moved from STATE_ACTIVE to STATE_INACTIVE."

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Lcom/android/server/AnyMotionDetector$2;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 41
    .line 42
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Lcom/android/server/AnyMotionDetector$1;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 82
    .line 83
    .line 84
    :cond_2
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method
