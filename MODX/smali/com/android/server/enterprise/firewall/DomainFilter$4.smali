.class public final Lcom/android/server/enterprise/firewall/DomainFilter$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    iget v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->$r8$classId:I

    .line 6
    packed-switch v3, :pswitch_data_0

    .line 9
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Ljava/lang/Object;

    .line 11
    check-cast v0, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .line 13
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 15
    sget v3, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v3, "DomainFilter"

    .line 22
    const-string/jumbo v4, "initUserIdMap() - Initializing UserID Mapping"

    .line 25
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object v3

    .line 34
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 36
    const-string/jumbo v5, "user"

    .line 39
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/os/UserManager;

    .line 45
    if-eqz v4, :cond_5

    .line 47
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_5

    .line 53
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    .line 55
    monitor-enter v5

    .line 56
    :try_start_0
    iget-boolean v6, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 58
    if-nez v6, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_0

    .line 66
    iput-boolean v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 68
    move v6, v1

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_6

    .line 73
    :cond_0
    const/4 v6, 0x0

    .line 74
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v7, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mKGExceptionListLock:Ljava/lang/Object;

    .line 77
    monitor-enter v7

    .line 78
    :try_start_1
    iget-boolean v5, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsKGExceptionApplied:Z

    .line 80
    if-nez v5, :cond_1

    .line 82
    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_1

    .line 88
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isKGExemptRuleRequired()Z

    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_1

    .line 94
    iput-boolean v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsKGExceptionApplied:Z

    .line 96
    goto :goto_1

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    goto :goto_5

    .line 99
    :cond_1
    const/4 v1, 0x0

    .line 100
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    .line 103
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 108
    monitor-enter v5

    .line 109
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v4

    .line 113
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_3

    .line 119
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Landroid/content/pm/UserInfo;

    .line 125
    new-instance v8, Ljava/util/HashMap;

    .line 127
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 130
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    .line 132
    const/16 v10, 0x40

    .line 134
    invoke-virtual {v3, v10, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 137
    move-result-object v9

    .line 138
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    move-result-object v10

    .line 142
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_2

    .line 148
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    move-result-object v11

    .line 152
    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 154
    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 156
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 158
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 160
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v11

    .line 164
    invoke-virtual {v8, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    goto :goto_3

    .line 168
    :catchall_2
    move-exception v0

    .line 169
    goto :goto_4

    .line 170
    :cond_2
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 172
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 174
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object v7

    .line 178
    check-cast v10, Ljava/util/HashMap;

    .line 180
    invoke-virtual {v10, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    goto :goto_2

    .line 187
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 188
    if-eqz v6, :cond_4

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V

    .line 193
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPlatformPackageExceptionList(Ljava/util/List;)V

    .line 196
    :cond_4
    if-eqz v1, :cond_5

    .line 198
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->processKGPackageException(Ljava/util/List;)V

    .line 201
    goto :goto_7

    .line 202
    :goto_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 203
    throw v0

    .line 204
    :goto_5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    throw v0

    .line 206
    :goto_6
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    throw v0

    .line 208
    :cond_5
    :goto_7
    return-void

    .line 209
    :pswitch_0
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Ljava/lang/Object;

    .line 211
    check-cast v3, Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 213
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    const-string/jumbo v4, "initDaemonCache()"

    .line 219
    const-string v11, "DomainFilter"

    .line 221
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v12, v3, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 226
    const-string v13, "DomainFilterTable"

    .line 228
    const/4 v14, 0x0

    .line 229
    invoke-virtual {v12, v13, v14, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 232
    move-result-object v4

    .line 233
    check-cast v4, Ljava/util/ArrayList;

    .line 235
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_6

    .line 241
    const-string/jumbo v1, "initDaemonCache() - No rules found in db"

    .line 244
    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    goto/16 :goto_12

    .line 249
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 252
    move-result-object v15

    .line 253
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_14

    .line 259
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    move-result-object v4

    .line 263
    check-cast v4, Landroid/content/ContentValues;

    .line 265
    const-string/jumbo v5, "blacklist"

    .line 268
    invoke-static {v4, v5, v12}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 271
    move-result-object v8

    .line 272
    const-string/jumbo v5, "whitelist"

    .line 275
    invoke-static {v4, v5, v12}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 278
    move-result-object v9

    .line 279
    const-string/jumbo v5, "dns1"

    .line 282
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    move-result-object v5

    .line 286
    move-object v6, v8

    .line 287
    check-cast v6, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 292
    move-result v6

    .line 293
    if-eqz v6, :cond_8

    .line 295
    move-object v6, v9

    .line 296
    check-cast v6, Ljava/util/ArrayList;

    .line 298
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 301
    move-result v6

    .line 302
    if-eqz v6, :cond_8

    .line 304
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    move-result v6

    .line 308
    if-nez v6, :cond_7

    .line 310
    goto :goto_9

    .line 311
    :cond_7
    move-object/from16 v16, v15

    .line 313
    goto :goto_b

    .line 314
    :cond_8
    :goto_9
    const-string v6, "adminUid"

    .line 316
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 319
    move-result-object v7

    .line 320
    if-eqz v7, :cond_9

    .line 322
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 325
    move-result v7

    .line 326
    goto :goto_a

    .line 327
    :cond_9
    const/4 v7, -0x1

    .line 328
    :goto_a
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 331
    move-result v14

    .line 332
    const-string/jumbo v2, "packageName"

    .line 335
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    move-result-object v1

    .line 339
    const-string v10, "*"

    .line 341
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    move-result v10

    .line 345
    if-eqz v10, :cond_a

    .line 347
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 350
    move-result-object v10

    .line 351
    move-object/from16 v16, v15

    .line 353
    goto :goto_d

    .line 354
    :cond_a
    invoke-virtual {v3, v14, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(ILjava/lang/String;)I

    .line 357
    move-result v10

    .line 358
    move-object/from16 v16, v15

    .line 360
    const/4 v15, -0x1

    .line 361
    if-eq v10, v15, :cond_e

    .line 363
    const-string/jumbo v15, "signature"

    .line 366
    invoke-virtual {v4, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    move-result-object v15

    .line 370
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    move-result v17

    .line 374
    if-nez v17, :cond_d

    .line 376
    invoke-virtual {v3, v14, v1, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    .line 379
    move-result v14

    .line 380
    if-eqz v14, :cond_b

    .line 382
    goto :goto_c

    .line 383
    :cond_b
    const-string/jumbo v1, "initDaemonCache() - app signature mismatch"

    .line 386
    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_c
    :goto_b
    move-object/from16 v15, v16

    .line 391
    const/4 v1, 0x1

    .line 392
    const/4 v14, 0x0

    .line 393
    goto/16 :goto_8

    .line 395
    :cond_d
    :goto_c
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 398
    move-result-object v10

    .line 399
    goto :goto_d

    .line 400
    :cond_e
    const/4 v10, 0x0

    .line 401
    :goto_d
    if-eqz v10, :cond_c

    .line 403
    if-eqz v5, :cond_f

    .line 405
    const-string/jumbo v14, "dns2"

    .line 408
    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    move-result-object v14

    .line 412
    invoke-virtual {v3, v5, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    move-result v5

    .line 416
    const/4 v14, -0x1

    .line 417
    if-eq v5, v14, :cond_10

    .line 419
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    move-result-object v14

    .line 423
    const-string/jumbo v15, "networkId"

    .line 426
    invoke-virtual {v4, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    new-instance v14, Landroid/content/ContentValues;

    .line 431
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 434
    invoke-static {v7, v14, v6, v2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v12, v13, v4, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 440
    goto :goto_e

    .line 441
    :cond_f
    const/4 v14, -0x1

    .line 442
    move v5, v14

    .line 443
    :cond_10
    :goto_e
    iget-object v1, v3, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 445
    const-string/jumbo v2, "user"

    .line 448
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    move-result-object v1

    .line 452
    check-cast v1, Landroid/os/UserManager;

    .line 454
    if-eqz v1, :cond_13

    .line 456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 459
    move-result-wide v6

    .line 460
    :try_start_6
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 463
    move-result-object v1

    .line 464
    if-eqz v1, :cond_12

    .line 466
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 469
    move-result-object v1

    .line 470
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_12

    .line 476
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 482
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 484
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    .line 487
    move-result v2

    .line 488
    if-eqz v2, :cond_11

    .line 490
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerDomainFilterListener(Z)Z

    .line 493
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 494
    if-eqz v2, :cond_11

    .line 496
    goto :goto_f

    .line 497
    :catchall_3
    move-exception v0

    .line 498
    goto :goto_10

    .line 499
    :cond_12
    :goto_f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    goto :goto_11

    .line 503
    :goto_10
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    throw v0

    .line 507
    :cond_13
    :goto_11
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 510
    move-result-object v1

    .line 511
    const/4 v5, 0x0

    .line 512
    const/4 v7, 0x0

    .line 513
    move-object v4, v3

    .line 514
    move-object v6, v10

    .line 515
    move-object v10, v1

    .line 516
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 519
    goto/16 :goto_b

    .line 521
    :cond_14
    iget-object v1, v3, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 523
    const/4 v2, 0x1

    .line 524
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterEnabled(Z)V

    .line 527
    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabledAtAll()Z

    .line 530
    move-result v3

    .line 531
    if-eqz v3, :cond_15

    .line 533
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterOnIptablesEnabled(Z)V

    .line 536
    :cond_15
    :goto_12
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Ljava/lang/Object;

    .line 538
    move-object v2, v1

    .line 539
    check-cast v2, Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 541
    iget-object v4, v2, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 543
    const/4 v3, 0x5

    .line 544
    const/4 v5, 0x0

    .line 545
    const/4 v6, 0x0

    .line 546
    const/4 v7, 0x0

    .line 547
    const/4 v8, 0x0

    .line 548
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 551
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Ljava/lang/Object;

    .line 553
    move-object v1, v0

    .line 554
    check-cast v1, Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 556
    const-string/jumbo v0, "com.google.android.captiveportallogin"

    .line 559
    const/4 v2, 0x0

    .line 560
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(ILjava/lang/String;)I

    .line 563
    move-result v0

    .line 564
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 567
    move-result-object v3

    .line 568
    const/4 v2, 0x4

    .line 569
    const/4 v4, 0x0

    .line 570
    const/4 v5, 0x0

    .line 571
    const/4 v6, 0x0

    .line 572
    const/4 v7, 0x0

    .line 573
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 576
    return-void

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
