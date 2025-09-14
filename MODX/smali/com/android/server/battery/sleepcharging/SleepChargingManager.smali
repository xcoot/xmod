.class public final Lcom/android/server/battery/sleepcharging/SleepChargingManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final THRESHOLD_BATTERY_LEVEL:I

.field public mBatteryLevel:I

.field public mChargeStartTime:J

.field public final mDeliveredHandler:Landroid/os/Handler;

.field public final mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

.field public mIsBatteryLevelHighEnough:Z

.field public mIsCharging:Z

.field public mIsChargingStable:Z

.field public mIsSleepCharging:Z

.field public mIsUserDismissSleepCharging:Z

.field public mMinutesToFullCharge:I

.field public mPlugType:I

.field public mSecondsToFullCharge:J

.field public final mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

.field public mTheNextAlarmChagned:Z

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static -$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mPlugType:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 12
    if-eqz v0, :cond_5

    .line 14
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    .line 16
    const/16 v3, 0x64

    .line 18
    if-ne v0, v3, :cond_1

    .line 20
    iput-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 22
    goto :goto_3

    .line 23
    :cond_1
    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    .line 25
    const-wide/16 v5, 0x0

    .line 27
    cmp-long v0, v3, v5

    .line 29
    if-lez v0, :cond_4

    .line 31
    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 33
    cmp-long v0, v3, v5

    .line 35
    if-nez v0, :cond_2

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    move-result-wide v3

    .line 42
    iget-wide v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 44
    sub-long/2addr v3, v5

    .line 45
    const-wide/16 v5, 0xbb8

    .line 47
    cmp-long v0, v3, v5

    .line 49
    if-ltz v0, :cond_3

    .line 51
    move v0, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v0, v1

    .line 54
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 59
    goto :goto_3

    .line 60
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 62
    :goto_3
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    .line 64
    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->THRESHOLD_BATTERY_LEVEL:I

    .line 66
    if-lt v0, v3, :cond_6

    .line 68
    move v0, v2

    .line 69
    goto :goto_4

    .line 70
    :cond_6
    move v0, v1

    .line 71
    :goto_4
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    .line 73
    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    .line 75
    const-wide/16 v5, 0x3b

    .line 77
    add-long/2addr v3, v5

    .line 78
    const-wide/16 v5, 0x3c

    .line 80
    div-long/2addr v3, v5

    .line 81
    long-to-int v0, v3

    .line 82
    iput v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    const-string v3, "[processConditions]charging:"

    .line 88
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    const-string v3, " ,stable:"

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, " ,levelEnough:"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    const-string v3, " ,minsToFull:"

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v3, " ,dismiss:"

    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, " ,alarmChagned:"

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    .line 143
    const-string v4, "[SS]SleepChargingManager"

    .line 145
    invoke-static {v4, v0, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 148
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 150
    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    .line 152
    iget-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 154
    const-string v6, "HH:mm"

    .line 156
    const-string v7, "/data/log/battery_service/sleep_charging_history"

    .line 158
    const/4 v8, 0x2

    .line 159
    if-eqz v0, :cond_a

    .line 161
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 163
    const/4 v9, -0x1

    .line 164
    if-eqz v0, :cond_8

    .line 166
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 168
    if-nez v0, :cond_8

    .line 170
    invoke-virtual {v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isActivated()Z

    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_8

    .line 176
    invoke-virtual {v5, v9}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isNowSleepChargingTime(I)Z

    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_8

    .line 182
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    .line 184
    if-eqz p0, :cond_7

    .line 186
    const-string p0, "[processConditions] ON -> ON (Alarm Changed)"

    .line 188
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v5, v9, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateSleepChargingEndTime(IZ)V

    .line 194
    const-string p0, "[sendResultUpdate]"

    .line 196
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p0, v5, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 201
    const/4 v0, 0x3

    .line 202
    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 205
    move-result-object v0

    .line 206
    invoke-static {v6}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 213
    move-result-object p0

    .line 214
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    .line 221
    const-string v0, "[UPDATE]"

    .line 223
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getInfoForOn()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object p0

    .line 237
    invoke-static {v8, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 240
    goto/16 :goto_5

    .line 242
    :cond_7
    const-string p0, "[processConditions] ON -> ON"

    .line 244
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    goto/16 :goto_5

    .line 249
    :cond_8
    const-string v0, "[processConditions] ON -> OFF"

    .line 251
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 256
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 258
    if-eqz v0, :cond_9

    .line 260
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    const-string v0, "[SS]SleepChargingTimeController"

    .line 265
    const-string v3, "[updateDismissSleepCharging]"

    .line 267
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-boolean v2, v5, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsUserDismissSleepCharging:Z

    .line 272
    invoke-virtual {v5, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 275
    :cond_9
    invoke-virtual {v5, v9, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateSleepChargingEndTime(IZ)V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->sendResultOff()V

    .line 281
    const-string v0, "ON -> OFF"

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    .line 286
    move-result-object p0

    .line 287
    invoke-static {v7, v0, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    goto :goto_5

    .line 291
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 293
    if-eqz v0, :cond_b

    .line 295
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 297
    if-eqz v0, :cond_b

    .line 299
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    .line 301
    if-eqz v0, :cond_b

    .line 303
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 305
    if-nez v0, :cond_b

    .line 307
    invoke-virtual {v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isActivated()Z

    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_b

    .line 313
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 315
    invoke-virtual {v5, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isNowSleepChargingTime(I)Z

    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_b

    .line 321
    const-string v0, "[processConditions] OFF -> ON"

    .line 323
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iput-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 328
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 330
    invoke-virtual {v5, v0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateSleepChargingEndTime(IZ)V

    .line 333
    const-string v0, "[sendResultOn]"

    .line 335
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, v5, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 340
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 343
    move-result-object v2

    .line 344
    invoke-static {v6}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v0, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 351
    move-result-object v0

    .line 352
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 354
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    .line 359
    const-string v2, "[ON]"

    .line 361
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getInfoForOn()Ljava/lang/String;

    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    move-result-object v0

    .line 375
    invoke-static {v8, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 378
    const-string v0, "OFF -> ON"

    .line 380
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    .line 383
    move-result-object p0

    .line 384
    invoke-static {v7, v0, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    goto :goto_5

    .line 388
    :cond_b
    const-string p0, "[processConditions] OFF -> OFF"

    .line 390
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BatteryService$1;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "[SS]SleepChargingManager"

    .line 6
    const-string v1, "SleepChargingManager CreatedVERSION:240902"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "VERSION:240902 ,elapsedRealtime:"

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v2

    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "/data/log/battery_service/sleep_charging_history"

    .line 31
    const-string v3, "SleepChargingManager Created"

    .line 33
    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v2, "protectionThreshold:"

    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, " ,TIME_TO_CHARGING_STABLE:3000"

    .line 49
    invoke-static {v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    .line 54
    iput p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->THRESHOLD_BATTERY_LEVEL:I

    .line 56
    new-instance p2, Landroid/os/HandlerThread;

    .line 58
    const-string p3, "SleepChargingWorkerThread"

    .line 60
    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 65
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 68
    const-string p2, "[makeHandler]"

    .line 70
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p3, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 75
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p3, p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Landroid/os/Looper;)V

    .line 84
    iput-object p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 86
    new-instance p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 88
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 92
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v2, Ljava/util/HashMap;

    .line 97
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    iput-object v2, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 102
    const/4 v2, 0x0

    .line 103
    iput-boolean v2, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 105
    const-string v2, "SleepChargingTimeController Created"

    .line 107
    const-string v3, "[SS]SleepChargingTimeController"

    .line 109
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v4, "mRuglarUpdateCheckTime:"

    .line 117
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    sget-object v4, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object p1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 134
    iput-object v1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 136
    new-instance v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    .line 138
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v2, "[SS]PersonalPatternManager"

    .line 143
    const-string v4, "PersonalPatternManager Created"

    .line 145
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->mContext:Landroid/content/Context;

    .line 150
    iput-object v1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    .line 152
    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 157
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p1, p3, p2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Landroid/os/Looper;)V

    .line 164
    iput-object p1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 166
    const/4 p1, 0x1

    .line 167
    invoke-virtual {p3, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateTimeReachedReceiver(Z)V

    .line 170
    iget-object p1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 172
    const/16 p2, 0x15

    .line 174
    const-wide/16 v0, 0x1388

    .line 176
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    iput-object p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 181
    const/4 p0, 0x2

    .line 182
    const-string p1, "[Activated]"

    .line 184
    invoke-static {p0, p1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 187
    return-void
.end method


# virtual methods
.method public final getInfoAll(Z)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[getInfo]includeSleepPatterns:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v2, "[SS]SleepChargingManager"

    .line 17
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "[SleepChargingManager]\n"

    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v3, "mIsSleepCharging:"

    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    const-string v3, "\n"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v4, "mIsUserDismissSleepCharging:"

    .line 57
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-boolean v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v4, "mPlugType:"

    .line 80
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mPlugType:I

    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v4, " ,mIsCharging:"

    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-boolean v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v4, "mChargeStartTime:"

    .line 113
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iget-wide v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 118
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    const-string v4, " ,mIsChargingStable:"

    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-boolean v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 128
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    const-string/jumbo v4, "mBatteryLevel:"

    .line 146
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    .line 151
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v4, " ,mIsBatteryLevelHighEnough:"

    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-boolean v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v4, "mSecondsToFullCharge:"

    .line 179
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    iget-wide v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    .line 184
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const-string v4, " ,mMinutesToFullCharge:"

    .line 189
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 194
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 227
    const-string v2, "[SS]SleepChargingTimeController"

    .line 229
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 240
    move-result-object v4

    .line 241
    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    .line 243
    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 246
    move-result-object v4

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    .line 249
    const-string v6, "[SleepChargingTimeController]"

    .line 251
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v5, "mSleepPatterns.size():"

    .line 272
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 277
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 280
    move-result v5

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v4, " ~ "

    .line 296
    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 300
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 303
    move-result-object p1

    .line 304
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 307
    move-result-object p1

    .line 308
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_0

    .line 314
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    move-result-object v5

    .line 318
    check-cast v5, Ljava/util/Map$Entry;

    .line 320
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 323
    move-result-object v5

    .line 324
    check-cast v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    .line 326
    new-instance v6, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    .line 333
    const-string v8, "[BackupOnOffExceptTime]"

    .line 335
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v8, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->weekType:Ljava/lang/String;

    .line 340
    const/4 v9, 0x0

    .line 341
    const/4 v10, 0x3

    .line 342
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 345
    move-result-object v8

    .line 346
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    move-result-object v7

    .line 353
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    .line 358
    const-string v8, " ,time:"

    .line 360
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    iget-wide v8, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->bedTimeMillis:J

    .line 365
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 368
    move-result-object v8

    .line 369
    const-string v9, "UTC"

    .line 371
    invoke-static {v9}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 374
    move-result-object v10

    .line 375
    invoke-virtual {v8, v10}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 378
    move-result-object v8

    .line 379
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    .line 382
    move-result-object v8

    .line 383
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-wide v10, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->wakeupTimeMillis:J

    .line 391
    invoke-static {v10, v11}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 394
    move-result-object v8

    .line 395
    invoke-static {v9}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 398
    move-result-object v9

    .line 399
    invoke-virtual {v8, v9}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 402
    move-result-object v8

    .line 403
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    .line 406
    move-result-object v8

    .line 407
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object v7

    .line 414
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    new-instance v7, Ljava/lang/StringBuilder;

    .line 419
    const-string v8, " ,confidence:"

    .line 421
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    iget v8, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->confidence:F

    .line 426
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v7

    .line 433
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    .line 438
    const-string v8, " ,isConfident:"

    .line 440
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    iget-boolean v5, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->isConfident:Z

    .line 445
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object v5

    .line 452
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    move-result-object v5

    .line 462
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    goto/16 :goto_0

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 469
    if-nez p1, :cond_1

    .line 471
    const-string p1, "SleepChargingStatus null\n"

    .line 473
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    goto/16 :goto_1

    .line 478
    :cond_1
    const-string v5, "[getInfo]"

    .line 480
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    .line 485
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    .line 490
    const-string v6, "[SleepChargingStatus]"

    .line 492
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    iget-object v6, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 497
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    const-string v6, "("

    .line 502
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-object v6, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 507
    invoke-virtual {v6}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    .line 510
    move-result-object v6

    .line 511
    invoke-virtual {v6}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    .line 514
    move-result-object v6

    .line 515
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v6, ")\n"

    .line 520
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    move-result-object v5

    .line 527
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v6, "sleepTime:"

    .line 535
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    iget-object v6, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->bedDateTime:Ljava/time/LocalDateTime;

    .line 540
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-object v4, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 548
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    move-result-object v4

    .line 558
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    .line 563
    const-string/jumbo v5, "confidence:"

    .line 566
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    iget v5, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->confidence:F

    .line 571
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 574
    const-string v5, ",isConfident:"

    .line 576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-boolean v5, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isConfident:Z

    .line 581
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    .line 596
    const-string/jumbo v5, "sleepChargingStartDateTime:"

    .line 599
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    iget-object v5, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    const-string v5, " ,expectedFullChargeDateTime:"

    .line 609
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v5, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    .line 629
    const-string/jumbo v5, "isNowSessionTime:"

    .line 632
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    iget-boolean p1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 637
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    move-result-object p1

    .line 647
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    move-result-object p1

    .line 657
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 662
    const-string/jumbo v2, "mIsTodaySleepChargingFinished:"

    .line 665
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 670
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    move-result-object p1

    .line 680
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    new-instance p1, Ljava/lang/StringBuilder;

    .line 685
    const-string/jumbo v2, "mNextAlarmDateTimeWithinSleepTime:"

    .line 688
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 693
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    move-result-object p1

    .line 703
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    new-instance p1, Ljava/lang/StringBuilder;

    .line 708
    const-string/jumbo v2, "mSavedMinutesToFullCharge:"

    .line 711
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 714
    iget v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    .line 716
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    move-result-object p1

    .line 726
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    .line 731
    const-string/jumbo v2, "mSleepChargingEndDateTime:"

    .line 734
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 739
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    move-result-object p1

    .line 749
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    new-instance p1, Ljava/lang/StringBuilder;

    .line 754
    const-string/jumbo v2, "mScheduledUpdateTime:"

    .line 757
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledUpdateTime:Ljava/time/LocalDateTime;

    .line 762
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    move-result-object p1

    .line 772
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    new-instance p1, Ljava/lang/StringBuilder;

    .line 777
    const-string/jumbo v2, "mScheduledSleepChargingStartTime:"

    .line 780
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 783
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingStartTime:Ljava/time/LocalDateTime;

    .line 785
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    move-result-object p1

    .line 795
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    new-instance p1, Ljava/lang/StringBuilder;

    .line 800
    const-string/jumbo v2, "mScheduledSleepChargingEndTime:"

    .line 803
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

    .line 808
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    move-result-object p1

    .line 818
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    new-instance p1, Ljava/lang/StringBuilder;

    .line 823
    const-string/jumbo v2, "mScheduledWakeupTime:"

    .line 826
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 829
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledWakeupTime:Ljava/time/LocalDateTime;

    .line 831
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    move-result-object p0

    .line 841
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    move-result-object p0

    .line 851
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    move-result-object p0

    .line 858
    return-object p0
.end method

.method public final sendResultOff()V
    .locals 5

    .line 1
    const-string v0, "[SS]SleepChargingManager"

    .line 3
    const-string v1, "[sendResultOff]"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 17
    iget-boolean v4, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 19
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "[OFF]mIsCharging:"

    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, " ,mIsUserDismissSleepCharging:"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const-string p0, " ,isTodaySleepChargingFinished:"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean p0, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-static {v1, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 63
    return-void
.end method
