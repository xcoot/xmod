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

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[scm_handleMessage]msg:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 10
    const-string v2, "[SS]SleepChargingManager"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    iget p1, p1, Landroid/os/Message;->what:I

    .line 17
    const/16 v0, 0xb

    .line 19
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 21
    if-eq p1, v0, :cond_3

    .line 23
    const/16 v0, 0xc

    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq p1, v0, :cond_2

    .line 28
    const/4 v0, 0x0

    .line 29
    packed-switch p1, :pswitch_data_0

    .line 32
    goto/16 :goto_1

    .line 34
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    .line 36
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 39
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    .line 41
    goto/16 :goto_1

    .line 43
    :pswitch_1
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 46
    goto/16 :goto_1

    .line 48
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 50
    if-eqz p1, :cond_0

    .line 52
    const-string p1, "[scm_handleMessage]ON -> OFF (for reset)"

    .line 54
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 59
    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->sendResultOff()V

    .line 62
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 64
    const-string p1, "Updated & Reset"

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    const-string v1, "/data/log/battery_service/sleep_charging_history"

    .line 72
    invoke-static {v1, p1, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    const-string v0, "[Updated SleepChargingStatus]"

    .line 79
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    iget-object v2, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 91
    if-nez v2, :cond_1

    .line 93
    const-string v0, "SleepChargingStatus null"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v3, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 106
    iget-object v3, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    .line 108
    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v3, ",  "

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v4, "confidence:"

    .line 136
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v4, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 141
    iget v4, v4, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->confidence:F

    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v3, "sleepTime:"

    .line 161
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v3, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 166
    iget-object v3, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->bedDateTime:Ljava/time/LocalDateTime;

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string v3, " ~ "

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 178
    iget-object v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    .line 180
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    const/4 v0, 0x2

    .line 202
    invoke-static {v0, p1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 205
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 208
    goto :goto_1

    .line 209
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 211
    if-eqz p1, :cond_4

    .line 213
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 215
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 218
    goto :goto_1

    .line 219
    :cond_3
    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

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
