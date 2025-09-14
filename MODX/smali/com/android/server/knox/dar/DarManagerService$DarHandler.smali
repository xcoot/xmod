.class public final Lcom/android/server/knox/dar/DarManagerService$DarHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/DarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$DarHandler;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x76

    .line 6
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$DarHandler;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 8
    const-string v3, "DarManagerServiceHandler"

    .line 10
    const-string v4, "DarManagerService"

    .line 12
    if-eq v0, v2, :cond_6

    .line 14
    const/16 v2, 0x78

    .line 16
    const/16 v5, 0x96

    .line 18
    if-eq v0, v2, :cond_1

    .line 20
    if-eq v0, v5, :cond_0

    .line 22
    const-string/jumbo p0, "msg : ignore unknown message"

    .line 25
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto/16 :goto_4

    .line 30
    :cond_0
    const-string v0, "MSG_UNLOCK_SECURE_FOLDER_WITH_TOKEN "

    .line 32
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/DarManagerService;->handleUnlockSecureFolderWithToken(I)V

    .line 40
    goto/16 :goto_4

    .line 42
    :cond_1
    const-string v0, " MSG_HANDLE_LOCKED_BOOT_COMPLETE "

    .line 44
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_c

    .line 58
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 64
    const-string v0, "Locked boot completed for user "

    .line 66
    invoke-static {p1, v0, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_c

    .line 75
    const-string v0, "Locked boot completed for SecureFolder user "

    .line 77
    invoke-static {p1, v0, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    move-result-object v0

    .line 86
    const-string v2, "automatic_data_decryption"

    .line 88
    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 91
    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->getUserManager()Landroid/os/UserManager;

    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->getUserManager()Landroid/os/UserManager;

    .line 105
    move-result-object v3

    .line 106
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 108
    invoke-virtual {v3, v6}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_3

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->getUserManager()Landroid/os/UserManager;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_c

    .line 125
    const/4 v2, 0x1

    .line 126
    if-ne v0, v2, :cond_c

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "Unlock secure folder user "

    .line 132
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 148
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 150
    invoke-virtual {v0, v5, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 153
    move-result-object p1

    .line 154
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 156
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    goto/16 :goto_4

    .line 161
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 163
    const-string v0, "Parent "

    .line 165
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    if-eqz v2, :cond_5

    .line 170
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 172
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v0, " is not ready to unlock secure folder user "

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p0

    .line 187
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    goto/16 :goto_4

    .line 192
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    const-string v2, " MSG_SET_RESET_TOKEN_FOR_LEGACY : user : "

    .line 196
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 201
    invoke-static {v0, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 204
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    check-cast v0, Ljava/lang/String;

    .line 208
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    const-string/jumbo v2, "exception occurred during getUserInfo for Legacy user "

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    .line 218
    const-string v5, "Set reset token for Legacy User "

    .line 220
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v3

    .line 230
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v5, "token : "

    .line 238
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v5, ", userId : "

    .line 246
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v3

    .line 256
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 261
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 267
    move-result-wide v5

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->getUserManager()Landroid/os/UserManager;

    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 275
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v3, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 278
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    goto :goto_1

    .line 285
    :catchall_0
    move-exception p1

    .line 286
    goto/16 :goto_5

    .line 288
    :catch_0
    move-exception v3

    .line 289
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v2

    .line 301
    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 309
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 315
    const/4 v2, 0x0

    .line 316
    :goto_1
    if-nez v2, :cond_7

    .line 318
    const-string/jumbo p0, "handle reset Token getUserInfo failed. "

    .line 321
    invoke-static {p1, p0, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    goto/16 :goto_4

    .line 326
    :cond_7
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 329
    move-result v3

    .line 330
    if-eqz v3, :cond_8

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    .line 334
    const-string v6, "Identified as legacy type container user : "

    .line 336
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 341
    const-string v6, "DARUtil"

    .line 343
    invoke-static {v5, v2, v6}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 346
    :cond_8
    if-nez v3, :cond_9

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    move-result-object p0

    .line 352
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 355
    move-result-object p0

    .line 356
    const-string p1, "On created - User %d workspace identified as new-fashioned"

    .line 358
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    move-result-object p0

    .line 362
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    goto/16 :goto_4

    .line 367
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    move-result-object v2

    .line 371
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 374
    move-result-object v2

    .line 375
    const-string v3, "On created - User %d workspace identified as old-fashioned"

    .line 377
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 380
    move-result-object v2

    .line 381
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_a

    .line 390
    sget-object v0, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    .line 392
    const/16 v3, 0x20

    .line 394
    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    .line 397
    move-result-object v0

    .line 398
    goto :goto_2

    .line 399
    :cond_a
    const-string v3, "UTF-8"

    .line 401
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 408
    move-result-object v0

    .line 409
    :goto_2
    if-eqz v2, :cond_b

    .line 411
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->saveResetTokenViaProtectorForLegacy([BI)Z

    .line 414
    move-result v3

    .line 415
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    move-result-object v5

    .line 419
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 422
    move-result-object v3

    .line 423
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 426
    move-result-object v3

    .line 427
    const-string v5, "On created - Save reset token via protector for Legacy user %d has been deployed : %s"

    .line 429
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 432
    move-result-object v3

    .line 433
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_b
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->setResetTokenForLegacy([BI)Z

    .line 439
    move-result v3

    .line 440
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    move-result-object v0

    .line 447
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 450
    move-result-object v3

    .line 451
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 454
    move-result-object v0

    .line 455
    const-string v3, "On created - Set reset token for Legacy user %d has been deployed : %s"

    .line 457
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 460
    move-result-object v0

    .line 461
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-nez v2, :cond_c

    .line 466
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 469
    move-result-object v0

    .line 470
    :try_start_2
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    .line 472
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 475
    move-result-object p0

    .line 476
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 479
    move-result-object p0

    .line 480
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdChange()Z

    .line 483
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 484
    goto :goto_3

    .line 485
    :catch_1
    move-exception p0

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    .line 488
    const-string v2, "Unexpected exception while enforce password for Legacy user "

    .line 490
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    move-result-object v0

    .line 500
    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    move-result-object p0

    .line 507
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 510
    move-result-object p1

    .line 511
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 514
    move-result-object p0

    .line 515
    const-string p1, "On created - Password enforcement for Legacy user %d has been deployed : %s"

    .line 517
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    move-result-object p0

    .line 521
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_c
    :goto_4
    return-void

    .line 525
    :goto_5
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    throw p1
.end method
