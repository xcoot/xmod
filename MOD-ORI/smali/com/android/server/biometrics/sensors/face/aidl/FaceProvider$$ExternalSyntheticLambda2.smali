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

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_3

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    instance-of v2, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v4, "Task stack changed for client: "

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 70
    .line 71
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 103
    .line 104
    if-nez v2, :cond_2

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "Stopping background authentication, currentClient: "

    .line 115
    .line 116
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 130
    .line 131
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 132
    .line 133
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 134
    .line 135
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 140
    .line 141
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 142
    .line 143
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 144
    .line 145
    iget-wide v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 146
    .line 147
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_3
    return-void

    .line 155
    :pswitch_0
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getHalInstance()Landroid/hardware/biometrics/face/IFace;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    const-string v0, "SemFace"

    .line 168
    .line 169
    const-string/jumbo v1, "sehCloseTaSession FINISH ("

    .line 170
    .line 171
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide v2

    .line 176
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 177
    .line 178
    if-eqz v4, :cond_4

    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 181
    .line 182
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 183
    .line 184
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    .line 198
    .line 199
    :try_start_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 200
    .line 201
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 206
    .line 207
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehCloseTaSession()I

    .line 208
    .line 209
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

    .line 214
    .line 215
    const-string/jumbo v5, "semCloseTaSession HIDL : "

    .line 216
    .line 217
    .line 218
    invoke-static {v4, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .line 220
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

    .line 226
    .line 227
    if-nez p0, :cond_5

    .line 228
    .line 229
    const-string/jumbo p0, "daemonSessionClose(): no face seh HAL!"

    .line 230
    .line 231
    .line 232
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_5
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 237
    .line 238
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->unloadTA()I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 248
    .line 249
    .line 250
    move-result-wide v5

    .line 251
    sub-long/2addr v5, v2

    .line 252
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string/jumbo v1, "ms) RESULT: "

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :goto_3
    const-string/jumbo v1, "daemonSessionClose: "

    .line 273
    .line 274
    .line 275
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .line 277
    .line 278
    :goto_4
    return-void

    .line 279
    :pswitch_1
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 286
    .line 287
    .line 288
    move-result-wide v1

    .line 289
    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    const-string/jumbo v0, "resume FINISH ("

    .line 299
    .line 300
    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 302
    .line 303
    .line 304
    move-result-wide v1

    .line 305
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 306
    .line 307
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    instance-of v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 312
    .line 313
    const-string v4, "SemFace"

    .line 314
    .line 315
    if-nez v3, :cond_6

    .line 316
    .line 317
    const-string/jumbo p0, "daemonResumeEnroll : client is not Enroll"

    .line 318
    .line 319
    .line 320
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    goto/16 :goto_9

    .line 324
    .line 325
    :cond_6
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 326
    .line 327
    if-eqz v3, :cond_7

    .line 328
    .line 329
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 330
    .line 331
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 332
    .line 333
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 338
    .line 339
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    check-cast v3, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 344
    .line 345
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->semResumeEnroll()I

    .line 346
    .line 347
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

    .line 353
    .line 354
    if-nez v3, :cond_8

    .line 355
    .line 356
    const-string/jumbo v0, "daemonResumeEnroll(): no face seh HAL!"

    .line 357
    .line 358
    .line 359
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_8
    check-cast v3, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 364
    .line 365
    invoke-virtual {v3}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->resume()I

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 375
    .line 376
    .line 377
    move-result-wide v6

    .line 378
    sub-long/2addr v6, v1

    .line 379
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string/jumbo v0, "ms) RESULT: "

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 396
    .line 397
    .line 398
    goto :goto_7

    .line 399
    :goto_6
    const-string/jumbo v1, "daemonResumeEnroll: "

    .line 400
    .line 401
    .line 402
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .line 404
    .line 405
    :goto_7
    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    .line 407
    .line 408
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_9

    .line 415
    .line 416
    const v0, 0xea60

    .line 417
    .line 418
    .line 419
    goto :goto_8

    .line 420
    :cond_9
    const/16 v0, 0x7530

    .line 421
    .line 422
    :goto_8
    const-string/jumbo v1, "resumeEnrollExt : "

    .line 423
    .line 424
    .line 425
    invoke-static {v0, v1, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 429
    .line 430
    const/4 v2, 0x1

    .line 431
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    .line 433
    .line 434
    int-to-long v3, v0

    .line 435
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->acquireDVFS(II)V

    .line 439
    .line 440
    .line 441
    :goto_9
    return-void

    .line 442
    :pswitch_2
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 443
    .line 444
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    const-string/jumbo v0, "pause FINISH ("

    .line 452
    .line 453
    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 455
    .line 456
    .line 457
    move-result-wide v1

    .line 458
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 459
    .line 460
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    instance-of v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 465
    .line 466
    const-string v4, "SemFace"

    .line 467
    .line 468
    if-nez v3, :cond_a

    .line 469
    .line 470
    const-string/jumbo p0, "daemonPauseEnroll : client is not Enroll"

    .line 471
    .line 472
    .line 473
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    goto :goto_d

    .line 477
    :cond_a
    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 478
    .line 479
    if-eqz v3, :cond_b

    .line 480
    .line 481
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 482
    .line 483
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 484
    .line 485
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 490
    .line 491
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    check-cast v3, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 496
    .line 497
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->semResumeEnroll()I

    .line 498
    .line 499
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

    .line 505
    .line 506
    if-nez v3, :cond_c

    .line 507
    .line 508
    const-string/jumbo v0, "daemonPauseEnroll(): no face seh HAL!"

    .line 509
    .line 510
    .line 511
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    goto :goto_d

    .line 515
    :cond_c
    check-cast v3, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 516
    .line 517
    invoke-virtual {v3}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->pause()I

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 527
    .line 528
    .line 529
    move-result-wide v6

    .line 530
    sub-long/2addr v6, v1

    .line 531
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    const-string/jumbo v0, "ms) RESULT: "

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 548
    .line 549
    .line 550
    goto :goto_c

    .line 551
    :goto_b
    const-string/jumbo v1, "daemonPauseEnroll: "

    .line 552
    .line 553
    .line 554
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .line 556
    .line 557
    :goto_c
    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    .line 559
    .line 560
    :goto_d
    return-void

    .line 561
    :pswitch_3
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 562
    .line 563
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 564
    .line 565
    .line 566
    move-result-object p0

    .line 567
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    const-string/jumbo v0, "resume FINISH ("

    .line 571
    .line 572
    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 574
    .line 575
    .line 576
    move-result-wide v1

    .line 577
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 578
    .line 579
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    instance-of v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 584
    .line 585
    const-string v4, "SemFace"

    .line 586
    .line 587
    if-nez v3, :cond_d

    .line 588
    .line 589
    const-string/jumbo p0, "daemonResumeAuth : client is not Auth"

    .line 590
    .line 591
    .line 592
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    goto :goto_10

    .line 596
    :cond_d
    :try_start_5
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 597
    .line 598
    if-eqz v3, :cond_e

    .line 599
    .line 600
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 601
    .line 602
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 603
    .line 604
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object p0

    .line 608
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 609
    .line 610
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 611
    .line 612
    .line 613
    move-result-object p0

    .line 614
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 615
    .line 616
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->semResumeEnroll()I

    .line 617
    .line 618
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

    .line 624
    .line 625
    if-nez p0, :cond_f

    .line 626
    .line 627
    const-string/jumbo p0, "daemonResumeAuth(): no face seh HAL!"

    .line 628
    .line 629
    .line 630
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    goto :goto_10

    .line 634
    :cond_f
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 635
    .line 636
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->resume()I

    .line 637
    .line 638
    .line 639
    move-result p0

    .line 640
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 646
    .line 647
    .line 648
    move-result-wide v5

    .line 649
    sub-long/2addr v5, v1

    .line 650
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    const-string/jumbo v0, "ms) RESULT: "

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object p0

    .line 666
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 667
    .line 668
    .line 669
    goto :goto_10

    .line 670
    :goto_f
    const-string/jumbo v0, "daemonResumeAuth: "

    .line 671
    .line 672
    .line 673
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 674
    .line 675
    .line 676
    :goto_10
    return-void

    .line 677
    :pswitch_4
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 678
    .line 679
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getHalInstance()Landroid/hardware/biometrics/face/IFace;

    .line 680
    .line 681
    .line 682
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 683
    .line 684
    .line 685
    move-result-object p0

    .line 686
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    const-string v0, "SemFace"

    .line 690
    .line 691
    const-string/jumbo v1, "sehOpenTaSession FINISH ("

    .line 692
    .line 693
    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 695
    .line 696
    .line 697
    move-result-wide v2

    .line 698
    :try_start_6
    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 699
    .line 700
    if-eqz v4, :cond_10

    .line 701
    .line 702
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 703
    .line 704
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 705
    .line 706
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object p0

    .line 710
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 711
    .line 712
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 713
    .line 714
    .line 715
    move-result-object p0

    .line 716
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 717
    .line 718
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 719
    .line 720
    .line 721
    :try_start_7
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 722
    .line 723
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object p0

    .line 727
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 728
    .line 729
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehOpenTaSession()I

    .line 730
    .line 731
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

    .line 736
    .line 737
    const-string/jumbo v5, "semOpenTaSession HIDL : "

    .line 738
    .line 739
    .line 740
    invoke-static {v4, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    .line 742
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

    .line 748
    .line 749
    if-nez p0, :cond_11

    .line 750
    .line 751
    const-string/jumbo p0, "daemonSessionOpen(): no face seh HAL!"

    .line 752
    .line 753
    .line 754
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .line 756
    .line 757
    goto :goto_13

    .line 758
    :cond_11
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 759
    .line 760
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->loadTA()I

    .line 761
    .line 762
    .line 763
    move-result p0

    .line 764
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 770
    .line 771
    .line 772
    move-result-wide v5

    .line 773
    sub-long/2addr v5, v2

    .line 774
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    const-string/jumbo v1, "ms) RESULT: "

    .line 778
    .line 779
    .line 780
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object p0

    .line 790
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 791
    .line 792
    .line 793
    goto :goto_13

    .line 794
    :goto_12
    const-string/jumbo v1, "daemonSessionOpen: "

    .line 795
    .line 796
    .line 797
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    .line 799
    .line 800
    :goto_13
    return-void

    .line 801
    :pswitch_5
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 802
    .line 803
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 804
    .line 805
    .line 806
    move-result-object p0

    .line 807
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    .line 809
    .line 810
    const-string/jumbo v0, "pause FINISH ("

    .line 811
    .line 812
    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 814
    .line 815
    .line 816
    move-result-wide v1

    .line 817
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 818
    .line 819
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    instance-of v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 824
    .line 825
    const-string v4, "SemFace"

    .line 826
    .line 827
    if-nez v3, :cond_12

    .line 828
    .line 829
    const-string/jumbo p0, "daemonPauseAuth : client is not Auth"

    .line 830
    .line 831
    .line 832
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .line 834
    .line 835
    goto :goto_16

    .line 836
    :cond_12
    :try_start_9
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 837
    .line 838
    if-eqz v3, :cond_13

    .line 839
    .line 840
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 841
    .line 842
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 843
    .line 844
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object p0

    .line 848
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 849
    .line 850
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 851
    .line 852
    .line 853
    move-result-object p0

    .line 854
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 855
    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 857
    .line 858
    .line 859
    :try_start_a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 860
    .line 861
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object p0

    .line 865
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 866
    .line 867
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    .line 868
    .line 869
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

    .line 874
    .line 875
    const-string/jumbo v5, "semPauseEnroll HIDL : "

    .line 876
    .line 877
    .line 878
    invoke-static {v3, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    .line 880
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

    .line 886
    .line 887
    if-nez p0, :cond_14

    .line 888
    .line 889
    const-string/jumbo p0, "daemonPauseAuth(): no face seh HAL!"

    .line 890
    .line 891
    .line 892
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .line 894
    .line 895
    goto :goto_16

    .line 896
    :cond_14
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 897
    .line 898
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->pause()I

    .line 899
    .line 900
    .line 901
    move-result p0

    .line 902
    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 903
    .line 904
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 908
    .line 909
    .line 910
    move-result-wide v5

    .line 911
    sub-long/2addr v5, v1

    .line 912
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    const-string/jumbo v0, "ms) RESULT: "

    .line 916
    .line 917
    .line 918
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object p0

    .line 928
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 929
    .line 930
    .line 931
    goto :goto_16

    .line 932
    :goto_15
    const-string/jumbo v0, "daemonPauseAuth: "

    .line 933
    .line 934
    .line 935
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    .line 937
    .line 938
    :goto_16
    return-void

    .line 939
    :pswitch_6
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 940
    .line 941
    const/4 v0, 0x0

    .line 942
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 943
    .line 944
    const/4 v1, 0x0

    .line 945
    move v2, v1

    .line 946
    :goto_17
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 947
    .line 948
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 949
    .line 950
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 951
    .line 952
    .line 953
    move-result v3

    .line 954
    if-ge v2, v3, :cond_18

    .line 955
    .line 956
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 957
    .line 958
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 959
    .line 960
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 965
    .line 966
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 967
    .line 968
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 969
    .line 970
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 971
    .line 972
    .line 973
    move-result v4

    .line 974
    invoke-static {v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 975
    .line 976
    .line 977
    move-result-object v4

    .line 978
    const/4 v5, 0x1

    .line 979
    if-eqz v4, :cond_15

    .line 980
    .line 981
    iget v6, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 982
    .line 983
    add-int/2addr v6, v5

    .line 984
    iput v6, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 985
    .line 986
    goto :goto_18

    .line 987
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    const-string v6, "Performance tracker is null. Not counting HAL death."

    .line 992
    .line 993
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .line 995
    .line 996
    :goto_18
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 997
    .line 998
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 999
    .line 1000
    .line 1001
    move-result-object v4

    .line 1002
    if-eqz v4, :cond_16

    .line 1003
    .line 1004
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isInterruptable()Z

    .line 1005
    .line 1006
    .line 1007
    move-result v6

    .line 1008
    if-eqz v6, :cond_16

    .line 1009
    .line 1010
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    const-string v7, "Sending face hardware unavailable error for client: "

    .line 1013
    .line 1014
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v6

    .line 1024
    const-string v7, "Sensor"

    .line 1025
    .line 1026
    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .line 1028
    .line 1029
    check-cast v4, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 1030
    .line 1031
    invoke-interface {v4, v5, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 1032
    .line 1033
    .line 1034
    const/4 v4, -0x1

    .line 1035
    const/16 v6, 0x94

    .line 1036
    .line 1037
    const/4 v7, 0x4

    .line 1038
    invoke-static {v6, v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1039
    .line 1040
    .line 1041
    goto :goto_19

    .line 1042
    :cond_16
    if-eqz v4, :cond_17

    .line 1043
    .line 1044
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    .line 1045
    .line 1046
    .line 1047
    :cond_17
    :goto_19
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 1048
    .line 1049
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 1050
    .line 1051
    .line 1052
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 1053
    .line 1054
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    .line 1055
    .line 1056
    .line 1057
    iput-object v0, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 1058
    .line 1059
    add-int/lit8 v2, v2, 0x1

    .line 1060
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
