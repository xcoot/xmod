.class public final Lcom/android/server/BatteryService$31;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$intent:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/BatteryService$31;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private final run$com$android$server$BatteryService$MaximumProtectionThresholdObserver$1()V
    .locals 8

    .line 1
    const-string/jumbo v0, "fail -protectionThreshold cannot be delivered when not MaximumMode:"

    .line 4
    const-string v1, "MaximumProtectionThreshold Changed: "

    .line 6
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 8
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 10
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 12
    iget-object v2, v2, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 17
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 19
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 21
    iget-object v3, v3, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 29
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 31
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 33
    iget v5, v4, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 35
    const-string v6, "battery_protection_threshold"

    .line 37
    sget v7, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    .line 39
    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 42
    move-result v3

    .line 43
    iput v3, v4, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, " => "

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 60
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 62
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 64
    iget v4, v4, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-static {v1, v3}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 96
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 98
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 100
    iget v5, v3, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 102
    if-ne v5, v1, :cond_0

    .line 104
    invoke-virtual {v3}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 115
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 117
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 119
    iget p0, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 121
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {v1, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 134
    :goto_0
    monitor-exit v2

    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw p0
.end method

.method private final run$com$android$server$BatteryService$PassThroughSettingsObserver$1()V
    .locals 7

    .line 1
    const-string v0, "PassThrough Settings = "

    .line 3
    iget-object v1, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 5
    check-cast v1, Lcom/android/server/BatteryService$15;

    .line 7
    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 9
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 14
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 16
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 18
    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 26
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 28
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 30
    const-string/jumbo v4, "pass_through"

    .line 33
    const/4 v5, -0x2

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static {v2, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 38
    move-result v2

    .line 39
    const/4 v4, 0x1

    .line 40
    if-ne v2, v4, :cond_0

    .line 42
    move v6, v4

    .line 43
    :cond_0
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 45
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 47
    const-string v2, "BatteryService"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 56
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 58
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 60
    iget-boolean v0, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 74
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 76
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 78
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 80
    invoke-static {p0}, Lcom/android/server/BatteryService;->setPassThrough(Z)V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method private final run$com$android$server$BatteryService$RefreshRateModeSettingsObserver$1()V
    .locals 7

    .line 1
    const-string v0, "RefreshRateMode Setting = "

    .line 3
    iget-object v1, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 5
    check-cast v1, Lcom/android/server/BatteryService$15;

    .line 7
    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 9
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 14
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 16
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 18
    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 26
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 28
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 30
    const-string/jumbo v4, "refresh_rate_mode"

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, -0x2

    .line 35
    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 38
    move-result v2

    .line 39
    iput v2, v3, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 41
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 43
    const-string v2, "BatteryService"

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 52
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 54
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 56
    iget v0, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 70
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 72
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 74
    iget p0, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 76
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 78
    if-nez p0, :cond_0

    .line 80
    const-wide/16 v2, 0x5

    .line 82
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-wide/16 v2, 0x6

    .line 88
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 91
    :goto_0
    monitor-exit v1

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0
.end method

.method private final run$com$android$server$BatteryService$SuperFastChargingSettingsObserver$1()V
    .locals 7

    .line 1
    const-string v0, "SuperFastCharging Settings = "

    .line 3
    iget-object v1, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 5
    check-cast v1, Lcom/android/server/BatteryService$15;

    .line 7
    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 9
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 14
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 16
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 18
    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 26
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 28
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 30
    const-string/jumbo v4, "super_fast_charging"

    .line 33
    const/4 v5, -0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    invoke-static {v2, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 38
    move-result v2

    .line 39
    if-ne v2, v6, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v6, 0x0

    .line 43
    :goto_0
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 45
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 47
    const-string v2, "BatteryService"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 56
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 58
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 60
    iget-boolean v0, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 74
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 76
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 78
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setSuperFastCharging(Z)V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method private final run$com$android$server$BatteryService$TxBatteryLimitSettingsObserver$1()V
    .locals 7

    .line 1
    const-string v0, "Tx Battery Limit Settings = "

    .line 3
    iget-object v1, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 5
    check-cast v1, Lcom/android/server/BatteryService$15;

    .line 7
    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 9
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 14
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 16
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 18
    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 26
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 28
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 30
    const-string/jumbo v4, "tx_battery_limit"

    .line 33
    const/16 v5, 0x1e

    .line 35
    const/4 v6, -0x2

    .line 36
    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 39
    move-result v2

    .line 40
    iput v2, v3, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 42
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 44
    const-string v2, "BatteryService"

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 53
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 55
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 57
    iget v0, v0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 71
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 73
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 75
    iget p0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 77
    const-string v0, "/sys/class/power_supply/battery/wc_tx_stop_capacity"

    .line 79
    int-to-long v2, p0

    .line 80
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method private final run$com$android$server$BatteryService$WcParamInfoSettingsObserver$1()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 5
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 7
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    const-string v1, "/sys/class/power_supply/battery/wc_param_info"

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v1, v2}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 19
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 21
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 23
    iget-object v3, v3, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v3

    .line 29
    const-string/jumbo v4, "wireless_wc_write"

    .line 32
    const/4 v5, -0x2

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    move-result v3

    .line 38
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 40
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 42
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 44
    iget v4, v4, Lcom/android/server/BatteryService;->mWcParamOffset:I

    .line 46
    const/4 v7, -0x1

    .line 47
    if-eq v4, v7, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_0

    .line 55
    if-ne v3, v2, :cond_0

    .line 57
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 59
    const-string v1, "BatteryService"

    .line 61
    const-string/jumbo v3, "wireless_wc_write onchanged"

    .line 64
    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 69
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 71
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 73
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 75
    const-string/jumbo v3, "wc param"

    .line 78
    invoke-virtual {v1, v5, v3, v2}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 81
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    move-result-object p0

    .line 87
    const-string/jumbo v1, "wireless_wc_write"

    .line 90
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const/4 v0, -0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, p0, Lcom/android/server/BatteryService$31;->$r8$classId:I

    .line 6
    packed-switch v3, :pswitch_data_0

    .line 9
    const-string v3, "WirelessFastCharging Settings = "

    .line 11
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 13
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 15
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 17
    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 22
    check-cast v5, Lcom/android/server/BatteryService$15;

    .line 24
    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 26
    iget-object v5, v5, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v5

    .line 32
    iget-object v6, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 34
    check-cast v6, Lcom/android/server/BatteryService$15;

    .line 36
    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 38
    const-string/jumbo v7, "wireless_fast_charging"

    .line 41
    invoke-static {v5, v7, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 44
    move-result v0

    .line 45
    if-ne v0, v2, :cond_0

    .line 47
    move v1, v2

    .line 48
    :cond_0
    iput-boolean v1, v6, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 50
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 52
    const-string v0, "BatteryService"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 61
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 63
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 65
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 79
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 81
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 83
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    .line 88
    monitor-exit v4

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0

    .line 93
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$WcParamInfoSettingsObserver$1()V

    .line 96
    return-void

    .line 97
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$TxBatteryLimitSettingsObserver$1()V

    .line 100
    return-void

    .line 101
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$SuperFastChargingSettingsObserver$1()V

    .line 104
    return-void

    .line 105
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$RefreshRateModeSettingsObserver$1()V

    .line 108
    return-void

    .line 109
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$PassThroughSettingsObserver$1()V

    .line 112
    return-void

    .line 113
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$MaximumProtectionThresholdObserver$1()V

    .line 116
    return-void

    .line 117
    :pswitch_6
    const-string v3, "!@mLifeExtender Settings changed = "

    .line 119
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 121
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 123
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 125
    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 127
    monitor-enter v4

    .line 128
    :try_start_1
    iget-object v5, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 130
    check-cast v5, Lcom/android/server/BatteryService$15;

    .line 132
    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 134
    iget-object v5, v5, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 139
    move-result-object v5

    .line 140
    iget-object v6, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 142
    check-cast v6, Lcom/android/server/BatteryService$15;

    .line 144
    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 146
    const-string/jumbo v7, "protect_battery"

    .line 149
    invoke-static {v5, v7, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 152
    move-result v0

    .line 153
    if-ne v0, v2, :cond_1

    .line 155
    move v1, v2

    .line 156
    :cond_1
    iput-boolean v1, v6, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 158
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 160
    const-string v0, "BatteryService"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 169
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 171
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 173
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 187
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 189
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 191
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 193
    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 195
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    monitor-exit v4

    .line 199
    return-void

    .line 200
    :catchall_1
    move-exception p0

    .line 201
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    throw p0

    .line 203
    :pswitch_7
    const-string v3, "!@mFullCapacityEnable Settings = "

    .line 205
    const-string v4, "Battery Protect Mode Changed: "

    .line 207
    iget-object v5, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 209
    check-cast v5, Lcom/android/server/BatteryService$15;

    .line 211
    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 213
    iget-object v5, v5, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 215
    monitor-enter v5

    .line 216
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 218
    check-cast v6, Lcom/android/server/BatteryService$15;

    .line 220
    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 222
    iget-object v6, v6, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 227
    move-result-object v6

    .line 228
    iget-object v7, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 230
    check-cast v7, Lcom/android/server/BatteryService$15;

    .line 232
    iget-object v7, v7, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 234
    iget-boolean v7, v7, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 236
    if-eqz v7, :cond_2

    .line 238
    sget-object v7, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 240
    const-string v7, "BatteryService"

    .line 242
    const-string v8, "!@battery life extender used before!"

    .line 244
    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v7, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 249
    check-cast v7, Lcom/android/server/BatteryService$15;

    .line 251
    iget-object v7, v7, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 253
    iput-boolean v1, v7, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 255
    iget-object v8, v7, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 257
    iget-object v7, v7, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 259
    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    const-string/jumbo v7, "protect_battery"

    .line 265
    invoke-static {v6, v7, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 268
    goto :goto_0

    .line 269
    :catchall_2
    move-exception p0

    .line 270
    goto/16 :goto_2

    .line 272
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 274
    if-eqz v0, :cond_5

    .line 276
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 278
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 280
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 282
    iget v3, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 284
    const-string/jumbo v7, "protect_battery"

    .line 287
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 290
    move-result v6

    .line 291
    iput v6, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    .line 295
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    const-string v3, " => "

    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 308
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 310
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 312
    iget v3, v3, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v0

    .line 321
    sget-object v3, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    .line 325
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object v4

    .line 335
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v4, "/data/log/battery_service/sleep_charging_history"

    .line 340
    const-string v6, "Battery Protect Mode Changed"

    .line 342
    invoke-static {v4, v6, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 347
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 349
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 351
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    .line 354
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 356
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 358
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 360
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    .line 362
    if-eqz v4, :cond_4

    .line 364
    iget v3, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 366
    const/4 v4, 0x4

    .line 367
    if-ne v3, v4, :cond_3

    .line 369
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 371
    new-instance v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;

    .line 373
    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;-><init>(Lcom/android/server/BatteryService$31;I)V

    .line 376
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    goto :goto_1

    .line 380
    :cond_3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 382
    new-instance v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;

    .line 384
    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;-><init>(Lcom/android/server/BatteryService$31;I)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    goto :goto_1

    .line 391
    :cond_4
    const-string p0, "Battery Protect Mode Changed before UnlockedBootCompleted => ignored"

    .line 393
    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    goto :goto_1

    .line 397
    :cond_5
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 399
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 401
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 403
    const-string/jumbo v4, "protect_battery"

    .line 406
    invoke-static {v6, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 409
    move-result v4

    .line 410
    if-ne v4, v2, :cond_6

    .line 412
    move v1, v2

    .line 413
    :cond_6
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 415
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    .line 419
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 424
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 426
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 428
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    move-result-object v1

    .line 437
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 442
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 444
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 446
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 448
    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

    .line 450
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    :goto_1
    monitor-exit v5

    .line 454
    return-void

    .line 455
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 456
    throw p0

    .line 457
    :pswitch_8
    const-string v3, "AdaptiveFastCharging Settings = "

    .line 459
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 461
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 463
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 465
    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 467
    monitor-enter v4

    .line 468
    :try_start_3
    iget-object v5, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 470
    check-cast v5, Lcom/android/server/BatteryService$15;

    .line 472
    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 474
    iget-object v5, v5, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 476
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 479
    move-result-object v5

    .line 480
    iget-object v6, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 482
    check-cast v6, Lcom/android/server/BatteryService$15;

    .line 484
    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 486
    const-string v7, "adaptive_fast_charging"

    .line 488
    invoke-static {v5, v7, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 491
    move-result v0

    .line 492
    if-ne v0, v2, :cond_7

    .line 494
    move v1, v2

    .line 495
    :cond_7
    iput-boolean v1, v6, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 497
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 499
    const-string v0, "BatteryService"

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    .line 503
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 508
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 510
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 512
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 514
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    move-result-object v1

    .line 521
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 526
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 528
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 530
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    .line 535
    monitor-exit v4

    .line 536
    return-void

    .line 537
    :catchall_3
    move-exception p0

    .line 538
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 539
    throw p0

    .line 540
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 542
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 544
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 546
    invoke-static {p0, v2}, Lcom/android/server/BatteryService;->-$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V

    .line 549
    return-void

    .line 550
    :pswitch_a
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 552
    const-string v0, "BatteryService"

    .line 554
    const-string v1, "Sending RESPONSE_OTG_CHARGE_BLOCK."

    .line 556
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 561
    check-cast v0, Landroid/content/Intent;

    .line 563
    const/4 v1, -0x1

    .line 564
    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 567
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 569
    check-cast p0, Landroid/content/Intent;

    .line 571
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 574
    move-result-object p0

    .line 575
    invoke-static {v2, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 578
    return-void

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
