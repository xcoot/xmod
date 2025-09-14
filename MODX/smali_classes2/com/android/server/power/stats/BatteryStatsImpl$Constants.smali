.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Constants;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public BATTERY_CHARGED_DELAY_MS:I

.field public BATTERY_CHARGING_ENFORCE_LEVEL:I

.field public BATTERY_LEVEL_COLLECTION_DELAY_MS:J

.field public EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

.field public KERNEL_UID_READERS_THROTTLE_TIME:J

.field public MAX_HISTORY_BUFFER:I

.field public MAX_HISTORY_FILES:I

.field public PER_UID_MODEM_MODEL:I

.field public PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

.field public PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

.field public RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

.field public TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

.field public UID_REMOVE_DELAY_MS:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 8
    .line 9
    const-wide/32 v0, 0x493e0

    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 13
    .line 14
    const-wide/32 v2, 0x927c0

    .line 15
    .line 16
    .line 17
    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 20
    .line 21
    const-wide/32 v0, 0xea60

    .line 22
    .line 23
    .line 24
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    .line 25
    .line 26
    const p2, 0xdbba0

    .line 27
    .line 28
    .line 29
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    .line 30
    .line 31
    const/16 p2, 0x5a

    .line 32
    .line 33
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    .line 34
    .line 35
    const/4 p2, 0x2

    .line 36
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    .line 39
    .line 40
    const/16 p1, 0x2f

    .line 41
    .line 42
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    .line 43
    .line 44
    new-instance p1, Landroid/util/KeyValueListParser;

    .line 45
    .line 46
    const/16 p2, 0x2c

    .line 47
    .line 48
    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->access$000()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    const/16 p1, 0x40

    .line 60
    .line 61
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 62
    .line 63
    const/high16 p1, 0x10000

    .line 64
    .line 65
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/16 p1, 0x20

    .line 69
    .line 70
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 71
    .line 72
    const/high16 p1, 0x20000

    .line 73
    .line 74
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 75
    .line 76
    :goto_0
    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->setMaxHistoryFiles(I)V

    .line 36
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;->setMaxHistoryBufferSize(I)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    const-string p1, "battery_charging_state_update_delay"

    .line 2
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_0
    const-string p1, "battery_charging_state_enforce_level"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 9
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargingEnforceLevelLocked()V

    .line 10
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 11
    :cond_1
    const-string/jumbo p1, "screen_brightness_mode"

    .line 12
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 15
    :try_start_2
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2

    .line 16
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenAutoBrightnessLocked(I)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    :try_start_3
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 18
    :goto_0
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 19
    :cond_2
    const-string/jumbo p1, "refresh_rate_mode"

    .line 20
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string/jumbo p1, "refresh_rate_mode_cover"

    .line 22
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    const-string/jumbo p1, "protect_battery"

    .line 25
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 26
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 27
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 28
    :try_start_4
    const-string p2, "BatteryStatsImpl"

    const-string v0, "Observer"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateProtectBatteryModeLocked()V

    .line 30
    monitor-exit p1

    return-void

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateConstants()V

    return-void

    .line 32
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 33
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateDisplayHighRefreshRateLocked()V

    .line 34
    monitor-exit p1

    return-void

    :catchall_4
    move-exception p0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p0
.end method

.method public final updateBatteryChargedDelayMsLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string v1, "battery_charging_state_update_delay"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 14
    .line 15
    const-string v1, "battery_charged_delay_ms"

    .line 16
    .line 17
    const v2, 0xdbba0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDeferSetCharging:Lcom/android/server/power/stats/BatteryStatsImpl$3;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDeferSetCharging:Lcom/android/server/power/stats/BatteryStatsImpl$3;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDeferSetCharging:Lcom/android/server/power/stats/BatteryStatsImpl$3;

    .line 52
    .line 53
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    .line 54
    .line 55
    int-to-long v2, p0

    .line 56
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final updateBatteryChargingEnforceLevelLocked()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const-string v2, "battery_charging_state_enforce_level"

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 16
    .line 17
    const-string v2, "battery_charging_enforce_level"

    .line 18
    .line 19
    const/16 v3, 0x5a

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :goto_0
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 28
    .line 29
    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 30
    .line 31
    if-gt v1, v2, :cond_1

    .line 32
    .line 33
    if-ge v2, v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->setChargingLocked(Z)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final updateConstants()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 7
    .line 8
    const-string v3, "battery_stats_constants"

    .line 9
    .line 10
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :catch_0
    move-exception v1

    .line 22
    :try_start_1
    const-string v2, "BatteryStatsImpl"

    .line 23
    .line 24
    const-string v3, "Bad batterystats settings"

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 30
    .line 31
    const-string/jumbo v2, "track_cpu_active_cluster_time"

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 40
    .line 41
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 44
    .line 45
    const-string v5, "kernel_uid_readers_throttle_time"

    .line 46
    .line 47
    const-wide/16 v6, 0x3e8

    .line 48
    .line 49
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateKernelUidReadersThrottleTime(JJ)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 57
    .line 58
    const-string/jumbo v2, "uid_remove_delay_ms"

    .line 59
    .line 60
    .line 61
    const-wide/32 v4, 0x493e0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 76
    .line 77
    const-string v2, "external_stats_collection_rate_limit_ms"

    .line 78
    .line 79
    const-wide/32 v6, 0x927c0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 89
    .line 90
    const-string v2, "battery_level_collection_delay_ms"

    .line 91
    .line 92
    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 99
    .line 100
    const-string/jumbo v2, "procstate_change_collection_delay_ms"

    .line 101
    .line 102
    .line 103
    const-wide/32 v4, 0xea60

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 113
    .line 114
    const-string/jumbo v2, "max_history_files"

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->access$100()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    const/16 v5, 0x40

    .line 122
    .line 123
    if-eqz v4, :cond_0

    .line 124
    .line 125
    move v4, v5

    .line 126
    goto :goto_1

    .line 127
    :cond_0
    const/16 v4, 0x20

    .line 128
    .line 129
    :goto_1
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 136
    .line 137
    const-string/jumbo v2, "max_history_buffer_kb"

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->access$200()Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_1
    const/16 v5, 0x80

    .line 148
    .line 149
    :goto_2
    invoke-virtual {v1, v2, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    mul-int/lit16 v1, v1, 0x400

    .line 154
    .line 155
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 158
    .line 159
    const-string/jumbo v2, "per_uid_modem_power_model"

    .line 160
    .line 161
    .line 162
    const-string v4, ""

    .line 163
    .line 164
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .line 170
    .line 171
    const/4 v2, 0x2

    .line 172
    const-string/jumbo v4, "modem_activity_info_rx_tx"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_3

    .line 180
    .line 181
    const-string/jumbo v4, "mobile_radio_active_time"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-nez v4, :cond_2

    .line 189
    .line 190
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v5, "Unexpected per uid modem model name ("

    .line 193
    .line 194
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ")"

    .line 201
    .line 202
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-string v4, "BatteryStatsImpl"

    .line 210
    .line 211
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_2
    move v2, v3

    .line 216
    :cond_3
    :goto_3
    iput v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    .line 217
    .line 218
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 219
    .line 220
    const-string/jumbo v2, "phone_on_external_stats_collection"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    .line 228
    .line 229
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 230
    .line 231
    const-string/jumbo v2, "reset_while_plugged_in_minimum_duration_hours"

    .line 232
    .line 233
    .line 234
    const/16 v3, 0x2f

    .line 235
    .line 236
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargingEnforceLevelLocked()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->onChange()V

    .line 249
    .line 250
    .line 251
    monitor-exit v0

    .line 252
    return-void

    .line 253
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    throw p0
.end method

.method public final updateDisplayHighRefreshRateLocked()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const-string/jumbo v2, "refresh_rate_mode"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mMainDisplayHrrBin:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 17
    .line 18
    const-string/jumbo v2, "refresh_rate_mode_cover"

    .line 19
    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCoverDisplayHrrBin:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mMainDisplayHrrBin:I

    .line 42
    .line 43
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteMainDisplayHighRefreshRateLocked(IJ)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 47
    .line 48
    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSubScreenState:I

    .line 49
    .line 50
    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCoverDisplayHrrBin:I

    .line 51
    .line 52
    if-ltz v2, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x4

    .line 55
    if-lt v2, v3, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v2, 0x0

    .line 59
    :goto_0
    if-ge v2, v3, :cond_2

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCoverDisplayHrrTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 62
    .line 63
    aget-object v4, v4, v2

    .line 64
    .line 65
    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    const-string p0, "BatteryStatsImpl"

    .line 72
    .line 73
    const-string v0, "Something was wrong while updating the cover display\'s refresh rate"

    .line 74
    .line 75
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_2
    return-void
.end method

.method public final updateKernelUidReadersThrottleTime(JJ)V
    .locals 0

    .line 1
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 2
    .line 3
    cmp-long p1, p1, p3

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 10
    .line 11
    invoke-virtual {p1, p3, p4}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->setThrottle(J)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 17
    .line 18
    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 19
    .line 20
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->setThrottle(J)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 26
    .line 27
    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->setThrottle(J)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 35
    .line 36
    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->setThrottle(J)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final updateProtectBatteryModeLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string/jumbo v1, "protect_battery"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_2

    .line 12
    .line 13
    sget v1, Landroid/os/BatteryStats;->NUM_PROTECT_BATTERY_MODE_TYPES:I

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    .line 20
    iget v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mProtectBatteryMode:I

    .line 21
    .line 22
    if-eq v2, v0, :cond_1

    .line 23
    .line 24
    iput v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mProtectBatteryMode:I

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setProtectBatteryState(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    :goto_0
    const-string p0, "Unknown protect battery type "

    .line 54
    .line 55
    const-string v1, " was specified."

    .line 56
    .line 57
    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v0, Ljava/lang/Throwable;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "BatteryStatsImpl"

    .line 67
    .line 68
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    return-void
.end method
