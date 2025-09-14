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

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final run$com$android$server$BatteryService$MaximumProtectionThresholdObserver$1()V
    .locals 8

    .line 1
    const-string/jumbo v0, "fail -protectionThreshold cannot be delivered when not MaximumMode:"

    .line 2
    .line 3
    .line 4
    const-string v1, "MaximumProtectionThreshold Changed: "

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 32
    .line 33
    iget v5, v4, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 34
    .line 35
    const-string v6, "battery_protection_threshold"

    .line 36
    .line 37
    sget v7, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    .line 38
    .line 39
    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iput v3, v4, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, " => "

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 61
    .line 62
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 63
    .line 64
    iget v4, v4, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-static {v1, v3}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 99
    .line 100
    iget v5, v3, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 101
    .line 102
    if-ne v5, v1, :cond_0

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 118
    .line 119
    iget p0, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 120
    .line 121
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 132
    .line 133
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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/BatteryService$15;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 29
    .line 30
    const-string/jumbo v4, "pass_through"

    .line 31
    .line 32
    .line 33
    const/4 v5, -0x2

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static {v2, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v4, 0x1

    .line 40
    if-ne v2, v4, :cond_0

    .line 41
    .line 42
    move v6, v4

    .line 43
    :cond_0
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 44
    .line 45
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "BatteryService"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 59
    .line 60
    iget-boolean v0, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 77
    .line 78
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 79
    .line 80
    invoke-static {p0}, Lcom/android/server/BatteryService;->setPassThrough(Z)V

    .line 81
    .line 82
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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/BatteryService$15;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 29
    .line 30
    const-string/jumbo v4, "refresh_rate_mode"

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, -0x2

    .line 35
    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, v3, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 40
    .line 41
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "BatteryService"

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 55
    .line 56
    iget v0, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 73
    .line 74
    iget p0, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 75
    .line 76
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 77
    .line 78
    if-nez p0, :cond_0

    .line 79
    .line 80
    const-wide/16 v2, 0x5

    .line 81
    .line 82
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-wide/16 v2, 0x6

    .line 87
    .line 88
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 89
    .line 90
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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/BatteryService$15;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 29
    .line 30
    const-string/jumbo v4, "super_fast_charging"

    .line 31
    .line 32
    .line 33
    const/4 v5, -0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    invoke-static {v2, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne v2, v6, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v6, 0x0

    .line 43
    :goto_0
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 44
    .line 45
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "BatteryService"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 59
    .line 60
    iget-boolean v0, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setSuperFastCharging(Z)V

    .line 81
    .line 82
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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/BatteryService$15;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 29
    .line 30
    const-string/jumbo v4, "tx_battery_limit"

    .line 31
    .line 32
    .line 33
    const/16 v5, 0x1e

    .line 34
    .line 35
    const/4 v6, -0x2

    .line 36
    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, v3, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 41
    .line 42
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "BatteryService"

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 56
    .line 57
    iget v0, v0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 74
    .line 75
    iget p0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 76
    .line 77
    const-string v0, "/sys/class/power_supply/battery/wc_tx_stop_capacity"

    .line 78
    .line 79
    int-to-long v2, p0

    .line 80
    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 81
    .line 82
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

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    const-string v1, "/sys/class/power_supply/battery/wc_param_info"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v1, v2}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string/jumbo v4, "wireless_wc_write"

    .line 30
    .line 31
    .line 32
    const/4 v5, -0x2

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 43
    .line 44
    iget v4, v4, Lcom/android/server/BatteryService;->mWcParamOffset:I

    .line 45
    .line 46
    const/4 v7, -0x1

    .line 47
    if-eq v4, v7, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    if-ne v3, v2, :cond_0

    .line 56
    .line 57
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, "BatteryService"

    .line 60
    .line 61
    const-string/jumbo v3, "wireless_wc_write onchanged"

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 74
    .line 75
    const-string/jumbo v3, "wc param"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v5, v3, v2}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string/jumbo v1, "wireless_wc_write"

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    .line 92
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

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string v3, "WirelessFastCharging Settings = "

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 14
    .line 15
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Lcom/android/server/BatteryService$15;

    .line 23
    .line 24
    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 25
    .line 26
    iget-object v5, v5, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-object v6, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v6, Lcom/android/server/BatteryService$15;

    .line 35
    .line 36
    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 37
    .line 38
    const-string/jumbo v7, "wireless_fast_charging"

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v7, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v2, :cond_0

    .line 46
    .line 47
    move v1, v2

    .line 48
    :cond_0
    iput-boolean v1, v6, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 49
    .line 50
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "BatteryService"

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 64
    .line 65
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 82
    .line 83
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    .line 86
    .line 87
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

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$TxBatteryLimitSettingsObserver$1()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$SuperFastChargingSettingsObserver$1()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$RefreshRateModeSettingsObserver$1()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$PassThroughSettingsObserver$1()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/BatteryService$31;->run$com$android$server$BatteryService$MaximumProtectionThresholdObserver$1()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_6
    const-string v3, "!@mLifeExtender Settings changed = "

    .line 118
    .line 119
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 122
    .line 123
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 124
    .line 125
    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v4

    .line 128
    :try_start_1
    iget-object v5, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v5, Lcom/android/server/BatteryService$15;

    .line 131
    .line 132
    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 133
    .line 134
    iget-object v5, v5, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    iget-object v6, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v6, Lcom/android/server/BatteryService$15;

    .line 143
    .line 144
    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 145
    .line 146
    const-string/jumbo v7, "protect_battery"

    .line 147
    .line 148
    .line 149
    invoke-static {v5, v7, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-ne v0, v2, :cond_1

    .line 154
    .line 155
    move v1, v2

    .line 156
    :cond_1
    iput-boolean v1, v6, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 157
    .line 158
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 159
    .line 160
    const-string v0, "BatteryService"

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 170
    .line 171
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 172
    .line 173
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 188
    .line 189
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 194
    .line 195
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    .line 197
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

    .line 204
    .line 205
    const-string v4, "Battery Protect Mode Changed: "

    .line 206
    .line 207
    iget-object v5, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v5, Lcom/android/server/BatteryService$15;

    .line 210
    .line 211
    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 212
    .line 213
    iget-object v5, v5, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 214
    .line 215
    monitor-enter v5

    .line 216
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v6, Lcom/android/server/BatteryService$15;

    .line 219
    .line 220
    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 221
    .line 222
    iget-object v6, v6, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    iget-object v7, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v7, Lcom/android/server/BatteryService$15;

    .line 231
    .line 232
    iget-object v7, v7, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 233
    .line 234
    iget-boolean v7, v7, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 235
    .line 236
    if-eqz v7, :cond_2

    .line 237
    .line 238
    sget-object v7, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 239
    .line 240
    const-string v7, "BatteryService"

    .line 241
    .line 242
    const-string v8, "!@battery life extender used before!"

    .line 243
    .line 244
    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    iget-object v7, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v7, Lcom/android/server/BatteryService$15;

    .line 250
    .line 251
    iget-object v7, v7, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 252
    .line 253
    iput-boolean v1, v7, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 254
    .line 255
    iget-object v8, v7, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 256
    .line 257
    iget-object v7, v7, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 258
    .line 259
    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    .line 261
    .line 262
    const-string/jumbo v7, "protect_battery"

    .line 263
    .line 264
    .line 265
    invoke-static {v6, v7, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 266
    .line 267
    .line 268
    goto :goto_0

    .line 269
    :catchall_2
    move-exception p0

    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 273
    .line 274
    if-eqz v0, :cond_5

    .line 275
    .line 276
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 279
    .line 280
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 281
    .line 282
    iget v3, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 283
    .line 284
    const-string/jumbo v7, "protect_battery"

    .line 285
    .line 286
    .line 287
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    iput v6, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 292
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v3, " => "

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v3, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v3, Lcom/android/server/BatteryService$15;

    .line 309
    .line 310
    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 311
    .line 312
    iget v3, v3, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 313
    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    sget-object v3, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 322
    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    const-string v4, "/data/log/battery_service/sleep_charging_history"

    .line 339
    .line 340
    const-string v6, "Battery Protect Mode Changed"

    .line 341
    .line 342
    invoke-static {v4, v6, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 348
    .line 349
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 350
    .line 351
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 357
    .line 358
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 359
    .line 360
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    .line 361
    .line 362
    if-eqz v4, :cond_4

    .line 363
    .line 364
    iget v3, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 365
    .line 366
    const/4 v4, 0x4

    .line 367
    if-ne v3, v4, :cond_3

    .line 368
    .line 369
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 370
    .line 371
    new-instance v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;

    .line 372
    .line 373
    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;-><init>(Lcom/android/server/BatteryService$31;I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    .line 378
    .line 379
    goto :goto_1

    .line 380
    :cond_3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 381
    .line 382
    new-instance v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;

    .line 383
    .line 384
    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;-><init>(Lcom/android/server/BatteryService$31;I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    .line 389
    .line 390
    goto :goto_1

    .line 391
    :cond_4
    const-string p0, "Battery Protect Mode Changed before UnlockedBootCompleted => ignored"

    .line 392
    .line 393
    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    goto :goto_1

    .line 397
    :cond_5
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v0, Lcom/android/server/BatteryService$15;

    .line 400
    .line 401
    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 402
    .line 403
    const-string/jumbo v4, "protect_battery"

    .line 404
    .line 405
    .line 406
    invoke-static {v6, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-ne v4, v2, :cond_6

    .line 411
    .line 412
    move v1, v2

    .line 413
    :cond_6
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 414
    .line 415
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 416
    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 425
    .line 426
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 427
    .line 428
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 429
    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 443
    .line 444
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 445
    .line 446
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 447
    .line 448
    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

    .line 449
    .line 450
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    .line 452
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

    .line 458
    .line 459
    iget-object v4, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v4, Lcom/android/server/BatteryService$15;

    .line 462
    .line 463
    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 464
    .line 465
    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 466
    .line 467
    monitor-enter v4

    .line 468
    :try_start_3
    iget-object v5, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v5, Lcom/android/server/BatteryService$15;

    .line 471
    .line 472
    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 473
    .line 474
    iget-object v5, v5, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 475
    .line 476
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    iget-object v6, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v6, Lcom/android/server/BatteryService$15;

    .line 483
    .line 484
    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 485
    .line 486
    const-string v7, "adaptive_fast_charging"

    .line 487
    .line 488
    invoke-static {v5, v7, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-ne v0, v2, :cond_7

    .line 493
    .line 494
    move v1, v2

    .line 495
    :cond_7
    iput-boolean v1, v6, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 496
    .line 497
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 498
    .line 499
    const-string v0, "BatteryService"

    .line 500
    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    iget-object v2, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v2, Lcom/android/server/BatteryService$15;

    .line 509
    .line 510
    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 511
    .line 512
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 513
    .line 514
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 527
    .line 528
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 529
    .line 530
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 531
    .line 532
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    .line 533
    .line 534
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

    .line 541
    .line 542
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 543
    .line 544
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 545
    .line 546
    invoke-static {p0, v2}, Lcom/android/server/BatteryService;->-$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    :pswitch_a
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 551
    .line 552
    const-string v0, "BatteryService"

    .line 553
    .line 554
    const-string v1, "Sending RESPONSE_OTG_CHARGE_BLOCK."

    .line 555
    .line 556
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast v0, Landroid/content/Intent;

    .line 562
    .line 563
    const/4 v1, -0x1

    .line 564
    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 565
    .line 566
    .line 567
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 568
    .line 569
    check-cast p0, Landroid/content/Intent;

    .line 570
    .line 571
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object p0

    .line 575
    invoke-static {v2, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 576
    .line 577
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
