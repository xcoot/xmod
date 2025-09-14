.class public final Lcom/android/server/am/AppFGSTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;


# instance fields
.field public final mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

.field public final mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

.field final mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

.field public final mProcessObserver:Lcom/android/server/am/AppFGSTracker$1;

.field public final mTmpPkgDurations:Landroid/util/ArrayMap;


# direct methods
.method public static -$$Nest$mcheckLongRunningFgs(Lcom/android/server/am/AppFGSTracker;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 5
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 7
    check-cast v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 9
    iget-object v9, v0, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v10

    .line 15
    iget-wide v2, v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 17
    iget-wide v4, v1, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 19
    sub-long v4, v10, v4

    .line 21
    const-wide/16 v12, 0x0

    .line 23
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 26
    move-result-wide v4

    .line 27
    iget-object v6, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v6

    .line 30
    :try_start_0
    iget-object v7, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 32
    iget-object v7, v7, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 37
    move-result v8

    .line 38
    const/4 v14, 0x1

    .line 39
    sub-int/2addr v8, v14

    .line 40
    :goto_0
    if-ltz v8, :cond_5

    .line 42
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    move-result-object v15

    .line 46
    check-cast v15, Landroid/util/ArrayMap;

    .line 48
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 51
    move-result v16

    .line 52
    add-int/lit8 v16, v16, -0x1

    .line 54
    move/from16 v12, v16

    .line 56
    :goto_1
    if-ltz v12, :cond_4

    .line 58
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 61
    move-result-object v13

    .line 62
    check-cast v13, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 64
    sget v14, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    .line 66
    invoke-virtual {v13, v14}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 69
    move-result v19

    .line 70
    if-eqz v19, :cond_0

    .line 72
    move-object/from16 v19, v7

    .line 74
    iget-boolean v7, v13, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 76
    if-nez v7, :cond_1

    .line 78
    invoke-virtual {v0, v13, v10, v11}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    .line 81
    move-result-wide v20

    .line 82
    cmp-long v7, v20, v2

    .line 84
    if-ltz v7, :cond_1

    .line 86
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v9, v13, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/4 v7, 0x1

    .line 94
    iput-boolean v7, v13, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    goto/16 :goto_12

    .line 100
    :cond_0
    move-object/from16 v19, v7

    .line 102
    :cond_1
    :goto_2
    invoke-virtual {v13, v14}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_3

    .line 108
    sget-object v7, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 110
    iget-object v14, v13, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 112
    iget v13, v13, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 114
    move-wide/from16 v20, v2

    .line 116
    iget-object v2, v7, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 118
    if-nez v2, :cond_2

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    .line 123
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string/jumbo v3, "pkgName"

    .line 129
    invoke-virtual {v2, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v3, "uid"

    .line 135
    invoke-virtual {v2, v3, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v3, v7, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 140
    const/16 v13, 0xf

    .line 142
    invoke-virtual {v3, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 149
    iget-object v2, v7, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 151
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    goto :goto_3

    .line 155
    :cond_3
    move-wide/from16 v20, v2

    .line 157
    :goto_3
    add-int/lit8 v12, v12, -0x1

    .line 159
    move-object/from16 v7, v19

    .line 161
    move-wide/from16 v2, v20

    .line 163
    const/4 v14, 0x1

    .line 164
    goto :goto_1

    .line 165
    :cond_4
    move-wide/from16 v20, v2

    .line 167
    move-object/from16 v19, v7

    .line 169
    add-int/lit8 v8, v8, -0x1

    .line 171
    const-wide/16 v12, 0x0

    .line 173
    const/4 v14, 0x1

    .line 174
    goto/16 :goto_0

    .line 176
    :cond_5
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/BaseAppStateEventsTracker;->trim(J)V

    .line 179
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 183
    move-result v2

    .line 184
    if-lez v2, :cond_18

    .line 186
    new-array v12, v2, [Ljava/lang/Integer;

    .line 188
    const/4 v13, 0x0

    .line 189
    move v3, v13

    .line 190
    :goto_4
    if-ge v3, v2, :cond_6

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v4

    .line 196
    aput-object v4, v12, v3

    .line 198
    add-int/lit8 v3, v3, 0x1

    .line 200
    goto :goto_4

    .line 201
    :cond_6
    new-instance v3, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;

    .line 203
    invoke-direct {v3, v9}, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    .line 206
    invoke-static {v12, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 209
    const/4 v3, 0x1

    .line 210
    sub-int/2addr v2, v3

    .line 211
    move v14, v2

    .line 212
    :goto_5
    if-ltz v14, :cond_17

    .line 214
    aget-object v2, v12, v14

    .line 216
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 219
    move-result v2

    .line 220
    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 226
    iget-object v15, v2, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 228
    iget v8, v2, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 230
    iget v2, v2, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    .line 232
    const/4 v3, -0x1

    .line 233
    if-eq v2, v3, :cond_7

    .line 235
    :goto_6
    move-object/from16 v23, v1

    .line 237
    move-object/from16 v25, v12

    .line 239
    move/from16 v20, v14

    .line 241
    const-wide/16 v21, 0x0

    .line 243
    :goto_7
    move-object v12, v9

    .line 244
    goto/16 :goto_10

    .line 246
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 249
    move-result-wide v25

    .line 250
    iget-wide v6, v1, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 252
    sub-long v2, v25, v6

    .line 254
    const-wide/16 v4, 0x0

    .line 256
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 259
    move-result-wide v23

    .line 260
    move-object v2, v1

    .line 261
    move v3, v8

    .line 262
    move-wide/from16 v4, v25

    .line 264
    move/from16 v33, v8

    .line 266
    move-object v8, v15

    .line 267
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptMediaPlaybackFGS(IJJLjava/lang/String;)Z

    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_8

    .line 273
    goto :goto_6

    .line 274
    :cond_8
    iget-object v2, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 276
    check-cast v2, Lcom/android/server/am/AppFGSTracker;

    .line 278
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 280
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 282
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 284
    const/16 v3, 0x8

    .line 286
    invoke-static {v3}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 289
    move-result v21

    .line 290
    move-object/from16 v19, v2

    .line 292
    move/from16 v20, v33

    .line 294
    move-object/from16 v22, v15

    .line 296
    invoke-virtual/range {v19 .. v26}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IILjava/lang/String;JJ)J

    .line 299
    move-result-wide v2

    .line 300
    const-wide/16 v4, 0x0

    .line 302
    cmp-long v6, v2, v4

    .line 304
    if-lez v6, :cond_9

    .line 306
    iget-wide v4, v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    .line 308
    cmp-long v2, v2, v4

    .line 310
    if-ltz v2, :cond_9

    .line 312
    goto :goto_6

    .line 313
    :cond_9
    iget-object v2, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 315
    check-cast v2, Lcom/android/server/am/AppFGSTracker;

    .line 317
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 319
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 321
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 323
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 325
    move/from16 v8, v33

    .line 327
    invoke-virtual {v3, v8}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    .line 330
    move-result v21

    .line 331
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 333
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 335
    invoke-virtual {v3, v8}, Lcom/android/server/am/AppFGSTracker;->getTrackerInfoForStatsd(I)[B

    .line 338
    move-result-object v24

    .line 339
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 341
    invoke-virtual {v3, v8}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    .line 344
    move-result v3

    .line 345
    invoke-static {v3}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    .line 348
    move-result v28

    .line 349
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 352
    move-result v31

    .line 353
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 355
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 357
    invoke-virtual {v3, v8}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    .line 360
    move-result v32

    .line 361
    const/16 v29, 0x0

    .line 363
    const/16 v30, 0x0

    .line 365
    const/16 v19, 0x1b9

    .line 367
    const/16 v22, 0x0

    .line 369
    const/16 v23, 0x3

    .line 371
    const/16 v25, 0x0

    .line 373
    const/16 v26, 0x0

    .line 375
    const/16 v27, 0x0

    .line 377
    move/from16 v20, v8

    .line 379
    invoke-static/range {v19 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    .line 382
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 384
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 386
    iget-boolean v3, v3, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    .line 388
    if-nez v3, :cond_a

    .line 390
    goto/16 :goto_6

    .line 392
    :cond_a
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 394
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 396
    iget-boolean v3, v3, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    .line 398
    if-nez v3, :cond_b

    .line 400
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 402
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 404
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 406
    iget-object v4, v3, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 408
    monitor-enter v4

    .line 409
    :try_start_1
    invoke-virtual {v3, v8, v15}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z

    .line 412
    move-result v3

    .line 413
    monitor-exit v4

    .line 414
    if-eqz v3, :cond_b

    .line 416
    goto/16 :goto_6

    .line 418
    :catchall_1
    move-exception v0

    .line 419
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 420
    throw v0

    .line 421
    :cond_b
    const-string v3, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    .line 423
    const/high16 v4, 0x1000000

    .line 425
    invoke-static {v4, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 428
    move-result-object v3

    .line 429
    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 431
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 433
    const/high16 v6, 0xc000000

    .line 435
    invoke-static {v4, v13, v3, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 438
    move-result-object v6

    .line 439
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    .line 441
    monitor-enter v3

    .line 442
    :try_start_2
    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 444
    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 446
    invoke-virtual {v4, v8, v15}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 449
    move-result-object v4

    .line 450
    if-nez v4, :cond_c

    .line 452
    monitor-exit v3

    .line 453
    move-object v7, v6

    .line 454
    move/from16 v20, v14

    .line 456
    const-wide/16 v21, 0x0

    .line 458
    goto :goto_d

    .line 459
    :catchall_2
    move-exception v0

    .line 460
    goto/16 :goto_11

    .line 462
    :cond_c
    iget-object v5, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 464
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    move/from16 v20, v14

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 472
    move-result-wide v13

    .line 473
    iget-object v5, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 475
    if-nez v5, :cond_d

    .line 477
    const-wide/16 v17, 0x0

    .line 479
    :goto_8
    const-wide/16 v21, 0x0

    .line 481
    goto :goto_9

    .line 482
    :cond_d
    const/4 v7, 0x1

    .line 483
    aget-wide v21, v5, v7

    .line 485
    move-wide/from16 v17, v21

    .line 487
    goto :goto_8

    .line 488
    :goto_9
    cmp-long v5, v17, v21

    .line 490
    if-eqz v5, :cond_f

    .line 492
    iget-object v5, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 494
    iget-object v5, v5, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 496
    move-object v7, v6

    .line 497
    iget-wide v5, v5, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    .line 499
    add-long v17, v17, v5

    .line 501
    cmp-long v5, v17, v13

    .line 503
    if-lez v5, :cond_e

    .line 505
    monitor-exit v3

    .line 506
    const/4 v13, 0x0

    .line 507
    goto :goto_d

    .line 508
    :cond_e
    :goto_a
    const/4 v5, 0x1

    .line 509
    goto :goto_b

    .line 510
    :cond_f
    move-object v7, v6

    .line 511
    goto :goto_a

    .line 512
    :goto_b
    invoke-virtual {v4, v5, v13, v14, v5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V

    .line 515
    iget-object v6, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 517
    if-nez v6, :cond_10

    .line 519
    const/4 v13, 0x0

    .line 520
    goto :goto_c

    .line 521
    :cond_10
    aget v13, v6, v5

    .line 523
    :goto_c
    if-gtz v13, :cond_12

    .line 525
    iget v13, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    .line 527
    add-int/lit8 v5, v13, 0x1

    .line 529
    iput v5, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    .line 531
    if-nez v6, :cond_11

    .line 533
    const/4 v5, 0x2

    .line 534
    new-array v5, v5, [I

    .line 536
    iput-object v5, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 538
    :cond_11
    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 540
    const/4 v5, 0x1

    .line 541
    aput v13, v4, v5

    .line 543
    :cond_12
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 544
    :goto_d
    if-gtz v13, :cond_13

    .line 546
    move-object/from16 v23, v1

    .line 548
    move-object/from16 v25, v12

    .line 550
    goto/16 :goto_7

    .line 552
    :cond_13
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 554
    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 557
    move-result-object v3

    .line 558
    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 560
    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 562
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 565
    move-result-object v14

    .line 566
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 569
    move-result v5

    .line 570
    const-wide/32 v17, 0xc8000

    .line 573
    const/16 v4, 0x3e8

    .line 575
    move-object/from16 v34, v7

    .line 577
    move-wide/from16 v6, v17

    .line 579
    move/from16 v17, v8

    .line 581
    move-object v8, v15

    .line 582
    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 585
    move-result-object v3

    .line 586
    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 588
    const v5, 0x104093a

    .line 591
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 594
    move-result-object v4

    .line 595
    iget-object v5, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 597
    if-eqz v3, :cond_14

    .line 599
    invoke-virtual {v3, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 602
    move-result-object v6

    .line 603
    goto :goto_e

    .line 604
    :cond_14
    move-object v6, v15

    .line 605
    :goto_e
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 608
    move-result-object v6

    .line 609
    const v7, 0x1040928

    .line 612
    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 615
    move-result-object v5

    .line 616
    if-eqz v3, :cond_15

    .line 618
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 620
    invoke-static {v15, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 623
    move-result-object v3

    .line 624
    goto :goto_f

    .line 625
    :cond_15
    const/4 v3, 0x0

    .line 626
    :goto_f
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    .line 629
    move-result v7

    .line 630
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 633
    move-result-object v7

    .line 634
    new-instance v8, Landroid/app/Notification$Builder;

    .line 636
    iget-object v14, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 638
    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    .line 640
    invoke-direct {v8, v14, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 643
    const-string/jumbo v6, "com.android.app.abusive_bg_apps"

    .line 646
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 649
    move-result-object v8

    .line 650
    const/4 v14, 0x1

    .line 651
    invoke-virtual {v8, v14}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 654
    move-result-object v8

    .line 655
    new-instance v14, Landroid/app/Notification$BigTextStyle;

    .line 657
    invoke-direct {v14}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 660
    invoke-virtual {v8, v14}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 663
    move-result-object v8

    .line 664
    const v14, 0x108008a

    .line 667
    invoke-virtual {v8, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 670
    move-result-object v8

    .line 671
    iget-object v14, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 673
    move-object/from16 v23, v1

    .line 675
    const v1, 0x106001c

    .line 678
    invoke-virtual {v14, v1}, Landroid/content/Context;->getColor(I)I

    .line 681
    move-result v14

    .line 682
    invoke-virtual {v8, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 685
    move-result-object v8

    .line 686
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 689
    move-result-object v8

    .line 690
    iget-object v14, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 692
    const v1, 0xc1b2508

    .line 695
    move-object/from16 v25, v12

    .line 697
    const/4 v12, 0x0

    .line 698
    invoke-virtual {v14, v12, v1, v8, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 701
    new-instance v1, Landroid/app/Notification$Builder;

    .line 703
    iget-object v8, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 705
    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    .line 707
    invoke-direct {v1, v8, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 710
    const/4 v8, 0x1

    .line 711
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 714
    move-result-object v1

    .line 715
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 718
    move-result-object v1

    .line 719
    iget-object v6, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 721
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    move-object v12, v9

    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 728
    move-result-wide v8

    .line 729
    invoke-virtual {v1, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 732
    move-result-object v1

    .line 733
    const v6, 0x108008a

    .line 736
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 739
    move-result-object v1

    .line 740
    iget-object v6, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 742
    const v8, 0x106001c

    .line 745
    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    .line 748
    move-result v6

    .line 749
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 752
    move-result-object v1

    .line 753
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 756
    move-result-object v1

    .line 757
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 760
    move-result-object v1

    .line 761
    move-object/from16 v4, v34

    .line 763
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 766
    move-result-object v1

    .line 767
    if-eqz v3, :cond_16

    .line 769
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 772
    :cond_16
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 775
    move-result-object v1

    .line 776
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 778
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    .line 780
    invoke-virtual {v3, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 785
    const/4 v3, 0x0

    .line 786
    invoke-virtual {v2, v3, v13, v1, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 789
    :goto_10
    add-int/lit8 v14, v20, -0x1

    .line 791
    move-object v9, v12

    .line 792
    move-object/from16 v1, v23

    .line 794
    move-object/from16 v12, v25

    .line 796
    const/4 v13, 0x0

    .line 797
    goto/16 :goto_5

    .line 799
    :goto_11
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 800
    throw v0

    .line 801
    :cond_17
    move-object v12, v9

    .line 802
    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 805
    :cond_18
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 807
    monitor-enter v1

    .line 808
    :try_start_4
    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 811
    monitor-exit v1

    .line 812
    return-void

    .line 813
    :catchall_3
    move-exception v0

    .line 814
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 815
    throw v0

    .line 816
    :goto_12
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 817
    throw v0
.end method

.method public static -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 5
    check-cast v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 7
    iget-boolean v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto/16 :goto_5

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 19
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 21
    check-cast v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 23
    iget-object v2, v2, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 25
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 27
    invoke-virtual {v2, p2}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter v3

    .line 34
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 36
    invoke-virtual {v4, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 42
    if-nez v4, :cond_1

    .line 44
    new-instance v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 46
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 48
    iget-object v5, v5, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 50
    check-cast v5, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    .line 52
    invoke-direct {v4, p2, p1, v5, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;Lcom/android/server/am/AppFGSTracker;)V

    .line 55
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 57
    invoke-virtual {v5, p1, p2, v4}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_6

    .line 63
    :cond_1
    :goto_0
    iget-boolean v5, v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 65
    invoke-virtual {v4, v0, v1, p3}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->addEvent(JZ)V

    .line 68
    const/4 p3, 0x0

    .line 69
    const/4 v6, 0x1

    .line 70
    if-eqz v5, :cond_2

    .line 72
    sget v5, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    .line 74
    invoke-virtual {v4, v5}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 80
    move v5, v6

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v5, p3

    .line 83
    :goto_1
    if-eqz v5, :cond_3

    .line 85
    iput-boolean p3, v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 87
    :cond_3
    iput v2, v4, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 92
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v5, :cond_6

    .line 95
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 97
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 99
    check-cast p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 101
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 103
    check-cast p0, Lcom/android/server/am/AppFGSTracker;

    .line 105
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 107
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 109
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    .line 111
    monitor-enter v0

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 114
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 116
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_5

    .line 122
    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 124
    if-nez p1, :cond_4

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    aget p3, p1, v6

    .line 129
    :goto_2
    if-lez p3, :cond_5

    .line 131
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 133
    invoke-virtual {p0, p3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 136
    goto :goto_3

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    :goto_3
    monitor-exit v0

    .line 140
    goto :goto_5

    .line 141
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    throw p0

    .line 143
    :cond_6
    :goto_5
    return-void

    .line 144
    :goto_6
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    throw p0
.end method

.method public static -$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 6
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 8
    check-cast v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 10
    iget-boolean v1, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 4
    new-instance p1, Lcom/android/server/am/UidProcessMap;

    .line 6
    invoke-direct {p1}, Lcom/android/server/am/UidProcessMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 11
    new-instance p1, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    .line 18
    new-instance p1, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$NotificationListener;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    .line 23
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    .line 25
    new-instance p1, Lcom/android/server/am/AppFGSTracker$1;

    .line 27
    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$1;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    .line 30
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Lcom/android/server/am/AppFGSTracker$1;

    .line 32
    new-instance p1, Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 34
    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$MyHandler;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    .line 37
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 39
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 41
    new-instance p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 43
    const-string v3, "bg_fgs_monitor_enabled"

    .line 45
    const/4 v4, 0x1

    .line 46
    const-string v5, "bg_fgs_long_running_window"

    .line 48
    const-wide/32 v6, 0x5265c00

    .line 51
    move-object v0, p2

    .line 52
    move-object v1, p1

    .line 53
    move-object v2, p0

    .line 54
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 57
    const-wide/32 v0, 0x44aa200

    .line 60
    iput-wide v0, p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 62
    const-wide/32 v0, 0xdbba00

    .line 65
    iput-wide v0, p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    .line 67
    iput-wide v0, p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    .line 69
    iput-object p2, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 71
    return-void
.end method

.method public static foregroundServiceTypeToIndex(I)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 8
    move-result p0

    .line 9
    add-int/lit8 p0, p0, 0x1

    .line 11
    :goto_0
    return p0
.end method


# virtual methods
.method public final createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 4
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 5
    check-cast v1, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;Lcom/android/server/am/AppFGSTracker;)V

    return-object v0
.end method

.method public final createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 2
    new-instance p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    invoke-direct {p0, p1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string v0, "APP FOREGROUND SERVICE TRACKER:"

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "  "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public final dumpOthers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string v0, "APPS WITH ACTIVE FOREGROUND SERVICES:"

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "  "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 28
    iget-object v1, v1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    const-string v2, "(none)"

    .line 41
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x0

    .line 52
    move v4, v3

    .line 53
    :goto_1
    if-ge v4, v2, :cond_2

    .line 55
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 58
    move-result v5

    .line 59
    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Landroid/util/ArrayMap;

    .line 69
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 72
    move-result v8

    .line 73
    move v9, v3

    .line 74
    :goto_2
    if-ge v9, v8, :cond_1

    .line 76
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 79
    move-result-object v10

    .line 80
    check-cast v10, Ljava/lang/String;

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    const/16 v11, 0x2f

    .line 90
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 93
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    const-string v11, " notification="

    .line 98
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v5, v10}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z

    .line 104
    move-result v10

    .line 105
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 108
    add-int/lit8 v9, v9, 0x1

    .line 110
    goto :goto_2

    .line 111
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    monitor-exit v0

    .line 115
    return-void

    .line 116
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0
.end method

.method public final getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 3
    iget p1, p1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 9
    move-result v3

    .line 10
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 15
    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Lcom/android/server/am/BaseAppStateDurations;

    .line 22
    const-wide/16 v4, 0x0

    .line 24
    if-nez v2, :cond_0

    .line 26
    monitor-exit v1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 38
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;

    .line 49
    move-result-object p0

    .line 50
    move-object v2, p0

    .line 51
    check-cast v2, Lcom/android/server/am/BaseAppStateDurations;

    .line 53
    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V

    .line 56
    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 59
    move-result-wide v4

    .line 60
    move-wide v6, p2

    .line 61
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    .line 64
    move-result-wide v4

    .line 65
    monitor-exit v1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 70
    move-result-wide v4

    .line 71
    move-wide v6, p2

    .line 72
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    .line 75
    move-result-wide v4

    .line 76
    monitor-exit v1

    .line 77
    :goto_0
    return-wide v4

    .line 78
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final getTrackerInfoForStatsd(I)[B
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v4

    .line 5
    const/4 v6, 0x0

    .line 6
    invoke-static {v6}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 9
    move-result v1

    .line 10
    iget-object v7, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v7

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/am/BaseAppStateDurations;

    .line 19
    const-wide/16 v8, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 23
    monitor-exit v7

    .line 24
    move-wide v0, v8

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_4

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 36
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V

    .line 47
    :cond_1
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 50
    move-result-wide v2

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    .line 54
    move-result-wide v0

    .line 55
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    cmp-long v2, v0, v8

    .line 58
    if-nez v2, :cond_2

    .line 60
    const/4 p0, 0x0

    .line 61
    return-object p0

    .line 62
    :cond_2
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    .line 64
    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 67
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 69
    monitor-enter v3

    .line 70
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 72
    iget-object v4, v4, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/util/ArrayMap;

    .line 80
    if-eqz v4, :cond_4

    .line 82
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 85
    move-result v5

    .line 86
    const/4 v7, 0x1

    .line 87
    sub-int/2addr v5, v7

    .line 88
    :goto_1
    if-ltz v5, :cond_4

    .line 90
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z

    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_3

    .line 102
    monitor-exit v3

    .line 103
    move v6, v7

    .line 104
    goto :goto_2

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :goto_2
    const-wide p0, 0x10800000001L

    .line 116
    invoke-virtual {v2, p0, p1, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 119
    const-wide p0, 0x10300000002L

    .line 124
    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 127
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 130
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    throw p0

    .line 137
    :goto_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    throw p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 9
    const/4 p1, 0x0

    .line 10
    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 22
    move-result p2

    .line 23
    const/4 v0, 0x1

    .line 24
    sub-int/2addr p2, v0

    .line 25
    :goto_0
    if-ltz p2, :cond_2

    .line 27
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 33
    return v0

    .line 34
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :goto_1
    return p1
.end method

.method public final onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 4
    move-result-object v0

    .line 5
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 7
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 9
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 11
    if-eqz p4, :cond_0

    .line 13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    :goto_0
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 20
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 22
    const/4 p1, 0x3

    .line 23
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 30
    return-void
.end method

.method public final onForegroundServiceStateChanged(Ljava/lang/String;IIZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 3
    xor-int/lit8 p4, p4, 0x1

    .line 5
    invoke-virtual {p0, p4, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    return-void
.end method

.method public final onSystemReady()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 6
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 8
    invoke-virtual {v1, p0}, Landroid/app/ActivityManagerInternal;->addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V

    .line 11
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 13
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Lcom/android/server/am/AppFGSTracker$1;

    .line 15
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 18
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->reset()V

    .line 10
    return-void
.end method

.method public final scheduleDurationCheckLocked(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 11
    const-wide/16 v2, -0x1

    .line 13
    :goto_0
    if-ltz v1, :cond_3

    .line 15
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 24
    move-result v5

    .line 25
    add-int/lit8 v5, v5, -0x1

    .line 27
    :goto_1
    if-ltz v5, :cond_2

    .line 29
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 35
    sget v7, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    .line 37
    invoke-virtual {v6, v7}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 43
    iget-boolean v7, v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 45
    if-eqz v7, :cond_0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    .line 51
    move-result-wide v6

    .line 52
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 55
    move-result-wide v2

    .line 56
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 64
    const/4 p2, 0x4

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    const-wide/16 v0, 0x0

    .line 70
    cmp-long p1, v2, v0

    .line 72
    if-ltz p1, :cond_4

    .line 74
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 76
    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 78
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getServiceStartForegroundTimeout()I

    .line 81
    move-result p1

    .line 82
    int-to-long v4, p1

    .line 83
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 85
    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 87
    check-cast p1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 89
    iget-wide v6, p1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 91
    sub-long/2addr v6, v2

    .line 92
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 95
    move-result-wide v0

    .line 96
    add-long/2addr v0, v4

    .line 97
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 99
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    :cond_4
    return-void
.end method
