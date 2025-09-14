.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;
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
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 13
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 15
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_3

    .line 23
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 25
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 27
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 35
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 37
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 40
    move-result-object v1

    .line 41
    instance-of v2, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 43
    if-nez v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 47
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    const-string v4, "Task stack changed for client: "

    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 71
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 73
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 75
    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 83
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 85
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 87
    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 96
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_2

    .line 102
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 104
    if-nez v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 108
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    const-string v4, "Stopping background authentication, currentClient: "

    .line 116
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 131
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 133
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 135
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 141
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 143
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 145
    iget-wide v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 147
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    .line 150
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 152
    goto/16 :goto_0

    .line 154
    :cond_3
    return-void

    .line 155
    :pswitch_0
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 157
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getHalInstance()Landroid/hardware/biometrics/face/IFace;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    const-string v0, "SemFace"

    .line 169
    const-string/jumbo v1, "sehCloseTaSession FINISH ("

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 175
    move-result-wide v2

    .line 176
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 178
    if-eqz v4, :cond_4

    .line 180
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 182
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 184
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 187
    move-result-object p0

    .line 188
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 190
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :try_start_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 201
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 207
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehCloseTaSession()I

    .line 210
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    goto :goto_2

    .line 212
    :catch_0
    move-exception p0

    .line 213
    :try_start_2
    const-string v4, "HidlToAidlSessionAdapter"

    .line 215
    const-string/jumbo v5, "semCloseTaSession HIDL : "

    .line 218
    invoke-static {v4, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/4 p0, -0x1

    .line 222
    goto :goto_2

    .line 223
    :catch_1
    move-exception p0

    .line 224
    goto :goto_3

    .line 225
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 227
    if-nez p0, :cond_5

    .line 229
    const-string/jumbo p0, "daemonSessionClose(): no face seh HAL!"

    .line 232
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    goto :goto_4

    .line 236
    :cond_5
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 238
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->unloadTA()I

    .line 241
    move-result p0

    .line 242
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 250
    move-result-wide v5

    .line 251
    sub-long/2addr v5, v2

    .line 252
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    const-string/jumbo v1, "ms) RESULT: "

    .line 258
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p0

    .line 268
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    goto :goto_4

    .line 272
    :goto_3
    const-string/jumbo v1, "daemonSessionClose: "

    .line 275
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    :goto_4
    return-void

    .line 279
    :pswitch_1
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 284
    move-result-object v0

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 288
    move-result-wide v1

    .line 289
    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 291
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    const-string/jumbo v0, "resume FINISH ("

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 304
    move-result-wide v1

    .line 305
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 307
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 310
    move-result-object v3

    .line 311
    instance-of v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 313
    const-string v4, "SemFace"

    .line 315
    if-nez v3, :cond_6

    .line 317
    const-string/jumbo p0, "daemonResumeEnroll : client is not Enroll"

    .line 320
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    goto/16 :goto_9

    .line 325
    :cond_6
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 327
    if-eqz v3, :cond_7

    .line 329
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 331
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 333
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 336
    move-result-object v3

    .line 337
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 339
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 342
    move-result-object v3

    .line 343
    check-cast v3, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 345
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->semResumeEnroll()I

    .line 348
    move-result v3

    .line 349
    goto :goto_5

    .line 350
    :catch_2
    move-exception v0

    .line 351
    goto :goto_6

    .line 352
    :cond_7
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 354
    if-nez v3, :cond_8

    .line 356
    const-string/jumbo v0, "daemonResumeEnroll(): no face seh HAL!"

    .line 359
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    goto :goto_9

    .line 363
    :cond_8
    check-cast v3, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 365
    invoke-virtual {v3}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->resume()I

    .line 368
    move-result v3

    .line 369
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 371
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 377
    move-result-wide v6

    .line 378
    sub-long/2addr v6, v1

    .line 379
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 382
    const-string/jumbo v0, "ms) RESULT: "

    .line 385
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    move-result-object v0

    .line 395
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 398
    goto :goto_7

    .line 399
    :goto_6
    const-string/jumbo v1, "daemonResumeEnroll: "

    .line 402
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    :goto_7
    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    .line 408
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 410
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_9

    .line 416
    const v0, 0xea60

    .line 419
    goto :goto_8

    .line 420
    :cond_9
    const/16 v0, 0x7530

    .line 422
    :goto_8
    const-string/jumbo v1, "resumeEnrollExt : "

    .line 425
    invoke-static {v0, v1, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 430
    const/4 v2, 0x1

    .line 431
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    int-to-long v3, v0

    .line 435
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 438
    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->acquireDVFS(II)V

    .line 441
    :goto_9
    return-void

    .line 442
    :pswitch_2
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 444
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 447
    move-result-object p0

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    const-string/jumbo v0, "pause FINISH ("

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 457
    move-result-wide v1

    .line 458
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 460
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 463
    move-result-object v3

    .line 464
    instance-of v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 466
    const-string v4, "SemFace"

    .line 468
    if-nez v3, :cond_a

    .line 470
    const-string/jumbo p0, "daemonPauseEnroll : client is not Enroll"

    .line 473
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    goto :goto_d

    .line 477
    :cond_a
    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 479
    if-eqz v3, :cond_b

    .line 481
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 483
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 485
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 488
    move-result-object v3

    .line 489
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 491
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 494
    move-result-object v3

    .line 495
    check-cast v3, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 497
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->semResumeEnroll()I

    .line 500
    move-result v3

    .line 501
    goto :goto_a

    .line 502
    :catch_3
    move-exception v0

    .line 503
    goto :goto_b

    .line 504
    :cond_b
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 506
    if-nez v3, :cond_c

    .line 508
    const-string/jumbo v0, "daemonPauseEnroll(): no face seh HAL!"

    .line 511
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    goto :goto_d

    .line 515
    :cond_c
    check-cast v3, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 517
    invoke-virtual {v3}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->pause()I

    .line 520
    move-result v3

    .line 521
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 523
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 529
    move-result-wide v6

    .line 530
    sub-long/2addr v6, v1

    .line 531
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v0, "ms) RESULT: "

    .line 537
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    move-result-object v0

    .line 547
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 550
    goto :goto_c

    .line 551
    :goto_b
    const-string/jumbo v1, "daemonPauseEnroll: "

    .line 554
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    :goto_c
    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    .line 560
    :goto_d
    return-void

    .line 561
    :pswitch_3
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 563
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 566
    move-result-object p0

    .line 567
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    const-string/jumbo v0, "resume FINISH ("

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 576
    move-result-wide v1

    .line 577
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 579
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 582
    move-result-object v3

    .line 583
    instance-of v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 585
    const-string v4, "SemFace"

    .line 587
    if-nez v3, :cond_d

    .line 589
    const-string/jumbo p0, "daemonResumeAuth : client is not Auth"

    .line 592
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    goto :goto_10

    .line 596
    :cond_d
    :try_start_5
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 598
    if-eqz v3, :cond_e

    .line 600
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 602
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 604
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 607
    move-result-object p0

    .line 608
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 610
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 613
    move-result-object p0

    .line 614
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 616
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->semResumeEnroll()I

    .line 619
    move-result p0

    .line 620
    goto :goto_e

    .line 621
    :catch_4
    move-exception p0

    .line 622
    goto :goto_f

    .line 623
    :cond_e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 625
    if-nez p0, :cond_f

    .line 627
    const-string/jumbo p0, "daemonResumeAuth(): no face seh HAL!"

    .line 630
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    goto :goto_10

    .line 634
    :cond_f
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 636
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->resume()I

    .line 639
    move-result p0

    .line 640
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 642
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 648
    move-result-wide v5

    .line 649
    sub-long/2addr v5, v1

    .line 650
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 653
    const-string/jumbo v0, "ms) RESULT: "

    .line 656
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    move-result-object p0

    .line 666
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 669
    goto :goto_10

    .line 670
    :goto_f
    const-string/jumbo v0, "daemonResumeAuth: "

    .line 673
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    :goto_10
    return-void

    .line 677
    :pswitch_4
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 679
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getHalInstance()Landroid/hardware/biometrics/face/IFace;

    .line 682
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 685
    move-result-object p0

    .line 686
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    const-string v0, "SemFace"

    .line 691
    const-string/jumbo v1, "sehOpenTaSession FINISH ("

    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 697
    move-result-wide v2

    .line 698
    :try_start_6
    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 700
    if-eqz v4, :cond_10

    .line 702
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 704
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 706
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 709
    move-result-object p0

    .line 710
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 712
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 715
    move-result-object p0

    .line 716
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 718
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 721
    :try_start_7
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 723
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 726
    move-result-object p0

    .line 727
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 729
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehOpenTaSession()I

    .line 732
    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 733
    goto :goto_11

    .line 734
    :catch_5
    move-exception p0

    .line 735
    :try_start_8
    const-string v4, "HidlToAidlSessionAdapter"

    .line 737
    const-string/jumbo v5, "semOpenTaSession HIDL : "

    .line 740
    invoke-static {v4, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    const/4 p0, -0x1

    .line 744
    goto :goto_11

    .line 745
    :catch_6
    move-exception p0

    .line 746
    goto :goto_12

    .line 747
    :cond_10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 749
    if-nez p0, :cond_11

    .line 751
    const-string/jumbo p0, "daemonSessionOpen(): no face seh HAL!"

    .line 754
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    goto :goto_13

    .line 758
    :cond_11
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 760
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->loadTA()I

    .line 763
    move-result p0

    .line 764
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 766
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 772
    move-result-wide v5

    .line 773
    sub-long/2addr v5, v2

    .line 774
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 777
    const-string/jumbo v1, "ms) RESULT: "

    .line 780
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 789
    move-result-object p0

    .line 790
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 793
    goto :goto_13

    .line 794
    :goto_12
    const-string/jumbo v1, "daemonSessionOpen: "

    .line 797
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    :goto_13
    return-void

    .line 801
    :pswitch_5
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 803
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 806
    move-result-object p0

    .line 807
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    const-string/jumbo v0, "pause FINISH ("

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 816
    move-result-wide v1

    .line 817
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 819
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 822
    move-result-object v3

    .line 823
    instance-of v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 825
    const-string v4, "SemFace"

    .line 827
    if-nez v3, :cond_12

    .line 829
    const-string/jumbo p0, "daemonPauseAuth : client is not Auth"

    .line 832
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    goto :goto_16

    .line 836
    :cond_12
    :try_start_9
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 838
    if-eqz v3, :cond_13

    .line 840
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 842
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 844
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 847
    move-result-object p0

    .line 848
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 850
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 853
    move-result-object p0

    .line 854
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 859
    :try_start_a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 861
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 864
    move-result-object p0

    .line 865
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 867
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    .line 870
    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 871
    goto :goto_14

    .line 872
    :catch_7
    move-exception p0

    .line 873
    :try_start_b
    const-string v3, "HidlToAidlSessionAdapter"

    .line 875
    const-string/jumbo v5, "semPauseEnroll HIDL : "

    .line 878
    invoke-static {v3, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 881
    const/4 p0, -0x1

    .line 882
    goto :goto_14

    .line 883
    :catch_8
    move-exception p0

    .line 884
    goto :goto_15

    .line 885
    :cond_13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 887
    if-nez p0, :cond_14

    .line 889
    const-string/jumbo p0, "daemonPauseAuth(): no face seh HAL!"

    .line 892
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    goto :goto_16

    .line 896
    :cond_14
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 898
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->pause()I

    .line 901
    move-result p0

    .line 902
    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 904
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 910
    move-result-wide v5

    .line 911
    sub-long/2addr v5, v1

    .line 912
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 915
    const-string/jumbo v0, "ms) RESULT: "

    .line 918
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 927
    move-result-object p0

    .line 928
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 931
    goto :goto_16

    .line 932
    :goto_15
    const-string/jumbo v0, "daemonPauseAuth: "

    .line 935
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 938
    :goto_16
    return-void

    .line 939
    :pswitch_6
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 941
    const/4 v0, 0x0

    .line 942
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 944
    const/4 v1, 0x0

    .line 945
    move v2, v1

    .line 946
    :goto_17
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 948
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 950
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 953
    move-result v3

    .line 954
    if-ge v2, v3, :cond_18

    .line 956
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 958
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 960
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 963
    move-result-object v3

    .line 964
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 966
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 968
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 970
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 973
    move-result v4

    .line 974
    invoke-static {v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 977
    move-result-object v4

    .line 978
    const/4 v5, 0x1

    .line 979
    if-eqz v4, :cond_15

    .line 981
    iget v6, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 983
    add-int/2addr v6, v5

    .line 984
    iput v6, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 986
    goto :goto_18

    .line 987
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 990
    move-result-object v4

    .line 991
    const-string v6, "Performance tracker is null. Not counting HAL death."

    .line 993
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :goto_18
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 998
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 1001
    move-result-object v4

    .line 1002
    if-eqz v4, :cond_16

    .line 1004
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isInterruptable()Z

    .line 1007
    move-result v6

    .line 1008
    if-eqz v6, :cond_16

    .line 1010
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1012
    const-string v7, "Sending face hardware unavailable error for client: "

    .line 1014
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1023
    move-result-object v6

    .line 1024
    const-string v7, "Sensor"

    .line 1026
    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    check-cast v4, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 1031
    invoke-interface {v4, v5, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 1034
    const/4 v4, -0x1

    .line 1035
    const/16 v6, 0x94

    .line 1037
    const/4 v7, 0x4

    .line 1038
    invoke-static {v6, v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1041
    goto :goto_19

    .line 1042
    :cond_16
    if-eqz v4, :cond_17

    .line 1044
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    .line 1047
    :cond_17
    :goto_19
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 1049
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 1052
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 1054
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    .line 1057
    iput-object v0, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 1059
    add-int/lit8 v2, v2, 0x1

    .line 1061
    goto :goto_17

    .line 1062
    :cond_18
    return-void

    .line 1063
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
