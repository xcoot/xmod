.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDataTransmissionUnit:I

.field public final mErrorValue:I

.field public final mPath:Ljava/lang/String;

.field public final mSuccessValue:I

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/biometrics/log/BiometricContext;)V
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v11, p5

    .line 4
    move-object v0, p1

    .line 5
    iput-object v0, v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 7
    invoke-static {p2}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 10
    move-result-object v8

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p2

    .line 16
    move-object v3, p3

    .line 17
    move-object/from16 v5, p4

    .line 19
    move/from16 v7, p6

    .line 21
    move-object/from16 v9, p7

    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 26
    const v0, 0xe1000

    .line 29
    iput v0, v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mDataTransmissionUnit:I

    .line 31
    iput-object v11, v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mPath:Ljava/lang/String;

    .line 33
    const/16 v0, -0x64

    .line 35
    iput v0, v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    .line 37
    const/16 v0, 0x64

    .line 39
    iput v0, v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mSuccessValue:I

    .line 41
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 43
    if-eqz v0, :cond_0

    .line 45
    const-string v0, "SemUpdateTrustAppClient: path = "

    .line 47
    const-string v1, ", "

    .line 49
    invoke-static {v0, v11, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v0

    .line 53
    iget v1, v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mDataTransmissionUnit:I

    .line 55
    const-string v2, "Biometrics/SemUpdateTrustAppClient"

    .line 57
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final handleUpdate(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;->onResult(I)V

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    const-string v1, ""

    .line 17
    invoke-interface {v0, p1, v1}, Landroid/hardware/face/IFaceServiceReceiver;->onSemStatusUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v2, "handleUpdate: "

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "Biometrics/SemUpdateTrustAppClient"

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 48
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mSuccessValue:I

    .line 50
    if-ne p1, v1, :cond_2

    .line 52
    const/4 p1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    :goto_1
    invoke-interface {v0, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 58
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    const-string/jumbo p1, "startUpdate: size = "

    .line 7
    const-string/jumbo v0, "startUpdate: start"

    .line 10
    const-string v1, "Biometrics/SemUpdateTrustAppClient"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 18
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mPath:Ljava/lang/String;

    .line 20
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 29
    const-string/jumbo p1, "startUpdate: No file exist"

    .line 32
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    .line 40
    goto/16 :goto_4

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto/16 :goto_3

    .line 45
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 47
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    .line 66
    move-result p1

    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const p1, 0x19000

    .line 80
    new-array p1, p1, [B

    .line 82
    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 85
    move-result v2

    .line 86
    const/4 v4, -0x1

    .line 87
    const/4 v5, 0x0

    .line 88
    if-eq v2, v4, :cond_1

    .line 90
    invoke-virtual {v0, p1, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 93
    goto :goto_0

    .line 94
    :catch_1
    move-exception p1

    .line 95
    move-object v0, v3

    .line 96
    goto/16 :goto_3

    .line 98
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    const-string/jumbo p1, "startUpdate: done reading file"

    .line 104
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 109
    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    const/16 v8, 0x2711

    .line 115
    const/4 v9, 0x0

    .line 116
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_2

    .line 122
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    .line 127
    goto/16 :goto_4

    .line 129
    :cond_2
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mDataTransmissionUnit:I

    .line 131
    const-string/jumbo v2, "startUpdate: OPERATION_WRITE error"

    .line 134
    if-ne p1, v4, :cond_3

    .line 136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 139
    move-result-object v10

    .line 140
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 142
    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 144
    const/4 v9, 0x1

    .line 145
    const/4 v11, 0x0

    .line 146
    const/16 v8, 0x2711

    .line 148
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_8

    .line 154
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    .line 162
    goto/16 :goto_4

    .line 164
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 167
    move-result p1

    .line 168
    int-to-double v3, p1

    .line 169
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mDataTransmissionUnit:I

    .line 171
    int-to-double v6, p1

    .line 172
    div-double/2addr v3, v6

    .line 173
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 176
    move-result-wide v3

    .line 177
    double-to-int p1, v3

    .line 178
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 180
    if-eqz v3, :cond_4

    .line 182
    const-string/jumbo v3, "startUpdate: loopCnt:"

    .line 185
    invoke-static {p1, v3, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_4
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    move v3, v5

    .line 192
    :goto_1
    if-ge v3, p1, :cond_8

    .line 194
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 197
    move-result v4

    .line 198
    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mDataTransmissionUnit:I

    .line 200
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 203
    move-result v4

    .line 204
    new-array v10, v4, [B

    .line 206
    sget-boolean v6, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 208
    const-string v7, ", byteBuffer.remaining():"

    .line 210
    if-eqz v6, :cond_5

    .line 212
    const-string/jumbo v8, "startUpdate: read length:"

    .line 215
    const-string v9, ", byteBuffer.position()"

    .line 217
    invoke-static {v4, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    move-result-object v8

    .line 221
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 224
    move-result v9

    .line 225
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 234
    move-result v9

    .line 235
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v8

    .line 242
    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_5
    invoke-virtual {v0, v10, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 248
    if-eqz v6, :cond_6

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    .line 252
    const-string/jumbo v6, "startUpdate: byteBuffer.position() after get()"

    .line 255
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 261
    move-result v6

    .line 262
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 271
    move-result v6

    .line 272
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-result-object v4

    .line 279
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_6
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 284
    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 286
    const/4 v9, 0x1

    .line 287
    const/4 v11, 0x0

    .line 288
    const/16 v8, 0x2711

    .line 290
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    .line 293
    move-result v4

    .line 294
    if-eqz v4, :cond_7

    .line 296
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    .line 304
    goto/16 :goto_4

    .line 306
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 308
    goto :goto_1

    .line 309
    :cond_8
    :try_start_2
    const-string p1, "SHA-256"

    .line 311
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 314
    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 322
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 325
    move-result-object v10

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    array-length v0, v10

    .line 332
    :goto_2
    if-ge v5, v0, :cond_9

    .line 334
    aget-byte v2, v10, v5

    .line 336
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 339
    move-result-object v2

    .line 340
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 343
    move-result-object v2

    .line 344
    const-string v3, "%02x"

    .line 346
    const/4 v4, 0x1

    .line 347
    invoke-static {v3, v2, p1, v5, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 350
    move-result v5

    .line 351
    goto :goto_2

    .line 352
    :cond_9
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 354
    if-eqz v0, :cond_a

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    .line 358
    const-string/jumbo v2, "startUpdate: digest:"

    .line 361
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object p1

    .line 379
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_a
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 384
    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 386
    const/16 v8, 0x2711

    .line 388
    const/4 v9, 0x2

    .line 389
    const/4 v11, 0x0

    .line 390
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    .line 393
    move-result p1

    .line 394
    if-eqz p1, :cond_b

    .line 396
    const-string/jumbo p1, "startUpdate: OPERATION_END error"

    .line 399
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    .line 407
    goto :goto_4

    .line 408
    :cond_b
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mSuccessValue:I

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    .line 413
    goto :goto_4

    .line 414
    :catch_2
    move-exception p1

    .line 415
    const-string/jumbo v0, "startUpdate: failure to get MessageDigest instance"

    .line 418
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    .line 426
    goto :goto_4

    .line 427
    :goto_3
    const-string/jumbo v2, "startUpdate: failure to read file"

    .line 430
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    .line 435
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    .line 438
    if-eqz v0, :cond_c

    .line 440
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 443
    goto :goto_4

    .line 444
    :catch_3
    const-string/jumbo p0, "startUpdate: failed to close file"

    .line 447
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    :cond_c
    :goto_4
    return-void
.end method
