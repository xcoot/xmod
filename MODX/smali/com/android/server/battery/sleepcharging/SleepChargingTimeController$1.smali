.class public final Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 3
    sget-object v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "[sct_handleMessage]msg:"

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget v2, v0, Landroid/os/Message;->what:I

    .line 14
    const-string v3, "[SS]SleepChargingTimeController"

    .line 16
    invoke-static {v1, v2, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 19
    iget v0, v0, Landroid/os/Message;->what:I

    .line 21
    const/16 v1, 0x1c

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    move-object/from16 v6, p0

    .line 28
    iget-object v6, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 30
    packed-switch v0, :pswitch_data_0

    .line 33
    goto/16 :goto_14

    .line 35
    :pswitch_0
    iput-boolean v5, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 37
    invoke-virtual {v6, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 40
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    goto/16 :goto_14

    .line 47
    :pswitch_1
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 49
    iput-boolean v4, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 51
    invoke-virtual {v6, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 54
    iput-object v2, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 56
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 58
    const/16 v1, 0x15

    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    goto/16 :goto_14

    .line 65
    :pswitch_2
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 67
    iput-boolean v5, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 69
    invoke-static {v6}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    .line 72
    move-result-object v0

    .line 73
    iput-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 75
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 77
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 80
    invoke-virtual {v6, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 83
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    goto/16 :goto_14

    .line 90
    :pswitch_3
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    .line 92
    if-nez v0, :cond_0

    .line 94
    const-string v0, "alarm observer already disabled"

    .line 96
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto/16 :goto_14

    .line 101
    :cond_0
    invoke-static {v6}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    .line 104
    move-result-object v0

    .line 105
    iget-object v1, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 107
    if-nez v1, :cond_1

    .line 109
    if-nez v0, :cond_1

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    if-eqz v1, :cond_2

    .line 114
    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 122
    :goto_0
    const-string v0, "The Next Alarm Not Changed"

    .line 124
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto/16 :goto_14

    .line 129
    :cond_2
    const-string v1, "The Next Alarm Changed"

    .line 131
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "[NextAlarmChanged]"

    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    const/4 v1, 0x2

    .line 151
    invoke-static {v1, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 154
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 156
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 159
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 161
    const/16 v1, 0x1d

    .line 163
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    goto/16 :goto_14

    .line 168
    :pswitch_4
    invoke-virtual {v6, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->reset(Z)V

    .line 171
    iget-boolean v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 173
    if-eqz v0, :cond_3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "[sct_handleMessage]isEndCalled:"

    .line 179
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    iget-boolean v1, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 184
    invoke-static {v3, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 187
    return-void

    .line 188
    :cond_3
    const-string v1, "[SS]PersonalPatternManager"

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    move-result-wide v7

    .line 194
    iget-object v9, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    .line 196
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    const-string v0, "[getSleepPatterns]cursor count:"

    .line 201
    new-instance v10, Ljava/util/HashMap;

    .line 203
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 206
    new-instance v11, Landroid/os/Bundle;

    .line 208
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 211
    const-string/jumbo v12, "keyCallerPackagerName"

    .line 214
    const-string/jumbo v13, "com.android.server.BatteryService"

    .line 217
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v12, "android:query-arg-sql-sort-order"

    .line 222
    const-string/jumbo v13, "week_type"

    .line 225
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_0
    iget-object v12, v9, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 233
    move-result-object v12

    .line 234
    sget-object v14, Lcom/android/server/battery/sleepcharging/SleepPatternContract$SleepPatternInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 236
    invoke-virtual {v12, v14, v2, v11, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 239
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    if-nez v11, :cond_4

    .line 242
    :try_start_1
    const-string v0, "[getSleepPatterns]Fail - cursor null"

    .line 244
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :goto_1
    move-object/from16 v22, v6

    .line 249
    goto/16 :goto_8

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    move-object v2, v0

    .line 253
    move-object/from16 v22, v6

    .line 255
    goto/16 :goto_9

    .line 257
    :cond_4
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 260
    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 261
    if-nez v12, :cond_5

    .line 263
    :try_start_3
    const-string v0, "[getSleepPatterns]Fail - cursor empty"

    .line 265
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    goto :goto_1

    .line 269
    :cond_5
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 277
    move-result v0

    .line 278
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 285
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
    :goto_2
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 294
    move-result v0

    .line 295
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 298
    move-result-object v0

    .line 299
    const-string v12, "bedtime"

    .line 301
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 304
    move-result v12

    .line 305
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 308
    move-result-wide v14

    .line 309
    const-string/jumbo v12, "wakeup_time"

    .line 312
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 315
    move-result v12

    .line 316
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 319
    move-result-wide v4

    .line 320
    const-string/jumbo v12, "confidence"

    .line 323
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 326
    move-result v12

    .line 327
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getFloat(I)F

    .line 330
    move-result v12

    .line 331
    const-string/jumbo v2, "is_confident"

    .line 334
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 337
    move-result v2

    .line 338
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 341
    move-result v2

    .line 342
    if-lez v2, :cond_6

    .line 344
    const/4 v2, 0x1

    .line 345
    goto :goto_3

    .line 346
    :cond_6
    const/4 v2, 0x0

    .line 347
    :goto_3
    if-eqz v0, :cond_9

    .line 349
    move-object/from16 p0, v13

    .line 351
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 354
    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 355
    move-object/from16 v22, v6

    .line 357
    const/4 v6, 0x3

    .line 358
    if-lt v13, v6, :cond_7

    .line 360
    const-wide/16 v16, 0x0

    .line 362
    cmp-long v6, v14, v16

    .line 364
    if-ltz v6, :cond_7

    .line 366
    cmp-long v6, v4, v16

    .line 368
    if-ltz v6, :cond_7

    .line 370
    cmp-long v6, v14, v4

    .line 372
    if-eqz v6, :cond_7

    .line 374
    const/4 v6, 0x0

    .line 375
    cmpg-float v6, v12, v6

    .line 377
    if-gez v6, :cond_8

    .line 379
    :cond_7
    :goto_4
    move-wide/from16 v16, v14

    .line 381
    goto :goto_6

    .line 382
    :cond_8
    :try_start_5
    new-instance v6, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    .line 384
    move-wide/from16 v16, v14

    .line 386
    move-object v14, v6

    .line 387
    move-object v15, v0

    .line 388
    move-wide/from16 v18, v4

    .line 390
    move/from16 v20, v12

    .line 392
    move/from16 v21, v2

    .line 394
    invoke-direct/range {v14 .. v21}, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;-><init>(Ljava/lang/String;JJFZ)V

    .line 397
    invoke-virtual {v10, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    goto :goto_7

    .line 401
    :catchall_1
    move-exception v0

    .line 402
    :goto_5
    move-object v2, v0

    .line 403
    goto :goto_9

    .line 404
    :catchall_2
    move-exception v0

    .line 405
    move-object/from16 v22, v6

    .line 407
    goto :goto_5

    .line 408
    :cond_9
    move-object/from16 v22, v6

    .line 410
    move-object/from16 p0, v13

    .line 412
    goto :goto_4

    .line 413
    :goto_6
    const-string v6, "[getSleepPatterns]invalid values from runestone"

    .line 415
    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v6, Ljava/lang/StringBuilder;

    .line 420
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    const-string v13, "[getSleepPatterns]weekType:"

    .line 425
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v0, ",bedTime:"

    .line 433
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    move-wide/from16 v13, v16

    .line 438
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    const-string v0, ",wakeupTime:"

    .line 443
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 449
    const-string v0, ",confidence:"

    .line 451
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 457
    const-string v0, ",isConfident:"

    .line 459
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    move-result-object v0

    .line 469
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 475
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 476
    if-nez v0, :cond_a

    .line 478
    :goto_8
    if-eqz v11, :cond_c

    .line 480
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 483
    goto :goto_c

    .line 484
    :catch_0
    move-exception v0

    .line 485
    goto :goto_b

    .line 486
    :cond_a
    move-object/from16 v13, p0

    .line 488
    move-object/from16 v6, v22

    .line 490
    const/4 v2, 0x0

    .line 491
    const/4 v4, 0x0

    .line 492
    const/4 v5, 0x1

    .line 493
    goto/16 :goto_2

    .line 495
    :goto_9
    if-eqz v11, :cond_b

    .line 497
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 500
    goto :goto_a

    .line 501
    :catchall_3
    move-exception v0

    .line 502
    move-object v4, v0

    .line 503
    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 506
    :cond_b
    :goto_a
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 507
    :catch_1
    move-exception v0

    .line 508
    move-object/from16 v22, v6

    .line 510
    :goto_b
    const-string v2, "[getSleepPatterns]Exception"

    .line 512
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 518
    :cond_c
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 520
    const-string v2, "[getSleepPatterns]sleepPatterns size:"

    .line 522
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 528
    move-result v2

    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    move-result-object v0

    .line 536
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 542
    move-result-wide v4

    .line 543
    sub-long/2addr v4, v7

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    .line 546
    const-string v2, "[getSleepPatterns]elapseMillis:"

    .line 548
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    move-result-object v0

    .line 558
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_e

    .line 567
    const-string v0, "[getSleepPatterns]Fail"

    .line 569
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string/jumbo v0, "currentRubinState:"

    .line 575
    :try_start_9
    iget-object v2, v9, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->mContext:Landroid/content/Context;

    .line 577
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 580
    move-result-object v2

    .line 581
    sget-object v4, Lcom/android/server/battery/sleepcharging/RunestoneStateContract;->CONTENT_URI:Landroid/net/Uri;

    .line 583
    const-string/jumbo v5, "getRubinState"

    .line 586
    const-string v6, "android_com.android.server.BatteryService"

    .line 588
    const/4 v7, 0x0

    .line 589
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 592
    move-result-object v2

    .line 593
    if-eqz v2, :cond_d

    .line 595
    const-string/jumbo v4, "isDeviceRubinSupported"

    .line 598
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 601
    move-result v4

    .line 602
    const-string/jumbo v5, "isDeviceRubinWorkable"

    .line 605
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 608
    move-result v5

    .line 609
    const-string/jumbo v6, "isEnabledInSupportedApps"

    .line 612
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 615
    move-result v6

    .line 616
    const-string/jumbo v7, "currentRubinState"

    .line 619
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 622
    move-result-object v2

    .line 623
    new-instance v7, Ljava/lang/StringBuilder;

    .line 625
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v0, " ,isDeviceRubinSupported:"

    .line 633
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 639
    const-string v0, " ,isDeviceRubinWorkable:"

    .line 641
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 647
    const-string v0, " ,isEnabledInSupportedApps:"

    .line 649
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    move-result-object v0

    .line 659
    goto :goto_e

    .line 660
    :catch_2
    move-exception v0

    .line 661
    goto :goto_d

    .line 662
    :cond_d
    const-string/jumbo v0, "bundle null"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 665
    goto :goto_e

    .line 666
    :goto_d
    const-string v2, "[queryRunestoneStatus]Exception"

    .line 668
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 677
    move-result-object v0

    .line 678
    :goto_e
    const-string v2, "[queryRunestoneStatus]"

    .line 680
    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v1, "/data/log/battery_service/sleep_charging_history"

    .line 685
    const-string v2, "RunestoneStatus"

    .line 687
    invoke-static {v1, v2, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :goto_f
    move-object/from16 v1, v22

    .line 692
    goto :goto_10

    .line 693
    :cond_e
    const-string v0, "[getSleepPatterns]Success"

    .line 695
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    goto :goto_f

    .line 699
    :goto_10
    iput-object v10, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 701
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    .line 704
    move-result v0

    .line 705
    if-eqz v0, :cond_f

    .line 707
    const/4 v2, 0x0

    .line 708
    iput-object v2, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 710
    goto :goto_11

    .line 711
    :cond_f
    const/4 v2, 0x1

    .line 712
    invoke-virtual {v1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateDeviceTimeChangedReceiver(Z)V

    .line 715
    invoke-static {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 718
    move-result-object v0

    .line 719
    iput-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 721
    :goto_11
    iget-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 723
    if-eqz v0, :cond_12

    .line 725
    iget-boolean v2, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isConfident:Z

    .line 727
    if-eqz v2, :cond_11

    .line 729
    iget-boolean v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 731
    if-eqz v0, :cond_10

    .line 733
    invoke-static {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    .line 736
    move-result-object v0

    .line 737
    iput-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 739
    iget-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 741
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 744
    const/4 v2, 0x1

    .line 745
    invoke-virtual {v1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 748
    goto :goto_12

    .line 749
    :cond_10
    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    .line 751
    invoke-virtual {v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 754
    goto :goto_12

    .line 755
    :cond_11
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 757
    const-string v0, "[sct_handleMessage]not confident => only wait for wakeup time"

    .line 759
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_12
    const-string v0, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 764
    invoke-virtual {v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 767
    goto :goto_13

    .line 768
    :cond_12
    const-string v0, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 770
    invoke-virtual {v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 773
    :goto_13
    iget-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 775
    const/16 v1, 0x1b

    .line 777
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 780
    :goto_14
    return-void

    .line 781
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
