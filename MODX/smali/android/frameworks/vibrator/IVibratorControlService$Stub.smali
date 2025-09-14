.class public abstract Landroid/frameworks/vibrator/IVibratorControlService$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/frameworks/vibrator/IVibratorControlService;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    .line 1
    const p0, 0xfffffe

    .line 4
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_4

    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_3

    .line 7
    const/4 p0, 0x3

    .line 8
    if-eq p1, p0, :cond_2

    .line 10
    const/4 p0, 0x4

    .line 11
    if-eq p1, p0, :cond_1

    .line 13
    const/4 p0, 0x5

    .line 14
    if-eq p1, p0, :cond_0

    .line 16
    packed-switch p1, :pswitch_data_0

    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :pswitch_0
    const-string/jumbo p0, "getInterfaceVersion"

    .line 24
    goto :goto_0

    .line 25
    :pswitch_1
    const-string/jumbo p0, "getInterfaceHash"

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string/jumbo p0, "onRequestVibrationParamsComplete"

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string/jumbo p0, "clearVibrationParams"

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string/jumbo p0, "setVibrationParams"

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string/jumbo p0, "unregisterVibratorController"

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    const-string/jumbo p0, "registerVibratorController"

    .line 48
    :goto_0
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    .line 1
    sget-object v0, Landroid/frameworks/vibrator/IVibratorControlService;->DESCRIPTOR:Ljava/lang/String;

    .line 3
    const v1, 0xffffff

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 9
    if-gt p1, v1, :cond_0

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 17
    if-ne p1, v3, :cond_1

    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return v2

    .line 32
    :cond_2
    const v0, 0xfffffe

    .line 35
    if-ne p1, v0, :cond_3

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    const-string/jumbo p0, "eb095ed3034973273898ca9e37bbc72566392b8a"

    .line 43
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    .line 47
    :cond_3
    if-eq p1, v2, :cond_12

    .line 49
    const/4 v0, 0x2

    .line 50
    const/4 v1, 0x0

    .line 51
    if-eq p1, v0, :cond_f

    .line 53
    const/4 v0, 0x3

    .line 54
    const/4 v3, 0x0

    .line 55
    if-eq p1, v0, :cond_a

    .line 57
    const/4 v0, 0x4

    .line 58
    if-eq p1, v0, :cond_9

    .line 60
    const/4 v0, 0x5

    .line 61
    if-eq p1, v0, :cond_4

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 71
    move-result-object p1

    .line 72
    sget-object p3, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 77
    move-result-object p3

    .line 78
    check-cast p3, [Landroid/frameworks/vibrator/VibrationParam;

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p2, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 90
    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_8

    .line 96
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 98
    monitor-enter p2

    .line 99
    :try_start_0
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 101
    if-nez p4, :cond_5

    .line 103
    const-string p1, "VibratorControlService"

    .line 105
    const-string p3, "New vibration params received but no token was cached in the service. New vibration params ignored."

    .line 107
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    const-string/jumbo p0, "vibrator.value_vibration_param_response_ignored"

    .line 118
    invoke-static {p0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 121
    monitor-exit p2

    .line 122
    goto/16 :goto_3

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_0

    .line 126
    :cond_5
    iget-object p4, p4, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    .line 128
    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_6

    .line 134
    const-string p1, "VibratorControlService"

    .line 136
    const-string p3, "New vibration params received but the provided token does not match the cached one. New vibration params ignored."

    .line 138
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    const-string/jumbo p0, "vibrator.value_vibration_param_response_ignored"

    .line 149
    invoke-static {p0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 152
    monitor-exit p2

    .line 153
    goto/16 :goto_3

    .line 155
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 158
    move-result-wide v0

    .line 159
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 161
    iget-wide v4, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uptimeMs:J

    .line 163
    sub-long/2addr v0, v4

    .line 164
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 166
    iget p1, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uid:I

    .line 168
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    sget-object p4, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 173
    long-to-float v0, v0

    .line 174
    invoke-virtual {p4, p1, v0}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 177
    if-nez p3, :cond_7

    .line 179
    const-string p0, "VibratorControlService"

    .line 181
    const-string p1, "New vibration params received but are null. New vibration params ignored."

    .line 183
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit p2

    .line 187
    goto/16 :goto_3

    .line 189
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 192
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 195
    invoke-virtual {p0, p3, v2}, Lcom/android/server/vibrator/VibratorControlService;->recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V

    .line 198
    monitor-exit p2

    .line 199
    goto/16 :goto_3

    .line 201
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    throw p0

    .line 203
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 205
    const-string p1, "Invalid vibration params received: null values are not permitted."

    .line 207
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    throw p0

    .line 211
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 214
    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 218
    move-result-object p3

    .line 219
    invoke-static {p3}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    .line 222
    move-result-object p3

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 228
    invoke-virtual {p0, p1, p3}, Lcom/android/server/vibrator/VibratorControlService;->clearVibrationParams(ILandroid/frameworks/vibrator/IVibratorController;)V

    .line 231
    goto/16 :goto_3

    .line 233
    :cond_a
    sget-object p1, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 235
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 238
    move-result-object p1

    .line 239
    check-cast p1, [Landroid/frameworks/vibrator/VibrationParam;

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 244
    move-result-object p3

    .line 245
    invoke-static {p3}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    .line 248
    move-result-object p3

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 254
    const-string p2, "Failed to set new VibrationParams. The provided controller doesn\'t match the registered one. "

    .line 256
    const-string p4, "Received request to set VibrationParams for IVibratorController = "

    .line 258
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 263
    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_e

    .line 269
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 271
    monitor-enter v0

    .line 272
    :try_start_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 274
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 276
    if-nez v1, :cond_b

    .line 278
    const-string p0, "VibratorControlService"

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    const-string p2, ", but no controller was previously registered. Request Ignored."

    .line 290
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object p1

    .line 297
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v0

    .line 301
    goto/16 :goto_3

    .line 303
    :catchall_1
    move-exception p0

    .line 304
    goto :goto_1

    .line 305
    :cond_b
    check-cast v1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 307
    iget-object p4, v1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 309
    check-cast p3, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 311
    iget-object p3, p3, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 313
    invoke-static {p4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    move-result p3

    .line 317
    if-nez p3, :cond_c

    .line 319
    const-string p1, "VibratorControlService"

    .line 321
    new-instance p3, Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object p0

    .line 333
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit v0

    .line 337
    goto/16 :goto_3

    .line 339
    :cond_c
    if-nez p1, :cond_d

    .line 341
    const-string p0, "VibratorControlService"

    .line 343
    const-string p1, "New vibration params received but are null. New vibration params ignored."

    .line 345
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    monitor-exit v0

    .line 349
    goto/16 :goto_3

    .line 351
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 354
    invoke-virtual {p0, p1, v3}, Lcom/android/server/vibrator/VibratorControlService;->recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V

    .line 357
    monitor-exit v0

    .line 358
    goto/16 :goto_3

    .line 360
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    throw p0

    .line 362
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 364
    const-string p1, "Invalid vibration params received: null values are not permitted."

    .line 366
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 369
    throw p0

    .line 370
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 373
    move-result-object p1

    .line 374
    invoke-static {p1}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 383
    const-string p2, "Failed to unregister IVibratorController. The provided controller doesn\'t match the registered one. "

    .line 385
    const-string p3, "Received request to unregister IVibratorController = "

    .line 387
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 392
    monitor-enter p4

    .line 393
    :try_start_2
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 395
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 397
    if-nez v0, :cond_10

    .line 399
    const-string p0, "VibratorControlService"

    .line 401
    new-instance p2, Ljava/lang/StringBuilder;

    .line 403
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    const-string p1, ", but no controller was previously registered. Request Ignored."

    .line 411
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object p1

    .line 418
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    monitor-exit p4

    .line 422
    goto :goto_3

    .line 423
    :catchall_2
    move-exception p0

    .line 424
    goto :goto_2

    .line 425
    :cond_10
    check-cast v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 427
    iget-object p3, v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 429
    check-cast p1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 431
    iget-object p1, p1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 433
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    move-result p1

    .line 437
    if-nez p1, :cond_11

    .line 439
    const-string p1, "VibratorControlService"

    .line 441
    new-instance p3, Ljava/lang/StringBuilder;

    .line 443
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    move-result-object p0

    .line 453
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    monitor-exit p4

    .line 457
    goto :goto_3

    .line 458
    :cond_11
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 460
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 462
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 465
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 467
    invoke-virtual {p1, v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    .line 470
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 473
    monitor-exit p4

    .line 474
    goto :goto_3

    .line 475
    :goto_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 476
    throw p0

    .line 477
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 480
    move-result-object p1

    .line 481
    invoke-static {p1}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    .line 484
    move-result-object p1

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 495
    monitor-enter p2

    .line 496
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    .line 501
    monitor-exit p2

    .line 502
    :goto_3
    return v2

    .line 503
    :catchall_3
    move-exception p0

    .line 504
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 505
    throw p0
.end method
