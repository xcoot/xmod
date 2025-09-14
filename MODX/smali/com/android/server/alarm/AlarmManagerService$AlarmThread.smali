.class public final Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFalseWakeups:I

.field public mWtfThreshold:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    const-string p1, "AlarmManager"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 11
    const/16 p1, 0x64

    .line 13
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_0
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 10
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 12
    iget-wide v3, v3, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    .line 14
    invoke-static {v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smwaitForAlarm(J)I

    .line 17
    move-result v3

    .line 18
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 20
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v14

    .line 29
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 31
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    move-result-wide v12

    .line 40
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    .line 42
    int-to-long v10, v3

    .line 43
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 45
    iget-wide v6, v8, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelWakeup:J

    .line 47
    move-object/from16 v20, v2

    .line 49
    iget-wide v1, v8, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelNonWakeup:J

    .line 51
    move-wide/from16 v16, v12

    .line 53
    iget-wide v12, v8, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 55
    move-wide/from16 v18, v12

    .line 57
    iget-wide v12, v8, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 59
    move-object v5, v4

    .line 60
    move-wide/from16 v21, v6

    .line 62
    move-wide v6, v10

    .line 63
    move/from16 v23, v3

    .line 65
    move-object v3, v8

    .line 66
    move-wide/from16 v8, v21

    .line 68
    move-wide/from16 v21, v10

    .line 70
    move-wide v10, v1

    .line 71
    move-wide/from16 v1, v16

    .line 73
    move-wide/from16 v16, v18

    .line 75
    move-wide/from16 v18, v12

    .line 77
    move-wide v12, v14

    .line 78
    move-wide/from16 v24, v14

    .line 80
    move-wide v14, v1

    .line 81
    invoke-direct/range {v5 .. v19}, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;-><init>(JJJJJJJ)V

    .line 84
    const-wide/32 v5, 0x10000

    .line 87
    cmp-long v5, v21, v5

    .line 89
    const-wide/16 v6, 0x3e8

    .line 91
    if-nez v5, :cond_1

    .line 93
    if-nez v5, :cond_0

    .line 95
    iget-wide v8, v4, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mDiff:J

    .line 97
    cmp-long v5, v8, v6

    .line 99
    if-gez v5, :cond_1

    .line 101
    const-wide/16 v10, -0x3e8

    .line 103
    cmp-long v5, v8, v10

    .line 105
    if-gtz v5, :cond_0

    .line 107
    goto :goto_1

    .line 108
    :cond_0
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 110
    invoke-virtual {v3, v4}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    :goto_1
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 116
    invoke-virtual {v3, v4}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 119
    :goto_2
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 121
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 123
    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 126
    iput-wide v1, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    .line 128
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 129
    if-nez v23, :cond_2

    .line 131
    const-string v3, "AlarmManager"

    .line 133
    const-string/jumbo v4, "waitForAlarm returned 0, nowRTC = "

    .line 136
    const-string v5, ", nowElapsed = "

    .line 138
    move-wide/from16 v8, v24

    .line 140
    invoke-static {v4, v8, v9, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    goto :goto_3

    .line 155
    :cond_2
    move-wide/from16 v8, v24

    .line 157
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 160
    const/high16 v3, 0x10000

    .line 162
    and-int v4, v23, v3

    .line 164
    if-eqz v4, :cond_4

    .line 166
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 168
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 170
    monitor-enter v4

    .line 171
    :try_start_1
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 173
    iget-wide v10, v5, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 175
    iget-wide v12, v5, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 177
    sub-long v12, v1, v12

    .line 179
    add-long/2addr v12, v10

    .line 180
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    const-wide/16 v4, 0x0

    .line 183
    cmp-long v4, v10, v4

    .line 185
    if-eqz v4, :cond_3

    .line 187
    sub-long v4, v12, v6

    .line 189
    cmp-long v4, v8, v4

    .line 191
    if-ltz v4, :cond_3

    .line 193
    add-long/2addr v12, v6

    .line 194
    cmp-long v4, v8, v12

    .line 196
    if-lez v4, :cond_4

    .line 198
    :cond_3
    const/16 v4, 0x2d

    .line 200
    invoke-static {v4, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 203
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 205
    iget-object v5, v4, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

    .line 207
    const/4 v6, 0x0

    .line 208
    invoke-virtual {v4, v6, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 211
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 213
    iget-object v5, v4, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 215
    invoke-virtual {v4, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 218
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 220
    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService;->reevaluateRtcAlarms()V

    .line 223
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 225
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 227
    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 230
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 232
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 234
    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 237
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 239
    iget-object v5, v4, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 241
    monitor-enter v5

    .line 242
    :try_start_2
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 244
    iget v7, v4, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    .line 246
    const/4 v10, 0x1

    .line 247
    add-int/2addr v7, v10

    .line 248
    iput v7, v4, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    .line 250
    iput-wide v8, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 252
    iput-wide v1, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 254
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    const-string v4, "android.intent.action.TIME_SET"

    .line 257
    const/high16 v5, 0x25200000

    .line 259
    invoke-static {v5, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 262
    move-result-object v4

    .line 263
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 265
    iget-object v7, v5, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 267
    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 269
    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 272
    move-result-wide v8

    .line 273
    const-string v12, ""

    .line 275
    const/4 v10, 0x0

    .line 276
    const/16 v11, 0xcd

    .line 278
    invoke-virtual/range {v7 .. v12}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 281
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 283
    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 285
    const/4 v7, 0x1

    .line 286
    invoke-virtual {v5, v7}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 289
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 291
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 294
    move-result-object v5

    .line 295
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 297
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 299
    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 301
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 304
    move-result-object v8

    .line 305
    invoke-virtual {v5, v4, v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 308
    or-int/lit8 v4, v23, 0x5

    .line 310
    goto :goto_4

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    throw v0

    .line 314
    :catchall_1
    move-exception v0

    .line 315
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 316
    throw v0

    .line 317
    :cond_4
    move/from16 v4, v23

    .line 319
    :goto_4
    if-eq v4, v3, :cond_12

    .line 321
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 323
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 325
    monitor-enter v3

    .line 326
    :try_start_5
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 328
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 333
    iput-wide v1, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    .line 335
    move-object/from16 v5, v20

    .line 337
    invoke-virtual {v4, v1, v2, v5}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(JLjava/util/ArrayList;)I

    .line 340
    move-result v4

    .line 341
    sget-boolean v6, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 343
    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 345
    iget-boolean v6, v6, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 347
    if-eqz v6, :cond_5

    .line 349
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 351
    invoke-static {v6, v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mfiltAlarmsForFreeCess(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/ArrayList;)V

    .line 354
    goto :goto_5

    .line 355
    :catchall_2
    move-exception v0

    .line 356
    goto/16 :goto_a

    .line 358
    :cond_5
    :goto_5
    if-nez v4, :cond_7

    .line 360
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 362
    invoke-virtual {v6, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    .line 365
    move-result v6

    .line 366
    if-eqz v6, :cond_7

    .line 368
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 370
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 372
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 375
    move-result v4

    .line 376
    if-nez v4, :cond_6

    .line 378
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 380
    iput-wide v1, v4, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 382
    invoke-virtual {v4, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    .line 385
    move-result-wide v6

    .line 386
    const-wide/16 v8, 0x3

    .line 388
    mul-long/2addr v6, v8

    .line 389
    const-wide/16 v8, 0x2

    .line 391
    div-long/2addr v6, v8

    .line 392
    add-long v12, v1, v6

    .line 394
    iput-wide v12, v4, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 396
    :cond_6
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 398
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 400
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 405
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 407
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 410
    move-result v4

    .line 411
    add-int/2addr v2, v4

    .line 412
    iput v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 414
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 416
    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 419
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 421
    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 424
    const/4 v11, 0x1

    .line 425
    goto/16 :goto_9

    .line 427
    :cond_7
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 429
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 431
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 434
    move-result v6

    .line 435
    if-lez v6, :cond_9

    .line 437
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 439
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 441
    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 444
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 446
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 448
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 451
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 453
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    .line 455
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 458
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 460
    iget-wide v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 462
    sub-long v12, v1, v7

    .line 464
    iget-wide v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 466
    add-long/2addr v7, v12

    .line 467
    iput-wide v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 469
    iget-wide v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 471
    cmp-long v7, v7, v12

    .line 473
    if-gez v7, :cond_8

    .line 475
    iput-wide v12, v6, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 477
    :cond_8
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 479
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 482
    :cond_9
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 484
    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 486
    cmp-long v6, v6, v1

    .line 488
    const/4 v7, 0x0

    .line 489
    if-eqz v6, :cond_b

    .line 491
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 494
    move-result v6

    .line 495
    if-eqz v6, :cond_b

    .line 497
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 499
    const/4 v8, 0x1

    .line 500
    add-int/2addr v6, v8

    .line 501
    iput v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 503
    iget v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    .line 505
    if-lt v6, v8, :cond_b

    .line 507
    const-string v6, "AlarmManager"

    .line 509
    new-instance v8, Ljava/lang/StringBuilder;

    .line 511
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    const-string v9, "Too many ("

    .line 516
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget v9, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 521
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 524
    const-string v9, ") false wakeups, nowElapsed="

    .line 526
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    move-result-object v8

    .line 536
    invoke-static {v6, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    .line 541
    const v8, 0x186a0

    .line 544
    if-ge v6, v8, :cond_a

    .line 546
    mul-int/lit8 v6, v6, 0xa

    .line 548
    iput v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    .line 550
    goto :goto_6

    .line 551
    :cond_a
    iput v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 553
    :cond_b
    :goto_6
    new-instance v6, Landroid/util/ArraySet;

    .line 555
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 558
    new-instance v8, Landroid/util/IntArray;

    .line 560
    invoke-direct {v8}, Landroid/util/IntArray;-><init>()V

    .line 563
    new-instance v9, Landroid/util/SparseIntArray;

    .line 565
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 568
    new-instance v10, Landroid/util/SparseIntArray;

    .line 570
    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 573
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 576
    move-result v11

    .line 577
    if-ge v7, v11, :cond_e

    .line 579
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 582
    move-result-object v11

    .line 583
    check-cast v11, Lcom/android/server/alarm/Alarm;

    .line 585
    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    .line 587
    invoke-static {v12, v9}, Lcom/android/server/alarm/AlarmManagerService;->increment(ILandroid/util/SparseIntArray;)V

    .line 590
    iget-boolean v12, v11, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 592
    if-eqz v12, :cond_c

    .line 594
    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    .line 596
    invoke-virtual {v8, v12}, Landroid/util/IntArray;->add(I)V

    .line 599
    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    .line 601
    invoke-static {v12, v10}, Lcom/android/server/alarm/AlarmManagerService;->increment(ILandroid/util/SparseIntArray;)V

    .line 604
    :cond_c
    invoke-static {v11}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    .line 607
    move-result v12

    .line 608
    if-nez v12, :cond_d

    .line 610
    iget v12, v11, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 612
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    .line 615
    move-result v12

    .line 616
    iget-object v11, v11, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 618
    invoke-static {v12, v11}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 621
    move-result-object v11

    .line 622
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_d
    const/4 v11, 0x1

    .line 626
    add-int/2addr v7, v11

    .line 627
    goto :goto_7

    .line 628
    :cond_e
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    .line 631
    move-result v7

    .line 632
    if-lez v7, :cond_f

    .line 634
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 636
    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 638
    if-eqz v7, :cond_f

    .line 640
    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    .line 643
    move-result-object v8

    .line 644
    invoke-virtual {v7, v1, v2, v8}, Landroid/os/BatteryStatsInternal;->noteWakingAlarmBatch(J[I)V

    .line 647
    :cond_f
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 649
    invoke-virtual {v7, v1, v2, v5}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(JLjava/util/ArrayList;)V

    .line 652
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 654
    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 656
    iget-object v8, v7, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 658
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 661
    move-result v8

    .line 662
    const/4 v11, 0x1

    .line 663
    sub-int/2addr v8, v11

    .line 664
    :goto_8
    if-ltz v8, :cond_11

    .line 666
    iget-object v12, v7, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 668
    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 671
    move-result-object v12

    .line 672
    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    .line 674
    iget-wide v12, v12, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    .line 676
    cmp-long v12, v12, v1

    .line 678
    if-gez v12, :cond_10

    .line 680
    iget-object v12, v7, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 682
    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 685
    :cond_10
    add-int/lit8 v8, v8, -0x1

    .line 687
    goto :goto_8

    .line 688
    :cond_11
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 690
    invoke-virtual {v1, v6}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 693
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 695
    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 698
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 700
    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 703
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 705
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 708
    move-result v2

    .line 709
    invoke-static {v1, v2, v4, v9, v10}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mlogAlarmBatchDelivered(Lcom/android/server/alarm/AlarmManagerService;IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 712
    :goto_9
    monitor-exit v3

    .line 713
    goto :goto_b

    .line 714
    :goto_a
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 715
    throw v0

    .line 716
    :cond_12
    move-object/from16 v5, v20

    .line 718
    const/4 v11, 0x1

    .line 719
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 721
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 723
    monitor-enter v1

    .line 724
    :try_start_6
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 726
    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 729
    monitor-exit v1

    .line 730
    :goto_b
    move-object v2, v5

    .line 731
    goto/16 :goto_0

    .line 733
    :catchall_3
    move-exception v0

    .line 734
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 735
    throw v0

    .line 736
    :catchall_4
    move-exception v0

    .line 737
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 738
    throw v0
.end method
