.class public final Lcom/android/server/alarm/AppSyncInfo;
.super Lcom/android/server/alarm/AppSyncWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field public static EXP_MIN_INEXACT_WINDOW:J = 0x493e0L

.field public static SUSPICIOUS_TIME_THRESHOLD:J = 0x2710L


# instance fields
.field public final boot_filter:Landroid/content/IntentFilter;

.field public final mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

.field public final mAccountsPackages:Ljava/util/ArrayList;

.field public final mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

.field public final mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

.field public final mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

.field public final mBootIntentReceiver:Lcom/android/server/alarm/AppSyncInfo$1;

.field public mCharging:Z

.field public final mContext:Landroid/content/Context;

.field public final mCscPackages:Ljava/util/ArrayList;

.field public mFilter:Landroid/content/IntentFilter;

.field public final mLockAllowlistFromSCPM:Ljava/lang/Object;

.field public final mLockBlocklistFromSCPM:Ljava/lang/Object;

.field public final mLockExt:Ljava/lang/Object;

.field public final mLockSuspiciousTagSet:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

.field public final mPermanentAllowlistPackages:Ljava/util/ArrayList;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mScreenOn:Z

.field public mSuspiciousTagSet:Ljava/util/Set;

.field public final mSuspiciousTagSetFromApi:Ljava/util/Set;

.field public final mSuspiciousTagSetFromSCPM:Ljava/util/Set;

.field public final mTargetPackages:Ljava/util/ArrayList;

.field public final preloadedPackages:Ljava/util/Set;


