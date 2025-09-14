.class public final Lcom/android/server/biometrics/PreAuthInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final confirmationRequested:Z

.field public final credentialAvailable:Z

.field public final credentialRequested:Z

.field public final eligibleSensors:Ljava/util/List;

.field public final ineligibleSensors:Ljava/util/List;

.field public final mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

.field public final mBiometricRequested:Z

.field public final mBiometricStrengthRequested:I

.field public final mIsMandatoryBiometricsAuthentication:Z

.field public final mOnlyMandatoryBiometricsRequested:Z


# direct methods
.method public constructor <init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/BiometricCameraManagerImpl;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    .line 7
    .line 8
    iput-object p8, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    .line 9
    .line 10
    iput-boolean p3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 11
    .line 12
    iput-object p4, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 15
    .line 16
    iput-boolean p6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 17
    .line 18
    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    .line 23
    .line 24
    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    .line 25
    .line 26
    .line 27
    iput-boolean p9, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    .line 28
    .line 29
    iput-boolean p10, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    .line 30
    .line 31
    return-void
.end method

.method public static create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v7, p5

    .line 6
    .line 7
    move-object/from16 v2, p6

    .line 8
    .line 9
    move-object/from16 v8, p9

    .line 10
    .line 11
    const/16 v3, 0x100

    .line 12
    .line 13
    const/16 v4, 0x8

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x1

    .line 17
    const/4 v9, 0x4

    .line 18
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->semGetBiometricType()I

    .line 19
    .line 20
    .line 21
    move-result v10

    .line 22
    sget-boolean v11, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 23
    .line 24
    and-int/lit8 v11, v10, 0x1

    .line 25
    .line 26
    if-eqz v11, :cond_0

    .line 27
    .line 28
    move v11, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v11, 0x0

    .line 31
    :goto_0
    and-int/lit8 v13, v10, 0x2

    .line 32
    .line 33
    if-eqz v13, :cond_1

    .line 34
    .line 35
    or-int/2addr v11, v4

    .line 36
    :cond_1
    and-int/lit8 v13, v10, 0x4

    .line 37
    .line 38
    if-eqz v13, :cond_2

    .line 39
    .line 40
    or-int/2addr v11, v9

    .line 41
    :cond_2
    and-int/2addr v10, v4

    .line 42
    if-eqz v10, :cond_3

    .line 43
    .line 44
    or-int/2addr v11, v3

    .line 45
    :cond_3
    if-eqz v11, :cond_4

    .line 46
    .line 47
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    or-int/lit16 v10, v10, 0xff

    .line 52
    .line 53
    invoke-virtual {v7, v10}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const/high16 v13, 0x10000

    .line 61
    .line 62
    if-ne v10, v13, :cond_5

    .line 63
    .line 64
    move v10, v6

    .line 65
    goto :goto_1

    .line 66
    :cond_5
    const/4 v10, 0x0

    .line 67
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    iget-object v15, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 72
    .line 73
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v15, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const-string v15, "BiometricService"

    .line 84
    .line 85
    if-nez v3, :cond_6

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo v12, "update mb toggle for user "

    .line 90
    .line 91
    .line 92
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsForAllProfiles(I)V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 109
    .line 110
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    check-cast v3, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_7

    .line 121
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string/jumbo v12, "update mb reqs for user "

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsRequirementsForAllProfiles(I)V

    .line 141
    .line 142
    .line 143
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v12, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 149
    .line 150
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    .line 156
    check-cast v12, Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-virtual {v12, v9, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v9, " "

    .line 166
    .line 167
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v12, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 171
    .line 172
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 177
    .line 178
    check-cast v12, Ljava/util/HashMap;

    .line 179
    .line 180
    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(I)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    .line 201
    .line 202
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    check-cast v4, Ljava/util/HashMap;

    .line 207
    .line 208
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-nez v4, :cond_9

    .line 219
    .line 220
    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    .line 221
    .line 222
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    check-cast v4, Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    check-cast v4, Ljava/lang/Boolean;

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_8

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_8
    const/4 v4, 0x0

    .line 242
    goto :goto_3

    .line 243
    :cond_9
    :goto_2
    const/4 v4, 0x1

    .line 244
    :goto_3
    invoke-static {v15, v3, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 245
    .line 246
    .line 247
    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 248
    .line 249
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v3, Ljava/util/HashMap;

    .line 254
    .line 255
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Ljava/lang/Boolean;

    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_b

    .line 266
    .line 267
    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 268
    .line 269
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    check-cast v3, Ljava/util/HashMap;

    .line 274
    .line 275
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    check-cast v3, Ljava/lang/Boolean;

    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-eqz v3, :cond_b

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(I)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_b

    .line 292
    .line 293
    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    .line 294
    .line 295
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    check-cast v3, Ljava/util/HashMap;

    .line 300
    .line 301
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    check-cast v3, Ljava/lang/Boolean;

    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-nez v3, :cond_a

    .line 312
    .line 313
    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    .line 314
    .line 315
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    check-cast v3, Ljava/util/HashMap;

    .line 320
    .line 321
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    check-cast v3, Ljava/lang/Boolean;

    .line 326
    .line 327
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_b

    .line 332
    .line 333
    :cond_a
    const/4 v3, 0x1

    .line 334
    goto :goto_4

    .line 335
    :cond_b
    const/4 v3, 0x0

    .line 336
    :goto_4
    and-int v4, v14, v13

    .line 337
    .line 338
    if-ne v4, v13, :cond_c

    .line 339
    .line 340
    const/4 v4, 0x1

    .line 341
    goto :goto_5

    .line 342
    :cond_c
    const/4 v4, 0x0

    .line 343
    :goto_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->mandatoryBiometrics()Z

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    const-string v6, "BiometricService/PreAuthInfo"

    .line 348
    .line 349
    if-eqz v5, :cond_d

    .line 350
    .line 351
    if-eqz v3, :cond_d

    .line 352
    .line 353
    if-eqz v4, :cond_d

    .line 354
    .line 355
    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/app/trust/ITrustManager;->isInSignificantPlace()Z

    .line 356
    .line 357
    .line 358
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    const/4 v4, 0x1

    .line 360
    xor-int/2addr v3, v4

    .line 361
    goto :goto_6

    .line 362
    :catch_0
    const-string v3, "Remote exception while trying to check if user is in a trusted location."

    .line 363
    .line 364
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    :cond_d
    const/4 v3, 0x0

    .line 368
    :goto_6
    if-eqz v3, :cond_f

    .line 369
    .line 370
    const/16 v3, 0xf

    .line 371
    .line 372
    invoke-virtual {v7, v3}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    if-nez v3, :cond_e

    .line 380
    .line 381
    const/high16 v3, 0x1040000

    .line 382
    .line 383
    move-object/from16 v4, p8

    .line 384
    .line 385
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v7, v3}, Landroid/hardware/biometrics/PromptInfo;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 390
    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_e
    move-object/from16 v4, p8

    .line 394
    .line 395
    :goto_7
    const/4 v12, 0x1

    .line 396
    goto :goto_8

    .line 397
    :cond_f
    move-object/from16 v4, p8

    .line 398
    .line 399
    const/4 v12, 0x0

    .line 400
    :goto_8
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    and-int/lit16 v3, v3, 0xff

    .line 405
    .line 406
    if-eqz v3, :cond_10

    .line 407
    .line 408
    const/4 v3, 0x1

    .line 409
    goto :goto_9

    .line 410
    :cond_10
    const/4 v3, 0x0

    .line 411
    :goto_9
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    and-int/lit16 v5, v5, 0xff

    .line 416
    .line 417
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 418
    .line 419
    .line 420
    move-result v9

    .line 421
    invoke-static {v9}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    .line 422
    .line 423
    .line 424
    move-result v9

    .line 425
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getDeviceId()I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    move-object/from16 v13, p0

    .line 430
    .line 431
    invoke-interface {v13, v1, v4}, Landroid/app/trust/ITrustManager;->isDeviceSecure(II)Z

    .line 432
    .line 433
    .line 434
    move-result v13

    .line 435
    const-string/jumbo v4, "create: "

    .line 436
    .line 437
    .line 438
    const-string v14, ", "

    .line 439
    .line 440
    invoke-static {v4, v12, v14, v3, v14}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v15

    .line 454
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    new-instance v4, Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .line 474
    .line 475
    new-instance v14, Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .line 479
    .line 480
    if-eqz v3, :cond_27

    .line 481
    .line 482
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 483
    .line 484
    .line 485
    move-result-object v15

    .line 486
    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 487
    .line 488
    .line 489
    move-result v16

    .line 490
    if-eqz v16, :cond_27

    .line 491
    .line 492
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v16

    .line 496
    move-object/from16 v7, v16

    .line 497
    .line 498
    check-cast v7, Lcom/android/server/biometrics/BiometricSensor;

    .line 499
    .line 500
    move-object/from16 p0, v15

    .line 501
    .line 502
    if-eqz v11, :cond_11

    .line 503
    .line 504
    iget v15, v7, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 505
    .line 506
    and-int/2addr v15, v11

    .line 507
    if-nez v15, :cond_11

    .line 508
    .line 509
    move-object/from16 v15, p0

    .line 510
    .line 511
    move-object/from16 v7, p5

    .line 512
    .line 513
    goto :goto_a

    .line 514
    :cond_11
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    .line 515
    .line 516
    .line 517
    move-result-object v15

    .line 518
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    .line 519
    .line 520
    .line 521
    move-result v16

    .line 522
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 523
    .line 524
    .line 525
    move-result v17

    .line 526
    if-nez v17, :cond_12

    .line 527
    .line 528
    move/from16 v17, v11

    .line 529
    .line 530
    iget v11, v7, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 531
    .line 532
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    invoke-interface {v15, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v11

    .line 540
    if-nez v11, :cond_13

    .line 541
    .line 542
    move/from16 v16, v12

    .line 543
    .line 544
    const/4 v8, 0x2

    .line 545
    goto/16 :goto_f

    .line 546
    .line 547
    :cond_12
    move/from16 v17, v11

    .line 548
    .line 549
    :cond_13
    iget v11, v7, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 550
    .line 551
    const/16 v15, 0x8

    .line 552
    .line 553
    if-ne v11, v15, :cond_14

    .line 554
    .line 555
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    :cond_14
    iget v11, v7, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 559
    .line 560
    invoke-static {v11, v5}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 561
    .line 562
    .line 563
    move-result v11

    .line 564
    invoke-virtual {v7}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 565
    .line 566
    .line 567
    move-result v15

    .line 568
    invoke-static {v15, v5}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 569
    .line 570
    .line 571
    move-result v15

    .line 572
    if-eqz v11, :cond_15

    .line 573
    .line 574
    if-nez v15, :cond_15

    .line 575
    .line 576
    const/4 v11, 0x5

    .line 577
    :goto_b
    move v8, v11

    .line 578
    move/from16 v16, v12

    .line 579
    .line 580
    goto/16 :goto_f

    .line 581
    .line 582
    :cond_15
    if-nez v11, :cond_16

    .line 583
    .line 584
    move/from16 v16, v12

    .line 585
    .line 586
    const/4 v8, 0x4

    .line 587
    goto/16 :goto_f

    .line 588
    .line 589
    :cond_16
    :try_start_1
    iget-object v15, v7, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 590
    .line 591
    invoke-interface {v15, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    .line 592
    .line 593
    .line 594
    move-result v15

    .line 595
    if-nez v15, :cond_17

    .line 596
    .line 597
    :catch_1
    move/from16 v16, v12

    .line 598
    .line 599
    :catch_2
    const/4 v8, 0x6

    .line 600
    goto/16 :goto_f

    .line 601
    .line 602
    :cond_17
    iget-object v15, v7, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 603
    .line 604
    invoke-interface {v15, v1, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    .line 605
    .line 606
    .line 607
    move-result v15
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 608
    if-nez v15, :cond_18

    .line 609
    .line 610
    if-nez v16, :cond_18

    .line 611
    .line 612
    const/4 v11, 0x7

    .line 613
    goto :goto_b

    .line 614
    :cond_18
    iget v15, v7, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 615
    .line 616
    if-eqz v8, :cond_1b

    .line 617
    .line 618
    const/16 v11, 0x8

    .line 619
    .line 620
    if-ne v15, v11, :cond_1b

    .line 621
    .line 622
    :try_start_2
    iget-object v11, v8, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 623
    .line 624
    if-eqz v11, :cond_19

    .line 625
    .line 626
    move/from16 v16, v12

    .line 627
    .line 628
    const/4 v8, 0x1

    .line 629
    const/4 v12, 0x2

    .line 630
    :try_start_3
    invoke-virtual {v11, v8, v12}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    .line 631
    .line 632
    .line 633
    move-result v11

    .line 634
    if-eqz v11, :cond_1a

    .line 635
    .line 636
    const/4 v8, 0x1

    .line 637
    goto :goto_c

    .line 638
    :cond_19
    move/from16 v16, v12

    .line 639
    .line 640
    :cond_1a
    const/4 v8, 0x0

    .line 641
    :goto_c
    if-eqz v8, :cond_1c

    .line 642
    .line 643
    const/16 v8, 0xc

    .line 644
    .line 645
    goto/16 :goto_f

    .line 646
    .line 647
    :cond_1b
    move/from16 v16, v12

    .line 648
    .line 649
    :cond_1c
    iget-object v8, v7, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 650
    .line 651
    invoke-interface {v8, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getLockoutModeForUser(I)I

    .line 652
    .line 653
    .line 654
    move-result v8
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 655
    const/4 v11, 0x1

    .line 656
    if-ne v8, v11, :cond_1d

    .line 657
    .line 658
    const/16 v8, 0xa

    .line 659
    .line 660
    goto :goto_f

    .line 661
    :cond_1d
    const/4 v11, 0x2

    .line 662
    if-ne v8, v11, :cond_1e

    .line 663
    .line 664
    const/16 v8, 0xb

    .line 665
    .line 666
    goto :goto_f

    .line 667
    :cond_1e
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(I)Z

    .line 668
    .line 669
    .line 670
    move-result v8

    .line 671
    if-nez v8, :cond_1f

    .line 672
    .line 673
    const/16 v8, 0x8

    .line 674
    .line 675
    goto :goto_f

    .line 676
    :cond_1f
    if-eqz p7, :cond_25

    .line 677
    .line 678
    if-eq v15, v11, :cond_22

    .line 679
    .line 680
    const/4 v8, 0x4

    .line 681
    if-eq v15, v8, :cond_21

    .line 682
    .line 683
    const/16 v12, 0x8

    .line 684
    .line 685
    if-eq v15, v12, :cond_20

    .line 686
    .line 687
    const-string v8, "Error modality="

    .line 688
    .line 689
    invoke-static {v15, v8, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    const/4 v8, 0x0

    .line 693
    goto :goto_d

    .line 694
    :cond_20
    const/16 v8, 0x80

    .line 695
    .line 696
    goto :goto_d

    .line 697
    :cond_21
    const/16 v12, 0x8

    .line 698
    .line 699
    const/16 v8, 0x100

    .line 700
    .line 701
    goto :goto_d

    .line 702
    :cond_22
    const/16 v12, 0x8

    .line 703
    .line 704
    const/16 v8, 0x20

    .line 705
    .line 706
    :goto_d
    if-eqz v8, :cond_24

    .line 707
    .line 708
    const/4 v11, 0x0

    .line 709
    move-object/from16 v12, p1

    .line 710
    .line 711
    invoke-virtual {v12, v11, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 712
    .line 713
    .line 714
    move-result v11

    .line 715
    and-int/2addr v8, v11

    .line 716
    if-eqz v8, :cond_23

    .line 717
    .line 718
    const/4 v8, 0x1

    .line 719
    goto :goto_e

    .line 720
    :cond_23
    const/4 v8, 0x0

    .line 721
    :goto_e
    const-string/jumbo v11, "isBiometricDisabledByDevicePolicy("

    .line 722
    .line 723
    .line 724
    const-string v0, ","

    .line 725
    .line 726
    const-string v12, ")="

    .line 727
    .line 728
    invoke-static {v15, v1, v11, v0, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    if-eqz v8, :cond_25

    .line 743
    .line 744
    const/4 v0, 0x3

    .line 745
    move v8, v0

    .line 746
    goto :goto_f

    .line 747
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 748
    .line 749
    const-string v1, "Modality unknown to devicePolicyManager: "

    .line 750
    .line 751
    invoke-static {v15, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    throw v0

    .line 759
    :cond_25
    const/4 v8, 0x1

    .line 760
    :goto_f
    const-string v0, "Package: "

    .line 761
    .line 762
    const-string v11, " Sensor ID: "

    .line 763
    .line 764
    invoke-static {v0, v2, v11}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    iget v11, v7, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 769
    .line 770
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    const-string v11, " Modality: "

    .line 774
    .line 775
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    iget v11, v7, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 779
    .line 780
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    const-string v11, " Status: "

    .line 784
    .line 785
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    const/4 v0, 0x1

    .line 799
    if-ne v8, v0, :cond_26

    .line 800
    .line 801
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    goto :goto_10

    .line 805
    :cond_26
    new-instance v11, Landroid/util/Pair;

    .line 806
    .line 807
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 808
    .line 809
    .line 810
    move-result-object v8

    .line 811
    invoke-direct {v11, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    :goto_10
    move-object/from16 v15, p0

    .line 818
    .line 819
    move-object/from16 v0, p2

    .line 820
    .line 821
    move-object/from16 v7, p5

    .line 822
    .line 823
    move-object/from16 v8, p9

    .line 824
    .line 825
    move/from16 v12, v16

    .line 826
    .line 827
    move/from16 v11, v17

    .line 828
    .line 829
    goto/16 :goto_a

    .line 830
    .line 831
    :cond_27
    move/from16 v16, v12

    .line 832
    .line 833
    new-instance v11, Lcom/android/server/biometrics/PreAuthInfo;

    .line 834
    .line 835
    move-object v0, v11

    .line 836
    move v1, v3

    .line 837
    move v2, v5

    .line 838
    move v3, v9

    .line 839
    move-object v5, v14

    .line 840
    move v6, v13

    .line 841
    move-object/from16 v7, p5

    .line 842
    .line 843
    move-object/from16 v8, p9

    .line 844
    .line 845
    move v9, v10

    .line 846
    move/from16 v10, v16

    .line 847
    .line 848
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/PreAuthInfo;-><init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/BiometricCameraManagerImpl;ZZ)V

    .line 849
    .line 850
    .line 851
    return-object v11
.end method


# virtual methods
.method public final calculateErrorByPriority()Landroid/util/Pair;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    move-object v3, v2

    .line 10
    move-object v4, v3

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_5

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroid/util/Pair;

    .line 22
    .line 23
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v6, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/16 v7, 0xa

    .line 32
    .line 33
    if-eq v6, v7, :cond_1

    .line 34
    .line 35
    const/16 v7, 0xb

    .line 36
    .line 37
    if-ne v6, v7, :cond_2

    .line 38
    .line 39
    :cond_1
    move-object v1, v5

    .line 40
    :cond_2
    const/4 v7, 0x7

    .line 41
    if-ne v6, v7, :cond_3

    .line 42
    .line 43
    move-object v4, v5

    .line 44
    :cond_3
    const/4 v7, 0x6

    .line 45
    if-ne v6, v7, :cond_4

    .line 46
    .line 47
    move-object v2, v5

    .line 48
    :cond_4
    const/16 v7, 0x8

    .line 49
    .line 50
    if-ne v6, v7, :cond_0

    .line 51
    .line 52
    move-object v3, v5

    .line 53
    goto :goto_0

    .line 54
    :cond_5
    if-eqz v1, :cond_6

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_6
    if-eqz v2, :cond_7

    .line 58
    .line 59
    return-object v2

    .line 60
    :cond_7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->mandatoryBiometrics()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_8

    .line 65
    .line 66
    if-eqz v3, :cond_8

    .line 67
    .line 68
    return-object v3

    .line 69
    :cond_8
    if-eqz v4, :cond_9

    .line 70
    .line 71
    return-object v4

    .line 72
    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Landroid/util/Pair;

    .line 80
    .line 81
    return-object p0
.end method

.method public final getEligibleModalities()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 19
    .line 20
    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 21
    .line 22
    or-int/2addr v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    or-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    :cond_1
    return v1
.end method

.method public final getInternalStatus()Landroid/util/Pair;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    iget-object v3, v3, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {v3, v1, v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    move v3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    const-string v4, "BiometricService/PreAuthInfo"

    .line 22
    .line 23
    const/16 v5, 0xc

    .line 24
    .line 25
    const/16 v6, 0x8

    .line 26
    .line 27
    const/16 v7, 0x9

    .line 28
    .line 29
    iget-boolean v8, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 30
    .line 31
    iget-boolean v9, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 32
    .line 33
    iget-boolean v10, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    .line 34
    .line 35
    if-eqz v10, :cond_8

    .line 36
    .line 37
    if-eqz v8, :cond_8

    .line 38
    .line 39
    if-nez v9, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 65
    .line 66
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 67
    .line 68
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_2
    move v0, v7

    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 98
    .line 99
    iget v0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 100
    .line 101
    or-int/2addr v2, v0

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    if-eqz v9, :cond_5

    .line 104
    .line 105
    or-int/lit8 p0, v2, 0x1

    .line 106
    .line 107
    move v0, v1

    .line 108
    move v1, p0

    .line 109
    goto/16 :goto_6

    .line 110
    .line 111
    :cond_5
    if-ne v2, v6, :cond_6

    .line 112
    .line 113
    if-eqz v3, :cond_6

    .line 114
    .line 115
    :goto_3
    move v1, v2

    .line 116
    move v0, v5

    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    :cond_6
    move v0, v1

    .line 120
    :cond_7
    :goto_4
    move v1, v2

    .line 121
    goto :goto_6

    .line 122
    :cond_8
    if-eqz v10, :cond_b

    .line 123
    .line 124
    iget-object v7, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-nez v7, :cond_a

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 149
    .line 150
    iget v0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 151
    .line 152
    or-int/2addr v2, v0

    .line 153
    goto :goto_5

    .line 154
    :cond_9
    if-ne v2, v6, :cond_6

    .line 155
    .line 156
    if-eqz v3, :cond_6

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_a
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_7

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 174
    .line 175
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 176
    .line 177
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p0, Ljava/lang/Integer;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    goto :goto_6

    .line 186
    :cond_b
    if-eqz v8, :cond_c

    .line 187
    .line 188
    if-eqz v9, :cond_2

    .line 189
    .line 190
    move v0, v1

    .line 191
    goto :goto_6

    .line 192
    :cond_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->mandatoryBiometrics()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_d

    .line 197
    .line 198
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    .line 199
    .line 200
    if-eqz v1, :cond_d

    .line 201
    .line 202
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    .line 203
    .line 204
    if-nez p0, :cond_d

    .line 205
    .line 206
    const/16 v0, 0xd

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_d
    const-string p0, "No authenticators requested"

    .line 210
    .line 211
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string/jumbo v2, "getCanAuthenticateInternal Modality: "

    .line 218
    .line 219
    .line 220
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v2, " AuthenticatorStatus: "

    .line 227
    .line 228
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    new-instance p0, Landroid/util/Pair;

    .line 242
    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    return-object p0
.end method

.method public final getPreAuthenticateStatus()Landroid/util/Pair;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    packed-switch p0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    :pswitch_0
    const/4 v1, 0x0

    .line 37
    :pswitch_1
    new-instance p0, Landroid/util/Pair;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "BiometricRequested: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", StrengthRequested: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", CredentialRequested: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, ", Eligible:{"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const-string v3, " "

    .line 58
    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 66
    .line 67
    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const-string/jumbo v1, "}, Ineligible:{"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/util/Pair;

    .line 99
    .line 100
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v4, ":"

    .line 106
    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    const-string/jumbo v1, "}, CredentialAvailable: "

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 126
    .line 127
    const-string v1, ", "

    .line 128
    .line 129
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method
