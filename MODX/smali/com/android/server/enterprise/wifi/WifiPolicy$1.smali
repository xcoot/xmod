.class public final Lcom/android/server/enterprise/wifi/WifiPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    const-string v1, "WifiPolicyService"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_2

    .line 20
    const-string/jumbo p1, "wifi_state"

    .line 23
    const/4 v0, 0x4

    .line 24
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x2

    .line 29
    if-eq p1, p2, :cond_0

    .line 31
    if-nez p1, :cond_10

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 35
    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 40
    move-result v0

    .line 41
    if-eq p1, v0, :cond_10

    .line 43
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 50
    if-ne p1, p2, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p2, 0x3

    .line 54
    :goto_0
    new-array p0, v3, [Ljava/lang/Object;

    .line 56
    invoke-static {p2, p0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    .line 59
    goto/16 :goto_7

    .line 61
    :cond_2
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v2

    .line 67
    const/4 v4, -0x1

    .line 68
    if-eqz v2, :cond_e

    .line 70
    sget-object p2, Lcom/android/server/enterprise/wifi/WifiPolicy;->EAP_STRINGS:[Ljava/lang/String;

    .line 72
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    const-string/jumbo p2, "migrateWifiNetworkIfNeeded - network map size: "

    .line 80
    const-string/jumbo v0, "migrateWifiNetworkIfNeeded"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string/jumbo v2, "wifi_network_migration"

    .line 89
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiMigrationNeeded(Ljava/lang/String;)Z

    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_3

    .line 95
    const-string p0, "Wi-Fi network migration is not needed, skipping..."

    .line 97
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto/16 :goto_7

    .line 102
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllNetworksByAdminUid()Ljava/util/Map;

    .line 105
    move-result-object v5

    .line 106
    if-eqz v5, :cond_d

    .line 108
    check-cast v5, Landroid/util/ArrayMap;

    .line 110
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_4

    .line 116
    goto/16 :goto_4

    .line 118
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 126
    move-result p2

    .line 127
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p2

    .line 134
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 140
    move-result-object p2

    .line 141
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 144
    move-result-object p2

    .line 145
    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_c

    .line 151
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    move-result-object v5

    .line 155
    check-cast v5, Ljava/util/Map$Entry;

    .line 157
    if-eqz v5, :cond_5

    .line 159
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 162
    move-result-object v6

    .line 163
    if-eqz v6, :cond_5

    .line 165
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Ljava/lang/Integer;

    .line 171
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 174
    move-result v6

    .line 175
    if-eq v6, v4, :cond_5

    .line 177
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    move-result-object v6

    .line 181
    if-eqz v6, :cond_5

    .line 183
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 186
    move-result-object v6

    .line 187
    check-cast v6, Ljava/util/List;

    .line 189
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_6

    .line 195
    goto :goto_1

    .line 196
    :cond_6
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Ljava/lang/Integer;

    .line 202
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 205
    move-result v6

    .line 206
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 209
    move-result-object v6

    .line 210
    if-nez v6, :cond_7

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v7, "Could not get network creator information for "

    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    const-string v5, " uid"

    .line 231
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v5

    .line 238
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    goto :goto_1

    .line 242
    :catchall_0
    move-exception p1

    .line 243
    goto/16 :goto_6

    .line 245
    :catch_0
    move-exception p1

    .line 246
    goto/16 :goto_5

    .line 248
    :cond_7
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 250
    check-cast v7, Ljava/lang/Integer;

    .line 252
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 255
    move-result v7

    .line 256
    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 258
    check-cast v8, Landroid/content/ComponentName;

    .line 260
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 263
    move-result-object v8

    .line 264
    iget-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 266
    const-string/jumbo v10, "device_policy"

    .line 269
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    move-result-object v9

    .line 273
    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 275
    if-eqz v9, :cond_b

    .line 277
    invoke-virtual {v9, v8}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 280
    move-result v8

    .line 281
    if-nez v8, :cond_8

    .line 283
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_b

    .line 289
    :cond_8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Ljava/util/List;

    .line 295
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 298
    move-result-object v5

    .line 299
    move v7, v3

    .line 300
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    move-result v8

    .line 304
    if-eqz v8, :cond_5

    .line 306
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    move-result-object v8

    .line 310
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 312
    if-nez v8, :cond_9

    .line 314
    goto :goto_2

    .line 315
    :cond_9
    iget-object v9, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 317
    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 319
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 321
    invoke-static {v8, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    .line 324
    move-result-object v8

    .line 325
    invoke-virtual {p0, v9, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkFromWifiModule(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 328
    move-result-object v8

    .line 329
    if-eqz v8, :cond_a

    .line 331
    new-instance v9, Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    const-string v10, "Migrating network "

    .line 338
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    add-int/2addr v7, p1

    .line 342
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    const-string v10, " from uid "

    .line 347
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 352
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object v9

    .line 359
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 364
    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 366
    check-cast v10, Ljava/lang/Integer;

    .line 368
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 371
    move-result v10

    .line 372
    iget-object v11, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 374
    check-cast v11, Landroid/content/ComponentName;

    .line 376
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 379
    move-result-object v11

    .line 380
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    invoke-static {v8, v10, v11}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)I

    .line 386
    goto :goto_2

    .line 387
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    .line 389
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    const-string v9, "Could not find wifi network from uid "

    .line 394
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 399
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v8

    .line 406
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    goto :goto_2

    .line 410
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    const-string v7, "Do not migrate networks from Device Admin - uid = "

    .line 417
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 422
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    move-result-object v5

    .line 429
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    goto/16 :goto_1

    .line 434
    :cond_c
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiMigrationFlag(Ljava/lang/String;)V

    .line 437
    goto :goto_7

    .line 438
    :cond_d
    :goto_4
    :try_start_1
    const-string p1, "Network list is null or empty, network migration is not required"

    .line 440
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    goto :goto_3

    .line 444
    :goto_5
    :try_start_2
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    goto :goto_3

    .line 448
    :goto_6
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiMigrationFlag(Ljava/lang/String;)V

    .line 451
    throw p1

    .line 452
    :cond_e
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 455
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    move-result v2

    .line 459
    if-eqz v2, :cond_f

    .line 461
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 464
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 467
    move-result p1

    .line 468
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 470
    const/4 p2, 0x0

    .line 471
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 474
    move-result v0

    .line 475
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiStateChangeAllowedSystemUI(IZ)V

    .line 478
    invoke-virtual {p0, p2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 481
    move-result p2

    .line 482
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    .line 485
    goto :goto_7

    .line 486
    :cond_f
    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 488
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_10

    .line 494
    const-string/jumbo v0, "changeReason"

    .line 497
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 500
    move-result p2

    .line 501
    const-string/jumbo v0, "reason = "

    .line 504
    invoke-static {p2, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 507
    if-ne p2, p1, :cond_10

    .line 509
    new-instance p1, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;

    .line 511
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$1;)V

    .line 514
    new-instance p0, Ljava/lang/Thread;

    .line 516
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 519
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 522
    :cond_10
    :goto_7
    return-void
.end method
