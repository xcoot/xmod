.class public final Lcom/android/server/enterprise/firewall/Firewall$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/firewall/Firewall$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget v4, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->$r8$classId:I

    .line 9
    packed-switch v4, :pswitch_data_0

    .line 12
    sget-boolean v4, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v5, "onReceive() - "

    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    const-string v5, "Firewall"

    .line 31
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 40
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v7

    .line 44
    const-string v8, "android"

    .line 46
    const-string v9, "FirewallRule"

    .line 48
    const-string v10, "adminUid"

    .line 50
    const-string v11, "#SelectClause#"

    .line 52
    const-string/jumbo v12, "packageName"

    .line 55
    const/4 v15, 0x0

    .line 56
    const/4 v13, -0x1

    .line 57
    const-string v14, "android.intent.extra.user_handle"

    .line 59
    if-eqz v7, :cond_8

    .line 61
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v2, v14, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 77
    move-result v2

    .line 78
    if-eq v2, v13, :cond_7

    .line 80
    if-nez v4, :cond_0

    .line 82
    goto/16 :goto_4

    .line 84
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v0, v13, v7, v4, v6}, Lcom/android/server/enterprise/firewall/Firewall;->handleExemptionListOnPkgEvent(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v15, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 95
    new-instance v7, Landroid/content/ContentValues;

    .line 97
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 100
    invoke-virtual {v7, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v7, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    filled-new-array {v10}, [Ljava/lang/String;

    .line 109
    move-result-object v6

    .line 110
    new-instance v11, Ljava/util/HashSet;

    .line 112
    iget-object v12, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 114
    invoke-virtual {v12, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 117
    move-result-object v6

    .line 118
    invoke-direct {v11, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 121
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_1

    .line 127
    goto/16 :goto_a

    .line 129
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v7, "packageAdded() - "

    .line 134
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v7, " has firewall rules to enable"

    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v6

    .line 149
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v6

    .line 156
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_10

    .line 162
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Landroid/content/ContentValues;

    .line 168
    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 171
    move-result-object v7

    .line 172
    if-nez v7, :cond_3

    .line 174
    goto :goto_0

    .line 175
    :cond_3
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 177
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 180
    move-result v11

    .line 181
    invoke-direct {v9, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 184
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 187
    move-result v7

    .line 188
    invoke-virtual {v0, v7, v4}, Lcom/android/server/enterprise/firewall/Firewall;->getRulesByAdminUidAndPackage(ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 191
    move-result-object v7

    .line 192
    invoke-static {v1, v8, v15, v2}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 195
    move-result-object v11

    .line 196
    array-length v12, v7

    .line 197
    move v14, v15

    .line 198
    :goto_1
    if-ge v14, v12, :cond_2

    .line 200
    aget-object v13, v7, v14

    .line 202
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 205
    move-result-object v16

    .line 206
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 209
    move-result-object v15

    .line 210
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    move-result v16

    .line 214
    if-nez v16, :cond_5

    .line 216
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 219
    move-result-object v16

    .line 220
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 223
    move-result-object v3

    .line 224
    invoke-static {v2, v11, v3, v15}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    move-result v3

    .line 228
    if-nez v3, :cond_5

    .line 230
    move/from16 p0, v2

    .line 232
    move v3, v14

    .line 233
    const/4 v2, 0x0

    .line 234
    :cond_4
    :goto_2
    const/4 v13, 0x1

    .line 235
    goto :goto_3

    .line 236
    :cond_5
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 238
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    move/from16 p0, v2

    .line 243
    const/4 v15, 0x1

    .line 244
    new-array v2, v15, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 246
    const/16 v19, 0x0

    .line 248
    aput-object v13, v2, v19

    .line 250
    const/16 v18, 0x1

    .line 252
    const/4 v15, 0x1

    .line 253
    move-object/from16 v20, v13

    .line 255
    move-object v13, v3

    .line 256
    move v3, v14

    .line 257
    move-object v14, v2

    .line 258
    const/4 v2, 0x0

    .line 259
    move-object/from16 v16, v9

    .line 261
    move/from16 v17, v2

    .line 263
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 266
    move-result-object v13

    .line 267
    aget-object v13, v13, v19

    .line 269
    if-eqz v13, :cond_4

    .line 271
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 274
    move-result-object v13

    .line 275
    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 277
    if-eq v13, v14, :cond_6

    .line 279
    goto :goto_2

    .line 280
    :cond_6
    iget-object v13, v0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 282
    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 284
    move-object/from16 v15, v20

    .line 286
    invoke-virtual {v13, v15, v14, v9}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 289
    const-string/jumbo v13, "enableRuleAsAdmin() - success"

    .line 292
    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    goto :goto_2

    .line 296
    :goto_3
    add-int/lit8 v14, v3, 0x1

    .line 298
    move v15, v2

    .line 299
    move/from16 v2, p0

    .line 301
    goto :goto_1

    .line 302
    :cond_7
    :goto_4
    const-string/jumbo v0, "packageAdded() - Received invalid user id orpackage name, can\'t retrieve application info"

    .line 305
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    goto/16 :goto_a

    .line 310
    :cond_8
    move v3, v15

    .line 311
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    .line 313
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_10

    .line 319
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v2, v14, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 335
    move-result v7

    .line 336
    const-string v14, "android.intent.extra.UID"

    .line 338
    invoke-virtual {v2, v14, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 341
    move-result v2

    .line 342
    if-eq v7, v13, :cond_f

    .line 344
    if-nez v4, :cond_9

    .line 346
    goto/16 :goto_9

    .line 348
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    move-result-object v13

    .line 352
    invoke-virtual {v0, v2, v13, v4, v6}, Lcom/android/server/enterprise/firewall/Firewall;->handleExemptionListOnPkgEvent(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 358
    move-result-object v6

    .line 359
    new-instance v13, Landroid/content/ContentValues;

    .line 361
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 364
    invoke-virtual {v13, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v13, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    filled-new-array {v10}, [Ljava/lang/String;

    .line 373
    move-result-object v6

    .line 374
    new-instance v11, Ljava/util/HashSet;

    .line 376
    iget-object v12, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 378
    invoke-virtual {v12, v9, v6, v13}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 381
    move-result-object v6

    .line 382
    invoke-direct {v11, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 385
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    .line 388
    move-result v6

    .line 389
    if-eqz v6, :cond_a

    .line 391
    goto/16 :goto_a

    .line 393
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 395
    const-string/jumbo v9, "packageRemoved() - "

    .line 398
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v9, " has firewall rules to disable"

    .line 406
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    move-result-object v6

    .line 413
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 419
    move-result-object v6

    .line 420
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    move-result v9

    .line 424
    if-eqz v9, :cond_10

    .line 426
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    move-result-object v9

    .line 430
    check-cast v9, Landroid/content/ContentValues;

    .line 432
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 435
    move-result-object v9

    .line 436
    if-nez v9, :cond_b

    .line 438
    goto :goto_5

    .line 439
    :cond_b
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    .line 441
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 444
    move-result v12

    .line 445
    invoke-direct {v11, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 448
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 451
    move-result v9

    .line 452
    invoke-virtual {v0, v9, v4}, Lcom/android/server/enterprise/firewall/Firewall;->getRulesByAdminUidAndPackage(ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 455
    move-result-object v9

    .line 456
    invoke-static {v1, v8, v3, v7}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 459
    move-result-object v12

    .line 460
    array-length v13, v9

    .line 461
    move v15, v3

    .line 462
    :goto_6
    if-ge v15, v13, :cond_e

    .line 464
    aget-object v14, v9, v15

    .line 466
    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 469
    move-result-object v16

    .line 470
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 473
    move-result-object v3

    .line 474
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 477
    move-result v16

    .line 478
    if-nez v16, :cond_c

    .line 480
    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 483
    move-result-object v16

    .line 484
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 487
    move-result-object v1

    .line 488
    invoke-static {v7, v12, v1, v3}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 491
    move-result v1

    .line 492
    if-nez v1, :cond_c

    .line 494
    :goto_7
    const/4 v1, 0x1

    .line 495
    goto :goto_8

    .line 496
    :cond_c
    invoke-virtual {v14, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPackageUid(I)V

    .line 499
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 501
    const/4 v3, 0x0

    .line 502
    invoke-virtual {v1, v14, v11, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 505
    move-result-object v1

    .line 506
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 509
    move-result-object v1

    .line 510
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 512
    if-eq v1, v3, :cond_d

    .line 514
    goto :goto_7

    .line 515
    :cond_d
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 517
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 519
    invoke-virtual {v1, v14, v3, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 522
    const-string/jumbo v1, "disableIpTablesRule() - success"

    .line 525
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    goto :goto_7

    .line 529
    :goto_8
    add-int/2addr v15, v1

    .line 530
    move-object/from16 v1, p1

    .line 532
    const/4 v3, 0x0

    .line 533
    goto :goto_6

    .line 534
    :cond_e
    move-object/from16 v1, p1

    .line 536
    goto :goto_5

    .line 537
    :cond_f
    :goto_9
    const-string/jumbo v0, "packageRemoved() - Received invalid user id orpackage name, can\'t retrieve application info"

    .line 540
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_10
    :goto_a
    return-void

    .line 544
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 547
    move-result-object v1

    .line 548
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 550
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 553
    move-result v3

    .line 554
    if-nez v3, :cond_11

    .line 556
    const-string v3, "android.intent.action.USER_ADDED"

    .line 558
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    move-result v1

    .line 562
    if-eqz v1, :cond_12

    .line 564
    :cond_11
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 566
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    new-instance v1, Ljava/lang/Thread;

    .line 571
    new-instance v3, Lcom/android/server/enterprise/firewall/Firewall$3;

    .line 573
    invoke-direct {v3, v0, v2}, Lcom/android/server/enterprise/firewall/Firewall$3;-><init>(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Intent;)V

    .line 576
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 579
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 582
    :cond_12
    return-void

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
