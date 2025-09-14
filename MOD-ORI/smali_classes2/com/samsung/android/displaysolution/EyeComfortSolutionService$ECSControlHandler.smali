.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    if-eq p1, v0, :cond_5

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_4

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq p1, v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    const/4 p1, -0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v2

    .line 39
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_3
    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mgetBoprValue(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_4
    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mgetBoprValue(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSupportAPmDNIe:Z

    .line 55
    .line 56
    const-string v1, "Success to register all of the services system."

    .line 57
    .line 58
    const-string v2, "Failure to register all of the services system."

    .line 59
    .line 60
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 61
    .line 62
    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 63
    .line 64
    const-string v5, "EyeComfortSolutionService"

    .line 65
    .line 66
    if-eqz p1, :cond_7

    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const-string v6, "display_aiqe"

    .line 71
    .line 72
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 79
    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v6, "mDisplayAiqeManager : "

    .line 83
    .line 84
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 88
    .line 89
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v5, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 100
    .line 101
    if-nez p0, :cond_6

    .line 102
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide p0

    .line 107
    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    .line 109
    .line 110
    int-to-long v6, v3

    .line 111
    add-long/2addr p0, v6

    .line 112
    invoke-virtual {v4, v0, p0, p1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 113
    .line 114
    .line 115
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    const-string/jumbo v6, "sensor"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/hardware/SensorManager;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string/jumbo v6, "mSensorManager : "

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 145
    .line 146
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v5, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 157
    .line 158
    if-eqz p1, :cond_8

    .line 159
    .line 160
    const v6, 0x10033

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    .line 168
    .line 169
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 170
    .line 171
    if-nez p0, :cond_9

    .line 172
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 174
    .line 175
    .line 176
    move-result-wide p0

    .line 177
    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    .line 179
    .line 180
    int-to-long v6, v3

    .line 181
    add-long/2addr p0, v6

    .line 182
    invoke-virtual {v4, v0, p0, p1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 183
    .line 184
    .line 185
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_9
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :goto_1
    return-void
.end method
