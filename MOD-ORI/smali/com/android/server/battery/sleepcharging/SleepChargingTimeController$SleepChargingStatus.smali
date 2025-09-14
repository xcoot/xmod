.class public final Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final bedDateTime:Ljava/time/LocalDateTime;

.field public final confidence:F

.field public expectedFullChargeDateTime:Ljava/time/LocalDateTime;

.field public final isConfident:Z

.field public isNowSessionTime:Z

.field public final matchedDate:Ljava/time/LocalDate;

.field public final sleepChargingStartDateTime:Ljava/time/LocalDateTime;

.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

.field public final wakeupDateTime:Ljava/time/LocalDateTime;


# direct methods
.method public static -$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 4
    .line 5
    const-wide/16 v1, 0x3c

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 23
    .line 24
    :goto_0
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "[updateExpectedFullChargeDateTime]expectedFullChargeDateTime:"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "[SS]SleepChargingTimeController"

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;Ljava/time/LocalDate;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 7
    .line 8
    sget-object p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "[SleepChargingStatus]matchedDate:"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "("

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "[SS]SleepChargingTimeController"

    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-wide v1, p2, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->wakeupTimeMillis:J

    .line 51
    .line 52
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "UTC"

    .line 57
    .line 58
    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1, v2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p3, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    sget-object v3, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 85
    .line 86
    iget-wide v4, p2, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->bedTimeMillis:J

    .line 87
    .line 88
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v4, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const-wide/16 v4, 0x1

    .line 116
    .line 117
    invoke-virtual {p3, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    :goto_0
    invoke-static {p3, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, v3}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->bedDateTime:Ljava/time/LocalDateTime;

    .line 130
    .line 131
    new-instance p3, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "bedDateTime:"

    .line 134
    .line 135
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    const-wide/16 v3, 0x1e

    .line 149
    .line 150
    invoke-virtual {p1, v3, v4}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    .line 155
    .line 156
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-virtual {p3, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_1

    .line 165
    .line 166
    invoke-virtual {p3, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    if-eqz p3, :cond_1

    .line 171
    .line 172
    const/4 p3, 0x1

    .line 173
    goto :goto_1

    .line 174
    :cond_1
    const/4 p3, 0x0

    .line 175
    :goto_1
    iput-boolean p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 176
    .line 177
    new-instance p3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string/jumbo v1, "sessionTime:"

    .line 180
    .line 181
    .line 182
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p1, " ~ "

    .line 189
    .line 190
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string p1, " ,isNowSessionTime:"

    .line 197
    .line 198
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-boolean p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 202
    .line 203
    invoke-static {v0, p3, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 204
    .line 205
    .line 206
    iget p1, p2, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->confidence:F

    .line 207
    .line 208
    iput p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->confidence:F

    .line 209
    .line 210
    iget-boolean p2, p2, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->isConfident:Z

    .line 211
    .line 212
    iput-boolean p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isConfident:Z

    .line 213
    .line 214
    new-instance p3, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string/jumbo v1, "confidence:"

    .line 217
    .line 218
    .line 219
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string p1, " ,isConfident:"

    .line 226
    .line 227
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    const-wide/16 p1, 0x3c

    .line 241
    .line 242
    invoke-virtual {v2, p1, p2}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 247
    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string p2, "MARGIN_MINUTES_FOR_END:60 ,expectedFullChargeDateTime:"

    .line 251
    .line 252
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    .line 256
    .line 257
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    return-void
.end method
