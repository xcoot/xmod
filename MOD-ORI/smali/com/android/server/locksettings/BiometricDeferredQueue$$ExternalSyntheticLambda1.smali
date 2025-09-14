.class public final synthetic Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, ", user: "

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    iget-object v5, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 15
    .line 16
    const-string v6, "BiometricDeferredQueue"

    .line 17
    .line 18
    if-nez v0, :cond_7

    .line 19
    .line 20
    const-string v0, "Processing pending resetLockout for face"

    .line 21
    .line 22
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 33
    .line 34
    if-eqz v7, :cond_6

    .line 35
    .line 36
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    const-string/jumbo v7, "mFaceGenerateChallengeCallback not null, previous operation may be stuck"

    .line 41
    .line 42
    .line 43
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    new-instance v8, Landroid/util/ArraySet;

    .line 53
    .line 54
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_1

    .line 66
    .line 67
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    check-cast v10, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 72
    .line 73
    iget v10, v10, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 74
    .line 75
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    new-instance v9, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    .line 84
    .line 85
    iget-object v10, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 86
    .line 87
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v11, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceFinishCallback:Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;

    .line 91
    .line 92
    iput-object v11, v9, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->finishCallback:Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;

    .line 93
    .line 94
    iput-object v10, v9, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->faceManager:Landroid/hardware/face/FaceManager;

    .line 95
    .line 96
    iput-object v5, v9, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 97
    .line 98
    iput-object v8, v9, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->sensorIds:Ljava/util/Set;

    .line 99
    .line 100
    iput-object v0, v9, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->pendingResetLockuts:Ljava/util/List;

    .line 101
    .line 102
    iput-object v9, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    .line 103
    .line 104
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_6

    .line 113
    .line 114
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    check-cast v8, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 119
    .line 120
    iget-boolean v9, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    .line 121
    .line 122
    const-string v10, "Resetting face lockout for sensor: "

    .line 123
    .line 124
    if-eqz v9, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_2

    .line 135
    .line 136
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    check-cast v11, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 141
    .line 142
    iget-boolean v12, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    .line 143
    .line 144
    if-eqz v12, :cond_4

    .line 145
    .line 146
    new-instance v12, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v13, "Generating challenge for sensor: "

    .line 149
    .line 150
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget v13, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 154
    .line 155
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v13, v11, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 162
    .line 163
    invoke-static {v12, v13, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v12, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 167
    .line 168
    iget v13, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 169
    .line 170
    iget v11, v11, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 171
    .line 172
    iget-object v14, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    .line 173
    .line 174
    invoke-virtual {v12, v13, v11, v14}, Landroid/hardware/face/FaceManager;->generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget v13, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 184
    .line 185
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget v13, v11, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 192
    .line 193
    invoke-static {v12, v13, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v5, v11, v3, v4}, Lcom/android/server/locksettings/BiometricDeferredQueue;->requestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    if-eqz v12, :cond_3

    .line 201
    .line 202
    iget-object v13, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 203
    .line 204
    iget v14, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 205
    .line 206
    iget v11, v11, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 207
    .line 208
    invoke-virtual {v13, v14, v11, v12}, Landroid/hardware/face/FaceManager;->resetLockout(II[B)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    if-eqz v11, :cond_2

    .line 221
    .line 222
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    check-cast v11, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 227
    .line 228
    new-instance v12, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget v13, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 234
    .line 235
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget v13, v11, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 242
    .line 243
    invoke-static {v12, v13, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v12, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 247
    .line 248
    iget v13, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 249
    .line 250
    iget v11, v11, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 251
    .line 252
    invoke-virtual {v12, v13, v11, v1}, Landroid/hardware/face/FaceManager;->resetLockout(II[B)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    .line 260
    .line 261
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_d

    .line 268
    .line 269
    const-string v0, "Processing pending resetLockout for fingerprint"

    .line 270
    .line 271
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    .line 275
    .line 276
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    .line 280
    .line 281
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 282
    .line 283
    if-eqz v7, :cond_c

    .line 284
    .line 285
    invoke-virtual {v7}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-eqz v8, :cond_c

    .line 298
    .line 299
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    check-cast v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 304
    .line 305
    iget-boolean v9, v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    .line 306
    .line 307
    if-nez v9, :cond_9

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    if-eqz v10, :cond_8

    .line 318
    .line 319
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    check-cast v10, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 324
    .line 325
    iget-object v11, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 326
    .line 327
    iget v12, v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 328
    .line 329
    iget v10, v10, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 330
    .line 331
    invoke-virtual {v11, v12, v10, v1}, Landroid/hardware/fingerprint/FingerprintManager;->resetLockout(II[B)V

    .line 332
    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_9
    iget-boolean v9, v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    .line 336
    .line 337
    if-nez v9, :cond_b

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    :cond_a
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    if-eqz v10, :cond_8

    .line 348
    .line 349
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    check-cast v10, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 354
    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string v12, "Resetting fingerprint lockout for sensor: "

    .line 358
    .line 359
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget v12, v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 363
    .line 364
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    iget v12, v10, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 371
    .line 372
    invoke-static {v11, v12, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-static {v5, v10, v3, v4}, Lcom/android/server/locksettings/BiometricDeferredQueue;->requestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B

    .line 376
    .line 377
    .line 378
    move-result-object v11

    .line 379
    if-eqz v11, :cond_a

    .line 380
    .line 381
    iget-object v12, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 382
    .line 383
    iget v13, v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 384
    .line 385
    iget v10, v10, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 386
    .line 387
    invoke-virtual {v12, v13, v10, v11}, Landroid/hardware/fingerprint/FingerprintManager;->resetLockout(II[B)V

    .line 388
    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v10, "No fingerprint HAL interface requires HAT with challenge, sensorId: "

    .line 394
    .line 395
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iget v8, v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 399
    .line 400
    invoke-static {v9, v8, v6}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_c
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 407
    .line 408
    .line 409
    :cond_d
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockouts:Ljava/util/ArrayList;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-nez v0, :cond_10

    .line 416
    .line 417
    const-string v0, "Processing pending resetLockouts(Generic)"

    .line 418
    .line 419
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    new-instance v0, Ljava/util/ArrayList;

    .line 423
    .line 424
    iget-object v1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockouts:Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    :cond_e
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_f

    .line 438
    .line 439
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 444
    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v7, "Resetting biometric lockout for user: "

    .line 448
    .line 449
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget v7, v1, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 453
    .line 454
    invoke-static {v2, v7, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-static {v5, v1, v3, v4}, Lcom/android/server/locksettings/BiometricDeferredQueue;->requestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    if-eqz v2, :cond_e

    .line 462
    .line 463
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 464
    .line 465
    iget v1, v1, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 466
    .line 467
    invoke-virtual {v7, v1, v2}, Landroid/hardware/biometrics/BiometricManager;->resetLockout(I[B)V

    .line 468
    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_f
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockouts:Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 474
    .line 475
    .line 476
    :cond_10
    return-void
.end method
