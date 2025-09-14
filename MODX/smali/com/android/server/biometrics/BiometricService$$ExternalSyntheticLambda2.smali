.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/biometrics/PromptInfo;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroid/os/IBinder;

.field public final synthetic f$6:J

.field public final synthetic f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$5:Landroid/os/IBinder;

    iput-wide p3, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$4:J

    iput-wide p5, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$6:J

    iput p7, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p8, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iput-object p9, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/biometrics/PromptInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/biometrics/PromptInfo;

    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$4:J

    iput-object p7, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$5:Landroid/os/IBinder;

    iput-wide p8, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$6:J

    iput-object p10, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 10
    check-cast v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    .line 12
    iget-object v9, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$5:Landroid/os/IBinder;

    .line 14
    iget-wide v7, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$4:J

    .line 16
    iget-wide v10, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$6:J

    .line 18
    iget v4, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$1:I

    .line 20
    iget-object v12, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 22
    iget-object v6, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 24
    iget-object v5, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/biometrics/PromptInfo;

    .line 26
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;

    .line 33
    move-object v2, v1

    .line 34
    move-object v3, v0

    .line 35
    invoke-direct/range {v2 .. v12}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    .line 38
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void

    .line 44
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 46
    move-object v2, v1

    .line 47
    check-cast v2, Lcom/android/server/biometrics/BiometricService;

    .line 49
    iget v1, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$1:I

    .line 51
    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/biometrics/PromptInfo;

    .line 53
    iget-object v14, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 55
    iget-wide v11, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$4:J

    .line 57
    iget-object v15, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$5:Landroid/os/IBinder;

    .line 59
    iget-wide v9, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$6:J

    .line 61
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    const-string v8, "BiometricService"

    .line 68
    const-string/jumbo v7, "handleAuthenticate: modality("

    .line 71
    :try_start_0
    iget-object v3, v2, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 73
    iget-object v4, v2, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 75
    iget-object v5, v2, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 77
    iget-object v6, v2, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v13}, Landroid/hardware/biometrics/PromptInfo;->isDisallowBiometricsIfPolicyExists()Z

    .line 82
    move-result v16

    .line 83
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v17

    .line 87
    move-wide/from16 v18, v11

    .line 89
    iget-object v12, v2, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    move-object v11, v7

    .line 92
    move v7, v1

    .line 93
    move/from16 v20, v1

    .line 95
    move-object v1, v8

    .line 96
    move-object v8, v13

    .line 97
    move-wide/from16 v21, v9

    .line 99
    move-object v9, v14

    .line 100
    move/from16 v10, v16

    .line 102
    move-object/from16 v16, v14

    .line 104
    move-object/from16 v23, v15

    .line 106
    move-wide/from16 v14, v18

    .line 108
    move-object/from16 v18, v0

    .line 110
    move-object v0, v11

    .line 111
    move-object/from16 v11, v17

    .line 113
    :try_start_1
    invoke-static/range {v3 .. v12}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Lcom/android/server/biometrics/PreAuthInfo;

    .line 116
    move-result-object v12

    .line 117
    invoke-virtual {v13}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v13}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 126
    move-result-object v3

    .line 127
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 136
    move-result-object v3

    .line 137
    const v4, 0x1040d88

    .line 140
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v13, v3}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    goto/16 :goto_4

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {v12}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    .line 154
    move-result v3

    .line 155
    and-int/lit8 v4, v3, 0x2

    .line 157
    const/4 v5, 0x2

    .line 158
    const/4 v6, 0x1

    .line 159
    const/4 v7, 0x0

    .line 160
    if-ne v4, v5, :cond_1

    .line 162
    move v4, v6

    .line 163
    goto :goto_1

    .line 164
    :cond_1
    move v4, v7

    .line 165
    :goto_1
    const/16 v5, 0x8

    .line 167
    and-int/2addr v3, v5

    .line 168
    if-ne v3, v5, :cond_2

    .line 170
    goto :goto_2

    .line 171
    :cond_2
    move v6, v7

    .line 172
    :goto_2
    invoke-virtual {v13}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultSubtitle()Z

    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_6

    .line 178
    if-eqz v4, :cond_3

    .line 180
    if-eqz v6, :cond_3

    .line 182
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 185
    move-result-object v3

    .line 186
    const v4, 0x1040236

    .line 189
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v13, v3}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 196
    goto :goto_3

    .line 197
    :cond_3
    if-eqz v4, :cond_4

    .line 199
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 202
    move-result-object v3

    .line 203
    const v4, 0x1040576

    .line 206
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v13, v3}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 213
    goto :goto_3

    .line 214
    :cond_4
    if-eqz v6, :cond_5

    .line 216
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 219
    move-result-object v3

    .line 220
    const v4, 0x104053b

    .line 223
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v13, v3}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 230
    goto :goto_3

    .line 231
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 234
    move-result-object v3

    .line 235
    const v4, 0x1040d32

    .line 238
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v13, v3}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 245
    :cond_6
    :goto_3
    invoke-virtual {v12}, Lcom/android/server/biometrics/PreAuthInfo;->getPreAuthenticateStatus()Landroid/util/Pair;

    .line 248
    move-result-object v3

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    .line 251
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 256
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    const-string v0, "), status("

    .line 261
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 266
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    const-string v0, "), preAuthInfo: "

    .line 271
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    const-string v0, " requestId: "

    .line 279
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    const-string v0, " promptInfo.isIgnoreEnrollmentState: "

    .line 287
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v13}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    .line 293
    move-result v0

    .line 294
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v0

    .line 301
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 306
    check-cast v0, Ljava/lang/Integer;

    .line 308
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 311
    move-result v0

    .line 312
    if-nez v0, :cond_8

    .line 314
    iget-boolean v0, v12, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 316
    if-eqz v0, :cond_7

    .line 318
    iget-boolean v0, v12, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 320
    if-eqz v0, :cond_7

    .line 322
    iget-object v0, v12, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 324
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_7

    .line 330
    const v0, 0x8000

    .line 333
    invoke-virtual {v13, v0}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 336
    :cond_7
    move-object/from16 v3, v23

    .line 338
    move-wide v4, v14

    .line 339
    move-wide/from16 v6, v21

    .line 341
    move/from16 v8, v20

    .line 343
    move-object/from16 v9, v18

    .line 345
    move-object/from16 v10, v16

    .line 347
    move-object v11, v13

    .line 348
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V

    .line 351
    goto :goto_5

    .line 352
    :cond_8
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 354
    check-cast v0, Ljava/lang/Integer;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 359
    move-result v0

    .line 360
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 362
    check-cast v2, Ljava/lang/Integer;

    .line 364
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 367
    move-result v2

    .line 368
    move-object/from16 v3, v18

    .line 370
    invoke-interface {v3, v0, v2, v7}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    goto :goto_5

    .line 374
    :catch_1
    move-exception v0

    .line 375
    move-object v1, v8

    .line 376
    :goto_4
    const-string v2, "Remote exception"

    .line 378
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    :goto_5
    return-void

    .line 382
    nop

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
