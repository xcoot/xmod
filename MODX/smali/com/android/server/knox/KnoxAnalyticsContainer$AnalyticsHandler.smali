.class public final Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/KnoxAnalyticsContainer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "handleMessage : "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "AnalyticsContainerHandler"

    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget v1, v0, Landroid/os/Message;->what:I

    .line 25
    const-string/jumbo v2, "no_share_location"

    .line 28
    const-string/jumbo v3, "location_providers_allowed"

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    move-object/from16 v7, p0

    .line 36
    iget-object v7, v7, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 38
    if-eq v1, v5, :cond_11

    .line 40
    if-eq v1, v4, :cond_0

    .line 42
    goto/16 :goto_b

    .line 44
    :cond_0
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 46
    iget-object v1, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 48
    const-string/jumbo v8, "bioInf "

    .line 51
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 54
    move-result v9

    .line 55
    if-nez v9, :cond_1

    .line 57
    goto/16 :goto_b

    .line 59
    :cond_1
    new-instance v9, Landroid/os/Bundle;

    .line 61
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 64
    iget-object v10, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 66
    invoke-virtual {v10, v0}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 69
    move-result v10

    .line 70
    const-string/jumbo v11, "cTp"

    .line 73
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v10, "OToE"

    .line 78
    if-nez v0, :cond_2

    .line 80
    move v11, v5

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v11, v6

    .line 83
    :goto_0
    xor-int/2addr v11, v5

    .line 84
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 90
    move-result v10

    .line 91
    const-string/jumbo v11, "knox_screen_off_timeout"

    .line 94
    const/4 v12, -0x1

    .line 95
    if-eqz v10, :cond_3

    .line 97
    iget-object v10, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    move-result-object v10

    .line 103
    invoke-static {v10, v11, v12, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 106
    move-result v10

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object v10, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    move-result-object v10

    .line 114
    invoke-static {v10, v11, v12, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 117
    move-result v10

    .line 118
    :goto_1
    if-nez v10, :cond_4

    .line 120
    move v12, v5

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    if-ne v10, v12, :cond_5

    .line 124
    move v12, v4

    .line 125
    goto :goto_2

    .line 126
    :cond_5
    const/4 v12, -0x2

    .line 127
    if-ne v10, v12, :cond_6

    .line 129
    const/4 v12, 0x3

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    const/16 v12, 0x1388

    .line 133
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    .line 136
    move-result v10

    .line 137
    move v12, v6

    .line 138
    :goto_2
    const-string/jumbo v13, "lckTmoutTp"

    .line 141
    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string/jumbo v12, "lckTmoutV"

    .line 147
    invoke-virtual {v9, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    new-instance v10, Lcom/android/internal/widget/LockPatternUtils;

    .line 152
    iget-object v12, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    .line 154
    invoke-direct {v10, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v10, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    .line 160
    move-result v12

    .line 161
    const/16 v13, 0x100

    .line 163
    invoke-virtual {v10, v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    .line 166
    move-result v10

    .line 167
    shl-int/2addr v10, v4

    .line 168
    iget-object v13, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 173
    move-result-object v13

    .line 174
    const-string/jumbo v14, "knox_finger_print_plus"

    .line 177
    invoke-static {v13, v14, v6, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 180
    move-result v13

    .line 181
    if-ne v13, v5, :cond_7

    .line 183
    move v13, v5

    .line 184
    goto :goto_3

    .line 185
    :cond_7
    move v13, v6

    .line 186
    :goto_3
    const-string/jumbo v14, "lckTp"

    .line 189
    new-instance v15, Lcom/android/internal/widget/LockPatternUtils;

    .line 191
    iget-object v11, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 193
    invoke-direct {v15, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v15, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    .line 199
    move-result v11

    .line 200
    const/high16 v15, 0x10000

    .line 202
    if-eq v11, v15, :cond_a

    .line 204
    const/high16 v4, 0x20000

    .line 206
    if-eq v11, v4, :cond_9

    .line 208
    const/high16 v4, 0x30000

    .line 210
    if-eq v11, v4, :cond_9

    .line 212
    const/high16 v4, 0x40000

    .line 214
    if-eq v11, v4, :cond_8

    .line 216
    const/high16 v4, 0x50000

    .line 218
    if-eq v11, v4, :cond_8

    .line 220
    const/high16 v4, 0x60000

    .line 222
    if-eq v11, v4, :cond_8

    .line 224
    move v4, v5

    .line 225
    goto :goto_4

    .line 226
    :cond_8
    const/4 v4, 0x4

    .line 227
    goto :goto_4

    .line 228
    :cond_9
    const/4 v4, 0x3

    .line 229
    :cond_a
    :goto_4
    invoke-virtual {v9, v14, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    sget-boolean v4, Lcom/android/server/knox/KnoxAnalyticsContainer;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    const-string v11, "STATUS_SNAPSHOT"

    .line 236
    if-eqz v4, :cond_b

    .line 238
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    or-int v8, v12, v10

    .line 245
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v4

    .line 252
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    goto :goto_5

    .line 256
    :catch_0
    move-exception v0

    .line 257
    goto/16 :goto_a

    .line 259
    :cond_b
    :goto_5
    const-string/jumbo v4, "bioInf"

    .line 262
    or-int v8, v12, v10

    .line 264
    invoke-virtual {v9, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string/jumbo v4, "mfaEnb"

    .line 270
    invoke-virtual {v9, v4, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    iget-object v4, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 278
    move-result-object v4

    .line 279
    const-string/jumbo v8, "disabled_print_services"

    .line 282
    invoke-static {v4, v8, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 285
    move-result-object v4

    .line 286
    const-string/jumbo v8, "disPrnSrv"

    .line 289
    invoke-virtual {v9, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 299
    move-result-object v4

    .line 300
    iget-object v8, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 302
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 305
    move-result-object v8

    .line 306
    new-instance v10, Ljava/lang/StringBuilder;

    .line 308
    const-string/jumbo v11, "caller_id_to_show_"

    .line 311
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 316
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v4

    .line 323
    invoke-static {v8, v4, v5, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 326
    move-result v4

    .line 327
    const-string/jumbo v8, "clrId"

    .line 330
    if-ne v4, v5, :cond_c

    .line 332
    move v4, v5

    .line 333
    goto :goto_6

    .line 334
    :cond_c
    move v4, v6

    .line 335
    :goto_6
    invoke-virtual {v9, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string/jumbo v4, "nSntz"

    .line 341
    iget-object v8, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 346
    move-result-object v8

    .line 347
    const-string/jumbo v10, "lock_screen_allow_private_notifications"

    .line 350
    invoke-static {v8, v10, v6, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 353
    move-result v8

    .line 354
    invoke-virtual {v9, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    if-nez v0, :cond_d

    .line 359
    iget-object v2, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 361
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 364
    move-result-object v2

    .line 365
    invoke-static {v2, v3, v6, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 368
    move-result v2

    .line 369
    if-nez v2, :cond_e

    .line 371
    move v5, v6

    .line 372
    goto :goto_7

    .line 373
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    .line 376
    move-result-object v3

    .line 377
    new-instance v4, Landroid/os/UserHandle;

    .line 379
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 382
    invoke-virtual {v3, v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 385
    move-result v2

    .line 386
    xor-int/2addr v5, v2

    .line 387
    :cond_e
    :goto_7
    const-string/jumbo v2, "lct"

    .line 390
    invoke-virtual {v9, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    iget-object v2, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    .line 395
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    move-result-object v3

    .line 399
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-static {}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getDeviceOwnerPackage()Ljava/lang/String;

    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v1, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getProfileOwnerPackage(I)Ljava/lang/String;

    .line 413
    move-result-object v0

    .line 414
    if-eqz v2, :cond_f

    .line 416
    goto :goto_8

    .line 417
    :cond_f
    move-object v2, v0

    .line 418
    :goto_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_10

    .line 424
    const/4 v0, 0x0

    .line 425
    goto :goto_9

    .line 426
    :cond_10
    invoke-static {v6, v2}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 429
    move-result-object v0

    .line 430
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 432
    :goto_9
    const-string/jumbo v1, "daPn"

    .line 435
    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string/jumbo v1, "daPv"

    .line 441
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v7, v9}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 447
    goto :goto_b

    .line 448
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 450
    const-string/jumbo v2, "sendSnapshotLog Failed."

    .line 453
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    move-result-object v0

    .line 463
    const-string v1, "PersonaManagerService:KnoxAnalytics"

    .line 465
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    goto :goto_b

    .line 469
    :cond_11
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 471
    iget-object v1, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 473
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    if-nez v0, :cond_13

    .line 478
    iget-object v1, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 480
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 483
    move-result-object v1

    .line 484
    invoke-static {v1, v3, v6, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_12

    .line 490
    move v5, v6

    .line 491
    :cond_12
    :try_start_2
    iget-object v1, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    move-result-object v1

    .line 501
    check-cast v1, Ljava/lang/Integer;

    .line 503
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 506
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 507
    if-ne v1, v5, :cond_14

    .line 509
    goto :goto_b

    .line 510
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    .line 513
    move-result-object v1

    .line 514
    new-instance v3, Landroid/os/UserHandle;

    .line 516
    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 519
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 522
    move-result v1

    .line 523
    xor-int/2addr v1, v5

    .line 524
    :try_start_3
    iget-object v2, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    .line 526
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    move-result-object v2

    .line 534
    check-cast v2, Ljava/lang/Integer;

    .line 536
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 539
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 540
    if-ne v2, v1, :cond_14

    .line 542
    goto :goto_b

    .line 543
    :catch_1
    :cond_14
    iget-object v1, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 545
    invoke-virtual {v1, v4, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    :goto_b
    return-void
.end method
