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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v4, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-boolean v4, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v5, "onReceive() - "

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "Firewall"

    .line 30
    .line 31
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 39
    .line 40
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const-string v8, "android"

    .line 45
    .line 46
    const-string v9, "FirewallRule"

    .line 47
    .line 48
    const-string v10, "adminUid"

    .line 49
    .line 50
    const-string v11, "#SelectClause#"

    .line 51
    .line 52
    const-string/jumbo v12, "packageName"

    .line 53
    .line 54
    .line 55
    const/4 v15, 0x0

    .line 56
    const/4 v13, -0x1

    .line 57
    const-string v14, "android.intent.extra.user_handle"

    .line 58
    .line 59
    if-eqz v7, :cond_8

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v2, v14, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eq v2, v13, :cond_7

    .line 79
    .line 80
    if-nez v4, :cond_0

    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v0, v13, v7, v4, v6}, Lcom/android/server/enterprise/firewall/Firewall;->handleExemptionListOnPkgEvent(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v15, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    new-instance v7, Landroid/content/ContentValues;

    .line 96
    .line 97
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    filled-new-array {v10}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    new-instance v11, Ljava/util/HashSet;

    .line 111
    .line 112
    iget-object v12, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 113
    .line 114
    invoke-virtual {v12, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-direct {v11, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_1

    .line 126
    .line 127
    goto/16 :goto_a

    .line 128
    .line 129
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string/jumbo v7, "packageAdded() - "

    .line 132
    .line 133
    .line 134
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v7, " has firewall rules to enable"

    .line 141
    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_10

    .line 161
    .line 162
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Landroid/content/ContentValues;

    .line 167
    .line 168
    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    if-nez v7, :cond_3

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_3
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    invoke-direct {v9, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    invoke-virtual {v0, v7, v4}, Lcom/android/server/enterprise/firewall/Firewall;->getRulesByAdminUidAndPackage(ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-static {v1, v8, v15, v2}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    array-length v12, v7

    .line 197
    move v14, v15

    .line 198
    :goto_1
    if-ge v14, v12, :cond_2

    .line 199
    .line 200
    aget-object v13, v7, v14

    .line 201
    .line 202
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 203
    .line 204
    .line 205
    move-result-object v16

    .line 206
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v16

    .line 214
    if-nez v16, :cond_5

    .line 215
    .line 216
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 217
    .line 218
    .line 219
    move-result-object v16

    .line 220
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-static {v2, v11, v3, v15}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-nez v3, :cond_5

    .line 229
    .line 230
    move/from16 p0, v2

    .line 231
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

    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    move/from16 p0, v2

    .line 242
    .line 243
    const/4 v15, 0x1

    .line 244
    new-array v2, v15, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 245
    .line 246
    const/16 v19, 0x0

    .line 247
    .line 248
    aput-object v13, v2, v19

    .line 249
    .line 250
    const/16 v18, 0x1

    .line 251
    .line 252
    const/4 v15, 0x1

    .line 253
    move-object/from16 v20, v13

    .line 254
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

    .line 260
    .line 261
    move/from16 v17, v2

    .line 262
    .line 263
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    aget-object v13, v13, v19

    .line 268
    .line 269
    if-eqz v13, :cond_4

    .line 270
    .line 271
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 276
    .line 277
    if-eq v13, v14, :cond_6

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_6
    iget-object v13, v0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 281
    .line 282
    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 283
    .line 284
    move-object/from16 v15, v20

    .line 285
    .line 286
    invoke-virtual {v13, v15, v14, v9}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 287
    .line 288
    .line 289
    const-string/jumbo v13, "enableRuleAsAdmin() - success"

    .line 290
    .line 291
    .line 292
    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :goto_3
    add-int/lit8 v14, v3, 0x1

    .line 297
    .line 298
    move v15, v2

    .line 299
    move/from16 v2, p0

    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_7
    :goto_4
    const-string/jumbo v0, "packageAdded() - Received invalid user id orpackage name, can\'t retrieve application info"

    .line 303
    .line 304
    .line 305
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    goto/16 :goto_a

    .line 309
    .line 310
    :cond_8
    move v3, v15

    .line 311
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    .line 312
    .line 313
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_10

    .line 318
    .line 319
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v2, v14, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    const-string v14, "android.intent.extra.UID"

    .line 337
    .line 338
    invoke-virtual {v2, v14, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-eq v7, v13, :cond_f

    .line 343
    .line 344
    if-nez v4, :cond_9

    .line 345
    .line 346
    goto/16 :goto_9

    .line 347
    .line 348
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v13

    .line 352
    invoke-virtual {v0, v2, v13, v4, v6}, Lcom/android/server/enterprise/firewall/Firewall;->handleExemptionListOnPkgEvent(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    new-instance v13, Landroid/content/ContentValues;

    .line 360
    .line 361
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v13, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v13, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    filled-new-array {v10}, [Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    new-instance v11, Ljava/util/HashSet;

    .line 375
    .line 376
    iget-object v12, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 377
    .line 378
    invoke-virtual {v12, v9, v6, v13}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-direct {v11, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-eqz v6, :cond_a

    .line 390
    .line 391
    goto/16 :goto_a

    .line 392
    .line 393
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string/jumbo v9, "packageRemoved() - "

    .line 396
    .line 397
    .line 398
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v9, " has firewall rules to disable"

    .line 405
    .line 406
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    if-eqz v9, :cond_10

    .line 425
    .line 426
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    check-cast v9, Landroid/content/ContentValues;

    .line 431
    .line 432
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    if-nez v9, :cond_b

    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_b
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    .line 440
    .line 441
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 442
    .line 443
    .line 444
    move-result v12

    .line 445
    invoke-direct {v11, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v9

    .line 452
    invoke-virtual {v0, v9, v4}, Lcom/android/server/enterprise/firewall/Firewall;->getRulesByAdminUidAndPackage(ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 453
    .line 454
    .line 455
    move-result-object v9

    .line 456
    invoke-static {v1, v8, v3, v7}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 457
    .line 458
    .line 459
    move-result-object v12

    .line 460
    array-length v13, v9

    .line 461
    move v15, v3

    .line 462
    :goto_6
    if-ge v15, v13, :cond_e

    .line 463
    .line 464
    aget-object v14, v9, v15

    .line 465
    .line 466
    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 467
    .line 468
    .line 469
    move-result-object v16

    .line 470
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 475
    .line 476
    .line 477
    move-result v16

    .line 478
    if-nez v16, :cond_c

    .line 479
    .line 480
    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 481
    .line 482
    .line 483
    move-result-object v16

    .line 484
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-static {v7, v12, v1, v3}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-nez v1, :cond_c

    .line 493
    .line 494
    :goto_7
    const/4 v1, 0x1

    .line 495
    goto :goto_8

    .line 496
    :cond_c
    invoke-virtual {v14, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPackageUid(I)V

    .line 497
    .line 498
    .line 499
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 500
    .line 501
    const/4 v3, 0x0

    .line 502
    invoke-virtual {v1, v14, v11, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 511
    .line 512
    if-eq v1, v3, :cond_d

    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_d
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 516
    .line 517
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 518
    .line 519
    invoke-virtual {v1, v14, v3, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 520
    .line 521
    .line 522
    const-string/jumbo v1, "disableIpTablesRule() - success"

    .line 523
    .line 524
    .line 525
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    goto :goto_7

    .line 529
    :goto_8
    add-int/2addr v15, v1

    .line 530
    move-object/from16 v1, p1

    .line 531
    .line 532
    const/4 v3, 0x0

    .line 533
    goto :goto_6

    .line 534
    :cond_e
    move-object/from16 v1, p1

    .line 535
    .line 536
    goto :goto_5

    .line 537
    :cond_f
    :goto_9
    const-string/jumbo v0, "packageRemoved() - Received invalid user id orpackage name, can\'t retrieve application info"

    .line 538
    .line 539
    .line 540
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    :cond_10
    :goto_a
    return-void

    .line 544
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 549
    .line 550
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    if-nez v3, :cond_11

    .line 555
    .line 556
    const-string v3, "android.intent.action.USER_ADDED"

    .line 557
    .line 558
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    if-eqz v1, :cond_12

    .line 563
    .line 564
    :cond_11
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    new-instance v1, Ljava/lang/Thread;

    .line 570
    .line 571
    new-instance v3, Lcom/android/server/enterprise/firewall/Firewall$3;

    .line 572
    .line 573
    invoke-direct {v3, v0, v2}, Lcom/android/server/enterprise/firewall/Firewall$3;-><init>(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Intent;)V

    .line 574
    .line 575
    .line 576
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 580
    .line 581
    .line 582
    :cond_12
    return-void

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
