.class public final Lcom/android/server/alarm/AlarmManagerService$4;
.super Landroid/app/IAlarmManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final canScheduleExactAlarms(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 18
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    const-wide/16 v3, 0x0

    .line 22
    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 25
    move-result v2

    .line 26
    if-ne v0, v2, :cond_3

    .line 28
    invoke-static {v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(ILjava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-nez v0, :cond_0

    .line 35
    return v1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 46
    invoke-virtual {v0, v2, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 52
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 54
    invoke-virtual {p0, v2, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(ILjava/lang/String;)Z

    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x0

    .line 62
    :cond_2
    :goto_0
    return v1

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 65
    const-string v1, "Uid "

    .line 67
    const-string v2, " cannot query canScheduleExactAlarms for package "

    .line 69
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 9
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v3

    .line 13
    const-string v4, "AlarmManager"

    .line 15
    invoke-static {v3, v4, v1}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    array-length v3, v2

    .line 23
    if-lez v3, :cond_1a

    .line 25
    const-string v3, "--proto"

    .line 27
    const/4 v4, 0x0

    .line 28
    aget-object v2, v2, v4

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1a

    .line 36
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 43
    move-object/from16 v2, p1

    .line 45
    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 48
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 50
    monitor-enter v2

    .line 51
    :try_start_0
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    move-result-wide v5

    .line 60
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    move-result-wide v11

    .line 69
    const-wide v7, 0x10300000001L

    .line 74
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 77
    const-wide v5, 0x10300000002L

    .line 82
    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 85
    iget-wide v9, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 87
    const-wide v13, 0x10300000003L

    .line 92
    invoke-virtual {v1, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 95
    iget-wide v9, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 97
    const-wide v13, 0x10300000004L

    .line 102
    invoke-virtual {v1, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 105
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-wide v9, 0x10b00000005L

    .line 115
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 118
    move-result-wide v9

    .line 119
    iget-wide v13, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 121
    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 124
    iget-wide v7, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 126
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 129
    iget-wide v5, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 131
    const-wide v7, 0x10300000007L

    .line 136
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 139
    iget-wide v5, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 141
    const-wide v7, 0x10300000003L

    .line 146
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 149
    iget-wide v5, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 151
    const-wide v7, 0x10300000006L

    .line 156
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 159
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 162
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 164
    if-eqz v3, :cond_1

    .line 166
    const-wide v5, 0x10b00000006L

    .line 171
    invoke-virtual {v3, v1, v5, v6}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 174
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    goto/16 :goto_12

    .line 178
    :cond_1
    :goto_0
    iget-boolean v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 180
    const-wide v5, 0x10800000007L

    .line 185
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 188
    iget-boolean v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 190
    if-nez v3, :cond_2

    .line 192
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 194
    sub-long v5, v11, v5

    .line 196
    const-wide v7, 0x10300000008L

    .line 201
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 204
    invoke-virtual {v0, v11, v12}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    .line 207
    move-result-wide v5

    .line 208
    const-wide v7, 0x10300000009L

    .line 213
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 216
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 218
    sub-long v5, v11, v5

    .line 220
    const-wide v7, 0x1030000000aL

    .line 225
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 228
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 230
    sub-long v5, v11, v5

    .line 232
    const-wide v7, 0x1030000000bL

    .line 237
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 240
    :cond_2
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 242
    sub-long/2addr v5, v11

    .line 243
    const-wide v7, 0x1030000000cL

    .line 248
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 251
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 253
    sub-long/2addr v5, v11

    .line 254
    const-wide v7, 0x1030000000dL

    .line 259
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 262
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    .line 264
    sub-long v5, v11, v5

    .line 266
    const-wide v7, 0x1030000000eL

    .line 271
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 274
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 276
    sub-long v5, v11, v5

    .line 278
    const-wide v7, 0x1030000000fL

    .line 283
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 286
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    .line 288
    const-wide v5, 0x10300000010L

    .line 293
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 296
    new-instance v3, Ljava/util/TreeSet;

    .line 298
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 301
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 303
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 306
    move-result v5

    .line 307
    move v6, v4

    .line 308
    :goto_1
    if-ge v6, v5, :cond_3

    .line 310
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 312
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 315
    move-result v7

    .line 316
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    move-result-object v7

    .line 320
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v6, v6, 0x1

    .line 325
    goto :goto_1

    .line 326
    :cond_3
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 328
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    .line 331
    move-result v5

    .line 332
    move v6, v4

    .line 333
    :goto_2
    if-ge v6, v5, :cond_4

    .line 335
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 337
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 340
    move-result v7

    .line 341
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    move-result-object v7

    .line 345
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v6, v6, 0x1

    .line 350
    goto :goto_2

    .line 351
    :cond_4
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 354
    move-result-object v3

    .line 355
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    move-result v5

    .line 359
    const-wide v13, 0x10500000001L

    .line 364
    if-eqz v5, :cond_6

    .line 366
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    move-result-object v5

    .line 370
    check-cast v5, Ljava/lang/Integer;

    .line 372
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 375
    move-result v5

    .line 376
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 378
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 381
    move-result-object v6

    .line 382
    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 384
    if-eqz v6, :cond_5

    .line 386
    invoke-virtual {v6}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 389
    move-result-wide v6

    .line 390
    goto :goto_4

    .line 391
    :cond_5
    const-wide/16 v6, 0x0

    .line 393
    :goto_4
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 395
    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 398
    move-result v8

    .line 399
    const-wide v9, 0x20b00000012L

    .line 404
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 407
    move-result-wide v9

    .line 408
    invoke-virtual {v1, v13, v14, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 411
    const-wide v13, 0x10800000002L

    .line 416
    invoke-virtual {v1, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 419
    const-wide v13, 0x10300000003L

    .line 424
    invoke-virtual {v1, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 427
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 430
    goto :goto_3

    .line 431
    :cond_6
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 433
    iget-object v3, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 435
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 438
    move-result-object v3

    .line 439
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    move-result v5

    .line 443
    if-eqz v5, :cond_7

    .line 445
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 448
    move-result-object v5

    .line 449
    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 451
    const-wide v7, 0x20b0000002aL

    .line 456
    move-object v6, v1

    .line 457
    move-wide v9, v11

    .line 458
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 461
    goto :goto_5

    .line 462
    :cond_7
    move v3, v4

    .line 463
    :goto_6
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 465
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 468
    move-result v5

    .line 469
    if-ge v3, v5, :cond_9

    .line 471
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 473
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 476
    move-result-object v5

    .line 477
    check-cast v5, Ljava/util/ArrayList;

    .line 479
    if-eqz v5, :cond_8

    .line 481
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 484
    move-result-object v15

    .line 485
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 488
    move-result v5

    .line 489
    if-eqz v5, :cond_8

    .line 491
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 494
    move-result-object v5

    .line 495
    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 497
    const-wide v7, 0x20b00000014L

    .line 502
    move-object v6, v1

    .line 503
    move-wide v9, v11

    .line 504
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 507
    goto :goto_7

    .line 508
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 510
    goto :goto_6

    .line 511
    :cond_9
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 513
    if-eqz v5, :cond_a

    .line 515
    const-wide v7, 0x10b00000015L

    .line 520
    move-object v6, v1

    .line 521
    move-wide v9, v11

    .line 522
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 525
    :cond_a
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 527
    if-eqz v5, :cond_b

    .line 529
    const-wide v7, 0x10b00000017L

    .line 534
    move-object v6, v1

    .line 535
    move-wide v9, v11

    .line 536
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 539
    :cond_b
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 544
    move-result-object v3

    .line 545
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 548
    move-result v5

    .line 549
    if-eqz v5, :cond_c

    .line 551
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 554
    move-result-object v5

    .line 555
    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 557
    const-wide v7, 0x20b00000018L

    .line 562
    move-object v6, v1

    .line 563
    move-wide v9, v11

    .line 564
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 567
    goto :goto_8

    .line 568
    :cond_c
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 570
    const-wide v5, 0x10500000019L

    .line 575
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 578
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 580
    const-wide v7, 0x1030000001aL

    .line 585
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 588
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 590
    const-wide v7, 0x1030000001bL

    .line 595
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 598
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 600
    const-wide v7, 0x1030000001cL

    .line 605
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 608
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 610
    const-wide v5, 0x1050000001dL

    .line 615
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 618
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 620
    const-wide v5, 0x1050000001eL

    .line 625
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 628
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 630
    const-wide v5, 0x1050000001fL

    .line 635
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 638
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 640
    const-wide v5, 0x10500000020L

    .line 645
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 648
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 650
    const-wide v5, 0x10500000021L

    .line 655
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 658
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 660
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 663
    move-result-object v3

    .line 664
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 667
    move-result v5

    .line 668
    if-eqz v5, :cond_d

    .line 670
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 673
    move-result-object v5

    .line 674
    check-cast v5, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 676
    invoke-virtual {v5, v1}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 679
    goto :goto_9

    .line 680
    :cond_d
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 682
    const-wide v5, 0x10b00000025L

    .line 687
    invoke-virtual {v3, v1, v5, v6}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 690
    const/16 v3, 0xa

    .line 692
    new-array v5, v3, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 694
    new-instance v6, Lcom/android/server/alarm/AlarmManagerService$5;

    .line 696
    const/4 v7, 0x1

    .line 697
    invoke-direct {v6, v0, v7}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 700
    move v7, v4

    .line 701
    move v8, v7

    .line 702
    :goto_a
    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 704
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 707
    move-result v9

    .line 708
    if-ge v7, v9, :cond_14

    .line 710
    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 712
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 715
    move-result-object v9

    .line 716
    check-cast v9, Landroid/util/ArrayMap;

    .line 718
    move v10, v4

    .line 719
    :goto_b
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 722
    move-result v11

    .line 723
    if-ge v10, v11, :cond_13

    .line 725
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 728
    move-result-object v11

    .line 729
    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 731
    move v12, v4

    .line 732
    :goto_c
    iget-object v15, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 734
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 737
    move-result v15

    .line 738
    if-ge v12, v15, :cond_12

    .line 740
    iget-object v15, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 742
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 745
    move-result-object v15

    .line 746
    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 748
    if-lez v8, :cond_e

    .line 750
    invoke-static {v5, v4, v8, v15, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    .line 753
    move-result v16

    .line 754
    move/from16 v4, v16

    .line 756
    :cond_e
    if-gez v4, :cond_f

    .line 758
    neg-int v4, v4

    .line 759
    add-int/lit8 v4, v4, -0x1

    .line 761
    :cond_f
    if-ge v4, v3, :cond_11

    .line 763
    rsub-int/lit8 v13, v4, 0x9

    .line 765
    if-lez v13, :cond_10

    .line 767
    add-int/lit8 v14, v4, 0x1

    .line 769
    invoke-static {v5, v4, v5, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    :cond_10
    aput-object v15, v5, v4

    .line 774
    if-ge v8, v3, :cond_11

    .line 776
    add-int/lit8 v8, v8, 0x1

    .line 778
    :cond_11
    add-int/lit8 v12, v12, 0x1

    .line 780
    const/4 v4, 0x0

    .line 781
    const-wide v13, 0x10500000001L

    .line 786
    goto :goto_c

    .line 787
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 789
    const/4 v4, 0x0

    .line 790
    const-wide v13, 0x10500000001L

    .line 795
    goto :goto_b

    .line 796
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 798
    const/4 v4, 0x0

    .line 799
    const-wide v13, 0x10500000001L

    .line 804
    goto :goto_a

    .line 805
    :cond_14
    const/4 v3, 0x0

    .line 806
    :goto_d
    if-ge v3, v8, :cond_15

    .line 808
    const-wide v9, 0x20b00000026L

    .line 813
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 816
    move-result-wide v9

    .line 817
    aget-object v4, v5, v3

    .line 819
    iget-object v7, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 821
    iget v7, v7, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    .line 823
    const-wide v11, 0x10500000001L

    .line 828
    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 831
    iget-object v7, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 833
    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    .line 835
    const-wide v13, 0x10900000002L

    .line 840
    invoke-virtual {v1, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 843
    const-wide v13, 0x10b00000003L

    .line 848
    invoke-virtual {v4, v1, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 851
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 854
    add-int/lit8 v3, v3, 0x1

    .line 856
    goto :goto_d

    .line 857
    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    .line 859
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 862
    const/4 v4, 0x0

    .line 863
    :goto_e
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 865
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 868
    move-result v5

    .line 869
    if-ge v4, v5, :cond_19

    .line 871
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 873
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 876
    move-result-object v5

    .line 877
    check-cast v5, Landroid/util/ArrayMap;

    .line 879
    const/4 v7, 0x0

    .line 880
    :goto_f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 883
    move-result v8

    .line 884
    if-ge v7, v8, :cond_18

    .line 886
    const-wide v8, 0x20b00000027L

    .line 891
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 894
    move-result-wide v8

    .line 895
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 898
    move-result-object v10

    .line 899
    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 901
    const-wide v11, 0x10b00000001L

    .line 906
    invoke-virtual {v10, v1, v11, v12}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 909
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 912
    const/4 v11, 0x0

    .line 913
    :goto_10
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 915
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 918
    move-result v12

    .line 919
    if-ge v11, v12, :cond_16

    .line 921
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 923
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 926
    move-result-object v12

    .line 927
    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 929
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    add-int/lit8 v11, v11, 0x1

    .line 934
    goto :goto_10

    .line 935
    :cond_16
    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 938
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 941
    move-result-object v10

    .line 942
    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 945
    move-result v11

    .line 946
    if-eqz v11, :cond_17

    .line 948
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 951
    move-result-object v11

    .line 952
    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 954
    const-wide v12, 0x20b00000002L

    .line 959
    invoke-virtual {v11, v1, v12, v13}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 962
    goto :goto_11

    .line 963
    :cond_17
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 966
    add-int/lit8 v7, v7, 0x1

    .line 968
    goto :goto_f

    .line 969
    :cond_18
    add-int/lit8 v4, v4, 0x1

    .line 971
    goto :goto_e

    .line 972
    :cond_19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 976
    goto :goto_13

    .line 977
    :goto_12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    throw v0

    .line 979
    :cond_1a
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 981
    new-instance v2, Landroid/util/IndentingPrintWriter;

    .line 983
    const-string v3, "  "

    .line 985
    invoke-direct {v2, v1, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->dumpImpl(Landroid/util/IndentingPrintWriter;)V

    .line 991
    :goto_13
    return-void
.end method

.method public final getConfigVersion()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->getConfigVersion_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 6
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 8
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 10
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 15
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v3

    .line 13
    const-string/jumbo v7, "getNextAlarmClock"

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    move v4, p1

    .line 20
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 23
    move-result p1

    .line 24
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 26
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 37
    monitor-exit v0

    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final getNextAlarmClocks(I)Ljava/util/List;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 9
    if-ne v0, v2, :cond_3

    .line 11
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    move-result v4

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    move-result v5

    .line 21
    const-string/jumbo v9, "getNextAlarmClock"

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    move v6, p1

    .line 28
    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 31
    move-result p1

    .line 32
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 34
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 51
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object p0

    .line 61
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 73
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 75
    if-eqz v3, :cond_0

    .line 77
    iget v3, v2, Lcom/android/server/alarm/Alarm;->uid:I

    .line 79
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 82
    move-result v3

    .line 83
    if-eq v3, p1, :cond_1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, v2, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    monitor-exit v0

    .line 95
    return-object v1

    .line 96
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0

    .line 98
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    const-string p1, "Permission Denial : getNextAlarmClocks from pid="

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string p1, ", uid="

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 120
    move-result p1

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    const-string p1, "AlarmManager"

    .line 130
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance p1, Ljava/lang/SecurityException;

    .line 135
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p1
.end method

.method public final getNextWakeFromIdleTime()J
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 18
    :goto_0
    monitor-exit v0

    .line 19
    return-wide v1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final hasScheduleExactAlarm(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result v1

    .line 16
    if-eq v1, p2, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 20
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 26
    const-string/jumbo v3, "hasScheduleExactAlarm"

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 34
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 36
    const-wide/16 v2, 0x0

    .line 38
    invoke-virtual {v1, p1, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 41
    move-result p2

    .line 42
    if-eq v0, p2, :cond_2

    .line 44
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 53
    const-string p2, "Uid "

    .line 55
    const-string v1, " cannot query hasScheduleExactAlarm for package "

    .line 57
    invoke-static {v0, p2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 65
    :cond_2
    :goto_0
    if-lez p2, :cond_3

    .line 67
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 69
    invoke-virtual {p0, p2, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    .line 72
    move-result p0

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 p0, 0x0

    .line 75
    :goto_1
    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;

    .line 3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 18
    return-void
.end method

.method public final remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    if-nez p2, :cond_0

    .line 5
    const-string p0, "AlarmManager"

    .line 7
    const-string/jumbo p1, "remove() with no intent or listener"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 16
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final removeAll(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x3e8

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    const-string p0, "AlarmManager"

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "Attempt to remove all alarms from the system uid package: "

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 38
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 40
    const-wide/16 v2, 0x0

    .line 42
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 45
    move-result v4

    .line 46
    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 49
    move-result v1

    .line 50
    if-ne v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 54
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 56
    monitor-enter v1

    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 59
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;

    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-direct {v2, v0, v3, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;-><init>(IILjava/lang/Object;)V

    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 76
    const-string v1, "Package "

    .line 78
    const-string v2, " does not belong to the calling uid "

    .line 80
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0
.end method

.method public final set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v15, p1

    .line 5
    move/from16 v12, p2

    .line 7
    move-wide/from16 v13, p3

    .line 9
    const/16 v16, 0x4

    .line 11
    const/4 v11, 0x2

    .line 12
    const/16 v17, 0x1

    .line 14
    const-string v9, "alarmException: "

    .line 16
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 18
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    move-result v10

    .line 27
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    move-result v7

    .line 31
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 33
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    .line 35
    if-eqz v2, :cond_1

    .line 37
    move/from16 v3, p2

    .line 39
    move v4, v10

    .line 40
    move-wide/from16 v5, p3

    .line 42
    move v13, v7

    .line 43
    move-wide/from16 v7, p5

    .line 45
    move-object/from16 v18, v9

    .line 47
    move v14, v10

    .line 48
    move-wide/from16 v9, p7

    .line 50
    move-object/from16 v11, p1

    .line 52
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/alarm/AppSyncWrapper;->isAdjustableAlarm(IIJJJLjava/lang/String;)Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 58
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 60
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    .line 62
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncWrapper;->getWindowLength()J

    .line 65
    move-result-wide v2

    .line 66
    const-string v0, "AppSyncInfo"

    .line 68
    const-string v4, "Sync window "

    .line 70
    const-string v5, " --->> "

    .line 72
    move-wide/from16 v6, p5

    .line 74
    invoke-static {v4, v6, v7, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    const-string v5, " for alarm by <"

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v5, ", "

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v5, ">."

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    goto :goto_2

    .line 110
    :cond_0
    :goto_0
    move-wide/from16 v6, p5

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    move v13, v7

    .line 114
    move-object/from16 v18, v9

    .line 116
    move v14, v10

    .line 117
    goto :goto_0

    .line 118
    :goto_1
    move-wide v2, v6

    .line 119
    :goto_2
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 121
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 123
    const-wide/16 v4, 0x0

    .line 125
    invoke-virtual {v0, v15, v4, v5, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 128
    move-result v0

    .line 129
    if-ne v14, v0, :cond_25

    .line 131
    cmp-long v0, p7, v4

    .line 133
    if-eqz v0, :cond_3

    .line 135
    if-nez p11, :cond_2

    .line 137
    goto :goto_3

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    const-string v1, "Repeating alarms cannot use AlarmReceivers"

    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    throw v0

    .line 146
    :cond_3
    :goto_3
    if-eqz p13, :cond_4

    .line 148
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 150
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 153
    move-result-object v0

    .line 154
    const-string v6, "android.permission.UPDATE_DEVICE_STATS"

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 159
    move-result v7

    .line 160
    const-string v8, "AlarmManager.set"

    .line 162
    invoke-virtual {v0, v6, v7, v14, v8}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 165
    :cond_4
    and-int/lit8 v0, p9, 0x10

    .line 167
    if-eqz v0, :cond_6

    .line 169
    const/16 v0, 0x3e8

    .line 171
    if-eq v14, v0, :cond_5

    .line 173
    and-int/lit8 v0, p9, -0x11

    .line 175
    move-wide v6, v2

    .line 176
    move v2, v0

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move/from16 v2, p9

    .line 180
    move-wide v6, v4

    .line 181
    goto :goto_4

    .line 182
    :cond_6
    move-wide v6, v2

    .line 183
    move/from16 v2, p9

    .line 185
    :goto_4
    and-int/lit8 v0, v2, 0x10

    .line 187
    const/4 v3, 0x0

    .line 188
    if-nez v0, :cond_7

    .line 190
    if-nez p14, :cond_7

    .line 192
    cmp-long v0, v6, v4

    .line 194
    if-nez v0, :cond_7

    .line 196
    const/4 v9, 0x2

    .line 197
    if-eq v12, v9, :cond_8

    .line 199
    if-nez v12, :cond_7

    .line 201
    goto :goto_5

    .line 202
    :cond_7
    move-wide/from16 v3, p3

    .line 204
    move/from16 v20, v13

    .line 206
    goto/16 :goto_d

    .line 208
    :cond_8
    :goto_5
    if-eqz p10, :cond_9

    .line 210
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 214
    move-object v10, v0

    .line 215
    goto :goto_6

    .line 216
    :cond_9
    move-object v10, v15

    .line 217
    :goto_6
    if-eqz p10, :cond_b

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 222
    move-result-wide v19

    .line 223
    :try_start_0
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 226
    move-result-object v0

    .line 227
    if-eqz v0, :cond_a

    .line 229
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 236
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    goto :goto_7

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    goto :goto_9

    .line 240
    :catch_0
    move-exception v0

    .line 241
    goto :goto_8

    .line 242
    :cond_a
    move-object v0, v3

    .line 243
    :goto_7
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    goto :goto_b

    .line 247
    :goto_8
    :try_start_1
    const-string v11, "AlarmManager"

    .line 249
    new-instance v8, Ljava/lang/StringBuilder;

    .line 251
    move-object/from16 v9, v18

    .line 253
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v0

    .line 267
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    goto :goto_a

    .line 274
    :goto_9
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    throw v0

    .line 278
    :cond_b
    :goto_a
    move-object v0, v3

    .line 279
    :goto_b
    sget-boolean v8, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 281
    sget-object v8, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 283
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    .line 288
    if-nez v8, :cond_c

    .line 290
    const/4 v8, 0x0

    .line 291
    goto :goto_c

    .line 292
    :cond_c
    sget-object v8, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 294
    sget-object v8, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 296
    const/16 v9, 0x19

    .line 298
    invoke-virtual {v8, v9, v10, v3, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    move-result v8

    .line 302
    :goto_c
    if-eqz v8, :cond_7

    .line 304
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 306
    move-wide/from16 v3, p3

    .line 308
    move v5, v13

    .line 309
    invoke-virtual {v8, v12, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(IJ)J

    .line 312
    move-result-wide v8

    .line 313
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 315
    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 317
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 323
    move-result-wide v20

    .line 324
    sub-long v8, v8, v20

    .line 326
    const-wide/16 v20, 0x2

    .line 328
    div-long v8, v8, v20

    .line 330
    const-wide/16 v18, 0x0

    .line 332
    cmp-long v11, v8, v18

    .line 334
    if-lez v11, :cond_d

    .line 336
    sub-long v6, v3, v8

    .line 338
    const-string v11, "AlarmManager"

    .line 340
    const-string/jumbo v13, "force change alarm method to setWindow() callingUid="

    .line 343
    const-string v12, ", sourcePackage="

    .line 345
    move/from16 v20, v5

    .line 347
    const-string v5, ", action="

    .line 349
    invoke-static {v14, v13, v12, v10, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    move-result-object v5

    .line 353
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v0, ", origTriggerAtTime="

    .line 358
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 364
    const-string v0, ", triggerAtTime="

    .line 366
    const-string v3, ", windowLength="

    .line 368
    invoke-static {v5, v0, v6, v7, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 371
    invoke-static {v5, v8, v9, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 374
    move-wide v3, v6

    .line 375
    move-wide v6, v8

    .line 376
    goto :goto_d

    .line 377
    :cond_d
    move/from16 v20, v5

    .line 379
    :goto_d
    and-int/lit8 v0, v2, -0x2b

    .line 381
    if-eqz p14, :cond_e

    .line 383
    const/4 v2, 0x2

    .line 384
    or-int/2addr v0, v2

    .line 385
    const-wide/16 v5, 0x0

    .line 387
    goto :goto_f

    .line 388
    :cond_e
    const/4 v2, 0x2

    .line 389
    if-nez p13, :cond_10

    .line 391
    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    .line 394
    move-result v5

    .line 395
    if-nez v5, :cond_f

    .line 397
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 399
    iget v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 401
    invoke-static {v14, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 404
    move-result v5

    .line 405
    if-nez v5, :cond_f

    .line 407
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 409
    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 411
    if-eqz v5, :cond_10

    .line 413
    iget-object v8, v5, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 415
    monitor-enter v8

    .line 416
    :try_start_2
    iget-object v5, v5, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 418
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    .line 421
    move-result v9

    .line 422
    invoke-static {v5, v9}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 425
    move-result v5

    .line 426
    monitor-exit v8

    .line 427
    if-eqz v5, :cond_10

    .line 429
    goto :goto_e

    .line 430
    :catchall_1
    move-exception v0

    .line 431
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 432
    throw v0

    .line 433
    :cond_f
    :goto_e
    or-int/lit8 v0, v0, 0x8

    .line 435
    and-int/lit8 v0, v0, -0x45

    .line 437
    :cond_10
    move-wide v5, v6

    .line 438
    :goto_f
    and-int/lit8 v7, v0, 0x4

    .line 440
    if-eqz v7, :cond_11

    .line 442
    move/from16 v9, v17

    .line 444
    const-wide/16 v7, 0x0

    .line 446
    goto :goto_10

    .line 447
    :cond_11
    const-wide/16 v7, 0x0

    .line 449
    const/4 v9, 0x0

    .line 450
    :goto_10
    cmp-long v7, v5, v7

    .line 452
    if-nez v7, :cond_12

    .line 454
    move/from16 v7, v17

    .line 456
    goto :goto_11

    .line 457
    :cond_12
    const/4 v7, 0x0

    .line 458
    :goto_11
    and-int/lit8 v8, v0, 0x40

    .line 460
    const/4 v11, -0x1

    .line 461
    if-eqz v8, :cond_14

    .line 463
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 465
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 468
    move-result-object v2

    .line 469
    const-string v8, "android.permission.SCHEDULE_PRIORITIZED_ALARM"

    .line 471
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 474
    move-result v9

    .line 475
    const-string v10, "AlarmManager.setPrioritized"

    .line 477
    invoke-virtual {v2, v8, v9, v14, v10}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 480
    and-int/lit8 v0, v0, -0x5

    .line 482
    if-eqz v7, :cond_13

    .line 484
    const/4 v2, 0x5

    .line 485
    move/from16 v19, v2

    .line 487
    :goto_12
    const/16 v18, 0x0

    .line 489
    goto/16 :goto_1b

    .line 491
    :cond_13
    move/from16 v19, v11

    .line 493
    goto :goto_12

    .line 494
    :cond_14
    if-nez v7, :cond_15

    .line 496
    if-eqz v9, :cond_13

    .line 498
    :cond_15
    move/from16 v8, v20

    .line 500
    invoke-static {v8, v15}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(ILjava/lang/String;)Z

    .line 503
    move-result v8

    .line 504
    if-eqz v8, :cond_1a

    .line 506
    if-nez p11, :cond_16

    .line 508
    xor-int/lit8 v2, v7, 0x1

    .line 510
    move v8, v7

    .line 511
    move/from16 v16, v11

    .line 513
    goto :goto_14

    .line 514
    :cond_16
    move v2, v9

    .line 515
    if-eqz v7, :cond_17

    .line 517
    :goto_13
    const/4 v8, 0x0

    .line 518
    goto :goto_14

    .line 519
    :cond_17
    move/from16 v16, v11

    .line 521
    goto :goto_13

    .line 522
    :goto_14
    if-eqz v7, :cond_19

    .line 524
    if-eqz p14, :cond_18

    .line 526
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 528
    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    .line 530
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 533
    move-result-object v10

    .line 534
    goto :goto_15

    .line 535
    :cond_18
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 537
    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 539
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 542
    move-result-object v10

    .line 543
    :goto_15
    move/from16 v11, v16

    .line 545
    goto :goto_18

    .line 546
    :cond_19
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 548
    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 550
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 553
    move-result-object v10

    .line 554
    goto :goto_15

    .line 555
    :cond_1a
    if-nez v9, :cond_1c

    .line 557
    if-eqz p14, :cond_1b

    .line 559
    goto :goto_16

    .line 560
    :cond_1b
    const/4 v10, 0x0

    .line 561
    goto :goto_17

    .line 562
    :cond_1c
    :goto_16
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 564
    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 566
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 569
    move-result-object v8

    .line 570
    move-object v10, v8

    .line 571
    :goto_17
    if-eqz v7, :cond_1d

    .line 573
    move v11, v2

    .line 574
    :cond_1d
    move v2, v9

    .line 575
    const/4 v8, 0x0

    .line 576
    :goto_18
    if-eqz v8, :cond_22

    .line 578
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 580
    invoke-virtual {v8, v14, v15}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(ILjava/lang/String;)Z

    .line 583
    move-result v8

    .line 584
    if-eqz v8, :cond_1e

    .line 586
    const/4 v8, 0x3

    .line 587
    move v9, v2

    .line 588
    goto :goto_1a

    .line 589
    :cond_1e
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 591
    invoke-virtual {v8, v14, v15}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    .line 594
    move-result v8

    .line 595
    if-eqz v8, :cond_1f

    .line 597
    move v9, v2

    .line 598
    const/4 v8, 0x0

    .line 599
    goto :goto_1a

    .line 600
    :cond_1f
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 602
    invoke-virtual {v2, v14}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    .line 605
    move-result v2

    .line 606
    if-eqz v2, :cond_21

    .line 608
    if-eqz v9, :cond_20

    .line 610
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 612
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 614
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 617
    move-result-object v2

    .line 618
    goto :goto_19

    .line 619
    :cond_20
    const/4 v2, 0x0

    .line 620
    :goto_19
    move-object v10, v2

    .line 621
    move/from16 v8, v17

    .line 623
    goto :goto_1a

    .line 624
    :cond_21
    const-string v0, "Caller "

    .line 626
    const-string v1, " needs to hold android.permission.SCHEDULE_EXACT_ALARM or android.permission.USE_EXACT_ALARM to set exact alarms."

    .line 628
    invoke-static {v0, v15, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 631
    move-result-object v0

    .line 632
    new-instance v1, Ljava/lang/SecurityException;

    .line 634
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 637
    throw v1

    .line 638
    :cond_22
    move v9, v2

    .line 639
    move v8, v11

    .line 640
    :goto_1a
    if-eqz v9, :cond_23

    .line 642
    and-int/lit8 v0, v0, -0x5

    .line 644
    or-int/lit8 v0, v0, 0x20

    .line 646
    :cond_23
    move/from16 v19, v8

    .line 648
    move-object/from16 v18, v10

    .line 650
    :goto_1b
    if-eqz v7, :cond_24

    .line 652
    or-int/lit8 v0, v0, 0x1

    .line 654
    :cond_24
    move v12, v0

    .line 655
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 657
    move/from16 v2, p2

    .line 659
    move-wide/from16 v7, p7

    .line 661
    move-object/from16 v9, p10

    .line 663
    move-object/from16 v10, p11

    .line 665
    move-object/from16 v11, p12

    .line 667
    move-object/from16 v13, p13

    .line 669
    move/from16 p0, v14

    .line 671
    move-object/from16 v14, p14

    .line 673
    move/from16 v15, p0

    .line 675
    move-object/from16 v16, p1

    .line 677
    move-object/from16 v17, v18

    .line 679
    move/from16 v18, v19

    .line 681
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 684
    return-void

    .line 685
    :cond_25
    move/from16 p0, v14

    .line 687
    new-instance v0, Ljava/lang/SecurityException;

    .line 689
    const-string v1, "Package "

    .line 691
    const-string v2, " does not belong to the calling uid "

    .line 693
    move/from16 v4, p0

    .line 695
    move-object/from16 v3, p1

    .line 697
    invoke-static {v4, v1, v3, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    move-result-object v1

    .line 701
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 704
    throw v0
.end method

.method public final setAutoPowerUp(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->setAutoPowerUp_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 6
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 8
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    cmp-long p0, v0, v2

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-static {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smsetBootAlarm(JLjava/lang/String;)V

    .line 19
    :cond_0
    return-void
.end method

.method public final setTime(J)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->setTime_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x2710

    .line 10
    if-lt v0, v1, :cond_0

    .line 12
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x4e1f

    .line 18
    if-gt v0, v1, :cond_0

    .line 20
    :try_start_0
    const-string/jumbo v0, "date_time_policy"

    .line 23
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 35
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    .line 38
    move-result v2

    .line 39
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 42
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 48
    const-string v0, "AlarmManager"

    .line 50
    const-string v1, "Not setting time since EDM doesn\'t allow date & time change."

    .line 52
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 p0, 0x0

    .line 56
    return p0

    .line 57
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 59
    const-string v0, "AlarmManager.setTime() called"

    .line 61
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 63
    monitor-enter v1

    .line 64
    :try_start_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    const/16 p0, 0x64

    .line 71
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/SystemClockTime;->setTimeAndConfidence(ILjava/lang/String;J)V

    .line 74
    monitor-exit v1

    .line 75
    const/4 p0, 0x1

    .line 76
    return p0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public final setTimeZone(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->setTimeZone_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x2710

    .line 10
    if-lt v0, v1, :cond_0

    .line 12
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x4e1f

    .line 18
    if-gt v0, v1, :cond_0

    .line 20
    :try_start_0
    const-string/jumbo v0, "date_time_policy"

    .line 23
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 35
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    .line 38
    move-result v2

    .line 39
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 42
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 45
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    if-nez v0, :cond_0

    .line 48
    return-void

    .line 49
    :catch_0
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    move-result-wide v0

    .line 53
    :try_start_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 55
    const-string v2, "AlarmManager.setTimeZone() called"

    .line 57
    const/16 v3, 0x64

    .line 59
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p0
.end method
