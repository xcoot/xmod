.class public final Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

.field public mIcmpAllowRuleApplies:I

.field public mNetdService:Landroid/net/INetd;

.field public mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field public mShouldAddAcceptRuleToInput:Z


# direct methods
.method public static splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :cond_0
    move v4, v2

    .line 14
    :goto_0
    move-object v5, p0

    .line 15
    check-cast v5, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v6

    .line 21
    if-ge v3, v6, :cond_2

    .line 23
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Ljava/lang/String;

    .line 29
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    move-result-object v7

    .line 35
    array-length v7, v7

    .line 36
    add-int/2addr v4, v7

    .line 37
    const v7, 0x61a80

    .line 40
    if-le v4, v7, :cond_1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    sget-object v4, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 51
    if-ne p1, v4, :cond_3

    .line 53
    const-string v4, "*filter"

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const-string v4, "*nat"

    .line 58
    :goto_2
    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 61
    const-string v4, "COMMIT\n"

    .line 63
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v4, "\n"

    .line 68
    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 78
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result v4

    .line 82
    if-lt v3, v4, :cond_0

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo p1, "total number of commands "

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 95
    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    const-string p1, "FirewallRulesApplier"

    .line 105
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-object v0
.end method


# virtual methods
.method public final addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v4

    .line 14
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v0, :cond_15

    .line 21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    move-object v6, v0

    .line 26
    check-cast v6, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 28
    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 35
    move-result-object v7

    .line 36
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 38
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v8

    .line 46
    const/4 v9, -0x1

    .line 47
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v10

    .line 51
    const-string v11, "*"

    .line 53
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v11

    .line 57
    if-nez v11, :cond_0

    .line 59
    invoke-static {v0, v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidForApplication(ILjava/lang/String;)Ljava/lang/Integer;

    .line 62
    move-result-object v10

    .line 63
    if-nez v10, :cond_0

    .line 65
    const-string v0, "FirewallRulesApplier"

    .line 67
    const-string/jumbo v5, "failed to get uid for "

    .line 70
    invoke-static {v5, v7, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v11, v1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    .line 76
    iget-object v12, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 78
    check-cast v12, Ljava/util/HashMap;

    .line 80
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    move-result v12

    .line 84
    const/4 v13, 0x0

    .line 85
    if-eqz v12, :cond_1

    .line 87
    iget-object v12, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 89
    check-cast v12, Ljava/util/HashMap;

    .line 91
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v12

    .line 95
    check-cast v12, Ljava/util/List;

    .line 97
    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 100
    move-result v12

    .line 101
    if-eqz v12, :cond_1

    .line 103
    move v12, v5

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    move v12, v13

    .line 106
    :goto_1
    if-eqz v12, :cond_2

    .line 108
    const-string v0, "FirewallRulesApplier"

    .line 110
    const-string/jumbo v7, "chain exists for application"

    .line 113
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object/from16 v18, v3

    .line 118
    move-object/from16 v16, v4

    .line 120
    move v3, v5

    .line 121
    move-object/from16 v17, v6

    .line 123
    goto/16 :goto_c

    .line 125
    :cond_2
    iget v12, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 127
    if-nez v12, :cond_3

    .line 129
    move v12, v5

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    move v12, v13

    .line 132
    :goto_2
    new-instance v14, Ljava/util/ArrayList;

    .line 134
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-static {v7, v10, v8, v5}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterChainNameForApp(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/String;

    .line 140
    move-result-object v15

    .line 141
    invoke-static {v7, v10, v8, v13}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterChainNameForApp(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/String;

    .line 144
    move-result-object v9

    .line 145
    move-object/from16 v16, v4

    .line 147
    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterBaseChainNameForUser(IZ)Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    invoke-static {v0, v13}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterBaseChainNameForUser(IZ)Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    const/16 v17, -0x1

    .line 157
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v13

    .line 161
    move-object/from16 v18, v3

    .line 163
    const/4 v3, 0x1

    .line 164
    invoke-static {v7, v0, v13, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Ljava/lang/String;ILjava/lang/Integer;Z)Ljava/lang/String;

    .line 167
    move-result-object v13

    .line 168
    const-string v3, "*filter"

    .line 170
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v3, " -"

    .line 175
    const-string v2, ":"

    .line 177
    move-object/from16 v17, v6

    .line 179
    if-eqz v12, :cond_4

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v2, "*"

    .line 219
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v2

    .line 223
    if-nez v2, :cond_5

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    const-string v3, "-I "

    .line 229
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v3, " -j RETURN "

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v2, "-I"

    .line 252
    goto :goto_3

    .line 253
    :cond_5
    const-string v2, "-A"

    .line 255
    :goto_3
    const-string v3, " -j "

    .line 257
    const-string v6, " "

    .line 259
    if-eqz v12, :cond_6

    .line 261
    new-instance v12, Ljava/lang/StringBuilder;

    .line 263
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 290
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v2, "COMMIT\n"

    .line 320
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const/16 v2, 0x40

    .line 325
    if-eqz v7, :cond_7

    .line 327
    const-string v3, "*"

    .line 329
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    move-result v3

    .line 333
    if-nez v3, :cond_8

    .line 335
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 338
    move-result v3

    .line 339
    const/4 v4, -0x1

    .line 340
    if-ne v3, v4, :cond_c

    .line 342
    :cond_8
    iget-object v3, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 344
    iget-object v3, v3, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    .line 346
    const-string/jumbo v4, "packages list is either null or empty "

    .line 349
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 352
    move-result-object v5

    .line 353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 356
    move-result-wide v12

    .line 357
    :try_start_0
    invoke-virtual {v5, v2, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 360
    move-result-object v0

    .line 361
    if-eqz v0, :cond_a

    .line 363
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 366
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    if-eqz v2, :cond_9

    .line 369
    goto :goto_4

    .line 370
    :cond_9
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    const/4 v2, 0x1

    .line 374
    invoke-static {v3, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidsToExemptFromPackages(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    .line 377
    move-result-object v0

    .line 378
    goto :goto_5

    .line 379
    :catchall_0
    move-exception v0

    .line 380
    goto :goto_7

    .line 381
    :cond_a
    :goto_4
    :try_start_1
    const-string v2, "FirewallUtils"

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    .line 385
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    move-result-object v0

    .line 395
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    .line 400
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    :goto_5
    const-string v2, "*filter"

    .line 408
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 414
    move-result-object v0

    .line 415
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    move-result v2

    .line 419
    if-eqz v2, :cond_b

    .line 421
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    move-result-object v2

    .line 425
    check-cast v2, Ljava/lang/Integer;

    .line 427
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 430
    move-result v3

    .line 431
    new-instance v4, Ljava/util/ArrayList;

    .line 433
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 439
    move-result v5

    .line 440
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    move-result-object v5

    .line 444
    const-string v6, "*"

    .line 446
    const/4 v9, 0x0

    .line 447
    invoke-static {v6, v2, v5, v9}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterChainNameForApp(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/String;

    .line 450
    move-result-object v2

    .line 451
    const-string v5, "-I "

    .line 453
    const-string v6, " -m owner --uid-owner "

    .line 455
    const-string v9, " -j ACCEPT "

    .line 457
    invoke-static {v3, v5, v2, v6, v9}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 467
    goto :goto_6

    .line 468
    :cond_b
    const-string v0, "COMMIT\n"

    .line 470
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    goto/16 :goto_a

    .line 475
    :goto_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    throw v0

    .line 479
    :cond_c
    iget-object v3, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 481
    iget-object v3, v3, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    .line 483
    const-string v4, "FirewallUtils"

    .line 485
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 488
    move-result-object v3

    .line 489
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 492
    move-result-wide v5

    .line 493
    :try_start_2
    invoke-virtual {v3, v7, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 496
    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 497
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    if-nez v0, :cond_d

    .line 502
    const-string/jumbo v0, "isPackageExempt() - packageInfo is null"

    .line 505
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_8
    const/4 v0, 0x0

    .line 509
    goto :goto_9

    .line 510
    :cond_d
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 512
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 514
    const-string/jumbo v3, "com.samsung.android.kgclient"

    .line 517
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    move-result v2

    .line 521
    if-eqz v2, :cond_e

    .line 523
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 525
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 527
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 529
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 532
    move-result v2

    .line 533
    invoke-static {v2, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isPlatformSigned(ILjava/lang/String;)Z

    .line 536
    move-result v2

    .line 537
    if-eqz v2, :cond_e

    .line 539
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isKGExemptRuleRequired()Z

    .line 542
    move-result v0

    .line 543
    goto :goto_9

    .line 544
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    .line 546
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getPlatformUidsToExemptFromPackages(Ljava/util/List;)Ljava/util/List;

    .line 555
    move-result-object v0

    .line 556
    check-cast v0, Ljava/util/ArrayList;

    .line 558
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 561
    move-result v0

    .line 562
    const/4 v2, 0x1

    .line 563
    xor-int/2addr v0, v2

    .line 564
    goto :goto_9

    .line 565
    :catchall_1
    move-exception v0

    .line 566
    goto/16 :goto_f

    .line 568
    :catch_0
    move-exception v0

    .line 569
    move-object v2, v0

    .line 570
    :try_start_3
    const-string/jumbo v0, "isPackageExempt() - failed to retrieve app package info"

    .line 573
    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 576
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    goto :goto_8

    .line 580
    :goto_9
    if-eqz v0, :cond_f

    .line 582
    const-string v0, "*filter"

    .line 584
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 590
    move-result v0

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    .line 593
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 596
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 599
    move-result v3

    .line 600
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 603
    move-result-object v3

    .line 604
    const/4 v4, 0x0

    .line 605
    invoke-static {v7, v10, v3, v4}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterChainNameForApp(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/String;

    .line 608
    move-result-object v3

    .line 609
    const-string v4, "-I "

    .line 611
    const-string v5, " -m owner --uid-owner "

    .line 613
    const-string v6, " -j ACCEPT "

    .line 615
    invoke-static {v0, v4, v3, v5, v6}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 618
    move-result-object v0

    .line 619
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 625
    const-string v0, "COMMIT\n"

    .line 627
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_f
    :goto_a
    iget-object v0, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 632
    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 634
    invoke-virtual {v0, v14, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 637
    move-result v0

    .line 638
    if-nez v0, :cond_10

    .line 640
    const-string v0, "FirewallRulesApplier"

    .line 642
    const-string v2, "Failed to create chain for "

    .line 644
    invoke-static {v2, v7, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v3, 0x0

    .line 648
    goto :goto_c

    .line 649
    :cond_10
    iget-object v2, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCacheLock:Ljava/lang/Object;

    .line 651
    monitor-enter v2

    .line 652
    :try_start_4
    iget-object v0, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 654
    check-cast v0, Ljava/util/HashMap;

    .line 656
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 659
    move-result v0

    .line 660
    if-nez v0, :cond_11

    .line 662
    iget-object v0, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 664
    new-instance v3, Ljava/util/ArrayList;

    .line 666
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 669
    check-cast v0, Ljava/util/HashMap;

    .line 671
    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    goto :goto_b

    .line 675
    :catchall_2
    move-exception v0

    .line 676
    goto :goto_e

    .line 677
    :cond_11
    :goto_b
    iget-object v0, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 679
    check-cast v0, Ljava/util/HashMap;

    .line 681
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    move-result-object v0

    .line 685
    check-cast v0, Ljava/util/List;

    .line 687
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    iget v0, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 692
    const/4 v3, 0x1

    .line 693
    add-int/2addr v0, v3

    .line 694
    iput v0, v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 696
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 697
    const/4 v3, 0x1

    .line 698
    :goto_c
    if-nez v3, :cond_12

    .line 700
    move-object/from16 v2, p1

    .line 702
    move-object/from16 v4, v16

    .line 704
    move-object/from16 v3, v18

    .line 706
    goto/16 :goto_0

    .line 708
    :cond_12
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    .line 710
    iget v0, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 712
    const/4 v2, 0x1

    .line 713
    if-ne v0, v2, :cond_13

    .line 715
    iget-boolean v0, v1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 717
    if-eqz v0, :cond_13

    .line 719
    move v5, v2

    .line 720
    goto :goto_d

    .line 721
    :cond_13
    const/4 v5, 0x0

    .line 722
    :goto_d
    const-string v0, "-A"

    .line 724
    move-object/from16 v3, p1

    .line 726
    move-object/from16 v2, v17

    .line 728
    invoke-static {v2, v0, v3, v5}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createAppendDeleteDomainCommands(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 731
    move-result-object v0

    .line 732
    move-object/from16 v4, v18

    .line 734
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 737
    if-eqz v5, :cond_14

    .line 739
    const/4 v2, 0x0

    .line 740
    iput-boolean v2, v1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 742
    :cond_14
    move-object v2, v3

    .line 743
    move-object v3, v4

    .line 744
    move-object/from16 v4, v16

    .line 746
    goto/16 :goto_0

    .line 748
    :goto_e
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 749
    throw v0

    .line 750
    :goto_f
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    throw v0

    .line 754
    :cond_15
    move-object v4, v3

    .line 755
    move v2, v5

    .line 756
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 758
    invoke-static {v4, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    .line 761
    move-result-object v0

    .line 762
    check-cast v0, Ljava/util/ArrayList;

    .line 764
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 767
    move-result-object v0

    .line 768
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 771
    move-result v2

    .line 772
    if-eqz v2, :cond_16

    .line 774
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 777
    move-result-object v2

    .line 778
    check-cast v2, Ljava/lang/String;

    .line 780
    const/16 v3, 0x2e

    .line 782
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 785
    move-result v2

    .line 786
    and-int/2addr v5, v2

    .line 787
    goto :goto_10

    .line 788
    :cond_16
    if-eqz v5, :cond_17

    .line 790
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 792
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 794
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 796
    const-string v3, "The domain filter on iptables api was successfully enabled."

    .line 798
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 801
    return-object v0

    .line 802
    :cond_17
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 804
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 806
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 808
    const-string v3, "Failed to enable domain filter on iptables api."

    .line 810
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 813
    return-object v0
.end method

.method public final declared-synchronized addOrRemoveExemptRules(Lcom/android/server/enterprise/firewall/FirewallExemption;ZLcom/samsung/android/knox/ContextInfo;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    const-string v1, "*filter"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    if-eqz p2, :cond_0

    .line 14
    const-string p2, "-A"

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p2, "-D"

    .line 19
    :goto_0
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallExemption;->mExemptionRule:Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 21
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 23
    invoke-static {v1, p3, p2, v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createAllowOrDenyCommands(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Ljava/util/List;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    const-string p2, "COMMIT\n"

    .line 32
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string p2, "*"

    .line 37
    iget-object p3, p1, Lcom/android/server/enterprise/firewall/FirewallExemption;->mExemptionRule:Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 39
    invoke-virtual {p3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 49
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    iget-object p1, p1, Lcom/android/server/enterprise/firewall/FirewallExemption;->mExemptionRule:Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 62
    move-result-object p1

    .line 63
    const-string p2, "\n"

    .line 65
    invoke-static {p2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_1
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :goto_2
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public final declared-synchronized addOrRemoveIcmpAllowRule(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 7
    add-int/lit8 v2, v1, 0x1

    .line 9
    iput v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-lt v1, v0, :cond_0

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 19
    :try_start_1
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 21
    add-int/lit8 v2, v1, -0x1

    .line 23
    iput v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-le v1, v0, :cond_1

    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x4

    .line 30
    :try_start_2
    invoke-static {v0, p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createIcmpAllowRuleCommands(IZ)Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "\n"

    .line 36
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 43
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 45
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-static {v0, p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createIcmpAllowRuleCommands(IZ)Ljava/util/List;

    .line 55
    move-result-object p1

    .line 56
    const-string v1, "\n"

    .line 58
    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :cond_2
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_0
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public final blockPort53(Lcom/samsung/android/knox/AppIdentity;Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 13
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-static {v2, v3}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 22
    move-result-object v3

    .line 23
    const-string v4, "53"

    .line 25
    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    const-string v5, "*"

    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 38
    const/4 v6, 0x0

    .line 39
    if-eqz v4, :cond_0

    .line 41
    new-instance v4, Lcom/samsung/android/knox/AppIdentity;

    .line 43
    invoke-direct {v4, v5, v6}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v4, p1

    .line 48
    :goto_0
    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 51
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    const-string/jumbo v7, "createPort53DenyRule(): package = "

    .line 62
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    const-string v7, "Firewall"

    .line 68
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p1

    .line 79
    const-string/jumbo v4, "block_port53-output"

    .line 82
    const-string v5, "-D"

    .line 84
    const-string v7, "-A"

    .line 86
    if-eqz p1, :cond_3

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    if-eqz p3, :cond_1

    .line 95
    move-object v8, v7

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move-object v8, v5

    .line 98
    :goto_1
    new-instance v9, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 100
    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 102
    invoke-direct {v9, v10, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 105
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 107
    invoke-virtual {v9, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setDirection(Lcom/samsung/android/knox/net/firewall/Firewall$Direction;)V

    .line 110
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    .line 112
    const-string/jumbo v11, "dns_tether"

    .line 115
    invoke-direct {v2, v11, v6}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v9, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 121
    invoke-static {v9, p2, v8, v10}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createAllowOrDenyCommands(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Ljava/util/List;

    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v2

    .line 131
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_2

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Ljava/lang/String;

    .line 143
    const-string/jumbo v8, "firewall_allow-output"

    .line 146
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    goto :goto_2

    .line 154
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 160
    move-result-object p1

    .line 161
    invoke-static {v3, p2, v7, p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createAllowOrDenyCommands(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Ljava/util/List;

    .line 164
    move-result-object p1

    .line 165
    new-instance p2, Ljava/util/ArrayList;

    .line 167
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    check-cast p1, Ljava/util/ArrayList;

    .line 172
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    move-result-object p1

    .line 176
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_4

    .line 182
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Ljava/lang/String;

    .line 188
    const-string/jumbo v3, "firewall_deny-output"

    .line 191
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    goto :goto_3

    .line 199
    :cond_4
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    if-nez p3, :cond_6

    .line 204
    new-instance p1, Ljava/util/ArrayList;

    .line 206
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 212
    move-result-object p2

    .line 213
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    move-result p3

    .line 217
    if-eqz p3, :cond_5

    .line 219
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    move-result-object p3

    .line 223
    check-cast p3, Ljava/lang/String;

    .line 225
    invoke-virtual {p3, v7, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    move-result-object p3

    .line 229
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    goto :goto_4

    .line 233
    :cond_5
    move-object v1, p1

    .line 234
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 239
    sget-object p2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 241
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    .line 244
    move-result p1

    .line 245
    sget-object p2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 247
    const-string p3, "\n"

    .line 249
    invoke-static {p3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 252
    move-result-object p3

    .line 253
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z

    .line 256
    move-result p0

    .line 257
    and-int/2addr p0, p1

    .line 258
    return p0
.end method

.method public final completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p0, "FirewallRulesApplier"

    .line 6
    const-string p1, "Command list is null"

    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_2

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq p2, v1, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p2, "*nat"

    .line 24
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string p2, "*filter"

    .line 30
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33
    :goto_0
    const-string p2, "COMMIT\n"

    .line 35
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string p2, "\n"

    .line 40
    invoke-static {p2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z

    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public final createIptablesChains(Ljava/lang/Integer;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-nez p1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_1
    :goto_0
    const-string p1, "*filter"

    .line 24
    invoke-static {p1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    const-string v3, " -"

    .line 38
    const-string v4, ""

    .line 40
    if-eqz v2, :cond_5

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_3

    .line 54
    move-object v2, v4

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_4

    .line 66
    const-string v5, ":domain_filter-input -"

    .line 68
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v5, ":firewall_allow-input -"

    .line 73
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v5, ":firewall_deny-input -"

    .line 78
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v5, ":firewall_allow-forward -"

    .line 83
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v5, ":firewall_deny-forward -"

    .line 88
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    const-string v6, ":domain_filter-output"

    .line 95
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    .line 113
    const-string v6, ":firewall_allow-output"

    .line 115
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    .line 133
    const-string v6, ":firewall_deny-output"

    .line 135
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    .line 153
    const-string v6, ":block_port53-output"

    .line 155
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    const-string v5, "-A OUTPUT -j domain_filter-output"

    .line 175
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    const-string v5, "-A OUTPUT -j firewall_allow-output"

    .line 192
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    const-string v5, "-A OUTPUT -j firewall_deny-output"

    .line 209
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 224
    const-string v5, "-A OUTPUT -j block_port53-output"

    .line 226
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_2

    .line 245
    const-string v2, "-A INPUT -j domain_filter-input"

    .line 247
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v2, "-A INPUT -j firewall_allow-input"

    .line 252
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v2, "-A INPUT -j firewall_deny-input"

    .line 257
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v2, "-A FORWARD -j firewall_allow-forward"

    .line 262
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v2, "-A FORWARD -j firewall_deny-forward"

    .line 267
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    goto/16 :goto_1

    .line 272
    :cond_5
    const-string v1, "COMMIT\n"

    .line 274
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    .line 279
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    const-string v5, "*nat"

    .line 284
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 290
    move-result-object v0

    .line 291
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_7

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    move-result-object v5

    .line 301
    check-cast v5, Ljava/lang/Integer;

    .line 303
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 306
    move-result v6

    .line 307
    if-nez v6, :cond_6

    .line 309
    move-object v5, v4

    .line 310
    goto :goto_4

    .line 311
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 314
    move-result-object v5

    .line 315
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 317
    const-string v7, ":firewall_exceptions-output"

    .line 319
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object v6

    .line 332
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    .line 337
    const-string v7, ":firewall_redirect-output"

    .line 339
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    move-result-object v6

    .line 352
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    .line 357
    const-string v7, "-A OUTPUT -j firewall_exceptions-output"

    .line 359
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object v6

    .line 369
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v6, Ljava/lang/StringBuilder;

    .line 374
    const-string v7, "-A OUTPUT -j firewall_redirect-output"

    .line 376
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v5

    .line 386
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    goto :goto_3

    .line 390
    :cond_7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z

    .line 396
    move-result p0

    .line 397
    return p0
.end method

.method public final disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 11
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string v0, "-D"

    .line 20
    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz p3, :cond_1

    .line 42
    if-eqz v0, :cond_1

    .line 44
    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 46
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 49
    :cond_1
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 51
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 53
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 55
    const-string p3, "The rule was successfully disabled."

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 60
    return-object p0
.end method

.method public final enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p3

    .line 7
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    array-length v4, v1

    .line 10
    new-array v5, v4, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v7, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v8, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v9, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v10, Ljava/util/BitSet;

    .line 34
    invoke-direct {v10}, Ljava/util/BitSet;-><init>()V

    .line 37
    const/4 v12, 0x0

    .line 38
    :goto_0
    if-ge v12, v4, :cond_a

    .line 40
    aget-object v14, v1, v12

    .line 42
    if-nez v14, :cond_0

    .line 44
    new-instance v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 46
    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 48
    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 50
    const-string v11, "Rule is null."

    .line 52
    invoke-direct {v13, v14, v15, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 55
    aput-object v13, v5, v12

    .line 57
    goto/16 :goto_2

    .line 59
    :cond_0
    if-eqz p5, :cond_9

    .line 61
    invoke-static {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 68
    move-result-object v14

    .line 69
    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 71
    invoke-virtual {v14, v15}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v14

    .line 75
    if-eqz v14, :cond_1

    .line 77
    aput-object v11, v5, v12

    .line 79
    goto/16 :goto_2

    .line 81
    :cond_1
    if-nez p2, :cond_2

    .line 83
    if-eqz p4, :cond_2

    .line 85
    aget-object v11, v1, v12

    .line 87
    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 89
    invoke-static {v11, v3, v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/samsung/android/knox/net/firewall/FirewallRule;ILcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    .line 92
    move-result v11

    .line 93
    if-eqz v11, :cond_2

    .line 95
    const/16 v11, 0x3e8

    .line 97
    if-eq v3, v11, :cond_2

    .line 99
    new-instance v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 101
    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 103
    const-string v14, "The specified rule is already enabled."

    .line 105
    invoke-direct {v11, v15, v13, v14}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 108
    aput-object v11, v5, v12

    .line 110
    goto/16 :goto_2

    .line 112
    :cond_2
    aget-object v11, v1, v12

    .line 114
    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 117
    move-result-object v11

    .line 118
    aget-object v14, v1, v12

    .line 120
    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 123
    move-result-object v14

    .line 124
    invoke-static {v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 127
    move-result-object v14

    .line 128
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 130
    invoke-virtual {v13, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v11

    .line 134
    const-string v13, "-A"

    .line 136
    if-eqz v11, :cond_6

    .line 138
    invoke-static {v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 141
    move-result v11

    .line 142
    if-nez v11, :cond_3

    .line 144
    new-instance v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 146
    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 148
    const-string v14, "This device does not have IPv6 support for this type of rule."

    .line 150
    invoke-direct {v11, v15, v13, v14}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 153
    aput-object v11, v5, v12

    .line 155
    goto :goto_2

    .line 156
    :cond_3
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 159
    move-result v11

    .line 160
    if-eqz v11, :cond_5

    .line 162
    const/4 v14, 0x1

    .line 163
    if-eq v11, v14, :cond_4

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    aget-object v11, v1, v12

    .line 168
    invoke-static {v11, v2, v13}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 171
    move-result-object v11

    .line 172
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    goto :goto_1

    .line 176
    :cond_5
    aget-object v11, v1, v12

    .line 178
    invoke-static {v11, v2, v13}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 181
    move-result-object v11

    .line 182
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    goto :goto_1

    .line 186
    :cond_6
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 189
    move-result v11

    .line 190
    if-eqz v11, :cond_8

    .line 192
    const/4 v14, 0x1

    .line 193
    if-eq v11, v14, :cond_7

    .line 195
    goto :goto_1

    .line 196
    :cond_7
    aget-object v11, v1, v12

    .line 198
    invoke-static {v11, v2, v13}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 201
    move-result-object v11

    .line 202
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    goto :goto_1

    .line 206
    :cond_8
    aget-object v11, v1, v12

    .line 208
    invoke-static {v11, v2, v13}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 211
    move-result-object v11

    .line 212
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    :goto_1
    invoke-virtual {v10, v12}, Ljava/util/BitSet;->set(I)V

    .line 218
    goto :goto_2

    .line 219
    :cond_9
    const/4 v11, 0x1

    .line 220
    invoke-virtual {v0, v14, v2, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 223
    move-result-object v11

    .line 224
    aput-object v11, v5, v12

    .line 226
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 228
    goto/16 :goto_0

    .line 230
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 233
    move-result v3

    .line 234
    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 236
    const/4 v12, 0x4

    .line 237
    if-nez v3, :cond_b

    .line 239
    invoke-static {v6, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 248
    move-result-object v3

    .line 249
    const/4 v14, 0x1

    .line 250
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_c

    .line 256
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    move-result-object v6

    .line 260
    check-cast v6, Ljava/lang/String;

    .line 262
    invoke-virtual {v0, v12, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 265
    move-result v6

    .line 266
    and-int/2addr v14, v6

    .line 267
    goto :goto_3

    .line 268
    :cond_b
    const/4 v14, 0x1

    .line 269
    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 272
    move-result v3

    .line 273
    const/4 v6, 0x6

    .line 274
    if-nez v3, :cond_d

    .line 276
    invoke-static {v7, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 285
    move-result-object v3

    .line 286
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    move-result v7

    .line 290
    if-eqz v7, :cond_d

    .line 292
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    move-result-object v7

    .line 296
    check-cast v7, Ljava/lang/String;

    .line 298
    invoke-virtual {v0, v6, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 301
    move-result v7

    .line 302
    and-int/2addr v14, v7

    .line 303
    goto :goto_4

    .line 304
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 307
    move-result v3

    .line 308
    sget-object v7, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 310
    if-nez v3, :cond_e

    .line 312
    invoke-static {v8, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    .line 315
    move-result-object v3

    .line 316
    check-cast v3, Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 321
    move-result-object v3

    .line 322
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    move-result v8

    .line 326
    if-eqz v8, :cond_e

    .line 328
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    move-result-object v8

    .line 332
    check-cast v8, Ljava/lang/String;

    .line 334
    invoke-virtual {v0, v12, v8}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 337
    move-result v8

    .line 338
    and-int/2addr v14, v8

    .line 339
    goto :goto_5

    .line 340
    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 343
    move-result v3

    .line 344
    if-nez v3, :cond_f

    .line 346
    invoke-static {v9, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    .line 349
    move-result-object v3

    .line 350
    check-cast v3, Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 355
    move-result-object v3

    .line 356
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    move-result v7

    .line 360
    if-eqz v7, :cond_f

    .line 362
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    move-result-object v7

    .line 366
    check-cast v7, Ljava/lang/String;

    .line 368
    invoke-virtual {v0, v6, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 371
    move-result v7

    .line 372
    and-int/2addr v14, v7

    .line 373
    goto :goto_6

    .line 374
    :cond_f
    const/4 v11, 0x0

    .line 375
    :goto_7
    if-ge v11, v4, :cond_15

    .line 377
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    .line 380
    move-result v3

    .line 381
    if-eqz v3, :cond_11

    .line 383
    const-string v3, "The rule was successfully enabled."

    .line 385
    if-eqz p4, :cond_14

    .line 387
    if-eqz v14, :cond_13

    .line 389
    aget-object v6, v1, v11

    .line 391
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 393
    invoke-virtual {v0, v6, v7, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 396
    aget-object v6, v1, v11

    .line 398
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 401
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 403
    aget-object v7, v1, v11

    .line 405
    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 408
    move-result-object v7

    .line 409
    if-eq v6, v7, :cond_10

    .line 411
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 413
    aget-object v7, v1, v11

    .line 415
    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 418
    move-result-object v7

    .line 419
    if-ne v6, v7, :cond_12

    .line 421
    :cond_10
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 423
    aget-object v7, v1, v11

    .line 425
    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 428
    move-result-object v7

    .line 429
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    .line 432
    move-result v6

    .line 433
    if-eqz v6, :cond_12

    .line 435
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 437
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 439
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 441
    const-string v8, "Rule not applied to INPUT chain for Direction.All."

    .line 443
    invoke-direct {v3, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 446
    aput-object v3, v5, v11

    .line 448
    :cond_11
    :goto_8
    const/4 v6, 0x1

    .line 449
    goto :goto_9

    .line 450
    :cond_12
    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 452
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 454
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 456
    invoke-direct {v6, v7, v8, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 459
    aput-object v6, v5, v11

    .line 461
    goto :goto_8

    .line 462
    :cond_13
    aget-object v3, v1, v11

    .line 464
    const/4 v6, 0x1

    .line 465
    invoke-virtual {v0, v3, v2, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 468
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 470
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 472
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 474
    const-string v9, "Failed to enable rule."

    .line 476
    invoke-direct {v3, v7, v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 479
    aput-object v3, v5, v11

    .line 481
    goto :goto_9

    .line 482
    :cond_14
    const/4 v6, 0x1

    .line 483
    new-instance v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 485
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 487
    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 489
    invoke-direct {v7, v8, v9, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 492
    aput-object v7, v5, v11

    .line 494
    :goto_9
    add-int/lit8 v11, v11, 0x1

    .line 496
    goto :goto_7

    .line 497
    :cond_15
    return-object v5
.end method

.method public final executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 7
    const/16 p2, 0x2e

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x4

    .line 11
    :goto_0
    const-string v0, "\n"

    .line 13
    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final flushAllChains(Ljava/lang/Integer;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, ""

    .line 8
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move-object v2, v1

    .line 23
    :goto_1
    const-string v3, "*filter"

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v3, ":firewall_allow-input -"

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    const-string v4, ":firewall_allow-output"

    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v4, " -"

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v3, ":firewall_allow-forward -"

    .line 57
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v3, ":firewall_deny-input -"

    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    const-string v5, ":firewall_deny-output"

    .line 69
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v2, ":firewall_deny-forward -"

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v2, "COMMIT\n"

    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    .line 97
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    if-eqz p1, :cond_3

    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_2

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    :cond_3
    :goto_2
    const-string p1, "*nat"

    .line 115
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    const-string v5, ":firewall_exceptions-output"

    .line 122
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    const-string v5, ":firewall_redirect-output"

    .line 142
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p0, v0, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z

    .line 164
    move-result p0

    .line 165
    return p0
.end method

.method public final flushChain(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Ljava/lang/Integer;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    const-string p2, ""

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    .line 24
    move-result v2

    .line 25
    aget v1, v1, v2

    .line 27
    const/4 v2, 0x1

    .line 28
    const-string v3, "*filter"

    .line 30
    const-string v4, " -"

    .line 32
    if-eq v1, v2, :cond_4

    .line 34
    const/4 v2, 0x2

    .line 35
    if-eq v1, v2, :cond_3

    .line 37
    const/4 v2, 0x3

    .line 38
    const-string v3, "*nat"

    .line 40
    if-eq v1, v2, :cond_2

    .line 42
    const/4 v2, 0x4

    .line 43
    if-eq v1, v2, :cond_1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    const-string v2, ":firewall_exceptions-output"

    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    const-string v2, ":firewall_redirect-output"

    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v1, ":firewall_deny-input -"

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    const-string v2, ":firewall_deny-output"

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string p2, ":firewall_deny-forward -"

    .line 124
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, ":firewall_allow-input -"

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    const-string v2, ":firewall_allow-output"

    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const-string p2, ":firewall_allow-forward -"

    .line 158
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :goto_1
    const-string p2, "COMMIT\n"

    .line 163
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 173
    move-result p0

    .line 174
    return p0
.end method

.method public final flushDnsPortChains(Ljava/lang/Integer;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->clearChainsForUserId(Ljava/lang/Integer;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 17
    const-string p1, ""

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    :goto_0
    const-string/jumbo v1, "block_port53-output"

    .line 27
    invoke-static {v1, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string v2, ":"

    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string p1, " -"

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 55
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 57
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    .line 60
    move-result p1

    .line 61
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 63
    const-string v2, "\n"

    .line 65
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z

    .line 72
    move-result p0

    .line 73
    and-int/2addr p0, p1

    .line 74
    return p0
.end method

.method public final flushDomainChains(Ljava/lang/Integer;Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->clearChainsForUserId(Ljava/lang/Integer;)V

    .line 6
    iget v0, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v4

    .line 24
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterBaseChainNameForUser(IZ)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v5

    .line 32
    invoke-static {v5, v1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterBaseChainNameForUser(IZ)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string v5, " -"

    .line 38
    const-string v6, ":"

    .line 40
    if-eqz v0, :cond_1

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 84
    if-eqz p2, :cond_4

    .line 86
    if-eqz v0, :cond_2

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    const-string p2, "-D INPUT -j "

    .line 92
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    const-string p2, "-D OUTPUT -j "

    .line 109
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string p1, "-X "

    .line 124
    if-eqz v0, :cond_3

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_4
    if-eqz v0, :cond_5

    .line 158
    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 160
    :cond_5
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 162
    sget-object p2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 164
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    .line 167
    move-result p1

    .line 168
    sget-object p2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 170
    const-string v0, "\n"

    .line 172
    invoke-static {v0, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z

    .line 179
    move-result p0

    .line 180
    and-int/2addr p0, p1

    .line 181
    return p0
.end method

.method public final getAllAdmins()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "adminUid"

    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 14
    new-instance v3, Landroid/content/ContentValues;

    .line 16
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 19
    const-string v4, "ADMIN"

    .line 21
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/content/ContentValues;

    .line 43
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-object v0
.end method

.method public final getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    .line 8
    const-string v1, "FirewallRulesApplier"

    .line 10
    if-nez v0, :cond_2

    .line 12
    :try_start_0
    const-string/jumbo v0, "netd"

    .line 15
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    .line 25
    if-nez v0, :cond_1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    .line 31
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-nez v0, :cond_2

    .line 39
    const-string v0, "Can\'t connect to NativeNetdService netd"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    :try_start_1
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    goto :goto_2

    .line 59
    :catch_1
    move-exception v0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    const-string v3, "Failed to get OemNetd listener "

    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 72
    return-object p0
.end method

.method public final hasDenyRuleInDatabase(ILjava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    const-string v1, "adminUid"

    .line 8
    const-string/jumbo v2, "packageName"

    .line 11
    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    const-string p1, "DomainFilterTable"

    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result p2

    .line 29
    const-string/jumbo v0, "hasDenyRuleInDatabase(): false"

    .line 32
    const-string v1, "FirewallRulesApplier"

    .line 34
    const/4 v2, 0x0

    .line 35
    if-nez p2, :cond_2

    .line 37
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 41
    if-nez p2, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/content/ContentValues;

    .line 50
    const-string/jumbo p2, "blacklist"

    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_1

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v2

    .line 69
    :cond_1
    const/4 p0, 0x1

    .line 70
    return p0

    .line 71
    :cond_2
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v2
.end method

.method public final mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z
    .locals 3

    .line 1
    const-string v0, "\n"

    .line 3
    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 38
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 49
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_2

    .line 68
    const/4 p1, 0x6

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 76
    move-result p0

    .line 77
    and-int/2addr v0, p0

    .line 78
    :cond_2
    return v0
.end method

.method public final reloadDomainFilterOnIptablesRules()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_3

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v2

    .line 27
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    .line 29
    invoke-direct {v4, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 32
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, -0x1

    .line 36
    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/enterprise/firewall/Firewall;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Ljava/util/List;

    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/Firewall;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {p0, v4, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 49
    move v1, v3

    .line 50
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v6

    .line 59
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_2

    .line 65
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 71
    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v7}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {p0, v2, v8}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->hasDenyRuleInDatabase(ILjava/lang/String;)Z

    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_1

    .line 93
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 96
    move-result v9

    .line 97
    if-nez v9, :cond_1

    .line 99
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v9, Lcom/samsung/android/knox/AppIdentity;

    .line 104
    invoke-direct {v9, v8, v7}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v9, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->blockPort53(Lcom/samsung/android/knox/AppIdentity;Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_1

    .line 113
    const-string/jumbo v7, "blockPort53() - port53 rule added successfully. Package: "

    .line 116
    const-string v9, "FirewallRulesApplier"

    .line 118
    invoke-static {v7, v8, v9}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    if-eqz v1, :cond_4

    .line 128
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterOnIptablesEnabled(Z)V

    .line 137
    :cond_4
    return-void
.end method

.method public final reloadIptablesRules()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_6

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x3e8

    .line 27
    if-ne v1, v2, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 32
    invoke-direct {v2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 35
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 37
    const/16 v3, 0xf

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 43
    move-result-object v9

    .line 44
    array-length v10, v9

    .line 45
    const/4 v11, 0x0

    .line 46
    move v12, v11

    .line 47
    :goto_1
    if-ge v12, v10, :cond_5

    .line 49
    aget-object v13, v9, v12

    .line 51
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 61
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 64
    move-result v4

    .line 65
    invoke-static {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->verifyPackageName(ILjava/lang/String;)Z

    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_2

    .line 71
    const-string v3, "FirewallRulesApplier"

    .line 73
    const-string/jumbo v4, "reloadIptablesRules() - Package not installed"

    .line 76
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 82
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStatus()Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v3

    .line 90
    const/4 v14, 0x1

    .line 91
    if-nez v3, :cond_3

    .line 93
    const/4 v3, 0x1

    .line 94
    new-array v4, v3, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 96
    aput-object v13, v4, v11

    .line 98
    const/4 v8, 0x1

    .line 99
    const/4 v5, 0x1

    .line 100
    move-object v3, p0

    .line 101
    move-object v6, v2

    .line 102
    move v7, v14

    .line 103
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 106
    move-result-object v3

    .line 107
    aget-object v3, v3, v11

    .line 109
    :cond_3
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {p0, v14}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    .line 118
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-static {v9}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_0

    .line 127
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 129
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 132
    move-result v3

    .line 133
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/firewall/Firewall;->applyExemptRules(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 136
    goto :goto_0

    .line 137
    :cond_6
    return-void
.end method

.method public final removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    check-cast p2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p2

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_a

    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 35
    new-instance v5, Landroid/content/ContentValues;

    .line 37
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 40
    const-string v6, "adminUid"

    .line 42
    const-string/jumbo v7, "packageName"

    .line 45
    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 50
    const-string v6, "DomainFilterTable"

    .line 52
    const/4 v7, 0x0

    .line 53
    invoke-virtual {v4, v6, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x0

    .line 64
    if-nez v6, :cond_2

    .line 66
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 70
    if-nez v6, :cond_1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Landroid/content/ContentValues;

    .line 79
    const-string/jumbo v6, "blacklist"

    .line 82
    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 85
    move-result-object v6

    .line 86
    const-string/jumbo v8, "whitelist"

    .line 89
    invoke-static {v5, v8, v4}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_3

    .line 101
    check-cast v6, Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_3

    .line 109
    :cond_2
    :goto_1
    move v4, v7

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    move v4, v2

    .line 112
    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 115
    move-result-object v5

    .line 116
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    .line 118
    if-nez v5, :cond_4

    .line 120
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_8

    .line 126
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 129
    move-result-object v5

    .line 130
    if-nez v5, :cond_5

    .line 132
    invoke-virtual {v1, p3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 139
    move-result-object v5

    .line 140
    if-nez v5, :cond_6

    .line 142
    invoke-virtual {v1, p3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 145
    :cond_6
    :goto_3
    if-nez v4, :cond_7

    .line 147
    iget v5, v6, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 149
    if-ne v5, v2, :cond_7

    .line 151
    move v7, v2

    .line 152
    :cond_7
    const-string v5, "-D"

    .line 154
    invoke-static {v1, v5, p1, v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createAppendDeleteDomainCommands(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    if-eqz v7, :cond_8

    .line 163
    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 165
    :cond_8
    if-nez v4, :cond_0

    .line 167
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 169
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 172
    move-result v1

    .line 173
    const/4 v2, -0x1

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object v2

    .line 178
    const-string v4, "*"

    .line 180
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v4

    .line 184
    if-nez v4, :cond_9

    .line 186
    invoke-static {v1, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidForApplication(ILjava/lang/String;)Ljava/lang/Integer;

    .line 189
    move-result-object v2

    .line 190
    if-nez v2, :cond_9

    .line 192
    const-string/jumbo v1, "failed to get uid for "

    .line 195
    const-string v2, "FirewallRulesApplier"

    .line 197
    invoke-static {v1, v3, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    goto/16 :goto_0

    .line 202
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v6, v3, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->removeChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    .line 209
    goto/16 :goto_0

    .line 211
    :cond_a
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 213
    invoke-static {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Ljava/util/ArrayList;

    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 222
    move-result-object p1

    .line 223
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    move-result p2

    .line 227
    if-eqz p2, :cond_b

    .line 229
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    move-result-object p2

    .line 233
    check-cast p2, Ljava/lang/String;

    .line 235
    const/16 p3, 0x2e

    .line 237
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 240
    move-result p2

    .line 241
    and-int/2addr v2, p2

    .line 242
    goto :goto_4

    .line 243
    :cond_b
    if-eqz v2, :cond_c

    .line 245
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 247
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 249
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 251
    const-string p3, "The domain rule was successfuly removed/updated."

    .line 253
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 256
    return-object p0

    .line 257
    :cond_c
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 259
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 261
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 263
    const-string p3, "Failed to remove domain rule from the iptables."

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 268
    return-object p0
.end method

.method public final removeIptablesChains(Ljava/lang/Integer;)V
    .locals 6

    .line 1
    const-string v0, "*filter"

    .line 3
    invoke-static {v0}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string v1, "-D INPUT -j firewall_allow-input"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v1, "-D INPUT -j firewall_deny-input"

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "-D FORWARD -j firewall_allow-forward"

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v1, "-D FORWARD -j firewall_deny-forward"

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "-D OUTPUT -j firewall_allow-output"

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "-D OUTPUT -j firewall_deny-output"

    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 73
    const-string v1, ":firewall_allow-input -"

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, ":firewall_deny-input -"

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, ":firewall_allow-forward -"

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v1, ":firewall_deny-forward -"

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    const-string v2, ":firewall_allow-output"

    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v2, " -"

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    const-string v3, ":firewall_deny-output"

    .line 119
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_2

    .line 141
    const-string v1, "-X firewall_allow-input"

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v1, "-X firewall_deny-input"

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v1, "-X firewall_allow-forward"

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "-X firewall_deny-forward"

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    const-string v3, "-X firewall_allow-output"

    .line 165
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    const-string v3, "-X firewall_deny-output"

    .line 182
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v1, "COMMIT\n"

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    .line 202
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    const-string v4, "*nat"

    .line 207
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    .line 212
    const-string v5, "-D OUTPUT -j firewall_exceptions-output"

    .line 214
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    .line 229
    const-string v5, "-D OUTPUT -j firewall_redirect-output"

    .line 231
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 246
    const-string v5, ":firewall_exceptions-output"

    .line 248
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    const-string v5, ":firewall_redirect-output"

    .line 268
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    .line 286
    const-string v4, "-X firewall_exceptions-output"

    .line 288
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    .line 303
    const-string v4, "-X firewall_redirect-output"

    .line 305
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {p0, v0, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z

    .line 324
    return-void
.end method

.method public final declared-synchronized runShellCommand(ILjava/lang/String;)Z
    .locals 6

    const-string v0, "Failed to run cmd: "

    const-string v1, "Failed to run command. Result="

    const-string v2, "Run cmd: "

    const-string/jumbo v3, "runShellCommand - target "

    monitor-enter p0

    .line 2
    :try_start_0
    const-string v4, "FirewallRulesApplier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 4
    const-string p1, "FirewallRulesApplier"

    const-string p2, "Failed to obtain instance of mOemNetdService"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {v3, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    const-string v3, "FirewallRulesApplier"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    const-string v5, "OK"

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    const-string v2, "FirewallRulesApplier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\ncommand="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 10
    :cond_4
    :goto_2
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 11
    :goto_3
    :try_start_2
    const-string p2, "FirewallRulesApplier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_4
    monitor-exit p0

    return v4

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Failed to run cmd: "

    .line 3
    const-string/jumbo v1, "runShellCommandWithOutput - target "

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    const-string v2, ""

    .line 9
    const-string v3, "FirewallRulesApplier"

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz v1, :cond_0

    .line 34
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    :try_start_2
    const-string p2, "FirewallRulesApplier"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :cond_0
    :goto_0
    monitor-exit p0

    .line 64
    return-object v2

    .line 65
    :goto_1
    monitor-exit p0

    .line 66
    throw p1
.end method

.method public final setRulesStatusAfterReboot()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v1

    .line 25
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 27
    invoke-direct {v2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 30
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 32
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 35
    move-result v3

    .line 36
    const/16 v4, 0xf

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 42
    move-result-object v1

    .line 43
    array-length v4, v1

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_0
    if-ge v5, v4, :cond_0

    .line 47
    aget-object v6, v1, v5

    .line 49
    if-eqz v3, :cond_1

    .line 51
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 53
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 59
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 62
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method

.method public final updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V
    .locals 16

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    move-object/from16 v1, p3

    .line 8
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 10
    const/16 v2, 0x3e8

    .line 12
    if-eq v1, v2, :cond_0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "adminUid"

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .line 25
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 28
    const-string/jumbo v2, "status"

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->name()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    const-string/jumbo v3, "ruleType"

    .line 49
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    .line 61
    move-result v3

    .line 62
    aget v2, v2, v3

    .line 64
    const/4 v3, 0x1

    .line 65
    const-string/jumbo v4, "direction"

    .line 68
    const-string/jumbo v5, "portLocation"

    .line 71
    const-string/jumbo v6, "networkInterface"

    .line 74
    const-string v7, "FirewallRule"

    .line 76
    move-object/from16 v8, p0

    .line 78
    iget-object v8, v8, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 80
    const-string/jumbo v9, "networkInterfaceStr"

    .line 83
    const-string v10, "addressType"

    .line 85
    const-string/jumbo v11, "protocol"

    .line 88
    const-string/jumbo v12, "portNumber"

    .line 91
    const-string/jumbo v13, "signature"

    .line 94
    const-string/jumbo v14, "packageName"

    .line 97
    const-string/jumbo v15, "ipAddress"

    .line 100
    if-eq v2, v3, :cond_a

    .line 102
    const/4 v3, 0x2

    .line 103
    if-eq v2, v3, :cond_7

    .line 105
    const/4 v3, 0x3

    .line 106
    if-eq v2, v3, :cond_4

    .line 108
    const/4 v3, 0x4

    .line 109
    if-eq v2, v3, :cond_1

    .line 111
    goto/16 :goto_0

    .line 113
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_2

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v0, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_3

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_3
    invoke-virtual {v8, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 201
    goto/16 :goto_0

    .line 203
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v0, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 222
    if-eqz v2, :cond_5

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v0, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v2, "targetIpAddress"

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v2, "targetPortNumber"

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v0, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v0, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 305
    move-result-object v2

    .line 306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 309
    move-result v2

    .line 310
    if-nez v2, :cond_6

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_6
    invoke-virtual {v8, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 322
    goto/16 :goto_0

    .line 324
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v0, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 349
    move-result-object v2

    .line 350
    if-eqz v2, :cond_8

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v0, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    .line 377
    move-result-object v2

    .line 378
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->name()Ljava/lang/String;

    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v0, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v0, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 428
    move-result-object v2

    .line 429
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 432
    move-result v2

    .line 433
    if-nez v2, :cond_9

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_9
    invoke-virtual {v8, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 445
    goto :goto_0

    .line 446
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v0, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 467
    move-result-object v2

    .line 468
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 471
    move-result-object v2

    .line 472
    if-eqz v2, :cond_b

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 488
    move-result-object v2

    .line 489
    invoke-virtual {v0, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 495
    move-result-object v2

    .line 496
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    .line 499
    move-result-object v2

    .line 500
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->name()Ljava/lang/String;

    .line 510
    move-result-object v2

    .line 511
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 517
    move-result-object v2

    .line 518
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 528
    move-result-object v2

    .line 529
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v0, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    .line 543
    move-result-object v2

    .line 544
    invoke-virtual {v0, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 550
    move-result-object v2

    .line 551
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 554
    move-result v2

    .line 555
    if-nez v2, :cond_c

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 560
    move-result-object v2

    .line 561
    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_c
    invoke-virtual {v8, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 567
    :goto_0
    return-void
.end method
