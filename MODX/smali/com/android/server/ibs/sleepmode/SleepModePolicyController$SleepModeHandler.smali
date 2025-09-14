.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_2

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string p1, "SleepModePolicyController"

    .line 17
    const-string/jumbo v0, "handleBootCompleteEvent"

    .line 20
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 34
    const-string/jumbo v3, "recoverSleepMode"

    .line 37
    invoke-virtual {v0, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 42
    new-instance v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-direct {v3, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v3, "pref_sleep_mode_activated_key"

    .line 56
    invoke-static {v0, v3, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 59
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 61
    const-string/jumbo v1, "pref_sleep_mode_cancel_time_key"

    .line 64
    sget-boolean v3, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 73
    move-result-wide v3

    .line 74
    invoke-static {v0, v1, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 77
    monitor-exit p1

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 84
    const-string/jumbo v0, "pref_sleep_mode_enabled_key"

    .line 87
    invoke-static {p1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 90
    move-result p1

    .line 91
    iput-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 93
    if-eqz p1, :cond_a

    .line 95
    const-string p1, "SleepModePolicyController"

    .line 97
    const-string/jumbo v0, "sleep mode enabled!"

    .line 100
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 105
    const-string/jumbo v0, "pref_sleep_mode_start_time_key"

    .line 108
    const-wide/16 v3, 0x0

    .line 110
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 113
    move-result-wide v0

    .line 114
    cmp-long p1, v0, v3

    .line 116
    const/4 v5, 0x0

    .line 117
    if-eqz p1, :cond_1

    .line 119
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 122
    move-result-object p1

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    move-object p1, v5

    .line 125
    :goto_1
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 127
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 129
    const-string/jumbo v0, "pref_sleep_mode_end_time_key"

    .line 132
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 135
    move-result-wide v0

    .line 136
    cmp-long p1, v0, v3

    .line 138
    if-eqz p1, :cond_2

    .line 140
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 143
    move-result-object v5

    .line 144
    :cond_2
    iput-object v5, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 146
    iput-boolean v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 154
    goto/16 :goto_2

    .line 156
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    const-string p1, "SleepModePolicyController"

    .line 163
    const-string/jumbo v0, "handleWakeupEvent"

    .line 166
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_a

    .line 175
    const-string/jumbo p1, "reason_wakeup"

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 181
    goto/16 :goto_2

    .line 183
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    const-string p1, "SleepModePolicyController"

    .line 190
    const-string/jumbo v0, "handleProbablyAsleepEvent"

    .line 193
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_a

    .line 208
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    .line 211
    goto/16 :goto_2

    .line 213
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    const-string p0, "SleepModePolicyController"

    .line 220
    const-string/jumbo p1, "handleBeforeBedtimeEvent"

    .line 223
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    goto/16 :goto_2

    .line 228
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 230
    iget-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 232
    if-eqz p1, :cond_3

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 237
    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_4

    .line 245
    const-string/jumbo p1, "reason_package_removed"

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 251
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 254
    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 256
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 258
    const-string/jumbo p1, "sleep_mode_pref"

    .line 261
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 264
    move-result-object p0

    .line 265
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 268
    move-result-object p0

    .line 269
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    goto/16 :goto_2

    .line 277
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 279
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    check-cast p1, Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    const-string v0, "SleepModePolicyController"

    .line 288
    const-string/jumbo v1, "handleSleepModeExitEvent"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_a

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 303
    goto/16 :goto_2

    .line 305
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    const-string p1, "SleepModePolicyController"

    .line 312
    const-string/jumbo v0, "handleTimeChangedEvent"

    .line 315
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 321
    goto/16 :goto_2

    .line 323
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    const-string v0, "SleepModePolicyController"

    .line 330
    const-string/jumbo v1, "handleSetTimeEvent"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    check-cast p1, Landroid/util/ArrayMap;

    .line 340
    const-string/jumbo v0, "start_time"

    .line 343
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 349
    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 351
    const-string/jumbo v0, "end_time"

    .line 354
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    move-result-object p1

    .line 358
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 360
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 362
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 365
    goto/16 :goto_2

    .line 367
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 369
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    check-cast p1, Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    const-string v0, "SleepModePolicyController"

    .line 378
    const-string/jumbo v1, "handleStatusCheckEvent"

    .line 381
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_a

    .line 390
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    .line 393
    move-result v0

    .line 394
    if-nez v0, :cond_a

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 399
    goto/16 :goto_2

    .line 401
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    const-string p1, "SleepModePolicyController"

    .line 408
    const-string/jumbo v0, "handleIdleChangedEvent"

    .line 411
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 417
    move-result v0

    .line 418
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_6

    .line 424
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 426
    if-eqz v2, :cond_5

    .line 428
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 430
    if-eqz v2, :cond_5

    .line 432
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 435
    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 438
    invoke-virtual {v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 441
    move-result-object v2

    .line 442
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 444
    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 446
    invoke-virtual {v4, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    .line 449
    move-result v4

    .line 450
    invoke-virtual {v3, v2, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 457
    move-result v1

    .line 458
    :cond_5
    const-string/jumbo v2, "isDuringUserSetupTime: isInSetupTime = "

    .line 461
    invoke-static {v2, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 464
    if-eqz v1, :cond_a

    .line 466
    if-nez v0, :cond_a

    .line 468
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    .line 471
    goto/16 :goto_2

    .line 473
    :cond_6
    if-eqz v0, :cond_a

    .line 475
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 477
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isDeviceIdleMode(Landroid/content/Context;)Z

    .line 480
    move-result v0

    .line 481
    if-nez v0, :cond_8

    .line 483
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 485
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isScreenOn(Landroid/content/Context;)Z

    .line 488
    move-result v0

    .line 489
    if-nez v0, :cond_7

    .line 491
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 493
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isPowerConnected(Landroid/content/Context;)Z

    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_8

    .line 499
    :cond_7
    move v1, v2

    .line 500
    :cond_8
    const-string/jumbo v0, "revort state is "

    .line 503
    invoke-static {v0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 506
    if-eqz v1, :cond_a

    .line 508
    const-string/jumbo p1, "reason_idle_change"

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 514
    goto :goto_2

    .line 515
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 517
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    const-string p1, "SleepModePolicyController"

    .line 522
    const-string/jumbo v0, "handleAlarmEndEvent"

    .line 525
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 531
    move-result p1

    .line 532
    if-eqz p1, :cond_a

    .line 534
    const-string/jumbo p1, "reason_alarm_end"

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 540
    goto :goto_2

    .line 541
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    const-string p1, "SleepModePolicyController"

    .line 548
    const-string/jumbo v0, "handleAlarmStartEvent"

    .line 551
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 557
    move-result p1

    .line 558
    if-nez p1, :cond_a

    .line 560
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    .line 563
    move-result p1

    .line 564
    if-eqz p1, :cond_a

    .line 566
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    .line 569
    goto :goto_2

    .line 570
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 572
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    const-string p1, "SleepModePolicyController"

    .line 577
    const-string/jumbo v0, "handleSleepModeStopEvent"

    .line 580
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 585
    if-eqz p1, :cond_9

    .line 587
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 590
    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 592
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 595
    goto :goto_2

    .line 596
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 598
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    const-string p1, "SleepModePolicyController"

    .line 603
    const-string/jumbo v0, "handleSleepModeStartEvent"

    .line 606
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 611
    if-nez p1, :cond_a

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 616
    iput-boolean v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 618
    :cond_a
    :goto_2
    return-void

    .line 619
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
