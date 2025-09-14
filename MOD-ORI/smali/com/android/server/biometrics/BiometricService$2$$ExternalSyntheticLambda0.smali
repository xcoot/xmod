.class public final synthetic Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JI)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;JI)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;JI)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/biometrics/BiometricService$1;

    .line 11
    .line 12
    iget-wide v2, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    .line 13
    .line 14
    iget v0, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v4, "handleAuthenticationRejected()"

    .line 22
    .line 23
    .line 24
    const-string v5, "BiometricService"

    .line 25
    .line 26
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const-string/jumbo v0, "handleAuthenticationRejected: AuthSession is not current"

    .line 36
    .line 37
    .line 38
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const-string v3, "BiometricService/AuthSession"

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    const-string/jumbo v0, "onAuthenticationRejected after successful auth"

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/16 v5, 0x64

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->onBiometricError(III)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    const/4 v0, 0x4

    .line 76
    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 82
    .line 83
    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_1
    const-string v1, "RemoteException"

    .line 88
    .line 89
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :goto_2
    return-void

    .line 93
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    .line 96
    .line 97
    iget-wide v2, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    .line 98
    .line 99
    iget v0, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    .line 100
    .line 101
    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 102
    .line 103
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    const-string v0, "BiometricService"

    .line 110
    .line 111
    const-string/jumbo v1, "handleOnReadyForAuthentication: AuthSession is not current"

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_3
    iget-boolean v2, v1, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    .line 120
    .line 121
    const-string v3, "BiometricService/AuthSession"

    .line 122
    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    const-string v1, "Received cookie but already cancelled (ignoring): "

    .line 126
    .line 127
    invoke-static {v0, v1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_8

    .line 131
    .line 132
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_5

    .line 137
    .line 138
    const-string/jumbo v0, "onCookieReceived after successful auth"

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :cond_5
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    const-string/jumbo v2, "onCookieReceived: "

    .line 151
    .line 152
    .line 153
    const-string v4, ", state = "

    .line 154
    .line 155
    invoke-static {v0, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget v4, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 160
    .line 161
    invoke-static {v2, v4, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    if-nez v0, :cond_7

    .line 165
    .line 166
    goto/16 :goto_8

    .line 167
    .line 168
    :cond_7
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    const/4 v5, 0x2

    .line 181
    if-eqz v4, :cond_9

    .line 182
    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    .line 188
    .line 189
    iget v6, v4, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 190
    .line 191
    if-ne v0, v6, :cond_8

    .line 192
    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v7, "Sensor("

    .line 196
    .line 197
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget v7, v4, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 201
    .line 202
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v7, ") matched cookie: "

    .line 206
    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    const-string v7, "BiometricService/Sensor"

    .line 218
    .line 219
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    iput v5, v4, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->allCookiesReceived()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_f

    .line 230
    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 232
    .line 233
    .line 234
    move-result-wide v6

    .line 235
    iput-wide v6, v1, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    .line 236
    .line 237
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    .line 238
    .line 239
    const/4 v2, 0x3

    .line 240
    invoke-direct {v0, v2}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    .line 244
    .line 245
    .line 246
    iget v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 247
    .line 248
    const/4 v2, 0x5

    .line 249
    if-eq v0, v2, :cond_e

    .line 250
    .line 251
    :try_start_1
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 252
    .line 253
    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 254
    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    const/4 v4, 0x0

    .line 264
    const/4 v6, 0x1

    .line 265
    if-eqz v2, :cond_b

    .line 266
    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_a

    .line 278
    .line 279
    move v10, v6

    .line 280
    goto :goto_4

    .line 281
    :cond_b
    move v10, v4

    .line 282
    :goto_4
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 283
    .line 284
    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 285
    .line 286
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    new-array v0, v0, [I

    .line 291
    .line 292
    iput-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 293
    .line 294
    move v0, v4

    .line 295
    :goto_5
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 296
    .line 297
    iget-object v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 298
    .line 299
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-ge v0, v2, :cond_c

    .line 304
    .line 305
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 306
    .line 307
    iget-object v7, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 308
    .line 309
    iget-object v7, v7, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 310
    .line 311
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    check-cast v7, Lcom/android/server/biometrics/BiometricSensor;

    .line 316
    .line 317
    iget v7, v7, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 318
    .line 319
    aput v7, v2, v0

    .line 320
    .line 321
    add-int/lit8 v0, v0, 0x1

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :catch_1
    move-exception v0

    .line 325
    move-object/from16 p0, v3

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_c
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 329
    .line 330
    iget-object v7, v1, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 331
    .line 332
    iget-object v8, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 333
    .line 334
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 335
    .line 336
    iget-boolean v9, v2, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 337
    .line 338
    if-eqz v9, :cond_d

    .line 339
    .line 340
    iget-boolean v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 341
    .line 342
    if-eqz v2, :cond_d

    .line 343
    .line 344
    move v9, v6

    .line 345
    goto :goto_6

    .line 346
    :cond_d
    move v9, v4

    .line 347
    :goto_6
    iget v11, v1, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 348
    .line 349
    iget-wide v12, v1, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    .line 350
    .line 351
    iget-object v14, v1, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    .line 353
    move-object/from16 p0, v3

    .line 354
    .line 355
    :try_start_2
    iget-wide v2, v1, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 356
    .line 357
    move-object v6, v0

    .line 358
    move-wide v15, v2

    .line 359
    invoke-virtual/range {v6 .. v16}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZIJLjava/lang/String;J)V

    .line 360
    .line 361
    .line 362
    iput v5, v1, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :catch_2
    move-exception v0

    .line 366
    :goto_7
    const-string v1, "Remote exception"

    .line 367
    .line 368
    move-object/from16 v2, p0

    .line 369
    .line 370
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_e
    const/4 v0, 0x3

    .line 375
    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 376
    .line 377
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    .line 378
    .line 379
    const/4 v2, 0x1

    .line 380
    invoke-direct {v0, v2}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    .line 384
    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_f
    move-object v2, v3

    .line 388
    const-string/jumbo v0, "onCookieReceived: still waiting"

    .line 389
    .line 390
    .line 391
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    :goto_8
    return-void

    .line 395
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v1, Lcom/android/server/biometrics/BiometricService$2;

    .line 398
    .line 399
    iget-wide v2, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    .line 400
    .line 401
    iget v0, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    .line 402
    .line 403
    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string/jumbo v5, "onSystemEvent: "

    .line 411
    .line 412
    .line 413
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    const-string v5, "BiometricService"

    .line 424
    .line 425
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    if-nez v1, :cond_10

    .line 433
    .line 434
    const-string/jumbo v0, "handleOnSystemEvent: AuthSession is not current"

    .line 435
    .line 436
    .line 437
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    const-string v3, "BiometricService/AuthSession"

    .line 446
    .line 447
    if-eqz v2, :cond_11

    .line 448
    .line 449
    const-string/jumbo v0, "onSystemEvent after successful auth"

    .line 450
    .line 451
    .line 452
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    goto :goto_9

    .line 456
    :cond_11
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 457
    .line 458
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isReceiveSystemEvents()Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-nez v2, :cond_12

    .line 463
    .line 464
    goto :goto_9

    .line 465
    :cond_12
    :try_start_3
    iget-object v1, v1, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 466
    .line 467
    invoke-interface {v1, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 468
    .line 469
    .line 470
    goto :goto_9

    .line 471
    :catch_3
    move-exception v0

    .line 472
    const-string v1, "RemoteException"

    .line 473
    .line 474
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .line 476
    .line 477
    :goto_9
    return-void

    .line 478
    nop

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
