.class public final Lcom/android/server/content/SyncManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/content/SyncManager$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/content/SyncManager$2;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "android.intent.extra.user_handle"

    .line 14
    const/16 v3, -0x2710

    .line 16
    move-object/from16 v4, p2

    .line 18
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    move-result v2

    .line 22
    if-ne v2, v3, :cond_0

    .line 24
    goto/16 :goto_2

    .line 26
    :cond_0
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_2

    .line 35
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    const-string/jumbo v3, "onUserRemoved: u"

    .line 44
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 50
    invoke-virtual {v3, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 56
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 58
    invoke-virtual {v1, v4, v2}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 61
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v1

    .line 71
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 83
    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 85
    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 87
    if-ne v4, v2, :cond_1

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v5, "user removed u"

    .line 94
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v0, v3, v4}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 116
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 128
    move-result-object v3

    .line 129
    const/4 v5, 0x1

    .line 130
    invoke-virtual {v1, v3, v5}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 133
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 135
    invoke-virtual {v1, v2}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 138
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 140
    invoke-direct {v1, v4, v4, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 146
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    .line 149
    move-result-object v1

    .line 150
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 159
    move-result-object v1

    .line 160
    array-length v3, v1

    .line 161
    const/4 v4, 0x0

    .line 162
    move v15, v4

    .line 163
    :goto_1
    if-ge v15, v3, :cond_4

    .line 165
    aget-object v5, v1, v15

    .line 167
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 170
    move-result v12

    .line 171
    const/4 v13, -0x3

    .line 172
    const/4 v14, 0x0

    .line 173
    const/4 v7, -0x8

    .line 174
    const/4 v8, 0x0

    .line 175
    const/4 v9, 0x0

    .line 176
    const/4 v10, -0x1

    .line 177
    const/4 v11, 0x0

    .line 178
    move-object v4, v0

    .line 179
    move v6, v2

    .line 180
    invoke-virtual/range {v4 .. v14}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 183
    add-int/lit8 v15, v15, 0x1

    .line 185
    goto :goto_1

    .line 186
    :cond_3
    const-string v3, "android.intent.action.USER_STOPPED"

    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_4

    .line 194
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 196
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 199
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 201
    invoke-direct {v1, v4, v4, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 204
    const-string/jumbo v2, "onUserStopped"

    .line 207
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 210
    :cond_4
    :goto_2
    return-void

    .line 211
    :pswitch_0
    move-object/from16 v4, p2

    .line 213
    const-string v1, "android.intent.action.TIME_SET"

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_5

    .line 225
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 227
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 229
    iget-boolean v1, v0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 231
    if-nez v1, :cond_5

    .line 233
    const/4 v1, 0x1

    .line 234
    iput-boolean v1, v0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 236
    const-string v0, "SyncManager"

    .line 238
    const-string v1, "Clock is valid now."

    .line 240
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_5
    return-void

    .line 244
    :pswitch_1
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 246
    const/4 v2, 0x0

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 250
    move-result v3

    .line 251
    invoke-direct {v1, v2, v2, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 254
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 259
    return-void

    .line 260
    :pswitch_2
    const-string v1, "SyncManager"

    .line 262
    const-string v2, "Writing sync state before shutdown..."

    .line 264
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 269
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 271
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 273
    monitor-enter v2

    .line 274
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 277
    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 280
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v1, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 283
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 285
    invoke-static {}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    .line 288
    move-result-object v2

    .line 289
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 296
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 298
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 300
    const-string v1, "Shutting down."

    .line 302
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 309
    return-void

    .line 310
    :catchall_0
    move-exception v0

    .line 311
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    throw v0

    .line 313
    :pswitch_3
    iget-object v1, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 315
    iget-boolean v1, v1, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 317
    iget-object v2, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 319
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 326
    move-result-object v3

    .line 327
    const/4 v4, 0x1

    .line 328
    if-eqz v3, :cond_6

    .line 330
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_6

    .line 336
    move v3, v4

    .line 337
    goto :goto_3

    .line 338
    :cond_6
    const/4 v3, 0x0

    .line 339
    :goto_3
    iput-boolean v3, v2, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 341
    iget-object v2, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 343
    iget-boolean v2, v2, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 345
    if-eqz v2, :cond_e

    .line 347
    if-nez v1, :cond_e

    .line 349
    const-string v1, "SyncManager"

    .line 351
    const/4 v2, 0x2

    .line 352
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_7

    .line 358
    const-string v1, "SyncManager"

    .line 360
    const-string v3, "Reconnection detected: clearing all backoffs"

    .line 362
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_7
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 367
    const-string/jumbo v1, "network reconnect"

    .line 370
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 372
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    new-instance v5, Landroid/util/ArraySet;

    .line 377
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 380
    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 382
    monitor-enter v6

    .line 383
    :try_start_2
    iget-object v7, v3, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 385
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 388
    move-result-object v7

    .line 389
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 392
    move-result-object v7

    .line 393
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 396
    move-result v8

    .line 397
    if-eqz v8, :cond_c

    .line 399
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    move-result-object v8

    .line 403
    check-cast v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 405
    iget-object v9, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 407
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 410
    move-result-object v9

    .line 411
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 414
    move-result-object v9

    .line 415
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    move-result v10

    .line 419
    if-eqz v10, :cond_8

    .line 421
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    move-result-object v10

    .line 425
    check-cast v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 427
    iget-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 429
    const-wide/16 v13, -0x1

    .line 431
    cmp-long v11, v11, v13

    .line 433
    if-nez v11, :cond_a

    .line 435
    iget-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 437
    cmp-long v11, v11, v13

    .line 439
    if-eqz v11, :cond_9

    .line 441
    goto :goto_5

    .line 442
    :cond_9
    move-object v15, v3

    .line 443
    goto :goto_7

    .line 444
    :catchall_1
    move-exception v0

    .line 445
    goto/16 :goto_9

    .line 447
    :cond_a
    :goto_5
    const-string v11, "SyncManager"

    .line 449
    invoke-static {v11, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 452
    move-result v11

    .line 453
    if-eqz v11, :cond_b

    .line 455
    const-string v11, "SyncManager"

    .line 457
    new-instance v12, Ljava/lang/StringBuilder;

    .line 459
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    const-string/jumbo v15, "clearAllBackoffsLocked: authority:"

    .line 465
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v15, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 470
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 473
    const-string v15, " account:"

    .line 475
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v15, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 480
    iget-object v15, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 482
    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 484
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v15, " user:"

    .line 489
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v15, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 494
    iget v15, v15, Landroid/accounts/AccountAndUser;->userId:I

    .line 496
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    const-string v15, " backoffTime was: "

    .line 501
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    move-object v15, v3

    .line 505
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 507
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 510
    const-string v2, " backoffDelay was: "

    .line 512
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 517
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    move-result-object v2

    .line 524
    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    goto :goto_6

    .line 528
    :cond_b
    move-object v15, v3

    .line 529
    :goto_6
    iput-wide v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 531
    iput-wide v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 533
    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 535
    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    move-result-object v2

    .line 541
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 544
    :goto_7
    move-object v3, v15

    .line 545
    const/4 v2, 0x2

    .line 546
    goto/16 :goto_4

    .line 548
    :cond_c
    move-object v15, v3

    .line 549
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 550
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 553
    move-result v2

    .line 554
    sub-int/2addr v2, v4

    .line 555
    :goto_8
    if-lez v2, :cond_d

    .line 557
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 560
    move-result-object v3

    .line 561
    check-cast v3, Ljava/lang/Integer;

    .line 563
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 566
    move-result v3

    .line 567
    const/4 v6, 0x0

    .line 568
    move-object v7, v15

    .line 569
    invoke-virtual {v7, v4, v3, v6}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 572
    add-int/lit8 v2, v2, -0x1

    .line 574
    goto :goto_8

    .line 575
    :cond_d
    sget-object v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 577
    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 580
    goto :goto_a

    .line 581
    :goto_9
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 582
    throw v0

    .line 583
    :cond_e
    :goto_a
    return-void

    .line 584
    nop

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
