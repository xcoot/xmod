.class public final Lcom/android/server/enterprise/license/DeviceProfileListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mObservers:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/enterprise/license/DeviceProfileListener;

    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/license/DeviceProfileListener;->mObservers:Ljava/util/List;

    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 13
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v1, "android.intent.action.USER_ADDED"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "onReceive("

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ")"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "[EnterpriseLicenseService] DeviceProfileListener"

    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const/4 v3, -0x1

    .line 40
    const-string v4, "android.intent.extra.user_handle"

    .line 42
    const-string v5, "EnterpriseLicenseService"

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 47
    move-result v6

    .line 48
    sparse-switch v6, :sswitch_data_0

    .line 51
    :goto_0
    move v1, v3

    .line 52
    goto :goto_1

    .line 53
    :sswitch_0
    const-string v6, "android.intent.action.USER_ADDED"

    .line 55
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v1, 0x2

    .line 63
    goto :goto_1

    .line 64
    :sswitch_1
    const-string v6, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 66
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move v1, p1

    .line 74
    goto :goto_1

    .line 75
    :sswitch_2
    const-string v6, "android.intent.action.USER_REMOVED"

    .line 77
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_2

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move v1, v0

    .line 85
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 88
    goto/16 :goto_8

    .line 90
    :pswitch_0
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 93
    move-result p1

    .line 94
    const-string/jumbo p2, "notifyUserAdded()"

    .line 97
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/android/server/enterprise/license/DeviceProfileListener;->mObservers:Ljava/util/List;

    .line 102
    check-cast p0, Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object p0

    .line 108
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_8

    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Lcom/android/server/enterprise/license/IDeviceProfileObserver;

    .line 120
    check-cast p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v0, "onUserAdded "

    .line 130
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p2

    .line 140
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto :goto_2

    .line 144
    :pswitch_1
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    .line 147
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.EXTRA_DO_CHANGED_STATUS"

    .line 154
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 157
    move-result p2

    .line 158
    if-eqz p2, :cond_3

    .line 160
    const-string/jumbo p1, "notifyDeviceOwnerAdded()"

    .line 163
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/android/server/enterprise/license/DeviceProfileListener;->mObservers:Ljava/util/List;

    .line 168
    check-cast p0, Ljava/util/ArrayList;

    .line 170
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object p0

    .line 174
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_8

    .line 180
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lcom/android/server/enterprise/license/IDeviceProfileObserver;

    .line 186
    check-cast p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo p2, "onDeviceOwnerAdded "

    .line 196
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object p1

    .line 206
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    goto :goto_3

    .line 210
    :cond_3
    const-string/jumbo p2, "notifyDeviceOwnerRemoved()"

    .line 213
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p0, p0, Lcom/android/server/enterprise/license/DeviceProfileListener;->mObservers:Ljava/util/List;

    .line 218
    check-cast p0, Ljava/util/ArrayList;

    .line 220
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 223
    move-result-object p0

    .line 224
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_8

    .line 230
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    move-result-object p2

    .line 234
    check-cast p2, Lcom/android/server/enterprise/license/IDeviceProfileObserver;

    .line 236
    check-cast p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 238
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v2, "onDeviceOwnerRemoved "

    .line 246
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 262
    move-result-wide v2

    .line 263
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    .line 265
    new-instance v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;

    .line 267
    invoke-direct {v4, p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;I)V

    .line 270
    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    goto :goto_4

    .line 280
    :catchall_0
    move-exception p0

    .line 281
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    throw p0

    .line 285
    :pswitch_2
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 288
    move-result p2

    .line 289
    const-string/jumbo v1, "notifyUserRemoved()"

    .line 292
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p0, p0, Lcom/android/server/enterprise/license/DeviceProfileListener;->mObservers:Ljava/util/List;

    .line 297
    check-cast p0, Ljava/util/ArrayList;

    .line 299
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 302
    move-result-object p0

    .line 303
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_8

    .line 309
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    move-result-object v1

    .line 313
    check-cast v1, Lcom/android/server/enterprise/license/IDeviceProfileObserver;

    .line 315
    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 317
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v3, "onUserRemoved "

    .line 325
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object v2

    .line 335
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 341
    const-string/jumbo v2, "revokeKnoxPermissionFromUninstalledPackages"

    .line 344
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 350
    const-string/jumbo v2, "getPackageNameFromAllActivations"

    .line 353
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v2, Ljava/util/ArrayList;

    .line 358
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 363
    const-string/jumbo v4, "pkgName"

    .line 366
    filled-new-array {v4}, [Ljava/lang/String;

    .line 369
    move-result-object v6

    .line 370
    const/4 v7, 0x0

    .line 371
    const-string v8, "LICENSE"

    .line 373
    invoke-virtual {v3, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 376
    move-result-object v3

    .line 377
    check-cast v3, Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 382
    move-result v6

    .line 383
    if-nez v6, :cond_5

    .line 385
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 388
    move-result-object v3

    .line 389
    :cond_4
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    move-result v6

    .line 393
    if-eqz v6, :cond_5

    .line 395
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    move-result-object v6

    .line 399
    check-cast v6, Landroid/content/ContentValues;

    .line 401
    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    move-result-object v6

    .line 405
    new-instance v7, Ljava/lang/StringBuilder;

    .line 407
    const-string/jumbo v8, "packageName found "

    .line 410
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    move-result-object v7

    .line 420
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 426
    move-result v7

    .line 427
    if-nez v7, :cond_4

    .line 429
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    goto :goto_6

    .line 433
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 436
    move-result-object v2

    .line 437
    :cond_6
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_7

    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 446
    move-result-object v3

    .line 447
    check-cast v3, Ljava/lang/String;

    .line 449
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    .line 452
    move-result v4

    .line 453
    xor-int/2addr v4, p1

    .line 454
    if-eqz v4, :cond_6

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    .line 458
    const-string/jumbo v6, "revoking permissions from uninstalled package: "

    .line 461
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    move-result-object v4

    .line 471
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetLicenseByAdmin(Ljava/lang/String;)Z

    .line 477
    goto :goto_7

    .line 478
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 481
    move-result-wide v2

    .line 482
    :try_start_1
    new-instance v4, Ljava/lang/Thread;

    .line 484
    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;

    .line 486
    invoke-direct {v6, v1, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;I)V

    .line 489
    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 492
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 495
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    goto/16 :goto_5

    .line 500
    :catchall_1
    move-exception p0

    .line 501
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    throw p0

    .line 505
    :cond_8
    :goto_8
    return-void

    .line 506
    nop

    .line 507
    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_2
        0x161995ab -> :sswitch_1
        0x42dd01f1 -> :sswitch_0
    .end sparse-switch

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
