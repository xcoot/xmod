.class public final Lcom/android/server/job/controllers/QuotaController$QcHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "#0"

    .line 7
    const-string v3, "Checking if "

    .line 9
    const-string v4, "Checking pkg "

    .line 11
    const-string v5, "#4"

    .line 13
    const-string v6, "Checking if "

    .line 15
    const-string v7, "Processing event "

    .line 17
    const-string v8, ">#6"

    .line 19
    const-string v9, "<"

    .line 21
    const-string v10, "#7"

    .line 23
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 25
    iget-object v11, v11, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 27
    monitor-enter v11

    .line 28
    :try_start_0
    iget v12, v1, Landroid/os/Message;->what:I

    .line 30
    const-wide/32 v13, 0x80000

    .line 33
    const/4 v15, 0x1

    .line 34
    packed-switch v12, :pswitch_data_0

    .line 37
    goto/16 :goto_c

    .line 39
    :pswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    check-cast v1, Landroid/content/pm/UserPackage;

    .line 43
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 45
    if-eqz v2, :cond_0

    .line 47
    const-string v2, "JobScheduler.Quota"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v4, " has reached its count quota."

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_d

    .line 73
    :cond_0
    :goto_0
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 79
    const-string v2, "JobScheduler"

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    invoke-static {v13, v14, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 101
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 103
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 111
    move-result-wide v3

    .line 112
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 114
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 123
    goto/16 :goto_c

    .line 125
    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 127
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 129
    iget-object v2, v2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 131
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 134
    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 136
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_b

    .line 142
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 144
    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 146
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_2

    .line 152
    goto/16 :goto_4

    .line 154
    :cond_2
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 162
    move-result-wide v3

    .line 163
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 165
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 167
    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->get(I)J

    .line 170
    move-result-wide v5

    .line 171
    cmp-long v5, v3, v5

    .line 173
    if-ltz v5, :cond_9

    .line 175
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 177
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 179
    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->get(I)J

    .line 182
    move-result-wide v5

    .line 183
    cmp-long v5, v3, v5

    .line 185
    if-gez v5, :cond_3

    .line 187
    goto/16 :goto_3

    .line 189
    :cond_3
    sget-boolean v5, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 191
    if-eqz v5, :cond_4

    .line 193
    const-string v5, "JobScheduler.Quota"

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string v7, " is now out of grace period"

    .line 205
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v6

    .line 212
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    goto :goto_1

    .line 216
    :catchall_1
    move-exception v0

    .line 217
    goto/16 :goto_5

    .line 219
    :cond_4
    :goto_1
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 221
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 223
    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 226
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 228
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 230
    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 233
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_5

    .line 239
    const-string v5, "JobScheduler"

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v6

    .line 256
    invoke-static {v13, v14, v5, v6}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_5
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 261
    iget-object v5, v5, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 263
    invoke-virtual {v5, v1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 266
    move-result-object v5

    .line 267
    if-eqz v5, :cond_8

    .line 269
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 272
    move-result v6

    .line 273
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 276
    move-result v7

    .line 277
    sub-int/2addr v7, v15

    .line 278
    :goto_2
    if-ltz v7, :cond_7

    .line 280
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 282
    iget-object v8, v8, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 284
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 287
    move-result-object v9

    .line 288
    check-cast v9, Ljava/lang/String;

    .line 290
    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 293
    move-result-object v8

    .line 294
    check-cast v8, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 296
    if-eqz v8, :cond_6

    .line 298
    const/4 v9, 0x0

    .line 299
    invoke-virtual {v8, v3, v4, v9}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 302
    :cond_6
    add-int/lit8 v7, v7, -0x1

    .line 304
    goto :goto_2

    .line 305
    :cond_7
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 307
    invoke-static {v3, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 314
    move-result v3

    .line 315
    if-lez v3, :cond_8

    .line 317
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 319
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 324
    :cond_8
    monitor-exit v2

    .line 325
    goto/16 :goto_c

    .line 327
    :cond_9
    :goto_3
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 329
    if-eqz v0, :cond_a

    .line 331
    const-string v0, "JobScheduler.Quota"

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    .line 335
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, " is still in grace period"

    .line 343
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_a
    monitor-exit v2

    .line 354
    goto/16 :goto_c

    .line 356
    :cond_b
    :goto_4
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 358
    if-eqz v0, :cond_c

    .line 360
    const-string v0, "JobScheduler.Quota"

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    .line 364
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, " is still allowed"

    .line 372
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object v1

    .line 379
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_c
    monitor-exit v2

    .line 383
    goto/16 :goto_c

    .line 385
    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 386
    :try_start_2
    throw v0

    .line 387
    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 389
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 393
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 396
    move-result-object v3

    .line 397
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 399
    if-eqz v4, :cond_d

    .line 401
    const-string v4, "JobScheduler.Quota"

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    .line 405
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 411
    move-result v6

    .line 412
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    const-string v6, " for "

    .line 417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static {v2, v3}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 423
    move-result-object v6

    .line 424
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    move-result-object v5

    .line 431
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_d
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 437
    move-result v4

    .line 438
    if-eq v4, v15, :cond_10

    .line 440
    const/4 v5, 0x2

    .line 441
    if-eq v4, v5, :cond_10

    .line 443
    const/4 v5, 0x7

    .line 444
    if-eq v4, v5, :cond_f

    .line 446
    const/16 v5, 0xc

    .line 448
    if-eq v4, v5, :cond_f

    .line 450
    const/16 v5, 0x9

    .line 452
    if-eq v4, v5, :cond_f

    .line 454
    const/16 v5, 0xa

    .line 456
    if-eq v4, v5, :cond_e

    .line 458
    const/16 v5, 0x17

    .line 460
    if-eq v4, v5, :cond_10

    .line 462
    const/16 v5, 0x18

    .line 464
    if-eq v4, v5, :cond_10

    .line 466
    goto/16 :goto_c

    .line 468
    :cond_e
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 470
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 472
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    .line 475
    goto/16 :goto_c

    .line 477
    :cond_f
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 479
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 481
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    .line 484
    goto/16 :goto_c

    .line 486
    :cond_10
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 488
    iget-object v4, v4, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 490
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    :try_start_3
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 493
    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 495
    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 498
    move-result-object v5

    .line 499
    check-cast v5, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 501
    if-nez v5, :cond_11

    .line 503
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 505
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 507
    invoke-direct {v5, v6, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;-><init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    .line 510
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 512
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 514
    invoke-virtual {v0, v2, v3, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    goto :goto_6

    .line 518
    :catchall_2
    move-exception v0

    .line 519
    goto :goto_7

    .line 520
    :cond_11
    :goto_6
    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->processEventLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 523
    monitor-exit v4

    .line 524
    goto/16 :goto_c

    .line 526
    :goto_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 527
    :try_start_4
    throw v0

    .line 528
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 530
    check-cast v1, Landroid/content/pm/UserPackage;

    .line 532
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 534
    if-eqz v2, :cond_12

    .line 536
    const-string v3, "JobScheduler.Quota"

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    .line 540
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 546
    const-string v6, " has reached its EJ quota."

    .line 548
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    move-result-object v4

    .line 555
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_12
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 560
    iget v4, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 562
    iget-object v6, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 564
    invoke-virtual {v3, v4, v6}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 567
    move-result-wide v3

    .line 568
    const-wide/16 v6, 0x0

    .line 570
    cmp-long v3, v3, v6

    .line 572
    if-gtz v3, :cond_15

    .line 574
    if-eqz v2, :cond_13

    .line 576
    const-string v2, "JobScheduler.Quota"

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    .line 580
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 586
    const-string v4, " has reached its EJ quota."

    .line 588
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    move-result-object v3

    .line 595
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_13
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 601
    move-result v2

    .line 602
    if-eqz v2, :cond_14

    .line 604
    const-string v2, "JobScheduler"

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    .line 608
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    move-result-object v3

    .line 621
    invoke-static {v13, v14, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_14
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 626
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 628
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 630
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 636
    move-result-wide v3

    .line 637
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 639
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 641
    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 648
    goto/16 :goto_c

    .line 650
    :cond_15
    const/4 v3, 0x4

    .line 651
    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 654
    move-result-object v3

    .line 655
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 657
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 659
    iget-object v6, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 661
    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 664
    move-result-wide v4

    .line 665
    if-eqz v2, :cond_16

    .line 667
    const-string v2, "JobScheduler.Quota"

    .line 669
    new-instance v6, Ljava/lang/StringBuilder;

    .line 671
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 677
    const-string v1, " has "

    .line 679
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 685
    const-string/jumbo v1, "ms left for EJ"

    .line 688
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    move-result-object v1

    .line 695
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_16
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 701
    goto/16 :goto_c

    .line 703
    :pswitch_4
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 705
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 707
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 710
    move-result v3

    .line 711
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 713
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 719
    move-result-wide v4

    .line 720
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 722
    iget-object v6, v6, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 724
    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 725
    const/4 v7, 0x2

    .line 726
    if-gt v1, v7, :cond_18

    .line 728
    :try_start_5
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 730
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 732
    invoke-virtual {v1, v2, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 735
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 737
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 739
    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 742
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 744
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 746
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 749
    move-result v1

    .line 750
    if-eqz v1, :cond_17

    .line 752
    monitor-exit v6

    .line 753
    goto/16 :goto_c

    .line 755
    :catchall_3
    move-exception v0

    .line 756
    goto/16 :goto_b

    .line 758
    :cond_17
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 760
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 762
    invoke-virtual {v1, v2, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 765
    move v7, v15

    .line 766
    goto :goto_9

    .line 767
    :cond_18
    const/4 v7, 0x4

    .line 768
    if-gt v1, v7, :cond_19

    .line 770
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 772
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 774
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 777
    move-result v1

    .line 778
    xor-int/2addr v1, v15

    .line 779
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 781
    iget-object v7, v7, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 783
    invoke-virtual {v7, v2, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 786
    move v7, v15

    .line 787
    goto :goto_8

    .line 788
    :cond_19
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 790
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 792
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 795
    move v1, v15

    .line 796
    const/4 v7, 0x0

    .line 797
    :goto_8
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 799
    iget-object v8, v8, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 801
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 804
    move-result v8

    .line 805
    if-eqz v8, :cond_1a

    .line 807
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 809
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 811
    add-long/2addr v9, v4

    .line 812
    iget-object v8, v8, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 814
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 817
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 819
    iget-object v8, v8, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 821
    invoke-virtual {v8, v2, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 824
    const/4 v8, 0x6

    .line 825
    const/4 v9, 0x0

    .line 826
    invoke-virtual {v0, v8, v2, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 829
    move-result-object v8

    .line 830
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 832
    iget-wide v9, v9, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 834
    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 837
    :cond_1a
    if-nez v1, :cond_1b

    .line 839
    monitor-exit v6

    .line 840
    goto/16 :goto_c

    .line 842
    :cond_1b
    :goto_9
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 844
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 846
    invoke-virtual {v1, v3}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    .line 849
    move-result v1

    .line 850
    if-gez v1, :cond_1c

    .line 852
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 854
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 856
    invoke-virtual {v1, v3}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    .line 859
    move-result v1

    .line 860
    if-ltz v1, :cond_1f

    .line 862
    :cond_1c
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 864
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 866
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 869
    move-result-object v1

    .line 870
    if-eqz v1, :cond_1f

    .line 872
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 875
    move-result v8

    .line 876
    sub-int/2addr v8, v15

    .line 877
    :goto_a
    if-ltz v8, :cond_1f

    .line 879
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 881
    iget-object v9, v9, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 883
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 886
    move-result-object v10

    .line 887
    check-cast v10, Ljava/lang/String;

    .line 889
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 892
    move-result-object v9

    .line 893
    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 895
    if-eqz v9, :cond_1d

    .line 897
    invoke-virtual {v9, v4, v5, v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 900
    :cond_1d
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 902
    iget-object v9, v9, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 904
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 907
    move-result-object v10

    .line 908
    check-cast v10, Ljava/lang/String;

    .line 910
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 913
    move-result-object v9

    .line 914
    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 916
    if-eqz v9, :cond_1e

    .line 918
    invoke-virtual {v9, v4, v5, v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 921
    :cond_1e
    add-int/lit8 v8, v8, -0x1

    .line 923
    goto :goto_a

    .line 924
    :cond_1f
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 926
    invoke-static {v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    .line 929
    move-result-object v1

    .line 930
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 933
    move-result v2

    .line 934
    if-lez v2, :cond_20

    .line 936
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 938
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 940
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 943
    :cond_20
    monitor-exit v6

    .line 944
    goto/16 :goto_c

    .line 946
    :goto_b
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 947
    :try_start_6
    throw v0

    .line 948
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 950
    check-cast v2, Ljava/lang/String;

    .line 952
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 954
    sget-boolean v3, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 956
    if-eqz v3, :cond_21

    .line 958
    const-string v3, "JobScheduler.Quota"

    .line 960
    new-instance v5, Ljava/lang/StringBuilder;

    .line 962
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 965
    invoke-static {v1, v2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 968
    move-result-object v4

    .line 969
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 975
    move-result-object v4

    .line 976
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_21
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 981
    iget-object v3, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 983
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 985
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 988
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 991
    move-result-wide v4

    .line 992
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 995
    move-result-object v0

    .line 996
    invoke-virtual {v3, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 999
    goto/16 :goto_c

    .line 1001
    :pswitch_6
    sget-boolean v1, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 1003
    if-eqz v1, :cond_22

    .line 1005
    const-string v1, "JobScheduler.Quota"

    .line 1007
    const-string v2, "Cleaning up timing sessions."

    .line 1009
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_22
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1014
    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController;->deleteObsoleteSessionsLocked()V

    .line 1017
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1019
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1022
    goto/16 :goto_c

    .line 1024
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1026
    check-cast v1, Landroid/content/pm/UserPackage;

    .line 1028
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 1030
    if-eqz v4, :cond_23

    .line 1032
    const-string v5, "JobScheduler.Quota"

    .line 1034
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1036
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1042
    const-string v3, " has reached its quota."

    .line 1044
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1050
    move-result-object v3

    .line 1051
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_23
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1056
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 1058
    iget-object v6, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 1060
    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;)J

    .line 1063
    move-result-wide v5

    .line 1064
    const-wide/16 v7, 0x32

    .line 1066
    cmp-long v3, v5, v7

    .line 1068
    if-gtz v3, :cond_26

    .line 1070
    if-eqz v4, :cond_24

    .line 1072
    const-string v3, "JobScheduler.Quota"

    .line 1074
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1076
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1082
    const-string v5, " has reached its quota."

    .line 1084
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1090
    move-result-object v4

    .line 1091
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_24
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 1097
    move-result v3

    .line 1098
    if-eqz v3, :cond_25

    .line 1100
    const-string v3, "JobScheduler"

    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1116
    move-result-object v2

    .line 1117
    invoke-static {v13, v14, v3, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_25
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1122
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 1124
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 1126
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1132
    move-result-wide v3

    .line 1133
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 1135
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 1137
    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 1140
    move-result-object v0

    .line 1141
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 1144
    goto :goto_c

    .line 1145
    :cond_26
    const/4 v2, 0x0

    .line 1146
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1149
    move-result-object v2

    .line 1150
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1152
    iget v5, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 1154
    iget-object v6, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 1156
    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    .line 1159
    move-result-wide v5

    .line 1160
    if-eqz v4, :cond_27

    .line 1162
    const-string v3, "JobScheduler.Quota"

    .line 1164
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1166
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1169
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1172
    const-string v1, " has "

    .line 1174
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1180
    const-string/jumbo v1, "ms left."

    .line 1183
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1189
    move-result-object v1

    .line 1190
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_27
    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1196
    :goto_c
    monitor-exit v11

    .line 1197
    return-void

    .line 1198
    :goto_d
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1199
    throw v0

    .line 1200
    nop

    .line 1201
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
