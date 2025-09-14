.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 5
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 10
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 15
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 17
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_4

    .line 25
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 27
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 29
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 37
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 39
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 42
    move-result-object v2

    .line 43
    instance-of v3, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 45
    if-nez v3, :cond_0

    .line 47
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 49
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    const-string v5, "Task stack changed for client: "

    .line 57
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 73
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 75
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 77
    invoke-static {v3, v4}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_3

    .line 83
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 85
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 87
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 89
    invoke-static {v3, v4}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move-object v3, v2

    .line 97
    check-cast v3, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 99
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object v3, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 108
    invoke-static {v3}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_3

    .line 114
    iget-boolean v3, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 116
    if-nez v3, :cond_3

    .line 118
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 120
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 123
    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    const-string v5, "Stopping background authentication, currentClient: "

    .line 128
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 143
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 145
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 147
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 153
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 155
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 157
    iget-wide v5, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 159
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    .line 162
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 164
    goto/16 :goto_0

    .line 166
    :cond_4
    return-void

    .line 167
    :pswitch_0
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 169
    const/4 v1, 0x1

    .line 170
    iput-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsHalStarted:Z

    .line 172
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object v1

    .line 178
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_5

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    .line 190
    invoke-interface {v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;->onHalStarted(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 193
    goto :goto_2

    .line 194
    :cond_5
    return-void

    .line 195
    :pswitch_1
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 197
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getHalInstance()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 200
    return-void

    .line 201
    :pswitch_2
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 203
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 205
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 207
    const/4 v2, 0x0

    .line 208
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 211
    move-result v1

    .line 212
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 214
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 216
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 218
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 220
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 226
    iget-object v6, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 228
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 230
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 232
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 238
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getCurrentSessionUserId()I

    .line 241
    move-result v10

    .line 242
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    .line 244
    const/4 v13, 0x2

    .line 245
    const/4 v14, 0x0

    .line 246
    const/4 v7, 0x0

    .line 247
    const/4 v8, 0x0

    .line 248
    const-string v11, "FingerprintRequestClient"

    .line 250
    const/4 v12, 0x1

    .line 251
    const/4 v15, 0x0

    .line 252
    const/16 v16, 0x0

    .line 254
    move-object v3, v2

    .line 255
    move v9, v1

    .line 256
    invoke-direct/range {v3 .. v16}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 262
    return-void

    .line 263
    :pswitch_3
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 265
    const/4 v1, 0x0

    .line 266
    :goto_3
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 268
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 270
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 273
    move-result v2

    .line 274
    if-ge v1, v2, :cond_8

    .line 276
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 278
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 280
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 283
    move-result-object v2

    .line 284
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 286
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 288
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 291
    move-result-object v2

    .line 292
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 294
    if-eqz v3, :cond_6

    .line 296
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 299
    move-result-object v3

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    .line 302
    const-string/jumbo v5, "onOneHandModeEnabled: ["

    .line 305
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    const-string v5, "] = "

    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v4

    .line 323
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_6
    instance-of v3, v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    .line 328
    if-nez v3, :cond_7

    .line 330
    goto :goto_4

    .line 331
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 334
    move-result-object v3

    .line 335
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 338
    move-result-object v4

    .line 339
    const-string/jumbo v5, "handle OneHandMode, client: "

    .line 342
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    move-result-object v4

    .line 346
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    .line 351
    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;->onOneHandModeEnabled()V

    .line 354
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 356
    goto :goto_3

    .line 357
    :cond_8
    return-void

    .line 358
    :pswitch_4
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 360
    const/4 v1, 0x0

    .line 361
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 363
    const/4 v2, 0x0

    .line 364
    move v3, v2

    .line 365
    :goto_5
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 367
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 369
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 372
    move-result v4

    .line 373
    if-ge v3, v4, :cond_a

    .line 375
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 377
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 379
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 382
    move-result-object v4

    .line 383
    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 385
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 387
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 389
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 392
    move-result v5

    .line 393
    invoke-static {v5}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 396
    move-result-object v5

    .line 397
    if-eqz v5, :cond_9

    .line 399
    iget v6, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 401
    add-int/lit8 v6, v6, 0x1

    .line 403
    iput v6, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 405
    goto :goto_6

    .line 406
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 409
    move-result-object v5

    .line 410
    const-string v6, "Performance tracker is null. Not counting HAL death."

    .line 412
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->onBinderDied()V

    .line 418
    add-int/lit8 v3, v3, 0x1

    .line 420
    goto :goto_5

    .line 421
    :cond_a
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonForHidl:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 423
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 425
    iput-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsHalStarted:Z

    .line 427
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    const-string/jumbo v3, "setFingerprintHalTid: 0"

    .line 437
    const-string v4, "BiometricsBoosting"

    .line 439
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput v2, v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mFingerprintHalTid:I

    .line 444
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 446
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 449
    move-result-object v0

    .line 450
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    move-result v1

    .line 454
    if-eqz v1, :cond_b

    .line 456
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    move-result-object v1

    .line 460
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    .line 462
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    goto :goto_7

    .line 466
    :cond_b
    return-void

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
