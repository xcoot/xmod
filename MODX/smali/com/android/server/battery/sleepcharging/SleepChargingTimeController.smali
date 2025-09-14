.class public final Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALARM_CONTENT_URI:Landroid/net/Uri;

.field public static final mRuglarUpdateCheckTime:Ljava/time/LocalTime;


# instance fields
.field public mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

.field public mContext:Landroid/content/Context;

.field public mDeliveredHandler:Landroid/os/Handler;

.field public mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

.field public mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

.field public mIsEndCalled:Z

.field public mIsTodaySleepChargingFinished:Z

.field public mIsUserDismissSleepCharging:Z

.field public mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

.field public mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

.field public mSavedMinutesToFullCharge:I

.field public mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

.field public mScheduledSleepChargingStartTime:Ljava/time/LocalDateTime;

.field public mScheduledUpdateTime:Ljava/time/LocalDateTime;

.field public mScheduledWakeupTime:Ljava/time/LocalDateTime;

.field public mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

.field public mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

.field public mSleepPatterns:Ljava/util/Map;

.field public mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;


# direct methods
.method public static -$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;
    .locals 12

    .line 1
    const-string v0, "[SS]SleepChargingTimeController"

    .line 3
    const-string v1, "[getNextAlarmDateTimeWithinSleepTime]fail - activeColumnIndex:"

    .line 5
    const-string v2, "[getNextAlarmDateTimeWithinSleepTime]rowCount:"

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v5

    .line 14
    sget-object v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ALARM_CONTENT_URI:Landroid/net/Uri;

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-nez v4, :cond_0

    .line 26
    :try_start_1
    const-string p0, "[getNextAlarmDateTimeWithinSleepTime]cursor null"

    .line 28
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    if-eqz v4, :cond_b

    .line 33
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    goto/16 :goto_6

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto/16 :goto_5

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_3

    .line 44
    :cond_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 52
    move-result v2

    .line 53
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, " ,columnCount:"

    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    .line 64
    move-result v2

    .line 65
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "active"

    .line 77
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 80
    move-result v2

    .line 81
    const-string v5, "alerttime"

    .line 83
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 86
    move-result v5

    .line 87
    const/4 v6, -0x1

    .line 88
    if-eq v2, v6, :cond_9

    .line 90
    if-ne v5, v6, :cond_1

    .line 92
    goto/16 :goto_2

    .line 94
    :cond_1
    move-object v1, v3

    .line 95
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_6

    .line 101
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 104
    move-result v6

    .line 105
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 108
    move-result-wide v7

    .line 109
    const/4 v9, 0x1

    .line 110
    if-eq v6, v9, :cond_3

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 116
    move-result-object v9

    .line 117
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v9, v10}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    .line 128
    move-result-object v9

    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v11, "[getNextAlarmDateTimeWithinSleepTime]activeStatus:"

    .line 136
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v6, " ,timeStamp:"

    .line 144
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    const-string v6, " ,nextAlarmDateTime:"

    .line 152
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v6

    .line 162
    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v6, v9}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_4

    .line 175
    const-string v6, "[getNextAlarmDateTimeWithinSleepTime]skip past alarm"

    .line 177
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    goto :goto_1

    .line 181
    :cond_4
    if-eqz v1, :cond_5

    .line 183
    invoke-virtual {v9, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_2

    .line 189
    :cond_5
    move-object v1, v9

    .line 190
    goto :goto_1

    .line 191
    :cond_6
    if-nez v1, :cond_7

    .line 193
    const-string p0, "[getNextAlarmDateTimeWithinSleepTime]No nextEarliestAlarmDateTime found"

    .line 195
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    goto/16 :goto_0

    .line 200
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const-string v5, "[getNextAlarmDateTimeWithinSleepTime]nextEarliestAlarmDateTime:"

    .line 207
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v2

    .line 217
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 222
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    .line 224
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 226
    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 229
    move-result v2

    .line 230
    if-nez v2, :cond_8

    .line 232
    invoke-virtual {v1, p0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 235
    move-result p0

    .line 236
    if-eqz p0, :cond_8

    .line 238
    sget-object p0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    .line 240
    invoke-virtual {v1, p0}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 243
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 247
    move-object v3, p0

    .line 248
    goto :goto_6

    .line 249
    :cond_8
    :try_start_5
    const-string p0, "[getNextAlarmDateTimeWithinSleepTime]Next Alarm is not within SleepTime"

    .line 251
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    goto/16 :goto_0

    .line 256
    :cond_9
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, " ,alerttimeColumnIndex:"

    .line 266
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object p0

    .line 276
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 279
    goto/16 :goto_0

    .line 281
    :goto_3
    if-eqz v4, :cond_a

    .line 283
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 286
    goto :goto_4

    .line 287
    :catchall_1
    move-exception v1

    .line 288
    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 291
    :cond_a
    :goto_4
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 292
    :goto_5
    const-string v1, "[getNextAlarmDateTimeWithinSleepTime]Exception"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    :cond_b
    :goto_6
    return-object v3
.end method

.method public static -$$Nest$mgetSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 10
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    .line 24
    const/4 v2, 0x0

    .line 25
    const-string v3, "[SS]SleepChargingTimeController"

    .line 27
    if-nez v1, :cond_0

    .line 29
    const-string p0, "Fail to get todaySleepPattern => Fail to getSleepChargingStatus"

    .line 31
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    goto/16 :goto_1

    .line 36
    :cond_0
    iget-wide v4, v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->wakeupTimeMillis:J

    .line 38
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 41
    move-result-object v4

    .line 42
    const-string v5, "UTC"

    .line 44
    invoke-static {v5}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 67
    move-result-object v4

    .line 68
    sget-object v6, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    .line 70
    invoke-virtual {v4, v6}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 73
    move-result-object v4

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    const-string v7, "[getSleepChargingStatus]todayWakeupDateTime:"

    .line 78
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v6

    .line 88
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v6, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 93
    if-eqz v6, :cond_1

    .line 95
    iget-object v6, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 97
    invoke-virtual {v6, v5}, Ljava/time/LocalDate;->isEqual(Ljava/time/chrono/ChronoLocalDate;)Z

    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_1

    .line 103
    iget-object v6, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 105
    iget-object v6, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 107
    invoke-virtual {v0, v6}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_1

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0, v4}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_3

    .line 120
    :goto_0
    const-wide/16 v4, 0x1

    .line 122
    invoke-virtual {v0, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    .line 129
    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 132
    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 140
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    .line 146
    if-nez v1, :cond_2

    .line 148
    const-string p0, "Fail to get tomorrowSleepPattern => Fail to getSleepChargingStatus"

    .line 150
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto :goto_1

    .line 154
    :cond_2
    const-string v2, "[getSleepChargingStatus]tomorrow SleepChargingStatus created"

    .line 156
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 161
    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;Ljava/time/LocalDate;)V

    .line 164
    goto :goto_1

    .line 165
    :cond_3
    const-string v0, "[getSleepChargingStatus]today SleepChargingStatus created"

    .line 167
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 172
    invoke-direct {v2, p0, v1, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;Ljava/time/LocalDate;)V

    .line 175
    :goto_1
    return-object v2
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 10
    const-string/jumbo v0, "content://com.samsung.sec.android.clockpackage/alarm"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ALARM_CONTENT_URI:Landroid/net/Uri;

    .line 19
    return-void
.end method


# virtual methods
.method public final activateAlarmChangedObserver(Z)V
    .locals 3

    .line 1
    const-string v0, "[activateAlarmChangedObserver]activate:"

    .line 3
    const-string v1, "[SS]SleepChargingTimeController"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)V

    .line 21
    iput-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    .line 23
    sget-object p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ALARM_CONTENT_URI:Landroid/net/Uri;

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-virtual {p1, p0, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    .line 33
    if-eqz p1, :cond_1

    .line 35
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public final activateDeviceTimeChangedReceiver(Z)V
    .locals 2

    .line 1
    const-string v0, "[activateDeviceTimeChangedReceiver]activate:"

    .line 3
    const-string v1, "[SS]SleepChargingTimeController"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p1, p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;I)V

    .line 16
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 18
    const-string p1, "android.intent.action.TIME_SET"

    .line 20
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 22
    invoke-static {p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 28
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 37
    if-eqz p1, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final activateTimeReachedReceiver(Z)V
    .locals 2

    .line 1
    const-string v0, "[activateTimeReachedReceiver]activate:"

    .line 3
    const-string v1, "[SS]SleepChargingTimeController"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;I)V

    .line 16
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 18
    new-instance p1, Landroid/content/IntentFilter;

    .line 20
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    const-string v0, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v0, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 45
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 54
    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method public final getInfoForOn()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 8
    const-string v2, ",  "

    .line 10
    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v3, "wakeupDateTime:"

    .line 17
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 22
    iget-object v3, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v3, "mNextAlarmDateTimeWithinSleepTime:"

    .line 42
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v3, "mSavedMinutesToFullCharge:"

    .line 65
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v2, "mSleepChargingEndDateTime:"

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public final isActivated()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[SS]SleepChargingTimeController"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string p0, "[isActivated]mIsTodaySleepChargingFinished true => false"

    .line 10
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return v1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 16
    if-nez p0, :cond_1

    .line 18
    const-string p0, "[isActivated]mSleepChargingStatus null => false"

    .line 20
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return v1

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isConfident:Z

    .line 26
    if-nez v0, :cond_2

    .line 28
    const-string p0, "[isActivated]mSleepChargingStatus Confident False => false"

    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return v1

    .line 34
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 36
    if-nez p0, :cond_3

    .line 38
    const-string p0, "[isActivated]mSleepChargingStatus isNowSessionTime False => false"

    .line 40
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return v1

    .line 44
    :cond_3
    const-string p0, "[isActivated]true"

    .line 46
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method public final isNowSleepChargingTime(I)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    .line 7
    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 18
    iget-object v1, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 20
    int-to-long v2, p1

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    .line 24
    move-result-object v1

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 27
    iget-object v2, v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    .line 29
    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 35
    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_1
    const/4 v2, -0x1

    .line 45
    if-ne p1, v2, :cond_2

    .line 47
    iget p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    .line 49
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    const-string v3, "[isNowSleepChargingTime]alarm:"

    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v3, " ,minsToFullCharge:"

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string p1, " ,sleepTime:"

    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 76
    iget-object p1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->bedDateTime:Ljava/time/LocalDateTime;

    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string p1, " ~ "

    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 88
    iget-object v3, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v3, " ,sleepChargingTime:"

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 100
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    .line 102
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    const-string p0, " ,result: "

    .line 113
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string p0, "[SS]SleepChargingTimeController"

    .line 118
    invoke-static {p0, v2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 121
    return v0
.end method

.method public final reset(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[reset]isEnd:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "[SS]SleepChargingTimeController"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateDeviceTimeChangedReceiver(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 27
    const-string v2, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 29
    invoke-virtual {p0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    .line 32
    const-string v2, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    .line 34
    invoke-virtual {p0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    .line 37
    const-string v2, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 39
    invoke-virtual {p0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    .line 42
    const-string v2, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x0

    .line 48
    if-nez p1, :cond_0

    .line 50
    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 52
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsUserDismissSleepCharging:Z

    .line 56
    const-wide/16 v3, 0x3e8

    .line 58
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    const-string v0, "[reset]sleep exception"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 71
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 73
    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    :cond_1
    return-void
.end method

.method public final setTimeNoti(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "alarm"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/AlarmManager;

    .line 11
    const-string v1, "[SS]SleepChargingTimeController"

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string p1, "Fail - AlarmManager null"

    .line 17
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 22
    const/16 p1, 0x15

    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x2

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    sparse-switch v2, :sswitch_data_0

    .line 38
    goto :goto_0

    .line 39
    :sswitch_0
    const-string v2, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 47
    const/4 v2, 0x3

    .line 48
    goto :goto_1

    .line 49
    :sswitch_1
    const-string v2, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 57
    move v2, v4

    .line 58
    goto :goto_1

    .line 59
    :sswitch_2
    const-string v2, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 67
    move v2, v5

    .line 68
    goto :goto_1

    .line 69
    :sswitch_3
    const-string v2, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 77
    move v2, v3

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 80
    :goto_1
    if-eqz v2, :cond_4

    .line 82
    if-eq v2, v4, :cond_3

    .line 84
    if-eq v2, v3, :cond_2

    .line 86
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 88
    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 93
    iget-object v2, v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 95
    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledWakeupTime:Ljava/time/LocalDateTime;

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 100
    iget-object v2, v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    .line 102
    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingStartTime:Ljava/time/LocalDateTime;

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    .line 112
    move-result-object v3

    .line 113
    sget-object v4, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 115
    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_5

    .line 121
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 128
    move-result-object v2

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    .line 133
    move-result-object v2

    .line 134
    const-wide/16 v6, 0x1

    .line 136
    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 143
    move-result-object v2

    .line 144
    :goto_2
    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledUpdateTime:Ljava/time/LocalDateTime;

    .line 146
    :goto_3
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 161
    move-result-wide v3

    .line 162
    new-instance v6, Landroid/content/Intent;

    .line 164
    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 169
    const/high16 v7, 0x4000000

    .line 171
    invoke-static {p0, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v0, v5, v3, v4, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    .line 180
    const-string v0, "[setTimeNoti]action:"

    .line 182
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string p1, " ,scheduledTime:"

    .line 190
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p0

    .line 200
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 204
    nop

    .line 205
    :sswitch_data_0
    .sparse-switch
        -0x60d45d7c -> :sswitch_3
        -0x2f5f68c6 -> :sswitch_2
        -0x2711cbd9 -> :sswitch_1
        -0x119aed72 -> :sswitch_0
    .end sparse-switch
.end method

.method public final unsetTimeNoti(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "[unsetTimeNoti]action:"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "[SS]SleepChargingTimeController"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 14
    const-string v2, "alarm"

    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/app/AlarmManager;

    .line 22
    if-nez v0, :cond_0

    .line 24
    const-string p0, "Fail - AlarmManager null"

    .line 26
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x1

    .line 37
    sparse-switch v1, :sswitch_data_0

    .line 40
    goto :goto_0

    .line 41
    :sswitch_0
    const-string v1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 49
    const/4 v1, 0x3

    .line 50
    goto :goto_1

    .line 51
    :sswitch_1
    const-string v1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 59
    move v1, v4

    .line 60
    goto :goto_1

    .line 61
    :sswitch_2
    const-string v1, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 69
    move v1, v3

    .line 70
    goto :goto_1

    .line 71
    :sswitch_3
    const-string v1, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 79
    move v1, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 82
    :goto_1
    const/4 v5, 0x0

    .line 83
    if-eqz v1, :cond_4

    .line 85
    if-eq v1, v4, :cond_3

    .line 87
    if-eq v1, v2, :cond_2

    .line 89
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledWakeupTime:Ljava/time/LocalDateTime;

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingStartTime:Ljava/time/LocalDateTime;

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledUpdateTime:Ljava/time/LocalDateTime;

    .line 100
    :goto_2
    new-instance v1, Landroid/content/Intent;

    .line 102
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 107
    const/high16 p1, 0x4000000

    .line 109
    invoke-static {p0, v3, v1, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 116
    return-void

    .line 117
    :sswitch_data_0
    .sparse-switch
        -0x60d45d7c -> :sswitch_3
        -0x2f5f68c6 -> :sswitch_2
        -0x2711cbd9 -> :sswitch_1
        -0x119aed72 -> :sswitch_0
    .end sparse-switch
.end method

.method public final updateSleepChargingEndTime(IZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[updateSleepChargingEndTime]isSleepCharging:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " ,minutesToFullCharge:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "[SS]SleepChargingTimeController"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    .line 30
    if-eqz p2, :cond_0

    .line 32
    const/4 v2, -0x1

    .line 33
    if-eq p1, v2, :cond_0

    .line 35
    iput p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    .line 37
    iget-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 39
    iget-object p2, p2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 41
    int-to-long v2, p1

    .line 42
    invoke-virtual {p2, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 56
    iget-object p1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 58
    iget p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    .line 60
    int-to-long v2, p2

    .line 61
    invoke-virtual {p1, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    .line 77
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    const-string p2, "[updateSleepChargingEndTime]mSleepChargingEndDateTime:"

    .line 81
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
