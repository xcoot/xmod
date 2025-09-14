.class public final Lcom/android/server/am/BroadcastConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

.field public static final DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

.field public static final DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

.field public static final DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

.field public static final DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

.field public static final DEFAULT_MAX_PENDING_BROADCASTS:I

.field public static final DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

.field public static final DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

.field public static final DEFAULT_TIMEOUT:J

.field public static final MAX_HISTORY_ABORTED_BROADCAST:I


# instance fields
.field public ALLOW_BG_ACTIVITY_START_TIMEOUT:J

.field public CORE_DEFER_UNTIL_ACTIVE:Z

.field public DELAY_CACHED_MILLIS:J

.field public DELAY_FOREGROUND_PROC_MILLIS:J

.field public DELAY_NORMAL_MILLIS:J

.field public DELAY_PERSISTENT_PROC_MILLIS:J

.field public DELAY_URGENT_MILLIS:J

.field public EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

.field public MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

.field public MAX_CONSECUTIVE_URGENT_DISPATCHES:I

.field public MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

.field public MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

.field public MAX_FROZEN_OUTGOING_BROADCASTS:I

.field public MAX_HISTORY_COMPLETE_SIZE:I

.field public MAX_HISTORY_SUMMARY_SIZE:I

.field public MAX_PENDING_BROADCASTS:I

.field public MAX_RUNNING_ACTIVE_BROADCASTS:I

.field public MAX_RUNNING_PROCESS_QUEUES:I

.field public PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

.field public TIMEOUT:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public final mSettingsKey:Ljava/lang/String;

.field public mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 4
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x3

    .line 13
    :goto_0
    sput v0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    .line 15
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 17
    mul-int/lit16 v0, v0, 0x2710

    .line 19
    int-to-long v0, v0

    .line 20
    sput-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_TIMEOUT:J

    .line 22
    sput-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 24
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    const/4 v0, 0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v0, 0x4

    .line 33
    :goto_1
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

    .line 35
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 38
    move-result v0

    .line 39
    const/16 v1, 0x10

    .line 41
    const/16 v2, 0x8

    .line 43
    if-eqz v0, :cond_2

    .line 45
    move v0, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v0, v1

    .line 48
    :goto_2
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 50
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 56
    move v1, v2

    .line 57
    :cond_3
    sput v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 62
    move-result v0

    .line 63
    const/16 v1, 0x40

    .line 65
    if-eqz v0, :cond_4

    .line 67
    const/16 v0, 0x20

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move v0, v1

    .line 71
    :goto_3
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 73
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 76
    move-result v0

    .line 77
    const/16 v2, 0x100

    .line 79
    if-eqz v0, :cond_5

    .line 81
    const/16 v0, 0x80

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    move v0, v2

    .line 85
    :goto_4
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_PENDING_BROADCASTS:I

    .line 87
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 93
    goto :goto_5

    .line 94
    :cond_6
    move v1, v2

    .line 95
    :goto_5
    sput v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

    .line 97
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_7

    .line 103
    goto :goto_6

    .line 104
    :cond_7
    const/16 v2, 0x400

    .line 106
    :goto_6
    sput v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_TIMEOUT:J

    .line 6
    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 8
    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 10
    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 12
    sget v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

    .line 14
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    .line 16
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    .line 19
    const/4 v1, 0x3

    .line 20
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    .line 22
    const/16 v1, 0xa

    .line 24
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    .line 26
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 28
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 30
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 32
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 34
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 36
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 38
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_PENDING_BROADCASTS:I

    .line 40
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    .line 42
    const-wide/16 v1, 0x1f4

    .line 44
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    .line 46
    const-wide/32 v1, 0x1d4c0

    .line 49
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    .line 51
    const-wide/32 v1, -0x1d4c0

    .line 54
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 56
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    .line 58
    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    .line 60
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

    .line 62
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    .line 64
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

    .line 66
    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    .line 68
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    .line 70
    const-wide/16 v0, 0x7530

    .line 72
    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    .line 74
    const/16 v0, 0x20

    .line 76
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_FROZEN_OUTGOING_BROADCASTS:I

    .line 78
    new-instance v0, Landroid/util/KeyValueListParser;

    .line 80
    const/16 v1, 0x2c

    .line 82
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 85
    iput-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 87
    iput-object p1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants$1()V

    .line 92
    return-void
.end method

