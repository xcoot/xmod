.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v1, -0x2710

    .line 5
    const-string v2, "android.intent.extra.user_handle"

    .line 7
    const-string v3, "_bindAndActivateOnReboot:ACTION_INITIALIZE_NAP: Found profile sizes "

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 14
    const-string v7, "NetworkAnalytics:Service"

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 19
    :pswitch_0
    goto/16 :goto_10

    .line 21
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    check-cast p1, Landroid/os/Bundle;

    .line 25
    if-nez p1, :cond_0

    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string/jumbo v0, "profileInfo"

    .line 34
    const-string v1, "The signature of the package "

    .line 36
    const-string v2, "The package "

    .line 38
    const-string v3, "The System is going to send broadcast of the profile status "

    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    move-result-wide v8

    .line 44
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 47
    move-result-object v10

    .line 48
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 57
    move-result-object v10

    .line 58
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 67
    move-result-object v10

    .line 68
    const/4 v11, 0x2

    .line 69
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v10

    .line 73
    check-cast v10, Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/String;

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v4

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 96
    move-result-object p1

    .line 97
    const/4 v0, 0x4

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/String;

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result p1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string/jumbo v0, "package"

    .line 130
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0, v6, v4}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v2, " has been installed in the user space "

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0, v4, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 176
    move-result v2

    .line 177
    if-lez v2, :cond_2

    .line 179
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 181
    if-eqz v2, :cond_1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo v1, "in "

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string/jumbo v1, "confirmed by OS is "

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    goto :goto_0

    .line 217
    :catchall_0
    move-exception p0

    .line 218
    goto :goto_2

    .line 219
    :cond_1
    :goto_0
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_2

    .line 225
    const-string v0, "The signature mentioned by the admin and the signature of the package present in the device matches"

    .line 227
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Landroid/content/Intent;

    .line 232
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.NPA_STATUS"

    .line 235
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.REGISTRATION_STATUS"

    .line 241
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.PROFILE_NAME"

    .line 247
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 255
    new-instance p1, Landroid/os/UserHandle;

    .line 257
    invoke-direct {p1, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 260
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_2
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    goto/16 :goto_10

    .line 268
    :catch_0
    :try_start_1
    const-string p0, "Error occured while trying to send the NPA profile status to the client"

    .line 270
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    goto :goto_1

    .line 274
    :catch_1
    const-string p0, "Null pointer exception error occured while trying to send the NPA profile status to the client"

    .line 276
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    goto :goto_1

    .line 280
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    throw p0

    .line 284
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    check-cast p1, Landroid/os/Bundle;

    .line 288
    if-nez p1, :cond_3

    .line 290
    return-void

    .line 291
    :cond_3
    const-string/jumbo v0, "reason"

    .line 294
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 297
    move-result p1

    .line 298
    const/4 v0, 0x5

    .line 299
    if-ne p1, v0, :cond_6

    .line 301
    sget-boolean p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 303
    if-eqz p1, :cond_4

    .line 305
    const-string/jumbo v0, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE OFF"

    .line 308
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 313
    iget-object v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 315
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 318
    move-result-object v0

    .line 319
    if-eqz v0, :cond_2c

    .line 321
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 324
    move-result v1

    .line 325
    if-lez v1, :cond_2c

    .line 327
    if-eqz p1, :cond_5

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    .line 331
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 337
    move-result v1

    .line 338
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    move-result-object p1

    .line 345
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 351
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 354
    move-result-object p1

    .line 355
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_2c

    .line 361
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-virtual {p0, v0, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    .line 370
    goto :goto_3

    .line 371
    :cond_6
    if-ne p1, v4, :cond_2c

    .line 373
    sget-boolean p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 375
    if-eqz p1, :cond_7

    .line 377
    const-string/jumbo v0, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE ON"

    .line 380
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 385
    iget-object v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 387
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 390
    move-result-object v0

    .line 391
    if-eqz v0, :cond_2c

    .line 393
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 396
    move-result v1

    .line 397
    if-lez v1, :cond_2c

    .line 399
    if-eqz p1, :cond_8

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    .line 403
    const-string v1, "_deactivateAllProfiles: Found profile sizes "

    .line 405
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 411
    move-result v1

    .line 412
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    move-result-object p1

    .line 419
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 425
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 428
    move-result-object p1

    .line 429
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_2c

    .line 435
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Ljava/lang/String;

    .line 441
    invoke-virtual {p0, v0, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    .line 444
    goto :goto_4

    .line 445
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    check-cast p1, Landroid/os/Bundle;

    .line 449
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 455
    move-result p1

    .line 456
    if-ne p1, v1, :cond_9

    .line 458
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 460
    if-eqz p0, :cond_2c

    .line 462
    const-string p0, "_userRemovedAction: Invalid userId received:"

    .line 464
    invoke-static {p1, p0, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 467
    goto/16 :goto_10

    .line 469
    :cond_9
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 471
    if-eqz v0, :cond_a

    .line 473
    const-string v1, "_userRemovedAction: Received for"

    .line 475
    invoke-static {p1, v1, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 480
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    .line 483
    move-result-object p1

    .line 484
    if-eqz p1, :cond_2c

    .line 486
    check-cast p1, Ljava/util/ArrayList;

    .line 488
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 491
    move-result v1

    .line 492
    if-lez v1, :cond_2c

    .line 494
    if-eqz v0, :cond_b

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    .line 498
    const-string v1, "_userRemovedAction: List of profiles for removed userId is "

    .line 500
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 506
    move-result v1

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    move-result-object v0

    .line 514
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 520
    move-result-object p1

    .line 521
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_2c

    .line 527
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 530
    move-result-object v0

    .line 531
    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 533
    iget v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->adminUid:I

    .line 535
    iget-object v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 537
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->unregisterNetworkMonitorProfile(ILjava/lang/String;)I

    .line 540
    goto :goto_5

    .line 541
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 543
    check-cast p1, Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 547
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 550
    move-result-object v0

    .line 551
    if-nez v0, :cond_c

    .line 553
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 555
    if-eqz p0, :cond_2c

    .line 557
    const-string p0, "_handleNewProfileRegistration: profile is null for name:"

    .line 559
    invoke-static {p0, p1, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    goto/16 :goto_10

    .line 564
    :cond_c
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 566
    iget-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 568
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    .line 571
    move-result v1

    .line 572
    if-eqz v1, :cond_2c

    .line 574
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 576
    if-eqz v1, :cond_d

    .line 578
    const-string v1, "_handleNewProfileRegistration: profile activated:"

    .line 580
    invoke-static {v1, p1, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_d
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 585
    iget-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 587
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 590
    move-result-object v3

    .line 591
    if-eqz v3, :cond_f

    .line 593
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 596
    move-result v4

    .line 597
    if-lez v4, :cond_f

    .line 599
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 602
    move-result-object v3

    .line 603
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 606
    move-result v4

    .line 607
    if-eqz v4, :cond_f

    .line 609
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 612
    move-result-object v4

    .line 613
    check-cast v4, Ljava/lang/String;

    .line 615
    iget-object v5, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 617
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    move-result-object v4

    .line 621
    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 623
    if-eqz v4, :cond_e

    .line 625
    iget-object v5, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 627
    if-eqz v5, :cond_e

    .line 629
    iget-object v8, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 631
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    move-result v8

    .line 635
    if-eqz v8, :cond_e

    .line 637
    iget v4, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 639
    if-ne v6, v4, :cond_e

    .line 641
    iget v1, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 643
    goto :goto_6

    .line 644
    :cond_f
    const/4 v1, -0x1

    .line 645
    :goto_6
    if-gez v1, :cond_10

    .line 647
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 649
    if-eqz p0, :cond_2c

    .line 651
    new-instance p0, Ljava/lang/StringBuilder;

    .line 653
    const-string p1, "_handleNewProfileRegistration: bind userId location fail for:"

    .line 655
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 661
    move-result-object p1

    .line 662
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    move-result-object p0

    .line 669
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    goto/16 :goto_10

    .line 674
    :cond_10
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 676
    iget v4, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 678
    invoke-virtual {v3, v4, v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(IILjava/lang/String;)I

    .line 681
    move-result p1

    .line 682
    if-gez p1, :cond_11

    .line 684
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 686
    if-eqz p0, :cond_2c

    .line 688
    new-instance p0, Ljava/lang/StringBuilder;

    .line 690
    const-string p1, "_handleNewProfileRegistration: bind userId updation failed for profile:"

    .line 692
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 698
    move-result-object p1

    .line 699
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    move-result-object p0

    .line 706
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    goto/16 :goto_10

    .line 711
    :cond_11
    invoke-virtual {p0, v0, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    .line 714
    move-result p1

    .line 715
    if-gez p1, :cond_12

    .line 717
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 719
    if-eqz p0, :cond_2c

    .line 721
    new-instance p0, Ljava/lang/StringBuilder;

    .line 723
    const-string p1, "_handleNewProfileRegistration: activation failed for profile:"

    .line 725
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 731
    move-result-object p1

    .line 732
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    move-result-object p0

    .line 739
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    goto/16 :goto_10

    .line 744
    :cond_12
    new-instance p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 746
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 749
    iget-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 751
    iput-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 753
    iput-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 755
    iget v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 757
    iput v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 759
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    .line 762
    goto/16 :goto_10

    .line 764
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 766
    if-gtz p1, :cond_13

    .line 768
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 770
    if-eqz p0, :cond_2c

    .line 772
    const-string/jumbo p0, "handleMessage: ACTION_ON_ADMIN_REMOVED: Invalid adminUid"

    .line 775
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    goto/16 :goto_10

    .line 780
    :cond_13
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 782
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    .line 785
    move-result-object v0

    .line 786
    if-eqz v0, :cond_2c

    .line 788
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 791
    move-result v1

    .line 792
    if-gtz v1, :cond_14

    .line 794
    goto/16 :goto_10

    .line 796
    :cond_14
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 798
    if-eqz v1, :cond_15

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    .line 802
    const-string v2, "_unregisterAllProfiles: Found profile sizes "

    .line 804
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 810
    move-result v2

    .line 811
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    move-result-object v1

    .line 818
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 824
    move-result v1

    .line 825
    if-lez v1, :cond_2c

    .line 827
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 830
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 833
    move-result-object v0

    .line 834
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 837
    move-result v1

    .line 838
    if-eqz v1, :cond_2c

    .line 840
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 843
    move-result-object v1

    .line 844
    check-cast v1, Ljava/lang/String;

    .line 846
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 848
    invoke-virtual {v2, p1, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateTablesForProfileRemoval(ILjava/lang/String;)V

    .line 851
    goto :goto_7

    .line 852
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 854
    if-gtz p1, :cond_16

    .line 856
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 858
    if-eqz p0, :cond_2c

    .line 860
    const-string/jumbo p0, "handleMessage: ACTION_ON_PRE_ADMIN_REMOVED: Invalid adminUid"

    .line 863
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    goto/16 :goto_10

    .line 868
    :cond_16
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 870
    iget-object v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 872
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 875
    move-result-object v0

    .line 876
    if-eqz v0, :cond_2c

    .line 878
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 881
    move-result v1

    .line 882
    if-lez v1, :cond_2c

    .line 884
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 886
    if-eqz v1, :cond_17

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    .line 890
    const-string v2, "_deactivateAllConnections: Found profile sizes "

    .line 892
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 895
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 898
    move-result v2

    .line 899
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 905
    move-result-object v1

    .line 906
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 912
    move-result-object v0

    .line 913
    :cond_18
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 916
    move-result v1

    .line 917
    if-eqz v1, :cond_2c

    .line 919
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 922
    move-result-object v1

    .line 923
    check-cast v1, Ljava/lang/String;

    .line 925
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 927
    if-eqz v2, :cond_19

    .line 929
    const-string v3, "_deactivateAllProfiles:ACTION_INITIALIZE_NAP: adding profile: "

    .line 931
    invoke-static {v3, v1, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_19
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 936
    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 939
    move-result-object v3

    .line 940
    if-nez v3, :cond_1a

    .line 942
    if-eqz v2, :cond_18

    .line 944
    const-string v2, "_deactivateAllProfiles: ERROR NAPActivationProfile is null for profile: "

    .line 946
    invoke-static {v2, v1, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    goto :goto_8

    .line 950
    :cond_1a
    iget v4, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->adminUid:I

    .line 952
    if-eq p1, v4, :cond_1b

    .line 954
    if-eqz v2, :cond_18

    .line 956
    const-string v1, "_deactivateAllProfiles: ERROR Not the same adminUid: "

    .line 958
    invoke-static {p1, v1, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 961
    goto :goto_8

    .line 962
    :cond_1b
    iget-object v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 964
    if-nez v3, :cond_1c

    .line 966
    if-eqz v2, :cond_18

    .line 968
    const-string v2, "_deactivateAllProfiles: ERROR NAPConfigProfile is null for profile: "

    .line 970
    invoke-static {v2, v1, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    goto :goto_8

    .line 974
    :cond_1c
    invoke-virtual {p0, v3, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    .line 977
    move-result v4

    .line 978
    if-gez v4, :cond_1d

    .line 980
    if-eqz v2, :cond_18

    .line 982
    const-string v2, "_deactivateAllProfiles: ERROR deactivateProfile for profile: "

    .line 984
    invoke-static {v2, v1, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    goto :goto_8

    .line 988
    :cond_1d
    new-instance v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 990
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 993
    iget-object v2, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 995
    iput-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 997
    iget-object v2, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 999
    iput-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1001
    iget v2, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 1003
    iput v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1005
    iget v2, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 1007
    invoke-virtual {p0, v6, v5, v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 1010
    goto :goto_8

    .line 1011
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1013
    check-cast p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1015
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1017
    iget p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1019
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1022
    const-string v1, "_packageAddedAction activatedProfiles.size() = "

    .line 1024
    :try_start_2
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 1026
    if-eqz v2, :cond_1e

    .line 1028
    const-string v3, "_packageAddedAction called"

    .line 1030
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    goto :goto_9

    .line 1034
    :catch_2
    move-exception p0

    .line 1035
    goto/16 :goto_b

    .line 1037
    :cond_1e
    :goto_9
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 1039
    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;

    .line 1042
    move-result-object v3

    .line 1043
    if-eqz v3, :cond_2c

    .line 1045
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1048
    move-result v4

    .line 1049
    if-lez v4, :cond_2c

    .line 1051
    if-eqz v2, :cond_1f

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1055
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1058
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1061
    move-result v1

    .line 1062
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1068
    move-result-object v1

    .line 1069
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_1f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1075
    move-result-object v1

    .line 1076
    :cond_20
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1079
    move-result v2

    .line 1080
    if-eqz v2, :cond_2c

    .line 1082
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1085
    move-result-object v2

    .line 1086
    check-cast v2, Ljava/lang/String;

    .line 1088
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 1090
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 1093
    move-result-object v3

    .line 1094
    if-eqz v3, :cond_20

    .line 1096
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 1098
    if-eqz v4, :cond_21

    .line 1100
    const-string v4, "_packageAddedAction: ACTIVATING FOR PACKAGE ADDED."

    .line 1102
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_21
    iget-object v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 1107
    iget v4, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1109
    iget-object v5, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 1111
    if-ne v4, p1, :cond_20

    .line 1113
    :try_start_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    .line 1116
    move-result-object v4

    .line 1117
    iget-object v8, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 1119
    invoke-virtual {v8, v0, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validatePkgSignForSingleProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1122
    move-result v4

    .line 1123
    if-nez v4, :cond_22

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1127
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    const-string v3, "__packageAddedAction: Package signature could not be matched for profile entry : "

    .line 1132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1141
    move-result-object v2

    .line 1142
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    goto :goto_a

    .line 1146
    :cond_22
    new-instance v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1148
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1151
    iput-object v5, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 1153
    iget-object v5, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 1155
    iput-object v5, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1157
    iget v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 1159
    iput v3, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1161
    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    .line 1164
    move-result v2

    .line 1165
    invoke-virtual {p0, v6, v6, v2, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1168
    goto :goto_a

    .line 1169
    :goto_b
    const-string p1, "_packageAddedAction Exception"

    .line 1171
    invoke-static {v7, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    goto/16 :goto_10

    .line 1176
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1178
    check-cast p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1180
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1182
    iget p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1187
    :try_start_4
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 1189
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;

    .line 1192
    move-result-object v0

    .line 1193
    if-eqz v0, :cond_2c

    .line 1195
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1198
    move-result v1

    .line 1199
    if-lez v1, :cond_2c

    .line 1201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1204
    move-result-object v0

    .line 1205
    :cond_23
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1208
    move-result v1

    .line 1209
    if-eqz v1, :cond_2c

    .line 1211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1214
    move-result-object v1

    .line 1215
    check-cast v1, Ljava/lang/String;

    .line 1217
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 1219
    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 1222
    move-result-object v2

    .line 1223
    if-eqz v2, :cond_23

    .line 1225
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 1227
    if-eqz v3, :cond_24

    .line 1229
    const-string v3, "_packageRemovedAction: DEACTIVATING FOR PACKAGE REMOVED."

    .line 1231
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    goto :goto_d

    .line 1235
    :catch_3
    move-exception p0

    .line 1236
    goto :goto_e

    .line 1237
    :cond_24
    :goto_d
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 1239
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 1241
    if-ne v3, p1, :cond_23

    .line 1243
    new-instance v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1245
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1248
    iget-object v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 1250
    iput-object v8, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 1252
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 1254
    iput-object v2, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1256
    iput v3, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1258
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    .line 1261
    move-result v1

    .line 1262
    invoke-virtual {p0, v6, v5, v1, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1265
    goto :goto_c

    .line 1266
    :goto_e
    const-string p1, "_packageRemovedAction Exception"

    .line 1268
    invoke-static {v7, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1271
    goto/16 :goto_10

    .line 1273
    :pswitch_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1275
    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1277
    if-nez p0, :cond_2c

    .line 1279
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 1281
    if-eqz p0, :cond_25

    .line 1283
    const-string/jumbo p0, "handleMessage:UNREGISTER_CLIENT:handleObj null"

    .line 1286
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_25
    return-void

    .line 1290
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->initializeTables()V

    .line 1295
    goto/16 :goto_10

    .line 1297
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1299
    check-cast p1, Landroid/os/Bundle;

    .line 1301
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 1303
    iget-object v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1305
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 1308
    move-result-object v0

    .line 1309
    if-eqz v0, :cond_2c

    .line 1311
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 1314
    move-result v4

    .line 1315
    if-lez v4, :cond_2c

    .line 1317
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 1319
    if-eqz v4, :cond_26

    .line 1321
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1323
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1326
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 1329
    move-result v3

    .line 1330
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1336
    move-result-object v3

    .line 1337
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_26
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 1343
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1346
    move-result p1

    .line 1347
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1350
    move-result-object v0

    .line 1351
    :cond_27
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1354
    move-result v1

    .line 1355
    if-eqz v1, :cond_2c

    .line 1357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1360
    move-result-object v1

    .line 1361
    check-cast v1, Ljava/lang/String;

    .line 1363
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 1365
    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 1368
    move-result-object v2

    .line 1369
    if-nez v2, :cond_28

    .line 1371
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 1373
    if-eqz v2, :cond_27

    .line 1375
    const-string v2, "_bindAndActivateOnReboot: ERROR NAPActivationProfile is null for profile: "

    .line 1377
    invoke-static {v2, v1, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    goto :goto_f

    .line 1381
    :cond_28
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 1383
    if-nez v2, :cond_29

    .line 1385
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 1387
    if-eqz v2, :cond_27

    .line 1389
    const-string v2, "_bindAndActivateOnReboot: ERROR NAPConfigProfile is null for profile: "

    .line 1391
    invoke-static {v2, v1, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    goto :goto_f

    .line 1395
    :cond_29
    iget v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 1397
    if-ne p1, v2, :cond_27

    .line 1399
    invoke-virtual {p0, v1, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    .line 1402
    goto :goto_f

    .line 1403
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1405
    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1407
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1409
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1411
    if-nez v0, :cond_2b

    .line 1413
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 1415
    if-eqz p0, :cond_2a

    .line 1417
    const-string/jumbo p0, "handleMessage:ACTIVATE_MONITOR_CLIENT:handleObj null"

    .line 1420
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_2a
    return-void

    .line 1424
    :cond_2b
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    .line 1427
    :cond_2c
    :goto_10
    return-void

    .line 1428
    nop

    .line 1429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
