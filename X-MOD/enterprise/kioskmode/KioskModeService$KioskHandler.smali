.class public final Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    if-eqz p1, :cond_c

    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_1

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_0

    .line 12
    goto/16 :goto_8

    .line 14
    :cond_0
    sput-boolean v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "adminuid"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 25
    move-result p1

    .line 26
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 28
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 30
    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 33
    invoke-virtual {p0, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 36
    sput-boolean v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 38
    goto/16 :goto_8

    .line 40
    :cond_1
    sput-boolean v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 45
    move-result-object p1

    .line 46
    const-string v0, "adminuid"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 51
    move-result v0

    .line 52
    const-string/jumbo v3, "package"

    .line 55
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 61
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 63
    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    const-string v0, "Kiosk  result   "

    .line 71
    sget-object v4, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    .line 73
    monitor-enter v4

    .line 74
    :try_start_0
    sput-boolean v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 76
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 79
    move-result v5

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 83
    move-result-wide v6

    .line 84
    iget v8, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 86
    const-string v9, "KioskModeService"

    .line 88
    const-string v10, " _enableKioskMode"

    .line 90
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 96
    move-result-object v9

    .line 97
    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    .line 99
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 102
    move-result v9

    .line 103
    const/16 v10, -0x7d0

    .line 105
    if-ne v9, v2, :cond_2

    .line 107
    const-string v9, "KioskModeService"

    .line 109
    const-string v11, " support HW keyboard "

    .line 111
    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 123
    move-result-object v9

    .line 124
    if-eqz v9, :cond_2

    .line 126
    iget v9, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 128
    if-ne v9, v2, :cond_2

    .line 130
    const-string v9, "KioskModeService"

    .line 132
    const-string v11, "Kiosk Mode - mobile keypad enabled::: return false"

    .line 134
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, v8, v2, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    monitor-exit v4

    .line 141
    goto/16 :goto_6

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto/16 :goto_7

    .line 146
    :catch_0
    const-string v9, "KioskModeService"

    .line 148
    const-string v11, "_enableKioskMode :: NoSuchFieldException"

    .line 150
    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 156
    move-result v9

    .line 157
    if-eqz v9, :cond_3

    .line 159
    const-string p1, "KioskModeService"

    .line 161
    const-string v0, "Kiosk Mode already enabled"

    .line 163
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 p1, -0x1

    .line 167
    invoke-virtual {p0, v8, v2, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 170
    goto/16 :goto_5

    .line 172
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 179
    move-result v11

    .line 180
    const-string v12, "KioskModeService"

    .line 182
    new-instance v13, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz v11, :cond_4

    .line 199
    const-string p1, "KioskModeService"

    .line 201
    const-string v0, "Kiosk Mode App not validated"

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, v8, v2, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 209
    goto/16 :goto_5

    .line 211
    :cond_4
    invoke-virtual {p0, v5, v9, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_6

    .line 217
    const-string v0, "KioskModeService"

    .line 219
    const-string v9, "Cannot find HOME activity"

    .line 221
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 226
    if-eqz v0, :cond_5

    .line 228
    invoke-virtual {v0, v8, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 231
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 233
    invoke-virtual {v0, v8, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 236
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 238
    new-instance v9, Ljava/util/ArrayList;

    .line 240
    filled-new-array {p1}, [Ljava/lang/String;

    .line 243
    move-result-object v11

    .line 244
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 247
    move-result-object v11

    .line 248
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    invoke-virtual {v0, v3, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 254
    :cond_5
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, v8, v2, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 260
    goto/16 :goto_5

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 267
    move-result-object v0

    .line 268
    const-string/jumbo v3, "toolbox_onoff"

    .line 271
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    invoke-virtual {p0, v8, p1, v9, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 277
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 279
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHomeStack()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    goto :goto_0

    .line 289
    :catch_1
    move-exception p1

    .line 290
    :try_start_4
    const-string v0, "KioskModeService"

    .line 292
    const-string v3, "Remote exception calling clearHomeStack"

    .line 294
    invoke-static {v0, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 300
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 303
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    const/16 p1, 0x64

    .line 308
    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 310
    if-lez p1, :cond_7

    .line 312
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 315
    move-result-object p1

    .line 316
    const/16 v3, 0xa

    .line 318
    invoke-interface {p1, v3, v1, v5}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    goto :goto_2

    .line 322
    :catch_2
    move-exception p1

    .line 323
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    :goto_2
    move p1, v0

    .line 327
    goto :goto_1

    .line 328
    :cond_7
    invoke-static {v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 331
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 334
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 336
    if-nez p1, :cond_8

    .line 338
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 340
    const-string/jumbo v0, "user"

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    move-result-object p1

    .line 347
    check-cast p1, Landroid/os/UserManager;

    .line 349
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 351
    :cond_8
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 353
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 356
    move-result-object p1

    .line 357
    if-eqz p1, :cond_a

    .line 359
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_a

    .line 365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 368
    move-result-object p1

    .line 369
    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_a

    .line 375
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 381
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 388
    move-result v0

    .line 389
    if-eq v0, v5, :cond_9

    .line 391
    invoke-static {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 394
    goto :goto_3

    .line 395
    :cond_a
    :try_start_7
    const-string/jumbo p1, "statusbar"

    .line 398
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 401
    move-result-object p1

    .line 402
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 405
    move-result-object p1

    .line 406
    if-eqz p1, :cond_b

    .line 408
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mToken:Landroid/os/IBinder;

    .line 410
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mKey:Ljava/lang/String;

    .line 412
    const/high16 v9, 0x2000000

    .line 414
    invoke-interface {p1, v9, v0, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 417
    goto :goto_4

    .line 418
    :catch_3
    move-exception p1

    .line 419
    :try_start_8
    const-string v0, "KioskModeService"

    .line 421
    const-string v3, "Failed to disable Google assistant"

    .line 423
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    :cond_b
    :goto_4
    invoke-virtual {p0, v8, v2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 429
    :goto_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    .line 435
    move-result p1

    .line 436
    invoke-virtual {p0, v5, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    .line 439
    sput-boolean v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 441
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 442
    :goto_6
    sput-boolean v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 444
    goto :goto_8

    .line 445
    :goto_7
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 446
    throw p0

    .line 447
    :cond_c
    :goto_8
    return-void
.end method
