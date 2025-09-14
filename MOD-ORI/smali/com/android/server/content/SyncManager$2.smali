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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/content/SyncManager$2;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "android.intent.extra.user_handle"

    .line 13
    .line 14
    const/16 v3, -0x2710

    .line 15
    .line 16
    move-object/from16 v4, p2

    .line 17
    .line 18
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string/jumbo v3, "onUserRemoved: u"

    .line 42
    .line 43
    .line 44
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 49
    .line 50
    invoke-virtual {v3, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 57
    .line 58
    invoke-virtual {v1, v4, v2}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 82
    .line 83
    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 84
    .line 85
    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 86
    .line 87
    if-ne v4, v2, :cond_1

    .line 88
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string/jumbo v5, "user removed u"

    .line 92
    .line 93
    .line 94
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v0, v3, v4}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const/4 v5, 0x1

    .line 130
    invoke-virtual {v1, v3, v5}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 139
    .line 140
    invoke-direct {v1, v4, v4, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 157
    .line 158
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

    .line 164
    .line 165
    aget-object v5, v1, v15

    .line 166
    .line 167
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 168
    .line 169
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

    .line 181
    .line 182
    .line 183
    add-int/lit8 v15, v15, 0x1

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_3
    const-string v3, "android.intent.action.USER_STOPPED"

    .line 187
    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_4

    .line 193
    .line 194
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 195
    .line 196
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 197
    .line 198
    .line 199
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 200
    .line 201
    invoke-direct {v1, v4, v4, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    const-string/jumbo v2, "onUserStopped"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_4
    :goto_2
    return-void

    .line 211
    :pswitch_0
    move-object/from16 v4, p2

    .line 212
    .line 213
    const-string v1, "android.intent.action.TIME_SET"

    .line 214
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_5

    .line 224
    .line 225
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 228
    .line 229
    iget-boolean v1, v0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 230
    .line 231
    if-nez v1, :cond_5

    .line 232
    .line 233
    const/4 v1, 0x1

    .line 234
    iput-boolean v1, v0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 235
    .line 236
    const-string v0, "SyncManager"

    .line 237
    .line 238
    const-string v1, "Clock is valid now."

    .line 239
    .line 240
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :cond_5
    return-void

    .line 244
    :pswitch_1
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 245
    .line 246
    const/4 v2, 0x0

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    invoke-direct {v1, v2, v2, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :pswitch_2
    const-string v1, "SyncManager"

    .line 261
    .line 262
    const-string v2, "Writing sync state before shutdown..."

    .line 263
    .line 264
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 268
    .line 269
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 270
    .line 271
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 272
    .line 273
    monitor-enter v2

    .line 274
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 278
    .line 279
    .line 280
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v1, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 282
    .line 283
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 284
    .line 285
    invoke-static {}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 297
    .line 298
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 299
    .line 300
    const-string v1, "Shutting down."

    .line 301
    .line 302
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 307
    .line 308
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

    .line 314
    .line 315
    iget-boolean v1, v1, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 316
    .line 317
    iget-object v2, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 318
    .line 319
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    const/4 v4, 0x1

    .line 328
    if-eqz v3, :cond_6

    .line 329
    .line 330
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_6

    .line 335
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

    .line 340
    .line 341
    iget-object v2, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 342
    .line 343
    iget-boolean v2, v2, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 344
    .line 345
    if-eqz v2, :cond_e

    .line 346
    .line 347
    if-nez v1, :cond_e

    .line 348
    .line 349
    const-string v1, "SyncManager"

    .line 350
    .line 351
    const/4 v2, 0x2

    .line 352
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_7

    .line 357
    .line 358
    const-string v1, "SyncManager"

    .line 359
    .line 360
    const-string v3, "Reconnection detected: clearing all backoffs"

    .line 361
    .line 362
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    :cond_7
    iget-object v0, v0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    .line 366
    .line 367
    const-string/jumbo v1, "network reconnect"

    .line 368
    .line 369
    .line 370
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 371
    .line 372
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    new-instance v5, Landroid/util/ArraySet;

    .line 376
    .line 377
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 378
    .line 379
    .line 380
    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 381
    .line 382
    monitor-enter v6

    .line 383
    :try_start_2
    iget-object v7, v3, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 384
    .line 385
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    if-eqz v8, :cond_c

    .line 398
    .line 399
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v8

    .line 403
    check-cast v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 404
    .line 405
    iget-object v9, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 406
    .line 407
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    if-eqz v10, :cond_8

    .line 420
    .line 421
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    check-cast v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 426
    .line 427
    iget-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 428
    .line 429
    const-wide/16 v13, -0x1

    .line 430
    .line 431
    cmp-long v11, v11, v13

    .line 432
    .line 433
    if-nez v11, :cond_a

    .line 434
    .line 435
    iget-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 436
    .line 437
    cmp-long v11, v11, v13

    .line 438
    .line 439
    if-eqz v11, :cond_9

    .line 440
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

    .line 446
    .line 447
    :cond_a
    :goto_5
    const-string v11, "SyncManager"

    .line 448
    .line 449
    invoke-static {v11, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    if-eqz v11, :cond_b

    .line 454
    .line 455
    const-string v11, "SyncManager"

    .line 456
    .line 457
    new-instance v12, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string/jumbo v15, "clearAllBackoffsLocked: authority:"

    .line 463
    .line 464
    .line 465
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    iget-object v15, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 469
    .line 470
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v15, " account:"

    .line 474
    .line 475
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    iget-object v15, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 479
    .line 480
    iget-object v15, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 481
    .line 482
    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 483
    .line 484
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v15, " user:"

    .line 488
    .line 489
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    iget-object v15, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 493
    .line 494
    iget v15, v15, Landroid/accounts/AccountAndUser;->userId:I

    .line 495
    .line 496
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v15, " backoffTime was: "

    .line 500
    .line 501
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    move-object v15, v3

    .line 505
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 506
    .line 507
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const-string v2, " backoffDelay was: "

    .line 511
    .line 512
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 516
    .line 517
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    goto :goto_6

    .line 528
    :cond_b
    move-object v15, v3

    .line 529
    :goto_6
    iput-wide v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 530
    .line 531
    iput-wide v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 532
    .line 533
    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 534
    .line 535
    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    .line 536
    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    :goto_7
    move-object v3, v15

    .line 545
    const/4 v2, 0x2

    .line 546
    goto/16 :goto_4

    .line 547
    .line 548
    :cond_c
    move-object v15, v3

    .line 549
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 550
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    sub-int/2addr v2, v4

    .line 555
    :goto_8
    if-lez v2, :cond_d

    .line 556
    .line 557
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    check-cast v3, Ljava/lang/Integer;

    .line 562
    .line 563
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    const/4 v6, 0x0

    .line 568
    move-object v7, v15

    .line 569
    invoke-virtual {v7, v4, v3, v6}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 570
    .line 571
    .line 572
    add-int/lit8 v2, v2, -0x1

    .line 573
    .line 574
    goto :goto_8

    .line 575
    :cond_d
    sget-object v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 576
    .line 577
    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 578
    .line 579
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
