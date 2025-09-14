.class public abstract Lcom/android/server/biometrics/sensors/AcquisitionClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# instance fields
.field public mAlreadyCancelled:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mShouldSendErrorToClient:Z

.field public mShouldVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x32

    .line 3
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object/from16 v3, p3

    .line 7
    move-object/from16 v4, p4

    .line 9
    move/from16 v5, p5

    .line 11
    move-object/from16 v6, p6

    .line 13
    move/from16 v7, p7

    .line 15
    move/from16 v8, p8

    .line 17
    move-object/from16 v9, p10

    .line 19
    move-object/from16 v10, p11

    .line 21
    move/from16 v11, p12

    .line 23
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    .line 29
    const-class v0, Landroid/os/PowerManager;

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/os/PowerManager;

    .line 37
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    .line 39
    move/from16 v0, p9

    .line 41
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    .line 43
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string p0, "Biometrics/AcquisitionClient"

    .line 7
    const-string v0, "Cancel was already requested"

    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    .line 19
    return-void
.end method

.method public final cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "cancelWithoutStarting: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Biometrics/AcquisitionClient"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 23
    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 25
    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 27
    const/4 v4, 0x5

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v2, "Failed to invoke sendError"

    .line 36
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :goto_0
    const/4 v0, 0x1

    .line 40
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 43
    return-void
.end method

