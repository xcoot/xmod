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

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_4

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    instance-of v3, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 44
    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v5, "Task stack changed for client: "

    .line 56
    .line 57
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v3, v4}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v3, v4}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move-object v3, v2

    .line 97
    check-cast v3, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object v3, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v3}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    iget-boolean v3, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 115
    .line 116
    if-nez v3, :cond_3

    .line 117
    .line 118
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v5, "Stopping background authentication, currentClient: "

    .line 127
    .line 128
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 142
    .line 143
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 144
    .line 145
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 146
    .line 147
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 152
    .line 153
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 154
    .line 155
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 156
    .line 157
    iget-wide v5, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 158
    .line 159
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    .line 160
    .line 161
    .line 162
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_4
    return-void

    .line 167
    :pswitch_0
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 168
    .line 169
    const/4 v1, 0x1

    .line 170
    iput-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsHalStarted:Z

    .line 171
    .line 172
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_5

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    .line 189
    .line 190
    invoke-interface {v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;->onHalStarted(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    return-void

    .line 195
    :pswitch_1
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getHalInstance()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_2
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 202
    .line 203
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 204
    .line 205
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 215
    .line 216
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 217
    .line 218
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 219
    .line 220
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 225
    .line 226
    iget-object v6, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 227
    .line 228
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 229
    .line 230
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 231
    .line 232
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getCurrentSessionUserId()I

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    .line 243
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

    .line 249
    .line 250
    const/4 v12, 0x1

    .line 251
    const/4 v15, 0x0

    .line 252
    const/16 v16, 0x0

    .line 253
    .line 254
    move-object v3, v2

    .line 255
    move v9, v1

    .line 256
    invoke-direct/range {v3 .. v16}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_3
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 264
    .line 265
    const/4 v1, 0x0

    .line 266
    :goto_3
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 267
    .line 268
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 269
    .line 270
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-ge v1, v2, :cond_8

    .line 275
    .line 276
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 277
    .line 278
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 279
    .line 280
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 285
    .line 286
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 293
    .line 294
    if-eqz v3, :cond_6

    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string/jumbo v5, "onOneHandModeEnabled: ["

    .line 303
    .line 304
    .line 305
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v5, "] = "

    .line 312
    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    :cond_6
    instance-of v3, v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    .line 327
    .line 328
    if-nez v3, :cond_7

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    const-string/jumbo v5, "handle OneHandMode, client: "

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    .line 350
    .line 351
    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;->onOneHandModeEnabled()V

    .line 352
    .line 353
    .line 354
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_8
    return-void

    .line 358
    :pswitch_4
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 359
    .line 360
    const/4 v1, 0x0

    .line 361
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 362
    .line 363
    const/4 v2, 0x0

    .line 364
    move v3, v2

    .line 365
    :goto_5
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 366
    .line 367
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 368
    .line 369
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    if-ge v3, v4, :cond_a

    .line 374
    .line 375
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 376
    .line 377
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 378
    .line 379
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 384
    .line 385
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 386
    .line 387
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 388
    .line 389
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    invoke-static {v5}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    if-eqz v5, :cond_9

    .line 398
    .line 399
    iget v6, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 400
    .line 401
    add-int/lit8 v6, v6, 0x1

    .line 402
    .line 403
    iput v6, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    const-string v6, "Performance tracker is null. Not counting HAL death."

    .line 411
    .line 412
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->onBinderDied()V

    .line 416
    .line 417
    .line 418
    add-int/lit8 v3, v3, 0x1

    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_a
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonForHidl:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 422
    .line 423
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 424
    .line 425
    iput-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsHalStarted:Z

    .line 426
    .line 427
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    const-string/jumbo v3, "setFingerprintHalTid: 0"

    .line 435
    .line 436
    .line 437
    const-string v4, "BiometricsBoosting"

    .line 438
    .line 439
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    iput v2, v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mFingerprintHalTid:I

    .line 443
    .line 444
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-eqz v1, :cond_b

    .line 455
    .line 456
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
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
