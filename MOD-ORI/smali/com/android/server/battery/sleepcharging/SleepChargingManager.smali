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

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
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

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    .line 15
    .line 16
    const/16 v3, 0x64

    .line 17
    .line 18
    if-ne v0, v3, :cond_1

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    cmp-long v0, v3, v5

    .line 28
    .line 29
    if-lez v0, :cond_4

    .line 30
    .line 31
    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 32
    .line 33
    cmp-long v0, v3, v5

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    iget-wide v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 43
    .line 44
    sub-long/2addr v3, v5

    .line 45
    const-wide/16 v5, 0xbb8

    .line 46
    .line 47
    cmp-long v0, v3, v5

    .line 48
    .line 49
    if-ltz v0, :cond_3

    .line 50
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

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 61
    .line 62
    :goto_3
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    .line 63
    .line 64
    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->THRESHOLD_BATTERY_LEVEL:I

    .line 65
    .line 66
    if-lt v0, v3, :cond_6

    .line 67
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

    .line 72
    .line 73
    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    .line 74
    .line 75
    const-wide/16 v5, 0x3b

    .line 76
    .line 77
    add-long/2addr v3, v5

    .line 78
    const-wide/16 v5, 0x3c

    .line 79
    .line 80
    div-long/2addr v3, v5

    .line 81
    long-to-int v0, v3

    .line 82
    iput v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "[processConditions]charging:"

    .line 87
    .line 88
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v3, " ,stable:"

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, " ,levelEnough:"

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v3, " ,minsToFull:"

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v3, " ,dismiss:"

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v3, " ,alarmChagned:"

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    .line 142
    .line 143
    const-string v4, "[SS]SleepChargingManager"

    .line 144
    .line 145
    invoke-static {v4, v0, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 146
    .line 147
    .line 148
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 149
    .line 150
    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    .line 151
    .line 152
    iget-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 153
    .line 154
    const-string v6, "HH:mm"

    .line 155
    .line 156
    const-string v7, "/data/log/battery_service/sleep_charging_history"

    .line 157
    .line 158
    const/4 v8, 0x2

    .line 159
    if-eqz v0, :cond_a

    .line 160
    .line 161
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 162
    .line 163
    const/4 v9, -0x1

    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 167
    .line 168
    if-nez v0, :cond_8

    .line 169
    .line 170
    invoke-virtual {v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isActivated()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_8

    .line 175
    .line 176
    invoke-virtual {v5, v9}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isNowSleepChargingTime(I)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    .line 183
    .line 184
    if-eqz p0, :cond_7

    .line 185
    .line 186
    const-string p0, "[processConditions] ON -> ON (Alarm Changed)"

    .line 187
    .line 188
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v9, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateSleepChargingEndTime(IZ)V

    .line 192
    .line 193
    .line 194
    const-string p0, "[sendResultUpdate]"

    .line 195
    .line 196
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    iget-object p0, v5, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 200
    .line 201
    const/4 v0, 0x3

    .line 202
    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v6}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    .line 216
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    .line 218
    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v0, "[UPDATE]"

    .line 222
    .line 223
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getInfoForOn()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {v8, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_5

    .line 241
    .line 242
    :cond_7
    const-string p0, "[processConditions] ON -> ON"

    .line 243
    .line 244
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    goto/16 :goto_5

    .line 248
    .line 249
    :cond_8
    const-string v0, "[processConditions] ON -> OFF"

    .line 250
    .line 251
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 255
    .line 256
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 257
    .line 258
    if-eqz v0, :cond_9

    .line 259
    .line 260
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    const-string v0, "[SS]SleepChargingTimeController"

    .line 264
    .line 265
    const-string v3, "[updateDismissSleepCharging]"

    .line 266
    .line 267
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    iput-boolean v2, v5, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsUserDismissSleepCharging:Z

    .line 271
    .line 272
    invoke-virtual {v5, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 273
    .line 274
    .line 275
    :cond_9
    invoke-virtual {v5, v9, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateSleepChargingEndTime(IZ)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->sendResultOff()V

    .line 279
    .line 280
    .line 281
    const-string v0, "ON -> OFF"

    .line 282
    .line 283
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-static {v7, v0, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 292
    .line 293
    if-eqz v0, :cond_b

    .line 294
    .line 295
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 296
    .line 297
    if-eqz v0, :cond_b

    .line 298
    .line 299
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    .line 300
    .line 301
    if-eqz v0, :cond_b

    .line 302
    .line 303
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 304
    .line 305
    if-nez v0, :cond_b

    .line 306
    .line 307
    invoke-virtual {v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isActivated()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_b

    .line 312
    .line 313
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 314
    .line 315
    invoke-virtual {v5, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isNowSleepChargingTime(I)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_b

    .line 320
    .line 321
    const-string v0, "[processConditions] OFF -> ON"

    .line 322
    .line 323
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    iput-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 327
    .line 328
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 329
    .line 330
    invoke-virtual {v5, v0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateSleepChargingEndTime(IZ)V

    .line 331
    .line 332
    .line 333
    const-string v0, "[sendResultOn]"

    .line 334
    .line 335
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    iget-object v0, v5, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 339
    .line 340
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-static {v6}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v0, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    .line 354
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    .line 356
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v2, "[ON]"

    .line 360
    .line 361
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getInfoForOn()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-static {v8, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string v0, "OFF -> ON"

    .line 379
    .line 380
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-static {v7, v0, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_b
    const-string p0, "[processConditions] OFF -> OFF"

    .line 389
    .line 390
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    :goto_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BatteryService$1;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "[SS]SleepChargingManager"

    .line 5
    .line 6
    const-string v1, "SleepChargingManager CreatedVERSION:240902"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "VERSION:240902 ,elapsedRealtime:"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "/data/log/battery_service/sleep_charging_history"

    .line 30
    .line 31
    const-string v3, "SleepChargingManager Created"

    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo v2, "protectionThreshold:"

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, " ,TIME_TO_CHARGING_STABLE:3000"

    .line 48
    .line 49
    invoke-static {v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    .line 53
    .line 54
    iput p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->THRESHOLD_BATTERY_LEVEL:I

    .line 55
    .line 56
    new-instance p2, Landroid/os/HandlerThread;

    .line 57
    .line 58
    const-string p3, "SleepChargingWorkerThread"

    .line 59
    .line 60
    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 66
    .line 67
    .line 68
    const-string p2, "[makeHandler]"

    .line 69
    .line 70
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    new-instance p3, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p3, p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Landroid/os/Looper;)V

    .line 82
    .line 83
    .line 84
    iput-object p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 85
    .line 86
    new-instance p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 91
    .line 92
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v2, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v2, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    iput-boolean v2, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 104
    .line 105
    const-string v2, "SleepChargingTimeController Created"

    .line 106
    .line 107
    const-string v3, "[SS]SleepChargingTimeController"

    .line 108
    .line 109
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string/jumbo v4, "mRuglarUpdateCheckTime:"

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v4, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    iput-object p1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    iput-object v1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 135
    .line 136
    new-instance v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "[SS]PersonalPatternManager"

    .line 142
    .line 143
    const-string v4, "PersonalPatternManager Created"

    .line 144
    .line 145
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    iput-object p1, v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    iput-object v1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    .line 151
    .line 152
    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p1, p3, p2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Landroid/os/Looper;)V

    .line 162
    .line 163
    .line 164
    iput-object p1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 165
    .line 166
    const/4 p1, 0x1

    .line 167
    invoke-virtual {p3, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateTimeReachedReceiver(Z)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 171
    .line 172
    const/16 p2, 0x15

    .line 173
    .line 174
    const-wide/16 v0, 0x1388

    .line 175
    .line 176
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 177
    .line 178
    .line 179
    iput-object p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 180
    .line 181
    const/4 p0, 0x2

    .line 182
    const-string p1, "[Activated]"

    .line 183
    .line 184
    invoke-static {p0, p1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method


# virtual methods
.method public final getInfoAll(Z)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[getInfo]includeSleepPatterns:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "[SS]SleepChargingManager"

    .line 16
    .line 17
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "[SleepChargingManager]\n"

    .line 23
    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v3, "mIsSleepCharging:"

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, "\n"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v4, "mIsUserDismissSleepCharging:"

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string/jumbo v4, "mPlugType:"

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mPlugType:I

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, " ,mIsCharging:"

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-boolean v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 94
    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string/jumbo v4, "mChargeStartTime:"

    .line 111
    .line 112
    .line 113
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-wide v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 117
    .line 118
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v4, " ,mIsChargingStable:"

    .line 122
    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-boolean v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    .line 127
    .line 128
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string/jumbo v4, "mBatteryLevel:"

    .line 144
    .line 145
    .line 146
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    .line 150
    .line 151
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v4, " ,mIsBatteryLevelHighEnough:"

    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-boolean v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string/jumbo v4, "mSecondsToFullCharge:"

    .line 177
    .line 178
    .line 179
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-wide v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    .line 183
    .line 184
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v4, " ,mMinutesToFullCharge:"

    .line 188
    .line 189
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    .line 193
    .line 194
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string v2, "[SS]SleepChargingTimeController"

    .line 228
    .line 229
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    .line 242
    .line 243
    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v6, "[SleepChargingTimeController]"

    .line 250
    .line 251
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string/jumbo v5, "mSleepPatterns.size():"

    .line 270
    .line 271
    .line 272
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 276
    .line 277
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v4, " ~ "

    .line 295
    .line 296
    if-eqz p1, :cond_0

    .line 297
    .line 298
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 299
    .line 300
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_0

    .line 313
    .line 314
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    check-cast v5, Ljava/util/Map$Entry;

    .line 319
    .line 320
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    check-cast v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    .line 325
    .line 326
    new-instance v6, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v8, "[BackupOnOffExceptTime]"

    .line 334
    .line 335
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v8, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->weekType:Ljava/lang/String;

    .line 339
    .line 340
    const/4 v9, 0x0

    .line 341
    const/4 v10, 0x3

    .line 342
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v8, " ,time:"

    .line 359
    .line 360
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-wide v8, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->bedTimeMillis:J

    .line 364
    .line 365
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    const-string v9, "UTC"

    .line 370
    .line 371
    invoke-static {v9}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    invoke-virtual {v8, v10}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    iget-wide v10, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->wakeupTimeMillis:J

    .line 390
    .line 391
    invoke-static {v10, v11}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    invoke-static {v9}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    invoke-virtual {v8, v9}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 400
    .line 401
    .line 402
    move-result-object v8

    .line 403
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    new-instance v7, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v8, " ,confidence:"

    .line 420
    .line 421
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget v8, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->confidence:F

    .line 425
    .line 426
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v8, " ,isConfident:"

    .line 439
    .line 440
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    iget-boolean v5, v5, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->isConfident:Z

    .line 444
    .line 445
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    goto/16 :goto_0

    .line 466
    .line 467
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 468
    .line 469
    if-nez p1, :cond_1

    .line 470
    .line 471
    const-string p1, "SleepChargingStatus null\n"

    .line 472
    .line 473
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    goto/16 :goto_1

    .line 477
    .line 478
    :cond_1
    const-string v5, "[getInfo]"

    .line 479
    .line 480
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    const-string v6, "[SleepChargingStatus]"

    .line 491
    .line 492
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iget-object v6, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 496
    .line 497
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v6, "("

    .line 501
    .line 502
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    iget-object v6, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 506
    .line 507
    invoke-virtual {v6}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    invoke-virtual {v6}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    const-string v6, ")\n"

    .line 519
    .line 520
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string/jumbo v6, "sleepTime:"

    .line 533
    .line 534
    .line 535
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    iget-object v6, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->bedDateTime:Ljava/time/LocalDateTime;

    .line 539
    .line 540
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    iget-object v4, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 547
    .line 548
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string/jumbo v5, "confidence:"

    .line 564
    .line 565
    .line 566
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    iget v5, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->confidence:F

    .line 570
    .line 571
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    const-string v5, ",isConfident:"

    .line 575
    .line 576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    iget-boolean v5, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isConfident:Z

    .line 580
    .line 581
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    const-string/jumbo v5, "sleepChargingStartDateTime:"

    .line 597
    .line 598
    .line 599
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-object v5, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    .line 603
    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v5, " ,expectedFullChargeDateTime:"

    .line 608
    .line 609
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    iget-object v5, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 613
    .line 614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    const-string/jumbo v5, "isNowSessionTime:"

    .line 630
    .line 631
    .line 632
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    iget-boolean p1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 636
    .line 637
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object p1

    .line 657
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 661
    .line 662
    const-string/jumbo v2, "mIsTodaySleepChargingFinished:"

    .line 663
    .line 664
    .line 665
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 669
    .line 670
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object p1

    .line 680
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    new-instance p1, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    const-string/jumbo v2, "mNextAlarmDateTimeWithinSleepTime:"

    .line 686
    .line 687
    .line 688
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 692
    .line 693
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object p1

    .line 703
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    new-instance p1, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    const-string/jumbo v2, "mSavedMinutesToFullCharge:"

    .line 709
    .line 710
    .line 711
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    iget v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    .line 715
    .line 716
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    const-string/jumbo v2, "mSleepChargingEndDateTime:"

    .line 732
    .line 733
    .line 734
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 738
    .line 739
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object p1

    .line 749
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    new-instance p1, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    const-string/jumbo v2, "mScheduledUpdateTime:"

    .line 755
    .line 756
    .line 757
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledUpdateTime:Ljava/time/LocalDateTime;

    .line 761
    .line 762
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    new-instance p1, Ljava/lang/StringBuilder;

    .line 776
    .line 777
    const-string/jumbo v2, "mScheduledSleepChargingStartTime:"

    .line 778
    .line 779
    .line 780
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingStartTime:Ljava/time/LocalDateTime;

    .line 784
    .line 785
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object p1

    .line 795
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    new-instance p1, Ljava/lang/StringBuilder;

    .line 799
    .line 800
    const-string/jumbo v2, "mScheduledSleepChargingEndTime:"

    .line 801
    .line 802
    .line 803
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

    .line 807
    .line 808
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object p1

    .line 818
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    new-instance p1, Ljava/lang/StringBuilder;

    .line 822
    .line 823
    const-string/jumbo v2, "mScheduledWakeupTime:"

    .line 824
    .line 825
    .line 826
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledWakeupTime:Ljava/time/LocalDateTime;

    .line 830
    .line 831
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object p0

    .line 841
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object p0

    .line 851
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object p0

    .line 858
    return-object p0
.end method

.method public final sendResultOff()V
    .locals 5

    .line 1
    const-string v0, "[SS]SleepChargingManager"

    .line 2
    .line 3
    const-string v1, "[sendResultOff]"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 16
    .line 17
    iget-boolean v4, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 18
    .line 19
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "[OFF]mIsCharging:"

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " ,mIsUserDismissSleepCharging:"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p0, " ,isTodaySleepChargingFinished:"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean p0, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v1, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