.method public static getDeviceConfigInt(ILjava/lang/String;)I
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.sys.activity_manager_native_boot."

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "persist.device_config.activity_manager_native_boot."

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result p0

    .line 19
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static getDeviceConfigLong(JLjava/lang/String;)J
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.sys.activity_manager_native_boot."

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "persist.device_config.activity_manager_native_boot."

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2, p0, p1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 18
    move-result-wide p0

    .line 19
    invoke-static {v0, p0, p1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 22
    move-result-wide p0

    .line 23
    return-wide p0
.end method


# virtual methods
.method public final startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 3

    .line 1
    iput-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    .line 3
    new-instance p2, Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    .line 5
    invoke-direct {p2, p0, p1}, Lcom/android/server/am/BroadcastConstants$SettingsObserver;-><init>(Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;)V

    .line 8
    iput-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    .line 10
    iget-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    .line 12
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    iget-object v2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    .line 21
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateSettingsConstants()V

    .line 27
    new-instance p2, Landroid/os/HandlerExecutor;

    .line 29
    invoke-direct {p2, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 32
    new-instance p1, Lcom/android/server/am/BroadcastConstants$$ExternalSyntheticLambda0;

    .line 34
    invoke-direct {p1, p0}, Lcom/android/server/am/BroadcastConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastConstants;)V

    .line 37
    const-string v0, "activity_manager_native_boot"

    .line 39
    invoke-static {v0, p2, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants$1()V

    .line 45
    return-void
.end method

.method public final updateDeviceConfigConstants$1()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "bcast_max_running_process_queues"

    .line 4
    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

    .line 6
    invoke-static {v1, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(ILjava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    .line 12
    const-string v0, "bcast_extra_running_urgent_process_queues"

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(ILjava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    .line 21
    const-string v0, "bcast_max_consecutive_urgent_dispatches"

    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-static {v2, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(ILjava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    .line 30
    const-string v0, "bcast_max_consecutive_normal_dispatches"

    .line 32
    const/16 v2, 0xa

    .line 34
    invoke-static {v2, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(ILjava/lang/String;)I

    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    .line 40
    const-string v0, "bcast_max_running_active_broadcasts"

    .line 42
    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 44
    invoke-static {v2, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(ILjava/lang/String;)I

    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 50
    const-string v0, "bcast_max_core_running_blocking_broadcasts"

    .line 52
    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 54
    invoke-static {v2, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(ILjava/lang/String;)I

    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 60
    const-string v0, "bcast_max_core_running_non_blocking_broadcasts"

    .line 62
    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 64
    invoke-static {v2, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(ILjava/lang/String;)I

    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 70
    const-string v0, "bcast_max_pending_broadcasts"

    .line 72
    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_PENDING_BROADCASTS:I

    .line 74
    invoke-static {v2, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(ILjava/lang/String;)I

    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    .line 80
    const-string v0, "bcast_delay_normal_millis"

    .line 82
    const-wide/16 v2, 0x1f4

    .line 84
    invoke-static {v2, v3, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(JLjava/lang/String;)J

    .line 87
    move-result-wide v2

    .line 88
    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    .line 90
    const-string v0, "bcast_delay_cached_millis"

    .line 92
    const-wide/32 v2, 0x1d4c0

    .line 95
    invoke-static {v2, v3, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(JLjava/lang/String;)J

    .line 98
    move-result-wide v2

    .line 99
    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    .line 101
    const-string v0, "bcast_delay_urgent_millis"

    .line 103
    const-wide/32 v2, -0x1d4c0

    .line 106
    invoke-static {v2, v3, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(JLjava/lang/String;)J

    .line 109
    move-result-wide v4

    .line 110
    iput-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 112
    const-string v0, "bcast_delay_foreground_proc_millis"

    .line 114
    invoke-static {v2, v3, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(JLjava/lang/String;)J

    .line 117
    move-result-wide v4

    .line 118
    iput-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    .line 120
    const-string v0, "bcast_delay_persistent_proc_millis"

    .line 122
    invoke-static {v2, v3, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(JLjava/lang/String;)J

    .line 125
    move-result-wide v2

    .line 126
    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    .line 128
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_0

    .line 134
    const/16 v0, 0x100

    .line 136
    goto :goto_0

    .line 137
    :cond_0
    const/16 v0, 0x400

    .line 139
    :goto_0
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    .line 141
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_1

    .line 147
    const/16 v0, 0x200

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    const/16 v0, 0x800

    .line 152
    :goto_1
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    .line 154
    const-string v0, "bcast_core_defer_until_active"

    .line 156
    const-string/jumbo v2, "persist.sys.activity_manager_native_boot."

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 163
    const-string/jumbo v3, "persist.device_config.activity_manager_native_boot."

    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 173
    move-result v0

    .line 174
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 177
    move-result v0

    .line 178
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    .line 180
    const-string/jumbo v0, "pending_cold_start_check_interval_millis"

    .line 183
    const-wide/16 v1, 0x7530

    .line 185
    invoke-static {v1, v2, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(JLjava/lang/String;)J

    .line 188
    move-result-wide v0

    .line 189
    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    .line 191
    const-string/jumbo v0, "max_frozen_outgoing_broadcasts"

    .line 194
    const/16 v1, 0x20

    .line 196
    invoke-static {v1, v0}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(ILjava/lang/String;)I

    .line 199
    move-result v0

    .line 200
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_FROZEN_OUTGOING_BROADCASTS:I

    .line 202
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    .line 205
    sput-boolean p0, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    .line 207
    return-void

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    throw v0
.end method

.method public final updateSettingsConstants()V
    .locals 4

    .line 1
    const-string v0, "Bad broadcast settings in key \'"

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 6
    iget-object v2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    .line 8
    iget-object v3, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 19
    const-string v1, "bcast_timeout"

    .line 21
    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 29
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 31
    const-string v1, "bcast_allow_bg_activity_start_timeout"

    .line 33
    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 38
    move-result-wide v0

    .line 39
    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    const-string v2, "BroadcastConstants"

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "\'"

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw v0
.end method
