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

    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private final run$com$android$server$BatteryService$36()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 8
    iget-wide v2, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 16
    iget-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 18
    const-wide/16 v6, 0x0

    .line 20
    cmp-long v4, v4, v6

    .line 22
    if-gez v4, :cond_1

    .line 24
    const-string v4, "/efs/FactoryApp/max_current"

    .line 26
    invoke-static {v4}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 29
    move-result-wide v8

    .line 30
    cmp-long v5, v8, v6

    .line 32
    if-gez v5, :cond_0

    .line 34
    const-wide/16 v8, -0x1

    .line 36
    invoke-static {v8, v9, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 39
    :cond_0
    iput-wide v8, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 43
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 45
    cmp-long v0, v4, v2

    .line 47
    if-gez v0, :cond_2

    .line 49
    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 51
    const-string p0, "/efs/FactoryApp/max_current"

    .line 53
    invoke-static {v2, v3, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

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

    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 8
    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {v2}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 16
    move-result-wide v3

    .line 17
    const-wide/16 v5, 0x0

    .line 19
    cmp-long v1, v3, v5

    .line 21
    if-gtz v1, :cond_0

    .line 23
    const-wide/16 v3, 0x1

    .line 25
    invoke-static {v3, v4, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 30
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 32
    const-wide/32 v1, 0xf4240

    .line 35
    if-eqz p0, :cond_1

    .line 37
    cmp-long p0, v3, v1

    .line 39
    if-gez p0, :cond_2

    .line 41
    add-long/2addr v1, v3

    .line 42
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 44
    const-string p0, "BatteryService"

    .line 46
    const-string v5, "!@ + 10000 cycle"

    .line 48
    invoke-static {p0, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 56
    if-ltz p0, :cond_2

    .line 58
    sub-long v1, v3, v1

    .line 60
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 62
    const-string p0, "BatteryService"

    .line 64
    const-string v5, "!@ - 10000 cycle"

    .line 66
    invoke-static {p0, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-wide v1, v3

    .line 71
    :goto_0
    cmp-long p0, v3, v1

    .line 73
    if-eqz p0, :cond_3

    .line 75
    const-string p0, "/efs/FactoryApp/batt_discharge_level"

    .line 77
    invoke-static {v1, v2, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 80
    const-string p0, "/efs/FactoryApp/batt_discharge_level"

    .line 82
    const/16 v3, 0x3ef

    .line 84
    const/16 v4, 0x1b0

    .line 86
    const/16 v5, 0x3e8

    .line 88
    invoke-static {p0, v4, v5, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 91
    sget-boolean p0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 93
    if-eqz p0, :cond_3

    .line 95
    const-string p0, "/sys/class/power_supply/battery/battery_cycle"

    .line 97
    const-wide/16 v3, 0x64

    .line 99
    div-long/2addr v1, v3

    .line 100
    invoke-static {v1, v2, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

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

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 7
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 9
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 11
    const-string v0, "/efs/Battery/batt_full_capacity"

    .line 13
    const-string v1, "/sys/class/power_supply/battery/batt_full_capacity"

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const-wide/16 v2, 0x55

    .line 19
    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 22
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-wide/16 v2, 0x64

    .line 28
    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 31
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/BatteryService$16;->run$com$android$server$BatteryService$37()V

    .line 38
    return-void

    .line 39
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/BatteryService$16;->run$com$android$server$BatteryService$36()V

    .line 42
    return-void

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 45
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 50
    iget-wide v2, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 55
    monitor-enter v1

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 58
    iget-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 60
    const-wide/16 v6, 0x0

    .line 62
    cmp-long v4, v4, v6

    .line 64
    if-gez v4, :cond_2

    .line 66
    const-string v4, "/efs/FactoryApp/max_temp"

    .line 68
    invoke-static {v4}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 71
    move-result-wide v8

    .line 72
    cmp-long v5, v8, v6

    .line 74
    if-gez v5, :cond_1

    .line 76
    const-wide/16 v8, -0x1

    .line 78
    invoke-static {v8, v9, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 81
    :cond_1
    iput-wide v8, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 85
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 87
    cmp-long v0, v4, v2

    .line 89
    if-gez v0, :cond_3

    .line 91
    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 93
    const-string p0, "/efs/FactoryApp/max_temp"

    .line 95
    invoke-static {v2, v3, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

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

    .line 110
    const-string v0, "BatteryService"

    .line 112
    const-string/jumbo v1, "send intent to device care for showing menu"

    .line 115
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "com.sec.android.settings.ENABLE_WIRELESS_CHARGER_MENU"

    .line 123
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    const/high16 v1, 0x1000000

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 133
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 135
    sget-object v1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 137
    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 140
    return-void

    .line 141
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 143
    iget-object v1, v1, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 145
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_5

    .line 151
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 153
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 156
    move-result-object v1

    .line 157
    const-string/jumbo v2, "no power"

    .line 160
    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 165
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 167
    if-eqz p0, :cond_4

    .line 169
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    .line 172
    move-result-object p0

    .line 173
    if-eqz p0, :cond_4

    .line 175
    sget-object v1, Lcom/att/iqi/lib/metrics/hw/HW0E;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 177
    invoke-virtual {p0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_4

    .line 183
    new-instance v1, Lcom/att/iqi/lib/metrics/hw/HW0E;

    .line 185
    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/hw/HW0E;-><init>()V

    .line 188
    invoke-virtual {v1, v0}, Lcom/att/iqi/lib/metrics/hw/HW0E;->setEvent(B)Lcom/att/iqi/lib/metrics/hw/HW0E;

    .line 191
    invoke-virtual {p0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    .line 194
    :cond_4
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 196
    const-string p0, "BatteryService"

    .line 198
    const-string v0, "!@ BatteryService No power and call shutdown thread"

    .line 200
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_5
    return-void

    .line 204
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 206
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 208
    monitor-enter v1

    .line 209
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 211
    iget v3, v2, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 213
    add-int/2addr v3, v0

    .line 214
    iput v3, v2, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 216
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 217
    const-string/jumbo v1, "ril.rfcal_date"

    .line 220
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    const-string/jumbo v3, "ril.manufacturedate"

    .line 227
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    move-result-object v3

    .line 231
    iput-object v3, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 233
    if-eqz v1, :cond_6

    .line 235
    const-string v3, "."

    .line 237
    const-string v4, ""

    .line 239
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 242
    move-result-object v1

    .line 243
    iput-object v1, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 245
    :cond_6
    iget-object v1, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 247
    const-string v3, "BatteryService"

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

    .line 255
    const/4 v9, 0x4

    .line 256
    if-eqz v1, :cond_7

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 261
    move-result v1

    .line 262
    if-ne v1, v8, :cond_7

    .line 264
    iget-object v1, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 266
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 269
    move-result-object v1

    .line 270
    iget-object v10, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 272
    invoke-virtual {v10, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 275
    move-result-object v10

    .line 276
    iget-object v11, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 278
    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 281
    move-result-object v7

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    .line 284
    const-string v11, "!@[LLB] rfcal_date "

    .line 286
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    iget-object v11, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 291
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v8

    .line 298
    invoke-static {v3, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    goto :goto_3

    .line 302
    :cond_7
    iget-object v1, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 304
    if-eqz v1, :cond_e

    .line 306
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 309
    move-result v1

    .line 310
    if-ne v1, v8, :cond_e

    .line 312
    iget-object v1, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 314
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 317
    move-result-object v1

    .line 318
    iget-object v10, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 320
    invoke-virtual {v10, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 323
    move-result-object v10

    .line 324
    iget-object v11, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 326
    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 329
    move-result-object v7

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    .line 332
    const-string v11, "!@[LLB] manufacture_date "

    .line 334
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    iget-object v11, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 339
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v8

    .line 346
    invoke-static {v3, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 352
    move-result-object v8

    .line 353
    iput-object v8, v2, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 355
    new-instance v8, Ljava/util/GregorianCalendar;

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 360
    move-result v11

    .line 361
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 364
    move-result v10

    .line 365
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 368
    move-result v7

    .line 369
    invoke-direct {v8, v11, v10, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 372
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 375
    move-result v1

    .line 376
    if-nez v1, :cond_8

    .line 378
    :goto_4
    move v1, v5

    .line 379
    goto/16 :goto_8

    .line 381
    :cond_8
    iget-object v1, v2, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 383
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 386
    move-result v1

    .line 387
    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    .line 390
    move-result v7

    .line 391
    sub-int/2addr v1, v7

    .line 392
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    .line 395
    move-result v7

    .line 396
    sub-int/2addr v7, v9

    .line 397
    iget-object v8, v2, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 399
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    .line 402
    move-result v8

    .line 403
    if-nez v1, :cond_a

    .line 405
    sub-int/2addr v8, v7

    .line 406
    if-lez v8, :cond_9

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    .line 410
    const-string v7, "!@[LLB] same year diff_Week= "

    .line 412
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    move-result-object v1

    .line 422
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    goto :goto_6

    .line 426
    :cond_9
    const-string v1, "!@[LLB] same year but error month!!!"

    .line 428
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_5
    move v1, v4

    .line 432
    goto/16 :goto_8

    .line 434
    :cond_a
    if-gez v1, :cond_b

    .line 436
    const-string v1, "!@[LLB] error year"

    .line 438
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    goto :goto_5

    .line 442
    :cond_b
    sub-int/2addr v1, v0

    .line 443
    mul-int/lit8 v1, v1, 0x34

    .line 445
    rsub-int/lit8 v7, v7, 0x34

    .line 447
    add-int/2addr v7, v1

    .line 448
    add-int/2addr v8, v7

    .line 449
    :goto_6
    const-string v1, "!@[LLB] EFS values: "

    .line 451
    const-string v7, "/efs/FactoryApp/batt_after_manufactured"

    .line 453
    invoke-static {v7, v0}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 456
    move-result-object v9

    .line 457
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 460
    move-result v10

    .line 461
    if-eqz v10, :cond_c

    .line 463
    const-string v1, "!@[LLB] /efs/FactoryApp/batt_after_manufactured is null, It looks first time, just make it."

    .line 465
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    goto :goto_7

    .line 469
    :cond_c
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 472
    move-result v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 473
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 475
    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    const-string v1, ", Diff_week: "

    .line 483
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    move-result-object v1

    .line 493
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

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

    .line 501
    const-string v10, "!@[LLB] !@[BatteryInfo] /efs/FactoryApp/batt_after_manufactured : data is \""

    .line 503
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v9, "\""

    .line 511
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    move-result-object v1

    .line 518
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :goto_7
    if-ge v6, v8, :cond_d

    .line 523
    int-to-long v9, v8

    .line 524
    const-string v1, "/sys/class/power_supply/battery/batt_after_manufactured"

    .line 526
    invoke-static {v9, v10, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 529
    invoke-static {v9, v10, v7}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 532
    iput v8, v2, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 534
    :cond_d
    move v1, v0

    .line 535
    goto :goto_8

    .line 536
    :cond_e
    const-string v1, "!@[LLB] mRfCalDate is null!!! manufacture_date is also null!!!  we can not check weekly diff"

    .line 538
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    goto/16 :goto_4

    .line 543
    :goto_8
    if-eq v1, v0, :cond_12

    .line 545
    if-eq v1, v4, :cond_11

    .line 547
    if-eq v1, v5, :cond_f

    .line 549
    goto :goto_9

    .line 550
    :cond_f
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 552
    const-string v0, "BatteryService"

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    .line 556
    const-string v2, "!@[LLB] Faild to get property values, longBatteryRetryCnt= "

    .line 558
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 563
    iget v2, v2, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 565
    invoke-static {v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 570
    iget v1, v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 572
    const/4 v2, 0x5

    .line 573
    if-ge v1, v2, :cond_10

    .line 575
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 577
    const-wide/16 v1, 0xbb8

    .line 579
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 582
    goto :goto_9

    .line 583
    :cond_10
    const-string p0, "BatteryService"

    .line 585
    const-string v0, "!@[LLB] Faild to calc checkLongLifeBatteryInternal, Do not try anymore"

    .line 587
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    goto :goto_9

    .line 591
    :cond_11
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 593
    const-string p0, "BatteryService"

    .line 595
    const-string v0, "!@[LLB] Calc error! check date!  "

    .line 597
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    goto :goto_9

    .line 601
    :cond_12
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 603
    const-string p0, "BatteryService"

    .line 605
    const-string v0, "!@[LLB] success to check weekly diff "

    .line 607
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 616
    const-string v1, "BatteryService"

    .line 618
    const-string v2, "!@bootCompleted"

    .line 620
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 625
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 627
    monitor-enter v1

    .line 628
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    .line 630
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 632
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 634
    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

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
