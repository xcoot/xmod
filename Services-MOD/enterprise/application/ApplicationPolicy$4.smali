.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->$r8$classId:I

    .line 7
    packed-switch v2, :pswitch_data_0

    .line 10
    :try_start_0
    const-string/jumbo v2, "networkInfo"

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/net/NetworkInfo;

    .line 19
    if-eqz v1, :cond_4

    .line 21
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 23
    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 25
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy$15;->$SwitchMap$android$net$NetworkInfo$State:[I

    .line 34
    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    .line 37
    move-result v3

    .line 38
    aget v2, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const-string v3, "Connected"

    .line 42
    const-string v4, "Disconnected"

    .line 44
    const/4 v5, 0x1

    .line 45
    if-eq v2, v5, :cond_1

    .line 47
    const/4 v6, 0x2

    .line 48
    if-eq v2, v6, :cond_0

    .line 50
    :try_start_1
    const-string v2, "Unknown"

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v2, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v2, v3

    .line 56
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 62
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 64
    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 66
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    iput-object v6, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 72
    new-instance v4, Landroid/os/Message;

    .line 74
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 77
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 79
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 81
    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 83
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 86
    move-result-object v6

    .line 87
    const-string/jumbo v7, "mobile"

    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_2

    .line 96
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/4 v5, 0x0

    .line 102
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 104
    :goto_1
    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 106
    check-cast v5, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 108
    iget-object v5, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 110
    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_4

    .line 119
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 121
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 123
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    iput-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    goto :goto_3

    .line 130
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :cond_4
    :goto_3
    return-void

    .line 134
    :pswitch_0
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 136
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 138
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_5

    .line 149
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 152
    move-result-object v3

    .line 153
    goto :goto_4

    .line 154
    :cond_5
    const/4 v3, 0x0

    .line 155
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 158
    move-result-object v4

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 162
    move-result v5

    .line 163
    if-eqz v3, :cond_11

    .line 165
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 172
    move-result v6

    .line 173
    if-lez v6, :cond_11

    .line 175
    if-eqz v4, :cond_11

    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 184
    move-result v6

    .line 185
    if-lez v6, :cond_11

    .line 187
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 191
    const-string/jumbo v12, "mHandler must not be null!"

    .line 194
    const/4 v7, 0x0

    .line 195
    const-string v13, "ApplicationPolicy"

    .line 197
    if-eqz v6, :cond_9

    .line 199
    :try_start_3
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 201
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 203
    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 205
    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    .line 208
    move-result-object v6

    .line 209
    const-string v8, "android.intent.extra.REPLACING"

    .line 211
    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 214
    move-result v14

    .line 215
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 218
    move-result-object v15

    .line 219
    :cond_6
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_7

    .line 225
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    move-result-object v6

    .line 229
    check-cast v6, Ljava/lang/Integer;

    .line 231
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 234
    move-result v11

    .line 235
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 237
    invoke-direct {v6, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 240
    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 242
    check-cast v7, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 244
    invoke-virtual {v7, v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    .line 247
    move-result-object v6

    .line 248
    if-eqz v6, :cond_6

    .line 250
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 252
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 254
    const-string v7, "applicationUninstallationCount"

    .line 256
    invoke-virtual {v6, v11, v3, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    if-nez v14, :cond_6

    .line 261
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 263
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 265
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    .line 268
    move-result v6

    .line 269
    if-nez v6, :cond_6

    .line 271
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 273
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 275
    const/4 v10, 0x2

    .line 276
    const/16 v16, 0x0

    .line 278
    const/4 v8, 0x0

    .line 279
    move-object v7, v3

    .line 280
    move v9, v11

    .line 281
    move/from16 v17, v11

    .line 283
    move/from16 v11, v16

    .line 285
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    .line 288
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 290
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 292
    const/high16 v10, 0x1000000

    .line 294
    const/4 v11, 0x0

    .line 295
    const/4 v8, 0x0

    .line 296
    move-object v7, v3

    .line 297
    move/from16 v9, v17

    .line 299
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    .line 302
    const-string v6, "App removed, clear masks"

    .line 304
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    goto :goto_5

    .line 308
    :catch_1
    move-exception v0

    .line 309
    goto/16 :goto_8

    .line 311
    :cond_7
    if-nez v14, :cond_10

    .line 313
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 315
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 320
    move-result-object v1

    .line 321
    invoke-static {v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_10

    .line 327
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 329
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 331
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 333
    if-eqz v6, :cond_8

    .line 335
    const/4 v7, 0x1

    .line 336
    invoke-static {v6, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 339
    move-result-object v6

    .line 340
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 342
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    goto/16 :goto_7

    .line 347
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 349
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 352
    throw v0

    .line 353
    :cond_9
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    .line 355
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    move-result v6

    .line 359
    if-eqz v6, :cond_b

    .line 361
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 363
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 368
    move-result-object v1

    .line 369
    invoke-static {v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_10

    .line 375
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 377
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 379
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_10

    .line 385
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 387
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 389
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 391
    if-eqz v6, :cond_a

    .line 393
    invoke-static {v6, v7, v5, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 396
    move-result-object v6

    .line 397
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 399
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 402
    goto/16 :goto_7

    .line 404
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 406
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 409
    throw v0

    .line 410
    :cond_b
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 412
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    move-result v6

    .line 416
    if-eqz v6, :cond_10

    .line 418
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 420
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 422
    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 424
    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    .line 427
    move-result-object v6

    .line 428
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 431
    move-result-object v6

    .line 432
    :cond_c
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 435
    move-result v8

    .line 436
    if-eqz v8, :cond_d

    .line 438
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 441
    move-result-object v8

    .line 442
    check-cast v8, Ljava/lang/Integer;

    .line 444
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 447
    move-result v8

    .line 448
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 450
    invoke-direct {v9, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 453
    iget-object v10, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 455
    check-cast v10, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 457
    invoke-virtual {v10, v9, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    .line 460
    move-result-object v9

    .line 461
    if-eqz v9, :cond_c

    .line 463
    iget-object v9, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 465
    check-cast v9, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 467
    const-string v10, "applicationInstallationCount"

    .line 469
    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v8, "App install count incremented"

    .line 474
    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    goto :goto_6

    .line 478
    :cond_d
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 480
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 482
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    .line 485
    move-result v6

    .line 486
    if-eqz v6, :cond_e

    .line 488
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 490
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 492
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V

    .line 495
    :cond_e
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 497
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 502
    move-result-object v1

    .line 503
    invoke-static {v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    .line 506
    move-result v1

    .line 507
    if-nez v1, :cond_10

    .line 509
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 511
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 513
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 515
    if-eqz v6, :cond_f

    .line 517
    invoke-static {v6, v7, v5, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 520
    move-result-object v6

    .line 521
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 523
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    goto :goto_7

    .line 527
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 529
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 532
    throw v0

    .line 533
    :cond_10
    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 536
    move-result v1

    .line 537
    if-nez v1, :cond_11

    .line 539
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 541
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 543
    invoke-static {v0, v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mgetProvidersFromPackage(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(ILjava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 550
    goto :goto_9

    .line 551
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    :cond_11
    :goto_9
    return-void

    .line 555
    :pswitch_1
    const-string v1, "ApplicationPolicy"

    .line 557
    const-string v2, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 559
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 564
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 566
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 569
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 571
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 573
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    .line 575
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    .line 580
    const-string v3, "Init: "

    .line 582
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    move-result-object v2

    .line 592
    const-string v3, "ProcessStats"

    .line 594
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v2, 0x1

    .line 598
    iput-boolean v2, v1, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 600
    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    .line 603
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 605
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 607
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 609
    const-string/jumbo v2, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    .line 612
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 615
    move-result-object v2

    .line 616
    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 619
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 621
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 623
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 625
    const-string/jumbo v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    .line 628
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 631
    move-result-object v1

    .line 632
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 635
    return-void

    .line 636
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 639
    move-result-object v2

    .line 640
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 643
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    move-result v2

    .line 647
    if-eqz v2, :cond_12

    .line 649
    const-string v2, "ApplicationPolicy"

    .line 651
    const-string v3, "System UI update received - update system UI monitor"

    .line 653
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 659
    const/4 v3, 0x0

    .line 660
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 663
    move-result v1

    .line 664
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 666
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 668
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemUIMonitor(I)V

    .line 671
    :cond_12
    return-void

    .line 672
    :pswitch_3
    const-string v1, "ApplicationPolicy"

    .line 674
    const-string/jumbo v2, "boot completed - refreshWidgetStatus"

    .line 677
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 682
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 684
    const/4 v2, 0x1

    .line 685
    iput-boolean v2, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBootCompleted:Z

    .line 687
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 689
    const-string/jumbo v2, "user"

    .line 692
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    move-result-object v1

    .line 696
    check-cast v1, Landroid/os/UserManager;

    .line 698
    if-eqz v1, :cond_13

    .line 700
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 703
    move-result-object v1

    .line 704
    if-eqz v1, :cond_13

    .line 706
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 709
    move-result-object v1

    .line 710
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 713
    move-result v2

    .line 714
    if-eqz v2, :cond_13

    .line 716
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 719
    move-result-object v2

    .line 720
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 722
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 724
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 726
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 728
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 731
    goto :goto_a

    .line 732
    :cond_13
    return-void

    .line 733
    :pswitch_4
    const-string v2, "User switched"

    .line 735
    const-string v3, "ApplicationPolicy"

    .line 737
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    .line 742
    if-eqz v2, :cond_18

    .line 744
    move-object v4, v2

    .line 745
    check-cast v4, Ljava/util/HashMap;

    .line 747
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 750
    move-result v4

    .line 751
    if-eqz v4, :cond_14

    .line 753
    goto :goto_c

    .line 754
    :cond_14
    const-string v4, "android.intent.extra.user_handle"

    .line 756
    const/4 v5, 0x0

    .line 757
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 760
    move-result v1

    .line 761
    check-cast v2, Ljava/util/HashMap;

    .line 763
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 766
    move-result-object v2

    .line 767
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 770
    move-result-object v2

    .line 771
    :cond_15
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 774
    move-result v4

    .line 775
    if-eqz v4, :cond_18

    .line 777
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 780
    move-result-object v4

    .line 781
    check-cast v4, Ljava/lang/Long;

    .line 783
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 786
    move-result-wide v5

    .line 787
    long-to-int v7, v5

    .line 788
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 791
    move-result v8

    .line 792
    if-ne v1, v8, :cond_15

    .line 794
    iget-object v8, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 796
    check-cast v8, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 798
    iget-object v8, v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 800
    check-cast v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 802
    iget-object v9, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 804
    if-nez v9, :cond_16

    .line 806
    iget-object v9, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    .line 808
    const-string/jumbo v10, "user"

    .line 811
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 814
    move-result-object v9

    .line 815
    check-cast v9, Landroid/os/UserManager;

    .line 817
    iput-object v9, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 819
    :cond_16
    iget-object v8, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 821
    invoke-virtual {v8, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 824
    move-result-object v8

    .line 825
    if-eqz v8, :cond_17

    .line 827
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 830
    move-result v8

    .line 831
    if-eqz v8, :cond_17

    .line 833
    const-string v0, "Persona no longer valid removing from cache"

    .line 835
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    .line 840
    check-cast v0, Ljava/util/HashMap;

    .line 842
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    goto :goto_c

    .line 846
    :cond_17
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 848
    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 850
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mstartCachedAppsForActiveUser(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    .line 853
    goto :goto_b

    .line 854
    :cond_18
    :goto_c
    return-void

    .line 855
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 858
    move-result-object v2

    .line 859
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 861
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 864
    move-result v2

    .line 865
    if-eqz v2, :cond_19

    .line 867
    const-string v2, "android.intent.extra.user_handle"

    .line 869
    const/4 v3, 0x0

    .line 870
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 873
    move-result v1

    .line 874
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 876
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 878
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    .line 883
    const-string/jumbo v3, "onUserRemoved() userId = "

    .line 886
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    move-result-object v1

    .line 896
    const-string v2, "ApplicationPolicy"

    .line 898
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 903
    const-string/jumbo v2, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    .line 906
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 909
    move-result-object v2

    .line 910
    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 913
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 915
    const-string/jumbo v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    .line 918
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 921
    move-result-object v1

    .line 922
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 925
    :cond_19
    return-void

    .line 926
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 929
    move-result-object v2

    .line 930
    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 932
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    move-result v2

    .line 936
    if-eqz v2, :cond_1b

    .line 938
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 940
    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 942
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 945
    const-string/jumbo v2, "user unlocked - refreshWidgetStatus"

    .line 948
    const-string v3, "ApplicationPolicy"

    .line 950
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const-string v2, "android.intent.extra.user_handle"

    .line 955
    const/16 v4, -0x2710

    .line 957
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 960
    move-result v1

    .line 961
    if-eq v1, v4, :cond_1a

    .line 963
    const-string/jumbo v2, "calling refreshWidgetStatus for userId "

    .line 966
    invoke-static {v1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 971
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 973
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 976
    goto :goto_d

    .line 977
    :cond_1a
    const-string/jumbo v0, "could not call refreshWidgetStatus due to USER_NULL userId "

    .line 980
    invoke-static {v1, v0, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_1b
    :goto_d
    return-void

    .line 984
    :pswitch_7
    const-string/jumbo v2, "mInstallReceiver - packageName = "

    .line 987
    const-string/jumbo v3, "mInstallReceiver - sessionId = "

    .line 990
    const-string v4, "ApplicationPolicy"

    .line 992
    new-instance v5, Ljava/lang/StringBuilder;

    .line 994
    const-string/jumbo v6, "onReceive - mInstallReceiver "

    .line 997
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1006
    move-result-object v5

    .line 1007
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1013
    move-result-object v4

    .line 1014
    if-eqz v4, :cond_1d

    .line 1016
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.INSTALL_COMMIT_INTERNAL"

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1022
    move-result-object v5

    .line 1023
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1026
    move-result v4

    .line 1027
    if-eqz v4, :cond_1d

    .line 1029
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1031
    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1033
    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    .line 1035
    monitor-enter v4

    .line 1036
    :try_start_4
    const-string v5, "android.content.pm.extra.SESSION_ID"

    .line 1038
    const/4 v6, 0x0

    .line 1039
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1042
    move-result v5

    .line 1043
    const-string v6, "ApplicationPolicy"

    .line 1045
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1047
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    move-result-object v3

    .line 1057
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1062
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1064
    iget-object v3, v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallMap:Ljava/util/Map;

    .line 1066
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1069
    move-result-object v6

    .line 1070
    check-cast v3, Ljava/util/HashMap;

    .line 1072
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    move-result-object v3

    .line 1076
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;

    .line 1078
    if-eqz v3, :cond_1c

    .line 1080
    iput v5, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mSessionId:I

    .line 1082
    const-string v6, "android.content.pm.extra.PACKAGE_NAME"

    .line 1084
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1087
    move-result-object v6

    .line 1088
    iput-object v6, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    .line 1090
    const-string v6, "android.content.pm.extra.STATUS"

    .line 1092
    const/4 v7, 0x1

    .line 1093
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1096
    move-result v1

    .line 1097
    iput v1, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    .line 1099
    const-string v1, "ApplicationPolicy"

    .line 1101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1103
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1106
    iget-object v2, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    .line 1108
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    const-string v2, ", statusCode = "

    .line 1113
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    iget v2, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    .line 1118
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    move-result-object v2

    .line 1125
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1130
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1132
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallMap:Ljava/util/Map;

    .line 1134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1137
    move-result-object v2

    .line 1138
    check-cast v1, Ljava/util/HashMap;

    .line 1140
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1145
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1147
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1152
    goto :goto_e

    .line 1153
    :catchall_0
    move-exception v0

    .line 1154
    goto :goto_f

    .line 1155
    :cond_1c
    :goto_e
    monitor-exit v4

    .line 1156
    goto :goto_10

    .line 1157
    :goto_f
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1158
    throw v0

    .line 1159
    :cond_1d
    :goto_10
    return-void

    .line 1160
    nop

    .line 1161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
