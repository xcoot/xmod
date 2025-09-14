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

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_4

    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_3

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    if-eq p1, p0, :cond_2

    .line 9
    .line 10
    const/4 p0, 0x4

    .line 11
    if-eq p1, p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x5

    .line 14
    if-eq p1, p0, :cond_0

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :pswitch_0
    const-string/jumbo p0, "getInterfaceVersion"

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_1
    const-string/jumbo p0, "getInterfaceHash"

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string/jumbo p0, "onRequestVibrationParamsComplete"

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string/jumbo p0, "clearVibrationParams"

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string/jumbo p0, "setVibrationParams"

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string/jumbo p0, "unregisterVibratorController"

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    const-string/jumbo p0, "registerVibratorController"

    .line 46
    .line 47
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

    .line 2
    .line 3
    const v1, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    const v0, 0xfffffe

    .line 33
    .line 34
    .line 35
    if-ne p1, v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p0, "eb095ed3034973273898ca9e37bbc72566392b8a"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    if-eq p1, v2, :cond_12

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    const/4 v1, 0x0

    .line 51
    if-eq p1, v0, :cond_f

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    const/4 v3, 0x0

    .line 55
    if-eq p1, v0, :cond_a

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    if-eq p1, v0, :cond_9

    .line 59
    .line 60
    const/4 v0, 0x5

    .line 61
    if-eq p1, v0, :cond_4

    .line 62
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object p3, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, [Landroid/frameworks/vibrator/VibrationParam;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    .line 82
    .line 83
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 84
    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    sget-object p2, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 89
    .line 90
    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_8

    .line 95
    .line 96
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter p2

    .line 99
    :try_start_0
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 100
    .line 101
    if-nez p4, :cond_5

    .line 102
    .line 103
    const-string p1, "VibratorControlService"

    .line 104
    .line 105
    const-string p3, "New vibration params received but no token was cached in the service. New vibration params ignored."

    .line 106
    .line 107
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    const-string/jumbo p0, "vibrator.value_vibration_param_response_ignored"

    .line 116
    .line 117
    .line 118
    invoke-static {p0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    monitor-exit p2

    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_0

    .line 126
    :cond_5
    iget-object p4, p4, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    .line 127
    .line 128
    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_6

    .line 133
    .line 134
    const-string p1, "VibratorControlService"

    .line 135
    .line 136
    const-string p3, "New vibration params received but the provided token does not match the cached one. New vibration params ignored."

    .line 137
    .line 138
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    const-string/jumbo p0, "vibrator.value_vibration_param_response_ignored"

    .line 147
    .line 148
    .line 149
    invoke-static {p0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    monitor-exit p2

    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 160
    .line 161
    iget-wide v4, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uptimeMs:J

    .line 162
    .line 163
    sub-long/2addr v0, v4

    .line 164
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 165
    .line 166
    iget p1, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uid:I

    .line 167
    .line 168
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    sget-object p4, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 172
    .line 173
    long-to-float v0, v0

    .line 174
    invoke-virtual {p4, p1, v0}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 175
    .line 176
    .line 177
    if-nez p3, :cond_7

    .line 178
    .line 179
    const-string p0, "VibratorControlService"

    .line 180
    .line 181
    const-string p1, "New vibration params received but are null. New vibration params ignored."

    .line 182
    .line 183
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    monitor-exit p2

    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p3, v2}, Lcom/android/server/vibrator/VibratorControlService;->recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V

    .line 196
    .line 197
    .line 198
    monitor-exit p2

    .line 199
    goto/16 :goto_3

    .line 200
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

    .line 204
    .line 205
    const-string p1, "Invalid vibration params received: null values are not permitted."

    .line 206
    .line 207
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    invoke-static {p3}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    .line 225
    .line 226
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 227
    .line 228
    invoke-virtual {p0, p1, p3}, Lcom/android/server/vibrator/VibratorControlService;->clearVibrationParams(ILandroid/frameworks/vibrator/IVibratorController;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :cond_a
    sget-object p1, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, [Landroid/frameworks/vibrator/VibrationParam;

    .line 240
    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    invoke-static {p3}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    .line 251
    .line 252
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 253
    .line 254
    const-string p2, "Failed to set new VibrationParams. The provided controller doesn\'t match the registered one. "

    .line 255
    .line 256
    const-string p4, "Received request to set VibrationParams for IVibratorController = "

    .line 257
    .line 258
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    sget-object v0, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 262
    .line 263
    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_e

    .line 268
    .line 269
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 270
    .line 271
    monitor-enter v0

    .line 272
    :try_start_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 273
    .line 274
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 275
    .line 276
    if-nez v1, :cond_b

    .line 277
    .line 278
    const-string p0, "VibratorControlService"

    .line 279
    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string p2, ", but no controller was previously registered. Request Ignored."

    .line 289
    .line 290
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    monitor-exit v0

    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :catchall_1
    move-exception p0

    .line 304
    goto :goto_1

    .line 305
    :cond_b
    check-cast v1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 306
    .line 307
    iget-object p4, v1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 308
    .line 309
    check-cast p3, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 310
    .line 311
    iget-object p3, p3, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 312
    .line 313
    invoke-static {p4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p3

    .line 317
    if-nez p3, :cond_c

    .line 318
    .line 319
    const-string p1, "VibratorControlService"

    .line 320
    .line 321
    new-instance p3, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    monitor-exit v0

    .line 337
    goto/16 :goto_3

    .line 338
    .line 339
    :cond_c
    if-nez p1, :cond_d

    .line 340
    .line 341
    const-string p0, "VibratorControlService"

    .line 342
    .line 343
    const-string p1, "New vibration params received but are null. New vibration params ignored."

    .line 344
    .line 345
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    monitor-exit v0

    .line 349
    goto/16 :goto_3

    .line 350
    .line 351
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, p1, v3}, Lcom/android/server/vibrator/VibratorControlService;->recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V

    .line 355
    .line 356
    .line 357
    monitor-exit v0

    .line 358
    goto/16 :goto_3

    .line 359
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

    .line 363
    .line 364
    const-string p1, "Invalid vibration params received: null values are not permitted."

    .line 365
    .line 366
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw p0

    .line 370
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {p1}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    .line 380
    .line 381
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 382
    .line 383
    const-string p2, "Failed to unregister IVibratorController. The provided controller doesn\'t match the registered one. "

    .line 384
    .line 385
    const-string p3, "Received request to unregister IVibratorController = "

    .line 386
    .line 387
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 391
    .line 392
    monitor-enter p4

    .line 393
    :try_start_2
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 394
    .line 395
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 396
    .line 397
    if-nez v0, :cond_10

    .line 398
    .line 399
    const-string p0, "VibratorControlService"

    .line 400
    .line 401
    new-instance p2, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string p1, ", but no controller was previously registered. Request Ignored."

    .line 410
    .line 411
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
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

    .line 426
    .line 427
    iget-object p3, v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 428
    .line 429
    check-cast p1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 430
    .line 431
    iget-object p1, p1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 432
    .line 433
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    if-nez p1, :cond_11

    .line 438
    .line 439
    const-string p1, "VibratorControlService"

    .line 440
    .line 441
    new-instance p3, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p0

    .line 453
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    monitor-exit p4

    .line 457
    goto :goto_3

    .line 458
    :cond_11
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 459
    .line 460
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 461
    .line 462
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 463
    .line 464
    .line 465
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 466
    .line 467
    invoke-virtual {p1, v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 471
    .line 472
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

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    invoke-static {p1}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    .line 487
    .line 488
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService;

    .line 489
    .line 490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 494
    .line 495
    monitor-enter p2

    .line 496
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 497
    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    .line 499
    .line 500
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
