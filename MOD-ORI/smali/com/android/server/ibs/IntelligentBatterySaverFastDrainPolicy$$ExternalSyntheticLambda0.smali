.class public final synthetic Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 9
    .line 10
    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v0, v2, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 19
    .line 20
    const-string/jumbo v3, "move to state motion"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x10

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    .line 36
    .line 37
    iget-boolean v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    .line 38
    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x2

    .line 50
    if-ne v3, v4, :cond_0

    .line 51
    .line 52
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 53
    .line 54
    iget-object v3, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 55
    .line 56
    iget-object v4, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    .line 59
    .line 60
    invoke-virtual {v3, v2, v4}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 66
    .line 67
    iget-object v4, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 68
    .line 69
    iget-object v5, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    .line 72
    .line 73
    invoke-virtual {v4, v3, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    :goto_0
    if-eqz v2, :cond_1

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    iput-boolean v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v3, "Unable to register for "

    .line 86
    .line 87
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 109
    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const-string v1, "alarm"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/app/AlarmManager;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 123
    .line 124
    :cond_3
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 125
    .line 126
    iget-object v8, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 127
    .line 128
    const/4 v3, 0x3

    .line 129
    const-string v6, "IntelligentBatterySaver.motion"

    .line 130
    .line 131
    iget-object v7, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    const-string p0, " inactive alarm triggered but state is not inactive!"

    .line 138
    .line 139
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :goto_2
    return-void

    .line 143
    :pswitch_0
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 144
    .line 145
    const/4 v1, 0x4

    .line 146
    if-ne v0, v1, :cond_5

    .line 147
    .line 148
    const/4 v0, 0x5

    .line 149
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 152
    .line 153
    const-string/jumbo v2, "move to safe check"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 160
    .line 161
    and-int/lit8 v1, v1, -0x61

    .line 162
    .line 163
    iput v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    iput-boolean v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->initialized:Z

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleSaveCheckTimeoutAlarm()V

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    .line 180
    .line 181
    const-string v0, " motion alarm triggered but state is not motion!"

    .line 182
    .line 183
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :goto_3
    return-void

    .line 187
    :pswitch_1
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 188
    .line 189
    const/4 v1, 0x5

    .line 190
    if-ne v0, v1, :cond_6

    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 193
    .line 194
    const-string/jumbo v2, "safe check alarm trigger"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleSaveCheckTimeoutAlarm()V

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 204
    .line 205
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_6
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    .line 210
    .line 211
    const-string v0, " safe check alarm triggered but state is safe check!"

    .line 212
    .line 213
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :goto_4
    return-void

    .line 217
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateActivated()V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
