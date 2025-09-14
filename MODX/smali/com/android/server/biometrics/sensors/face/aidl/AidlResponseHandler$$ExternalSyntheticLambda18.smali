.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/face/Face;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;ILandroid/hardware/face/Face;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;->f$2:Landroid/hardware/face/Face;

    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;->f$3:Ljava/util/ArrayList;

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 5
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;->f$1:I

    .line 7
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;->f$2:Landroid/hardware/face/Face;

    .line 9
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;->f$3:Ljava/util/ArrayList;

    .line 11
    move-object/from16 v5, p1

    .line 13
    check-cast v5, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 21
    move-result-object v6

    .line 22
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 24
    iget v7, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 26
    iget v8, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 28
    iget v0, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 30
    filled-new-array {v7, v8, v0}, [I

    .line 33
    move-result-object v0

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v8, "match BILG "

    .line 39
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide v8

    .line 46
    iget-wide v10, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mAuthStartTime:J

    .line 48
    sub-long/2addr v8, v10

    .line 49
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v8, ":"

    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const/4 v9, 0x0

    .line 58
    aget v10, v0, v9

    .line 60
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/4 v10, 0x1

    .line 67
    aget v11, v0, v10

    .line 69
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/4 v8, 0x2

    .line 76
    aget v0, v0, v8

    .line 78
    const-string v8, "SemFace"

    .line 80
    invoke-static {v7, v0, v8}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 83
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 85
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 87
    if-eqz v0, :cond_0

    .line 89
    goto/16 :goto_6

    .line 91
    :cond_0
    iget-boolean v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 93
    const-string/jumbo v7, "ms)"

    .line 96
    if-eqz v0, :cond_7

    .line 98
    iget-boolean v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 100
    if-nez v0, :cond_d

    .line 102
    const-string/jumbo v0, "data = "

    .line 105
    const-string/jumbo v1, "getWrappedDataFromMemory read "

    .line 108
    const-string/jumbo v2, "getWrappedDataFromMemory FINISH ("

    .line 111
    new-instance v3, Landroid/os/Bundle;

    .line 113
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 116
    iget-object v4, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 118
    if-nez v4, :cond_1

    .line 120
    const-string/jumbo v0, "daemonGetWrappedDataFromMemory(): no seh face HAL!"

    .line 123
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto/16 :goto_3

    .line 128
    :cond_1
    const/4 v4, 0x0

    .line 129
    :try_start_0
    const-string/jumbo v5, "getWrappedDataFromMemory START"

    .line 132
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    move-result-wide v10

    .line 139
    iget-object v5, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 141
    check-cast v5, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 143
    invoke-virtual {v5}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->getWrappedDataFromMemory()Landroid/hardware/common/Ashmem;

    .line 146
    move-result-object v5

    .line 147
    if-nez v5, :cond_2

    .line 149
    const-string/jumbo v0, "getWrappedDataFromMemory: ash is null"

    .line 152
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto/16 :goto_3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    goto/16 :goto_1

    .line 160
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    move-result-wide v13

    .line 169
    sub-long/2addr v13, v10

    .line 170
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v2

    .line 180
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, v5, Landroid/hardware/common/Ashmem;->fd:Landroid/os/ParcelFileDescriptor;

    .line 185
    invoke-static {v2}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    .line 192
    move-result-object v2

    .line 193
    if-nez v2, :cond_3

    .line 195
    const-string/jumbo v0, "getWrappedDataFromMemory: dataBuffer is null"

    .line 198
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    goto/16 :goto_3

    .line 203
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 206
    move-result v7

    .line 207
    new-array v10, v7, [B

    .line 209
    iget-wide v11, v5, Landroid/hardware/common/Ashmem;->size:J

    .line 211
    long-to-int v5, v11

    .line 212
    invoke-virtual {v2, v10, v9, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 227
    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 232
    if-eqz v1, :cond_5

    .line 234
    const/16 v1, 0x80

    .line 236
    if-le v7, v1, :cond_4

    .line 238
    goto :goto_0

    .line 239
    :cond_4
    move v1, v7

    .line 240
    :goto_0
    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 243
    move-result-object v1

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 260
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_5
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 265
    if-nez v0, :cond_6

    .line 267
    new-instance v0, Landroid/os/MemoryFile;

    .line 269
    const-string v1, "auth_preview"

    .line 271
    invoke-direct {v0, v1, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 274
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 276
    :cond_6
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 278
    invoke-virtual {v0, v10, v9, v9, v7}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 281
    const-class v0, Landroid/os/MemoryFile;

    .line 283
    const-string/jumbo v1, "getFileDescriptor"

    .line 286
    new-array v2, v9, [Ljava/lang/Class;

    .line 288
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 291
    move-result-object v0

    .line 292
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 294
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Ljava/io/FileDescriptor;

    .line 300
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 303
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_2

    .line 305
    :goto_1
    const-string v1, "Unable to read statistics stream"

    .line 307
    invoke-static {v8, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :goto_2
    const-string/jumbo v0, "getWrappedDataFromMemory save"

    .line 313
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string/jumbo v0, "memoryfile_descriptor"

    .line 319
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 322
    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendSucceeded(Landroid/os/Bundle;)V

    .line 325
    goto/16 :goto_7

    .line 327
    :cond_7
    iget-boolean v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 329
    if-nez v0, :cond_b

    .line 331
    const-string v0, ", data: "

    .line 333
    const-string/jumbo v9, "getWrappedData size: "

    .line 336
    const-string/jumbo v11, "getWrappedData FINISH ("

    .line 339
    const-string/jumbo v12, "getWrappedData START"

    .line 342
    invoke-static {v8, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 348
    move-result-wide v12

    .line 349
    :try_start_1
    iget-object v6, v6, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 351
    if-nez v6, :cond_8

    .line 353
    const-string/jumbo v0, "daemonGetWrappedData(): no seh face HAL!"

    .line 356
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    goto :goto_6

    .line 360
    :catch_1
    move-exception v0

    .line 361
    goto :goto_5

    .line 362
    :cond_8
    check-cast v6, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 364
    invoke-virtual {v6}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->getWrappedData()[B

    .line 367
    move-result-object v6

    .line 368
    new-instance v14, Ljava/lang/StringBuilder;

    .line 370
    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 376
    move-result-wide v15

    .line 377
    sub-long v11, v15, v12

    .line 379
    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object v7

    .line 389
    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-eqz v6, :cond_a

    .line 394
    array-length v7, v6

    .line 395
    if-lez v7, :cond_a

    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    .line 399
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    array-length v9, v6

    .line 403
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    sget-boolean v9, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 408
    if-eqz v9, :cond_9

    .line 410
    new-instance v9, Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-static {v6}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->byteArrayToHex([B)Ljava/lang/String;

    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    move-result-object v0

    .line 426
    goto :goto_4

    .line 427
    :cond_9
    const-string v0, ""

    .line 429
    :goto_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    move-result-object v0

    .line 436
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {v6}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->setFidoResultData([B)V

    .line 442
    goto :goto_6

    .line 443
    :cond_a
    const-string/jumbo v0, "getWrappedData : data is null or 0"

    .line 446
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    goto :goto_6

    .line 450
    :goto_5
    const-string/jumbo v6, "getWrappedData: "

    .line 453
    invoke-static {v8, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    :cond_b
    :goto_6
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0, v10, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onExtended(II)V

    .line 463
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    .line 466
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 468
    if-eqz v0, :cond_c

    .line 470
    iget v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 472
    invoke-virtual {v0, v1, v10}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->resetFailedAttemptsForUser(IZ)V

    .line 475
    :cond_c
    invoke-interface {v5, v3, v10, v4}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 478
    :cond_d
    :goto_7
    return-void
.end method
