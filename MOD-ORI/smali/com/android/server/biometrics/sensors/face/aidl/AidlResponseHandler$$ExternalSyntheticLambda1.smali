.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, "AidlResponseHandler"

    .line 15
    .line 16
    const-string p1, "Received null enrollment frame for face enroll client."

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->cell:Landroid/hardware/biometrics/face/Cell;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Landroid/hardware/face/FaceEnrollCell;

    .line 32
    .line 33
    iget v3, v1, Landroid/hardware/biometrics/face/Cell;->x:I

    .line 34
    .line 35
    iget v4, v1, Landroid/hardware/biometrics/face/Cell;->y:I

    .line 36
    .line 37
    iget v1, v1, Landroid/hardware/biometrics/face/Cell;->z:I

    .line 38
    .line 39
    invoke-direct {v2, v3, v4, v1}, Landroid/hardware/face/FaceEnrollCell;-><init>(III)V

    .line 40
    .line 41
    .line 42
    move-object v1, v2

    .line 43
    :goto_0
    iget-byte v2, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->stage:B

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    packed-switch v2, :pswitch_data_1

    .line 47
    .line 48
    .line 49
    packed-switch v2, :pswitch_data_2

    .line 50
    .line 51
    .line 52
    packed-switch v2, :pswitch_data_3

    .line 53
    .line 54
    .line 55
    move v2, v3

    .line 56
    goto :goto_1

    .line 57
    :pswitch_0
    const/16 v2, 0x72

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_1
    const/16 v2, 0x71

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_2
    const/16 v2, 0x70

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :pswitch_3
    const/16 v2, 0x6f

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_4
    const/16 v2, 0x6e

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_5
    const/16 v2, 0x68

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_6
    const/16 v2, 0x67

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_7
    const/16 v2, 0x66

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_8
    const/16 v2, 0x65

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :pswitch_9
    const/16 v2, 0x64

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_a
    const/4 v2, 0x6

    .line 88
    goto :goto_1

    .line 89
    :pswitch_b
    const/4 v2, 0x5

    .line 90
    goto :goto_1

    .line 91
    :pswitch_c
    const/4 v2, 0x4

    .line 92
    goto :goto_1

    .line 93
    :pswitch_d
    const/4 v2, 0x3

    .line 94
    goto :goto_1

    .line 95
    :pswitch_e
    const/4 v2, 0x2

    .line 96
    goto :goto_1

    .line 97
    :pswitch_f
    const/4 v2, 0x1

    .line 98
    :goto_1
    iget-object p0, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 99
    .line 100
    new-instance v11, Landroid/hardware/face/FaceDataFrame;

    .line 101
    .line 102
    iget-byte v4, p0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 103
    .line 104
    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    iget v6, p0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 109
    .line 110
    iget v7, p0, Landroid/hardware/biometrics/face/BaseFrame;->pan:F

    .line 111
    .line 112
    iget v8, p0, Landroid/hardware/biometrics/face/BaseFrame;->tilt:F

    .line 113
    .line 114
    iget v9, p0, Landroid/hardware/biometrics/face/BaseFrame;->distance:F

    .line 115
    .line 116
    iget-boolean v10, p0, Landroid/hardware/biometrics/face/BaseFrame;->isCancellable:Z

    .line 117
    .line 118
    move-object v4, v11

    .line 119
    invoke-direct/range {v4 .. v10}, Landroid/hardware/face/FaceDataFrame;-><init>(IIFFFZ)V

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, v1, v2, v11}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    invoke-virtual {v0}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {p1, p0, v1, v3}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 145
    .line 146
    .line 147
    const/16 v2, 0x16

    .line 148
    .line 149
    if-ne p0, v2, :cond_2

    .line 150
    .line 151
    iget-object v4, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    .line 152
    .line 153
    invoke-static {v1, v4}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-nez v4, :cond_4

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    iget-object v4, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    .line 161
    .line 162
    invoke-static {p0, v4}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_4

    .line 167
    .line 168
    :goto_2
    if-ne p0, v2, :cond_3

    .line 169
    .line 170
    add-int/lit16 v2, v1, 0x3e8

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_3
    move v2, p0

    .line 174
    :goto_3
    :try_start_0
    iget-object v4, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {v4, p0, v1}, Landroid/hardware/face/FaceManager;->getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    iget-object v1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 181
    .line 182
    new-instance v4, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    .line 183
    .line 184
    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 185
    .line 186
    iget v6, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    .line 187
    .line 188
    invoke-static {v6}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    invoke-direct {v4, v5, v6, p0, v2}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {v1, p0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    .line 200
    .line 201
    .line 202
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 205
    .line 206
    if-eqz p0, :cond_4

    .line 207
    .line 208
    invoke-interface {p0, v0}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :catch_0
    move-exception p0

    .line 213
    const-string v0, "FaceEnrollClient"

    .line 214
    .line 215
    const-string v1, "Failed to send enrollment frame"

    .line 216
    .line 217
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .line 219
    .line 220
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 221
    .line 222
    invoke-interface {p0, p1, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 223
    .line 224
    .line 225
    :cond_4
    :goto_4
    return-void

    .line 226
    :pswitch_10
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 227
    .line 228
    check-cast p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 229
    .line 230
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 231
    .line 232
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 233
    .line 234
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 235
    .line 236
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 237
    .line 238
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 239
    .line 240
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    const-wide/16 v4, -0x1

    .line 245
    .line 246
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->resetLockoutFor(IIJ)V

    .line 247
    .line 248
    .line 249
    const/4 p0, 0x0

    .line 250
    invoke-interface {v1, v0, p0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->setLockoutModeForUser(II)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_11
    check-cast p0, [B

    .line 258
    .line 259
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    const-string v0, "FaceGetFeatureClient"

    .line 265
    .line 266
    const/4 v1, 0x0

    .line 267
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    .line 268
    .line 269
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 270
    .line 271
    .line 272
    const/4 v3, 0x1

    .line 273
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 278
    .line 279
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    new-array v4, v4, [I

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    new-array v5, v5, [Z

    .line 293
    .line 294
    move v6, v1

    .line 295
    :goto_5
    array-length v7, p0

    .line 296
    if-ge v6, v7, :cond_5

    .line 297
    .line 298
    aget-byte v7, p0, v6

    .line 299
    .line 300
    invoke-static {v7}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertAidlToFrameworkFeature(B)I

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 309
    .line 310
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    add-int/lit8 v6, v6, 0x1

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :catch_1
    move-exception p0

    .line 317
    goto/16 :goto_7

    .line 318
    .line 319
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    move v6, v1

    .line 328
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    if-eqz v7, :cond_6

    .line 333
    .line 334
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    check-cast v7, Ljava/util/Map$Entry;

    .line 339
    .line 340
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    check-cast v8, Ljava/lang/Integer;

    .line 345
    .line 346
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    aput v8, v4, v6

    .line 351
    .line 352
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    check-cast v7, Ljava/lang/Boolean;

    .line 357
    .line 358
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    aput-boolean v7, v5, v6

    .line 363
    .line 364
    add-int/lit8 v6, v6, 0x1

    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    check-cast p0, Ljava/lang/Boolean;

    .line 376
    .line 377
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    const-string v6, "Updating attention value for user: "

    .line 387
    .line 388
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    iget v6, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;->mUserId:I

    .line 392
    .line 393
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v6, " to value: "

    .line 397
    .line 398
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    iget-object v2, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 412
    .line 413
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    const-string/jumbo v6, "face_unlock_attention_required"

    .line 418
    .line 419
    .line 420
    iget v7, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;->mUserId:I

    .line 421
    .line 422
    invoke-static {v2, v6, p0, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 423
    .line 424
    .line 425
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 426
    .line 427
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 428
    .line 429
    if-eqz p0, :cond_7

    .line 430
    .line 431
    invoke-interface {p0, v3, v4, v5}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureGet(Z[I[Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    .line 433
    .line 434
    :cond_7
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 435
    .line 436
    invoke-interface {p0, p1, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 437
    .line 438
    .line 439
    goto :goto_8

    .line 440
    :goto_7
    const-string/jumbo v2, "exception"

    .line 441
    .line 442
    .line 443
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .line 445
    .line 446
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 447
    .line 448
    invoke-interface {p0, p1, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 449
    .line 450
    .line 451
    :goto_8
    return-void

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    :pswitch_data_3
    .packed-switch 0x6e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