# direct methods
.method public static -$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v5, "data4"

    .line 9
    const-string/jumbo v6, "data5"

    .line 12
    const-string/jumbo v1, "item"

    .line 15
    const-string/jumbo v2, "data1"

    .line 18
    const-string/jumbo v3, "data2"

    .line 21
    const-string/jumbo v4, "data3"

    .line 24
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const-string/jumbo v2, "content://com.samsung.android.sm.policy"

    .line 31
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    move-result-object v2

    .line 35
    const-string/jumbo v3, "policy_item"

    .line 38
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    move-result-object v2

    .line 42
    const-string v3, "AppsyncPolicy"

    .line 44
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    aget-object v4, v1, v3

    .line 51
    const/4 v5, 0x1

    .line 52
    aget-object v5, v1, v5

    .line 54
    const/4 v6, 0x2

    .line 55
    aget-object v6, v1, v6

    .line 57
    const/4 v7, 0x3

    .line 58
    aget-object v7, v1, v7

    .line 60
    const/4 v8, 0x4

    .line 61
    aget-object v8, v1, v8

    .line 63
    const/4 v9, 0x5

    .line 64
    aget-object v9, v1, v9

    .line 66
    const-string/jumbo v10, "category"

    .line 69
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    .line 72
    move-result-object v10

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    move-result-object v11

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    move-result-object v4

    .line 81
    const-string/jumbo v5, "com.samsung.android.sm.policy"

    .line 84
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 87
    move-result-object v4

    .line 88
    const-wide/16 v14, 0x2710

    .line 90
    if-eqz v4, :cond_1a

    .line 92
    const-string v4, "CAT_SUSP_MILLIS"

    .line 94
    filled-new-array {v4}, [Ljava/lang/String;

    .line 97
    move-result-object v8

    .line 98
    const-string/jumbo v7, "category = ?"

    .line 101
    const/4 v9, 0x0

    .line 102
    move-object v4, v11

    .line 103
    move-object v5, v2

    .line 104
    move-object v6, v10

    .line 105
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 108
    move-result-object v4

    .line 109
    const-wide/16 v16, -0x1

    .line 111
    if-nez v4, :cond_0

    .line 113
    :goto_0
    move-wide/from16 v18, v16

    .line 115
    goto :goto_2

    .line 116
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_1

    .line 122
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 125
    goto :goto_0

    .line 126
    :cond_1
    const-string/jumbo v5, "item"

    .line 129
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 132
    move-result v5

    .line 133
    if-gez v5, :cond_2

    .line 135
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    :try_start_0
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 142
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 146
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    move-object v1, v0

    .line 149
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 152
    throw v1

    .line 153
    :catch_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 156
    move-wide/from16 v5, v16

    .line 158
    :goto_1
    move-wide/from16 v18, v5

    .line 160
    :goto_2
    const-string v4, "CAT_WIN_MILLIS"

    .line 162
    filled-new-array {v4}, [Ljava/lang/String;

    .line 165
    move-result-object v8

    .line 166
    const-string/jumbo v7, "category = ?"

    .line 169
    const/4 v9, 0x0

    .line 170
    move-object v4, v11

    .line 171
    move-object v5, v2

    .line 172
    move-object v6, v10

    .line 173
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 176
    move-result-object v4

    .line 177
    if-nez v4, :cond_3

    .line 179
    goto :goto_3

    .line 180
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 183
    move-result v5

    .line 184
    if-nez v5, :cond_4

    .line 186
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 189
    goto :goto_3

    .line 190
    :cond_4
    const-string/jumbo v5, "item"

    .line 193
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 196
    move-result v5

    .line 197
    if-gez v5, :cond_5

    .line 199
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 202
    goto :goto_3

    .line 203
    :cond_5
    :try_start_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 206
    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :catch_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 210
    goto :goto_3

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    move-object v1, v0

    .line 213
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 216
    throw v1

    .line 217
    :goto_3
    const-string v4, "CAT_SUSP_PKGS"

    .line 219
    filled-new-array {v4}, [Ljava/lang/String;

    .line 222
    move-result-object v8

    .line 223
    const-string/jumbo v7, "category = ?"

    .line 226
    const/4 v9, 0x0

    .line 227
    move-object v4, v11

    .line 228
    move-object v5, v2

    .line 229
    move-object v6, v10

    .line 230
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 233
    move-result-object v4

    .line 234
    const/4 v9, 0x6

    .line 235
    const/16 v20, 0x0

    .line 237
    if-nez v4, :cond_6

    .line 239
    move-object/from16 v8, v20

    .line 241
    goto :goto_7

    .line 242
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    .line 244
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 247
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_b

    .line 253
    move v6, v3

    .line 254
    :goto_4
    if-ge v6, v9, :cond_7

    .line 256
    aget-object v7, v1, v6

    .line 258
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 261
    move-result v7

    .line 262
    if-gez v7, :cond_8

    .line 264
    goto :goto_6

    .line 265
    :cond_8
    :try_start_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 268
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    goto :goto_5

    .line 270
    :catch_2
    move-object/from16 v7, v20

    .line 272
    :goto_5
    if-eqz v7, :cond_a

    .line 274
    const-string v8, ""

    .line 276
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    move-result v8

    .line 280
    if-eqz v8, :cond_9

    .line 282
    goto :goto_6

    .line 283
    :cond_9
    const/4 v8, -0x1

    .line 284
    invoke-static {v8, v7}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(ILjava/lang/String;)Ljava/lang/String;

    .line 287
    move-result-object v7

    .line 288
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 293
    goto :goto_4

    .line 294
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 297
    move-object v8, v5

    .line 298
    :goto_7
    const-string v4, "CAT_ALLOW_PKGS"

    .line 300
    filled-new-array {v4}, [Ljava/lang/String;

    .line 303
    move-result-object v21

    .line 304
    const-string/jumbo v7, "category = ?"

    .line 307
    const/16 v22, 0x0

    .line 309
    move-object v4, v11

    .line 310
    move-object v5, v2

    .line 311
    move-object v6, v10

    .line 312
    move-object v3, v8

    .line 313
    move-object/from16 v8, v21

    .line 315
    move v12, v9

    .line 316
    move-object/from16 v9, v22

    .line 318
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 321
    move-result-object v4

    .line 322
    if-nez v4, :cond_c

    .line 324
    move-object/from16 v13, v20

    .line 326
    goto :goto_b

    .line 327
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    .line 329
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 332
    :cond_d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 335
    move-result v6

    .line 336
    if-eqz v6, :cond_11

    .line 338
    const/4 v6, 0x0

    .line 339
    :goto_8
    if-ge v6, v12, :cond_d

    .line 341
    aget-object v7, v1, v6

    .line 343
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 346
    move-result v7

    .line 347
    if-gez v7, :cond_e

    .line 349
    goto :goto_a

    .line 350
    :cond_e
    :try_start_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 353
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 354
    goto :goto_9

    .line 355
    :catch_3
    move-object/from16 v7, v20

    .line 357
    :goto_9
    if-eqz v7, :cond_10

    .line 359
    const-string v8, ""

    .line 361
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    move-result v8

    .line 365
    if-eqz v8, :cond_f

    .line 367
    goto :goto_a

    .line 368
    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 371
    move-result-object v7

    .line 372
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 377
    goto :goto_8

    .line 378
    :cond_11
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 381
    move-object v13, v5

    .line 382
    :goto_b
    const-string v4, "CAT_BLOCK_PKGS"

    .line 384
    filled-new-array {v4}, [Ljava/lang/String;

    .line 387
    move-result-object v8

    .line 388
    const-string/jumbo v7, "category = ?"

    .line 391
    const/4 v9, 0x0

    .line 392
    move-object v4, v11

    .line 393
    move-object v5, v2

    .line 394
    move-object v6, v10

    .line 395
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 398
    move-result-object v2

    .line 399
    if-nez v2, :cond_12

    .line 401
    move-object/from16 v4, v20

    .line 403
    goto :goto_f

    .line 404
    :cond_12
    new-instance v4, Ljava/util/ArrayList;

    .line 406
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 409
    :cond_13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 412
    move-result v5

    .line 413
    if-eqz v5, :cond_17

    .line 415
    const/4 v5, 0x0

    .line 416
    :goto_c
    if-ge v5, v12, :cond_13

    .line 418
    aget-object v6, v1, v5

    .line 420
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 423
    move-result v6

    .line 424
    if-gez v6, :cond_14

    .line 426
    goto :goto_e

    .line 427
    :cond_14
    :try_start_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 430
    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 431
    goto :goto_d

    .line 432
    :catch_4
    move-object/from16 v6, v20

    .line 434
    :goto_d
    if-eqz v6, :cond_16

    .line 436
    const-string v7, ""

    .line 438
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    move-result v7

    .line 442
    if-eqz v7, :cond_15

    .line 444
    goto :goto_e

    .line 445
    :cond_15
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 448
    move-result-object v6

    .line 449
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_16
    :goto_e
    add-int/lit8 v5, v5, 0x1

    .line 454
    goto :goto_c

    .line 455
    :cond_17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 458
    :goto_f
    const-wide/16 v1, 0x0

    .line 460
    cmp-long v5, v18, v1

    .line 462
    if-gez v5, :cond_18

    .line 464
    goto :goto_10

    .line 465
    :cond_18
    move-wide/from16 v14, v18

    .line 467
    :goto_10
    sput-wide v14, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 469
    cmp-long v1, v16, v1

    .line 471
    if-gez v1, :cond_19

    .line 473
    const-wide/32 v18, 0x493e0

    .line 476
    :cond_19
    sput-wide v18, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 478
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 480
    monitor-enter v1

    .line 481
    :try_start_5
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 483
    check-cast v2, Ljava/util/HashSet;

    .line 485
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 488
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 490
    invoke-static {v3, v2}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 493
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 494
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    .line 496
    monitor-enter v2

    .line 497
    :try_start_6
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 499
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 502
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 504
    invoke-static {v13, v1}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 507
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 508
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    .line 510
    monitor-enter v1

    .line 511
    :try_start_7
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 513
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 516
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 518
    invoke-static {v4, v2}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 521
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    .line 525
    goto :goto_11

    .line 526
    :catchall_2
    move-exception v0

    .line 527
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 528
    throw v0

    .line 529
    :catchall_3
    move-exception v0

    .line 530
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 531
    throw v0

    .line 532
    :catchall_4
    move-exception v0

    .line 533
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 534
    throw v0

    .line 535
    :cond_1a
    sput-wide v14, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 537
    const-wide/32 v1, 0x493e0

    .line 540
    sput-wide v1, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 542
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 544
    monitor-enter v1

    .line 545
    :try_start_b
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 547
    check-cast v2, Ljava/util/HashSet;

    .line 549
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 552
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    .line 556
    :goto_11
    return-void

    .line 557
    :catchall_5
    move-exception v0

    .line 558
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 559
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v1, Ljava/lang/Object;

    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    .line 19
    new-instance v1, Ljava/util/HashSet;

    .line 21
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 26
    new-instance v1, Ljava/lang/Object;

    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    .line 33
    new-instance v1, Ljava/util/HashSet;

    .line 35
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    .line 40
    new-instance v1, Ljava/lang/Object;

    .line 42
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    .line 49
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 54
    new-instance v1, Ljava/util/HashSet;

    .line 56
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    .line 70
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    .line 82
    new-instance v2, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 84
    invoke-direct {v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    .line 87
    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 89
    new-instance v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 91
    invoke-direct {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    .line 94
    iput-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    .line 98
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    .line 103
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iput-object v5, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    .line 108
    new-instance v5, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 110
    invoke-direct {v5}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    .line 113
    iput-object v5, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 115
    new-instance v6, Ljava/lang/Object;

    .line 117
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    .line 122
    new-instance v6, Ljava/util/ArrayList;

    .line 124
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 129
    new-instance v6, Ljava/lang/Object;

    .line 131
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    .line 136
    new-instance v6, Ljava/util/ArrayList;

    .line 138
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    .line 145
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    .line 150
    new-instance v7, Landroid/content/IntentFilter;

    .line 152
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    .line 157
    new-instance v7, Lcom/android/server/alarm/AppSyncInfo$1;

    .line 159
    const/4 v8, 0x0

    .line 160
    invoke-direct {v7, p0, v8}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;I)V

    .line 163
    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Lcom/android/server/alarm/AppSyncInfo$1;

    .line 165
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 170
    move-result-object v7

    .line 171
    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 173
    const/4 v7, 0x1

    .line 174
    iput-boolean v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    .line 176
    const/4 v7, 0x0

    .line 177
    iput-boolean v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    .line 179
    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$1;

    .line 181
    const/4 v9, 0x1

    .line 182
    invoke-direct {v8, p0, v9}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;I)V

    .line 185
    iget-object v9, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    .line 187
    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    .line 192
    invoke-direct {v8, p0}, Lcom/android/server/alarm/AppSyncInfo$AccountListener;-><init>(Lcom/android/server/alarm/AppSyncInfo;)V

    .line 195
    iput-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    .line 197
    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$1;

    .line 199
    invoke-direct {v8, p0, p1}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    .line 202
    monitor-enter v0

    .line 203
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object p1, v2, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 208
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 211
    iget-object p1, v2, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 216
    iget-object p1, v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 218
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 221
    iget-object p1, v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 226
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 229
    const-string/jumbo p1, "com.sec.spp.push"

    .line 232
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const-string/jumbo p1, "com.sec.chaton"

    .line 238
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo p1, "com.facebook.katana"

    .line 244
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const-string/jumbo p1, "com.twitter.android"

    .line 250
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const-string/jumbo p1, "com.facebook.orca"

    .line 256
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    const-string/jumbo p1, "com.kakao.talk"

    .line 262
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const-string/jumbo p1, "com.google.android.apps.plus"

    .line 268
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    const-string/jumbo p1, "com.mobilesrepublic.appygeek"

    .line 274
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const-string/jumbo p1, "mnn.Android"

    .line 280
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const-string/jumbo p1, "com.google.android.apps.maps"

    .line 286
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSyncBlockList()V

    .line 292
    invoke-virtual {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSync3PlusBlockList()V

    .line 295
    const-string/jumbo p1, "com.tencent.mobileqq"

    .line 298
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 301
    const-string/jumbo p1, "com.sohu.inputmethod.sogou"

    .line 304
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 307
    const-string/jumbo p1, "com.eg.android.AlipayGphone"

    .line 310
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 313
    const-string/jumbo p1, "com.alibaba.android.rimet"

    .line 316
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 319
    const-string/jumbo p1, "com.baidu.map.location"

    .line 322
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 328
    move-result-object p1

    .line 329
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_1

    .line 335
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    move-result-object v1

    .line 339
    check-cast v1, Ljava/lang/String;

    .line 341
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 343
    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 346
    move-result v2

    .line 347
    if-nez v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 351
    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 354
    goto :goto_0

    .line 355
    :catchall_0
    move-exception p0

    .line 356
    goto/16 :goto_5

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 363
    move-result-object p1

    .line 364
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_3

    .line 370
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    move-result-object v1

    .line 374
    check-cast v1, Ljava/lang/String;

    .line 376
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 378
    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 381
    move-result v2

    .line 382
    if-nez v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 386
    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 389
    goto :goto_1

    .line 390
    :cond_3
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    .line 392
    const-string/jumbo v1, "com.samsung.location"

    .line 395
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 400
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 403
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    .line 405
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 408
    move-result-object p1

    .line 409
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_4

    .line 415
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Ljava/lang/String;

    .line 421
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 423
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    goto :goto_2

    .line 427
    :cond_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    .line 429
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 432
    move-result-object p1

    .line 433
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_5

    .line 439
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Ljava/lang/String;

    .line 445
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 447
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    goto :goto_3

    .line 451
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 453
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 456
    move-result p1

    .line 457
    if-ge v7, p1, :cond_6

    .line 459
    const-string p1, "AppSyncInfo"

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    .line 463
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    const-string v2, "<TargetPackages> "

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    const-string v2, ": "

    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 481
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    move-result-object v2

    .line 485
    check-cast v2, Ljava/lang/String;

    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object v1

    .line 494
    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    add-int/lit8 v7, v7, 0x1

    .line 499
    goto :goto_4

    .line 500
    :cond_6
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    .line 502
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 504
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    .line 509
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Lcom/android/server/alarm/AppSyncInfo$1;

    .line 511
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    .line 513
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 518
    const-string/jumbo v1, "com.facebook.services"

    .line 521
    check-cast p1, Ljava/util/HashSet;

    .line 523
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 528
    const-string/jumbo v1, "com.facebook.katana"

    .line 531
    check-cast p1, Ljava/util/HashSet;

    .line 533
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 538
    const-string/jumbo v1, "com.facebook.orca"

    .line 541
    check-cast p1, Ljava/util/HashSet;

    .line 543
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 548
    const-string/jumbo v1, "com.facebook.pages.app"

    .line 551
    check-cast p1, Ljava/util/HashSet;

    .line 553
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 558
    const-string/jumbo v1, "com.facebook.appmanager"

    .line 561
    check-cast p1, Ljava/util/HashSet;

    .line 563
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 568
    const-string/jumbo v1, "com.facebook.system"

    .line 571
    check-cast p1, Ljava/util/HashSet;

    .line 573
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 578
    const-string/jumbo v1, "com.whatsapp"

    .line 581
    check-cast p1, Ljava/util/HashSet;

    .line 583
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 588
    const-string/jumbo v1, "com.instagram.android"

    .line 591
    check-cast p1, Ljava/util/HashSet;

    .line 593
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 598
    const-string/jumbo v1, "com.skype.raider"

    .line 601
    check-cast p1, Ljava/util/HashSet;

    .line 603
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 608
    const-string/jumbo v1, "com.microsoft.skydrive"

    .line 611
    check-cast p1, Ljava/util/HashSet;

    .line 613
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 618
    const-string/jumbo p1, "com.samsung.android.opencalendar"

    .line 621
    check-cast p0, Ljava/util/HashSet;

    .line 623
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 628
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    throw p0
.end method

.method public static addCollection(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 3
    if-nez p1, :cond_0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    return-void
.end method

.method public static getPackageTag(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/"

    .line 3
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    const-string v1, "<AppSyncInfo>"

    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v2, "mCharging: "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    .line 21
    const-string/jumbo v3, "mScreenOn: "

    .line 24
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v1

    .line 28
    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    .line 30
    const-string v3, "SUSP_THRE: "

    .line 32
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v1

    .line 36
    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 38
    const-string v4, "INEXACT_WIN: "

    .line 40
    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object v1

    .line 44
    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 46
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v1, "  <AppSync3 Allowlist>"

    .line 58
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v1

    .line 67
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v2

    .line 71
    const-string v3, "   (AppSync) "

    .line 73
    if-eqz v2, :cond_0

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    const-string v1, "   (AppSync) ---------"

    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v2, "  <AppSync3 TargetList>"

    .line 110
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v2

    .line 119
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_1

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/String;

    .line 131
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    const-string v2, "  <AppSync3 Blocklist>"

    .line 158
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 171
    invoke-virtual {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    const-string v2, "  <AppSync3p Blocklist>"

    .line 193
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 206
    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public final getWindowLength()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 3
    return-wide v0
.end method

.method public final isAdjustableAlarm(IIJJJLjava/lang/String;)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v1, p7

    .line 4
    move-object/from16 v3, p9

    .line 6
    sget-wide v4, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 8
    const-wide/16 v6, 0x0

    .line 10
    cmp-long v4, v4, v6

    .line 12
    const/4 v5, 0x0

    .line 13
    if-lez v4, :cond_10

    .line 15
    invoke-static {p2}, Landroid/os/UserHandle;->isCore(I)Z

    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_10

    .line 21
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 27
    goto/16 :goto_9

    .line 29
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    move-result v4

    .line 33
    :try_start_0
    iget-object v8, v0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 35
    invoke-virtual {v8, v3, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 38
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-nez v4, :cond_1

    .line 43
    goto/16 :goto_9

    .line 45
    :cond_1
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 47
    const/4 v8, 0x1

    .line 48
    and-int/2addr v4, v8

    .line 49
    if-lez v4, :cond_2

    .line 51
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 53
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 56
    move-result-object v9

    .line 57
    check-cast v4, Ljava/util/HashSet;

    .line 59
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_2

    .line 65
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 67
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_2

    .line 77
    goto/16 :goto_9

    .line 79
    :cond_2
    if-nez v3, :cond_3

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 85
    move-result-object v4

    .line 86
    iget-object v9, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 88
    invoke-virtual {v9, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_10

    .line 94
    iget-object v9, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 96
    invoke-virtual {v9, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_4

    .line 102
    goto/16 :goto_9

    .line 104
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 106
    goto/16 :goto_9

    .line 108
    :cond_5
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 111
    move-result v4

    .line 112
    const-class v9, Landroid/app/usage/UsageStatsManagerInternal;

    .line 114
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    move-result-object v9

    .line 118
    check-cast v9, Landroid/app/usage/UsageStatsManagerInternal;

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 123
    move-result-wide v10

    .line 124
    invoke-virtual {v9, v4, v3, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 127
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    const/16 v9, 0xa

    .line 130
    if-gt v4, v9, :cond_10

    .line 132
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    iget-object v9, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 138
    invoke-virtual {v9, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_6

    .line 144
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 146
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_8

    .line 156
    :cond_6
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 158
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 161
    move-result-object v9

    .line 162
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_8

    .line 168
    :cond_7
    :goto_2
    move v4, p1

    .line 169
    goto :goto_3

    .line 170
    :cond_8
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 172
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 175
    move-result-object v9

    .line 176
    check-cast v4, Ljava/util/HashSet;

    .line 178
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 181
    move-result v4

    .line 182
    if-nez v4, :cond_7

    .line 184
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 186
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 189
    move-result-object v9

    .line 190
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_10

    .line 196
    goto :goto_2

    .line 197
    :goto_3
    if-gt v4, v8, :cond_9

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 202
    move-result-wide v9

    .line 203
    goto :goto_4

    .line 204
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 207
    move-result-wide v9

    .line 208
    :goto_4
    sub-long v9, p3, v9

    .line 210
    sget-wide v11, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 212
    cmp-long v4, v9, v11

    .line 214
    if-ltz v4, :cond_a

    .line 216
    move v0, v8

    .line 217
    goto :goto_8

    .line 218
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 221
    move-result v4

    .line 222
    iget-object v9, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    .line 224
    iget-object v0, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 226
    if-eqz v9, :cond_d

    .line 228
    if-eqz v0, :cond_d

    .line 230
    invoke-static {v4, v3}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(ILjava/lang/String;)Ljava/lang/String;

    .line 233
    move-result-object v4

    .line 234
    const/4 v10, -0x1

    .line 235
    invoke-static {v10, v3}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(ILjava/lang/String;)Ljava/lang/String;

    .line 238
    move-result-object v3

    .line 239
    monitor-enter v9

    .line 240
    :try_start_2
    check-cast v0, Ljava/util/HashSet;

    .line 242
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_c

    .line 248
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_b

    .line 254
    goto :goto_5

    .line 255
    :cond_b
    move v0, v5

    .line 256
    goto :goto_6

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    goto :goto_7

    .line 259
    :cond_c
    :goto_5
    move v0, v8

    .line 260
    :goto_6
    monitor-exit v9

    .line 261
    goto :goto_8

    .line 262
    :goto_7
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    throw v0

    .line 264
    :cond_d
    move v0, v5

    .line 265
    :goto_8
    if-eqz v0, :cond_10

    .line 267
    cmp-long v0, p5, v6

    .line 269
    if-ltz v0, :cond_e

    .line 271
    sget-wide v3, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 273
    cmp-long v3, p5, v3

    .line 275
    if-ltz v3, :cond_f

    .line 277
    :cond_e
    if-gez v0, :cond_10

    .line 279
    cmp-long v0, v1, v6

    .line 281
    if-lez v0, :cond_10

    .line 283
    long-to-double v0, v1

    .line 284
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 286
    mul-double/2addr v0, v2

    .line 287
    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 289
    long-to-double v2, v2

    .line 290
    cmpg-double v0, v0, v2

    .line 292
    if-gez v0, :cond_10

    .line 294
    :cond_f
    return v8

    .line 295
    :catch_1
    :cond_10
    :goto_9
    return v5
.end method

.method public final updateSuspiciousTags()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    .line 17
    monitor-enter v2

    .line 18
    :try_start_1
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    .line 26
    monitor-enter v1

    .line 27
    :try_start_2
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    throw p0

    .line 37
    :catchall_2
    move-exception p0

    .line 38
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 39
    throw p0
.end method
