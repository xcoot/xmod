.class public final Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/16 p1, 0x15

    .line 3
    const-string v0, "[SS]SleepChargingTimeController"

    .line 5
    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->$r8$classId:I

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    sget-object v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 16
    const-string v1, "[DeviceTimeChangedReceiver_onReceive]action:"

    .line 18
    invoke-static {v1, p2, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 23
    invoke-static {p2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 26
    move-result-object p2

    .line 27
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 29
    iget-object v1, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 31
    if-eqz v1, :cond_0

    .line 33
    if-eqz p2, :cond_0

    .line 35
    iget-object v2, p2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 37
    iget-object v1, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 39
    invoke-virtual {v2, v1}, Ljava/time/LocalDate;->isEqual(Ljava/time/chrono/ChronoLocalDate;)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 45
    iget-boolean p2, p2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 47
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 49
    iget-object v1, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 51
    iget-boolean v1, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 53
    if-ne p2, v1, :cond_0

    .line 55
    const/4 p2, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p2, 0x1

    .line 58
    :goto_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 64
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const-string v1, ""

    .line 75
    :goto_1
    const-string v2, "TimeZone:"

    .line 77
    const-string v3, " ,elapsedRealtime:"

    .line 79
    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v1

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 86
    move-result-wide v2

    .line 87
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, " ,shouldReset:"

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, " ,isTodaySleepChargingFinished:"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 105
    iget-boolean v2, v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string v2, " ,isUserDismissSleepCharging:"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 117
    iget-boolean v2, v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsUserDismissSleepCharging:Z

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    const-string v2, "[DeviceTimeChangedReceiver_onReceive]"

    .line 128
    invoke-static {v2, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    if-eqz p2, :cond_2

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    const-string v0, "[DeviceTimeChanged]"

    .line 137
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p2

    .line 147
    const/4 v0, 0x2

    .line 148
    invoke-static {v0, p2}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 153
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 155
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    :cond_2
    return-void

    .line 159
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 162
    move-result-object p2

    .line 163
    sget-object v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    const-string v2, "[TimeReachedReceiver_onReceive]action:"

    .line 169
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v0, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 184
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_3

    .line 190
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 192
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 194
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    goto :goto_2

    .line 198
    :cond_3
    const-string p1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_4

    .line 206
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 208
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 210
    const/16 p1, 0x17

    .line 212
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    goto :goto_2

    .line 216
    :cond_4
    const-string p1, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_5

    .line 224
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 226
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 228
    const/16 p1, 0x18

    .line 230
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    goto :goto_2

    .line 234
    :cond_5
    const-string p1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    .line 236
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_6

    .line 242
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 244
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 246
    const/16 p1, 0x19

    .line 248
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    :cond_6
    :goto_2
    return-void

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
