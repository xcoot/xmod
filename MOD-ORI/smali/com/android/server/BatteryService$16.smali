.class public final Lcom/android/server/BatteryService$16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/BatteryService$16;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final run$com$android$server$BatteryService$36()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget-wide v2, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 15
    .line 16
    iget-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    cmp-long v4, v4, v6

    .line 21
    .line 22
    if-gez v4, :cond_1

    .line 23
    .line 24
    const-string v4, "/efs/FactoryApp/max_current"

    .line 25
    .line 26
    invoke-static {v4}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v8

    .line 30
    cmp-long v5, v8, v6

    .line 31
    .line 32
    if-gez v5, :cond_0

    .line 33
    .line 34
    const-wide/16 v8, -0x1

    .line 35
    .line 36
    invoke-static {v8, v9, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iput-wide v8, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 40
    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 42
    .line 43
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 44
    .line 45
    cmp-long v0, v4, v2

    .line 46
    .line 47
    if-gez v0, :cond_2

    .line 48
    .line 49
    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 50
    .line 51
    const-string p0, "/efs/FactoryApp/max_current"

    .line 52
    .line 53
    invoke-static {v2, v3, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    throw p0
.end method

.method private final run$com$android$server$BatteryService$37()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v1, v3, v5

    .line 20
    .line 21
    if-gtz v1, :cond_0

    .line 22
    .line 23
    const-wide/16 v3, 0x1

    .line 24
    .line 25
    invoke-static {v3, v4, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 31
    .line 32
    const-wide/32 v1, 0xf4240

    .line 33
    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    cmp-long p0, v3, v1

    .line 38
    .line 39
    if-gez p0, :cond_2

    .line 40
    .line 41
    add-long/2addr v1, v3

    .line 42
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 43
    .line 44
    const-string p0, "BatteryService"

    .line 45
    .line 46
    const-string v5, "!@ + 10000 cycle"

    .line 47
    .line 48
    invoke-static {p0, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    cmp-long p0, v3, v1

    .line 55
    .line 56
    if-ltz p0, :cond_2

    .line 57
    .line 58
    sub-long v1, v3, v1

    .line 59
    .line 60
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 61
    .line 62
    const-string p0, "BatteryService"

    .line 63
    .line 64
    const-string v5, "!@ - 10000 cycle"

    .line 65
    .line 66
    invoke-static {p0, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-wide v1, v3

    .line 71
    :goto_0
    cmp-long p0, v3, v1

    .line 72
    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    const-string p0, "/efs/FactoryApp/batt_discharge_level"

    .line 76
    .line 77
    invoke-static {v1, v2, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p0, "/efs/FactoryApp/batt_discharge_level"

    .line 81
    .line 82
    const/16 v3, 0x3ef

    .line 83
    .line 84
    const/16 v4, 0x1b0

    .line 85
    .line 86
    const/16 v5, 0x3e8

    .line 87
    .line 88
    invoke-static {p0, v4, v5, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 89
    .line 90
    .line 91
    sget-boolean p0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 92
    .line 93
    if-eqz p0, :cond_3

    .line 94
    .line 95
    const-string p0, "/sys/class/power_supply/battery/battery_cycle"

    .line 96
    .line 97
    const-wide/16 v3, 0x64

    .line 98
    .line 99
    div-long/2addr v1, v3

    .line 100
    invoke-static {v1, v2, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    monitor-exit v0

    .line 104
    return-void

    .line 105
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/server/BatteryService$16;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 10
    .line 11
    const-string v0, "/efs/Battery/batt_full_capacity"

    .line 12
    .line 13
    const-string v1, "/sys/class/power_supply/battery/batt_full_capacity"

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-wide/16 v2, 0x55

    .line 18
    .line 19
    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-wide/16 v2, 0x64

    .line 27
    .line 28
    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/BatteryService$16;->run$com$android$server$BatteryService$37()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/BatteryService$16;->run$com$android$server$BatteryService$36()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 49
    .line 50
    iget-wide v2, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 51
    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 57
    .line 58
    iget-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 59
    .line 60
    const-wide/16 v6, 0x0

    .line 61
    .line 62
    cmp-long v4, v4, v6

    .line 63
    .line 64
    if-gez v4, :cond_2

    .line 65
    .line 66
    const-string v4, "/efs/FactoryApp/max_temp"

    .line 67
    .line 68
    invoke-static {v4}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v8

    .line 72
    cmp-long v5, v8, v6

    .line 73
    .line 74
    if-gez v5, :cond_1

    .line 75
    .line 76
    const-wide/16 v8, -0x1

    .line 77
    .line 78
    invoke-static {v8, v9, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    iput-wide v8, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 82
    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 84
    .line 85
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 86
    .line 87
    cmp-long v0, v4, v2

    .line 88
    .line 89
    if-gez v0, :cond_3

    .line 90
    .line 91
    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 92
    .line 93
    const-string p0, "/efs/FactoryApp/max_temp"

    .line 94
    .line 95
    invoke-static {v2, v3, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    :goto_1
    monitor-exit v1

    .line 102
    return-void

    .line 103
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    throw p0

    .line 108
    :pswitch_3
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 109
    .line 110
    const-string v0, "BatteryService"

    .line 111
    .line 112
    const-string/jumbo v1, "send intent to device care for showing menu"

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    new-instance v0, Landroid/content/Intent;

    .line 119
    .line 120
    const-string/jumbo v1, "com.sec.android.settings.ENABLE_WIRELESS_CHARGER_MENU"

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/high16 v1, 0x1000000

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    sget-object v1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string/jumbo v2, "no power"

    .line 158
    .line 159
    .line 160
    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 164
    .line 165
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 166
    .line 167
    if-eqz p0, :cond_4

    .line 168
    .line 169
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    if-eqz p0, :cond_4

    .line 174
    .line 175
    sget-object v1, Lcom/att/iqi/lib/metrics/hw/HW0E;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_4

    .line 182
    .line 183
    new-instance v1, Lcom/att/iqi/lib/metrics/hw/HW0E;

    .line 184
    .line 185
    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/hw/HW0E;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v0}, Lcom/att/iqi/lib/metrics/hw/HW0E;->setEvent(B)Lcom/att/iqi/lib/metrics/hw/HW0E;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 195
    .line 196
    const-string p0, "BatteryService"

    .line 197
    .line 198
    const-string v0, "!@ BatteryService No power and call shutdown thread"

    .line 199
    .line 200
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    :cond_5
    return-void

    .line 204
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 205
    .line 206
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 207
    .line 208
    monitor-enter v1

    .line 209
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 210
    .line 211
    iget v3, v2, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 212
    .line 213
    add-int/2addr v3, v0

    .line 214
    iput v3, v2, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 215
    .line 216
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 217
    const-string/jumbo v1, "ril.rfcal_date"

    .line 218
    .line 219
    .line 220
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-string/jumbo v3, "ril.manufacturedate"

    .line 225
    .line 226
    .line 227
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    iput-object v3, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 232
    .line 233
    if-eqz v1, :cond_6

    .line 234
    .line 235
    const-string v3, "."

    .line 236
    .line 237
    const-string v4, ""

    .line 238
    .line 239
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    iput-object v1, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 244
    .line 245
    :cond_6
    iget-object v1, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 246
    .line 247
    const-string v3, "BatteryService"

    .line 248
    .line 249
    const/4 v4, 0x2

    .line 250
    const/4 v5, 0x3

    .line 251
    const/4 v6, 0x0

    .line 252
    const/4 v7, 0x6

    .line 253
    const/16 v8, 0x8

    .line 254
    .line 255
    const/4 v9, 0x4

    .line 256
    if-eqz v1, :cond_7

    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-ne v1, v8, :cond_7

    .line 263
    .line 264
    iget-object v1, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    iget-object v10, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v10, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    iget-object v11, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v11, "!@[LLB] rfcal_date "

    .line 285
    .line 286
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v11, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-static {v3, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_7
    iget-object v1, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 303
    .line 304
    if-eqz v1, :cond_e

    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-ne v1, v8, :cond_e

    .line 311
    .line 312
    iget-object v1, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    iget-object v10, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v10, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    iget-object v11, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string v11, "!@[LLB] manufacture_date "

    .line 333
    .line 334
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget-object v11, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    invoke-static {v3, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    iput-object v8, v2, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 354
    .line 355
    new-instance v8, Ljava/util/GregorianCalendar;

    .line 356
    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v11

    .line 361
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    move-result v7

    .line 369
    invoke-direct {v8, v11, v10, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 370
    .line 371
    .line 372
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-nez v1, :cond_8

    .line 377
    .line 378
    :goto_4
    move v1, v5

    .line 379
    goto/16 :goto_8

    .line 380
    .line 381
    :cond_8
    iget-object v1, v2, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 382
    .line 383
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    sub-int/2addr v1, v7

    .line 392
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    sub-int/2addr v7, v9

    .line 397
    iget-object v8, v2, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 398
    .line 399
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    if-nez v1, :cond_a

    .line 404
    .line 405
    sub-int/2addr v8, v7

    .line 406
    if-lez v8, :cond_9

    .line 407
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v7, "!@[LLB] same year diff_Week= "

    .line 411
    .line 412
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    goto :goto_6

    .line 426
    :cond_9
    const-string v1, "!@[LLB] same year but error month!!!"

    .line 427
    .line 428
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    :goto_5
    move v1, v4

    .line 432
    goto/16 :goto_8

    .line 433
    .line 434
    :cond_a
    if-gez v1, :cond_b

    .line 435
    .line 436
    const-string v1, "!@[LLB] error year"

    .line 437
    .line 438
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    goto :goto_5

    .line 442
    :cond_b
    sub-int/2addr v1, v0

    .line 443
    mul-int/lit8 v1, v1, 0x34

    .line 444
    .line 445
    rsub-int/lit8 v7, v7, 0x34

    .line 446
    .line 447
    add-int/2addr v7, v1

    .line 448
    add-int/2addr v8, v7

    .line 449
    :goto_6
    const-string v1, "!@[LLB] EFS values: "

    .line 450
    .line 451
    const-string v7, "/efs/FactoryApp/batt_after_manufactured"

    .line 452
    .line 453
    invoke-static {v7, v0}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    if-eqz v10, :cond_c

    .line 462
    .line 463
    const-string v1, "!@[LLB] /efs/FactoryApp/batt_after_manufactured is null, It looks first time, just make it."

    .line 464
    .line 465
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_c
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    move-result v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 473
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v1, ", Diff_week: "

    .line 482
    .line 483
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    .line 494
    .line 495
    .line 496
    goto :goto_7

    .line 497
    :catch_0
    const/4 v1, -0x1

    .line 498
    move v6, v1

    .line 499
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    const-string v10, "!@[LLB] !@[BatteryInfo] /efs/FactoryApp/batt_after_manufactured : data is \""

    .line 502
    .line 503
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v9, "\""

    .line 510
    .line 511
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :goto_7
    if-ge v6, v8, :cond_d

    .line 522
    .line 523
    int-to-long v9, v8

    .line 524
    const-string v1, "/sys/class/power_supply/battery/batt_after_manufactured"

    .line 525
    .line 526
    invoke-static {v9, v10, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-static {v9, v10, v7}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 530
    .line 531
    .line 532
    iput v8, v2, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 533
    .line 534
    :cond_d
    move v1, v0

    .line 535
    goto :goto_8

    .line 536
    :cond_e
    const-string v1, "!@[LLB] mRfCalDate is null!!! manufacture_date is also null!!!  we can not check weekly diff"

    .line 537
    .line 538
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    goto/16 :goto_4

    .line 542
    .line 543
    :goto_8
    if-eq v1, v0, :cond_12

    .line 544
    .line 545
    if-eq v1, v4, :cond_11

    .line 546
    .line 547
    if-eq v1, v5, :cond_f

    .line 548
    .line 549
    goto :goto_9

    .line 550
    :cond_f
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 551
    .line 552
    const-string v0, "BatteryService"

    .line 553
    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    const-string v2, "!@[LLB] Faild to get property values, longBatteryRetryCnt= "

    .line 557
    .line 558
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget-object v2, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 562
    .line 563
    iget v2, v2, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 564
    .line 565
    invoke-static {v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 566
    .line 567
    .line 568
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 569
    .line 570
    iget v1, v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 571
    .line 572
    const/4 v2, 0x5

    .line 573
    if-ge v1, v2, :cond_10

    .line 574
    .line 575
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 576
    .line 577
    const-wide/16 v1, 0xbb8

    .line 578
    .line 579
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 580
    .line 581
    .line 582
    goto :goto_9

    .line 583
    :cond_10
    const-string p0, "BatteryService"

    .line 584
    .line 585
    const-string v0, "!@[LLB] Faild to calc checkLongLifeBatteryInternal, Do not try anymore"

    .line 586
    .line 587
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    goto :goto_9

    .line 591
    :cond_11
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 592
    .line 593
    const-string p0, "BatteryService"

    .line 594
    .line 595
    const-string v0, "!@[LLB] Calc error! check date!  "

    .line 596
    .line 597
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    goto :goto_9

    .line 601
    :cond_12
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 602
    .line 603
    const-string p0, "BatteryService"

    .line 604
    .line 605
    const-string v0, "!@[LLB] success to check weekly diff "

    .line 606
    .line 607
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    :goto_9
    return-void

    .line 611
    :catchall_2
    move-exception p0

    .line 612
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 613
    throw p0

    .line 614
    :pswitch_6
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 615
    .line 616
    const-string v1, "BatteryService"

    .line 617
    .line 618
    const-string v2, "!@bootCompleted"

    .line 619
    .line 620
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 624
    .line 625
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 626
    .line 627
    monitor-enter v1

    .line 628
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 629
    .line 630
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 631
    .line 632
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 633
    .line 634
    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 635
    .line 636
    .line 637
    monitor-exit v1

    .line 638
    return-void

    .line 639
    :catchall_3
    move-exception p0

    .line 640
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 641
    throw p0

    .line 642
    nop

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