.method public final isInterruptable()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public onAcquired(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 5
    return-void
.end method

.method public final onAcquiredInternal(IIZ)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p1

    .line 5
    move/from16 v15, p2

    .line 7
    move/from16 v14, p3

    .line 9
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 11
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 16
    move-result-object v3

    .line 17
    iget v5, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 19
    iget-boolean v6, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 21
    const/4 v13, 0x2

    .line 22
    if-nez v6, :cond_0

    .line 24
    goto/16 :goto_8

    .line 26
    :cond_0
    const/4 v6, 0x1

    .line 27
    const/4 v7, 0x4

    .line 28
    iget v8, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 30
    if-ne v8, v7, :cond_1

    .line 32
    move v7, v6

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v7, 0x0

    .line 35
    :goto_0
    if-ne v8, v6, :cond_2

    .line 37
    move v9, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v9, 0x0

    .line 40
    :goto_1
    if-nez v7, :cond_4

    .line 42
    if-eqz v9, :cond_3

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    if-nez v0, :cond_7

    .line 47
    iget-wide v9, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 49
    const-wide/16 v16, 0x0

    .line 51
    cmp-long v7, v9, v16

    .line 53
    if-nez v7, :cond_7

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    move-result-wide v9

    .line 59
    iput-wide v9, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    .line 64
    const/4 v9, 0x7

    .line 65
    if-eq v0, v9, :cond_6

    .line 67
    const/16 v9, 0x2712

    .line 69
    if-eq v15, v9, :cond_6

    .line 71
    :cond_5
    if-eqz v7, :cond_7

    .line 73
    const/16 v7, 0x14

    .line 75
    if-ne v0, v7, :cond_7

    .line 77
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    move-result-wide v9

    .line 81
    iput-wide v9, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 83
    :cond_7
    :goto_3
    sget-boolean v7, Lcom/android/server/biometrics/log/BiometricLogger;->DEBUG:Z

    .line 85
    if-eqz v7, :cond_8

    .line 87
    const-string v7, "Acquired! Modality: "

    .line 89
    const-string v9, ", User: "

    .line 91
    const-string v10, ", IsCrypto: "

    .line 93
    invoke-static {v8, v5, v7, v9, v10}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-result-object v7

    .line 97
    iget-object v8, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 99
    iget-boolean v8, v8, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    const-string v8, ", Action: "

    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v8, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 111
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v8, ", Client: "

    .line 116
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v8, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 121
    const-string v9, ", AcquiredInfo: "

    .line 123
    const-string v10, ", VendorCode: "

    .line 125
    invoke-static {v8, v0, v9, v10, v7}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 128
    const-string v8, "BiometricLogger"

    .line 130
    invoke-static {v7, v15, v8}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 133
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_9

    .line 139
    goto/16 :goto_8

    .line 141
    :cond_9
    invoke-static {v2, v5}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    .line 144
    move-result v10

    .line 145
    iget-object v2, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    iget-object v2, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 152
    iget-boolean v8, v2, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 154
    iget v9, v2, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 156
    iget-byte v7, v2, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 158
    if-ne v7, v6, :cond_a

    .line 160
    move/from16 v16, v13

    .line 162
    goto :goto_4

    .line 163
    :cond_a
    if-ne v7, v13, :cond_b

    .line 165
    move/from16 v16, v6

    .line 167
    goto :goto_4

    .line 168
    :cond_b
    const/16 v16, 0x0

    .line 170
    :goto_4
    iget-boolean v7, v2, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 172
    iget-boolean v2, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    .line 174
    iget v11, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    .line 176
    iget v12, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    .line 178
    invoke-static {v12}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->orientationType(I)I

    .line 181
    move-result v18

    .line 182
    iget v12, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    .line 184
    move/from16 v19, v2

    .line 186
    const/4 v2, 0x3

    .line 187
    if-eq v12, v6, :cond_e

    .line 189
    if-eq v12, v13, :cond_d

    .line 191
    if-eq v12, v2, :cond_c

    .line 193
    const/16 v21, 0x0

    .line 195
    goto :goto_5

    .line 196
    :cond_c
    move/from16 v21, v13

    .line 198
    goto :goto_5

    .line 199
    :cond_d
    move/from16 v21, v6

    .line 201
    goto :goto_5

    .line 202
    :cond_e
    move/from16 v21, v2

    .line 204
    :goto_5
    iget-object v2, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 206
    if-eqz v2, :cond_f

    .line 208
    iget-object v2, v2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mOrder:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 210
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 213
    move-result v2

    .line 214
    :goto_6
    move/from16 v22, v2

    .line 216
    goto :goto_7

    .line 217
    :cond_f
    const/4 v2, -0x1

    .line 218
    goto :goto_6

    .line 219
    :goto_7
    invoke-static {v3}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I

    .line 222
    move-result v20

    .line 223
    iget v3, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 225
    const/4 v2, -0x1

    .line 226
    move/from16 v23, v11

    .line 228
    move v11, v2

    .line 229
    const/16 v2, 0x57

    .line 231
    iget v6, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 233
    iget v4, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 235
    move/from16 v24, v7

    .line 237
    move v7, v4

    .line 238
    move v4, v5

    .line 239
    move v5, v8

    .line 240
    move/from16 v8, p1

    .line 242
    move v12, v9

    .line 243
    move/from16 v9, p2

    .line 245
    move/from16 v13, v16

    .line 247
    move/from16 v14, v24

    .line 249
    move/from16 v15, v19

    .line 251
    move/from16 v16, v23

    .line 253
    move/from16 v17, v18

    .line 255
    move/from16 v18, v21

    .line 257
    move/from16 v19, v22

    .line 259
    invoke-static/range {v2 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZIIIZZIIIII)V

    .line 262
    :goto_8
    const-string v2, "Acquired: "

    .line 264
    const-string v3, " "

    .line 266
    const-string v4, ", shouldSend: "

    .line 268
    move/from16 v5, p2

    .line 270
    invoke-static {v0, v5, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    move-result-object v2

    .line 274
    const-string v3, "Biometrics/AcquisitionClient"

    .line 276
    move/from16 v4, p3

    .line 278
    invoke-static {v3, v2, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 281
    if-nez v0, :cond_10

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 286
    move-result-wide v6

    .line 287
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    .line 289
    const/4 v8, 0x2

    .line 290
    const/4 v9, 0x0

    .line 291
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 294
    goto :goto_9

    .line 295
    :cond_10
    const/4 v9, 0x0

    .line 296
    :goto_9
    if-eqz v4, :cond_13

    .line 298
    :try_start_0
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 300
    iget v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 302
    iget-object v6, v2, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 304
    if-eqz v6, :cond_11

    .line 306
    invoke-interface {v6, v4, v0, v5}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAcquired(III)V

    .line 309
    goto :goto_a

    .line 310
    :cond_11
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 312
    if-eqz v4, :cond_12

    .line 314
    invoke-interface {v4, v0, v5}, Landroid/hardware/face/IFaceServiceReceiver;->onAcquired(II)V

    .line 317
    goto :goto_a

    .line 318
    :cond_12
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 320
    if-eqz v2, :cond_13

    .line 322
    invoke-interface {v2, v0, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    goto :goto_a

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v2, "Failed to invoke sendAcquired"

    .line 329
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 334
    invoke-interface {v0, v1, v9}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 337
    :cond_13
    :goto_a
    return-void
.end method

.method public onError(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    .line 5
    return-void
.end method

.method public final onErrorInternal(IIZ)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onErrorInternal code: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", finish: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "Biometrics/AcquisitionClient"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 34
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 36
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 41
    move-result-object v5

    .line 42
    iget v8, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 44
    move v6, p1

    .line 45
    move v7, p2

    .line 46
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V

    .line 49
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    .line 51
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 53
    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 55
    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 57
    invoke-virtual {v0, v3, v4, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    const-string p2, "Failed to invoke sendError"

    .line 64
    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 69
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 71
    if-nez p1, :cond_1

    .line 73
    const-string p0, "Callback is null, perhaps the client hasn\'t been started yet?"

    .line 75
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 82
    :cond_2
    :goto_1
    return-void
.end method

.method public final onUserCanceled()V
    .locals 2

    .line 1
    const-string v0, "Biometrics/AcquisitionClient"

    .line 3
    const-string/jumbo v1, "onUserCanceled"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/16 v0, 0xa

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    .line 15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    .line 18
    return-void
.end method

.method public abstract stopHalOperation()V
.end method

.method public final unableToStart()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string v0, "Biometrics/AcquisitionClient"

    .line 16
    const-string v1, "Unable to send error"

    .line 18
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_0
    return-void
.end method

.method public abstract vibrateError()V
.end method

.method public vibrateSuccess()V
    .locals 0

    .line 1
    return-void
.end method
