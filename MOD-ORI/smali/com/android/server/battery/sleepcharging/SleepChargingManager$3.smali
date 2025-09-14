.class public final Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[scm_handleMessage]msg:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const-string v2, "[SS]SleepChargingManager"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget p1, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/16 v0, 0xb

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 20
    .line 21
    if-eq p1, v0, :cond_3

    .line 22
    .line 23
    const/16 v0, 0xc

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    packed-switch p1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    .line 35
    .line 36
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 37
    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :pswitch_1
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    const-string p1, "[scm_handleMessage]ON -> OFF (for reset)"

    .line 53
    .line 54
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->sendResultOff()V

    .line 60
    .line 61
    .line 62
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 63
    .line 64
    const-string p1, "Updated & Reset"

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "/data/log/battery_service/sleep_charging_history"

    .line 71
    .line 72
    invoke-static {v1, p1, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "[Updated SleepChargingStatus]"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 90
    .line 91
    if-nez v2, :cond_1

    .line 92
    .line 93
    const-string v0, "SleepChargingStatus null"

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v3, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 105
    .line 106
    iget-object v3, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, ",  "

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string/jumbo v4, "confidence:"

    .line 134
    .line 135
    .line 136
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v4, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 140
    .line 141
    iget v4, v4, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->confidence:F

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string/jumbo v3, "sleepTime:"

    .line 159
    .line 160
    .line 161
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 165
    .line 166
    iget-object v3, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->bedDateTime:Ljava/time/LocalDateTime;

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v3, " ~ "

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 179
    .line 180
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const/4 v0, 0x2

    .line 202
    invoke-static {v0, p1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 210
    .line 211
    if-eqz p1, :cond_4

    .line 212
    .line 213
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 214
    .line 215
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_3
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 220
    .line 221
    .line 222
    :cond_4
    :goto_1
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
