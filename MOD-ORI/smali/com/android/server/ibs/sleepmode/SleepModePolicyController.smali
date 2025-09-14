.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActionsLock:Ljava/lang/Object;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

.field public mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

.field public final mEntryArrayList:Ljava/util/ArrayList;

.field public final mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

.field public mInited:Z

.field public final mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

.field public final mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

.field public mSleepModeEnabled:Z

.field public mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

.field public mSysState:I

.field public final mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;


# direct methods
.method public static -$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public static -$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V
    .locals 1

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 26
    .line 27
    const-string p3, "alarm"

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    check-cast p3, Landroid/app/AlarmManager;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 36
    .line 37
    new-instance p3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 45
    .line 46
    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 47
    .line 48
    .line 49
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 50
    .line 51
    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 52
    .line 53
    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 54
    .line 55
    .line 56
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 57
    .line 58
    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 59
    .line 60
    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 64
    .line 65
    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 69
    .line 70
    const-string v2, "PMS_SleepModeAction"

    .line 71
    .line 72
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    .line 76
    .line 77
    const-string v2, "GPS_SleepModeAction"

    .line 78
    .line 79
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    .line 83
    .line 84
    const-string v2, "Wifi_SleepModeAction"

    .line 85
    .line 86
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 90
    .line 91
    const-string v2, "BlueTooth_SleepModeAction"

    .line 92
    .line 93
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 97
    .line 98
    const-string v2, "Nearby_SleepModeAction"

    .line 99
    .line 100
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 104
    .line 105
    const-string v2, "MasterSync_SleepModeAction"

    .line 106
    .line 107
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 111
    .line 112
    const-string v2, "Notification_SleepModeAction"

    .line 113
    .line 114
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 118
    .line 119
    const-string v1, "CF_Notification_SleepModeAction"

    .line 120
    .line 121
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-direct {v0, p0, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Looper;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 134
    .line 135
    new-instance p0, Landroid/content/IntentFilter;

    .line 136
    .line 137
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 141
    .line 142
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/4 p2, 0x2

    .line 146
    invoke-virtual {p1, p3, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    return-void
.end method


# virtual methods
.method public final enterSleepMode()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const-string p0, "SleepModePolicyController"

    .line 7
    .line 8
    const-string v0, "UI switch off disable the sleep mode restriction."

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 18
    .line 19
    const-string/jumbo v3, "enterSleepMode"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    invoke-direct {v3, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string/jumbo v2, "pref_sleep_mode_activated_key"

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-static {v0, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string/jumbo v2, "pref_sleep_mode_trigger_time_key"

    .line 49
    .line 50
    .line 51
    sget-boolean v4, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 52
    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    invoke-static {v0, v2, v4, v5}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const-string/jumbo v2, "pref_sleep_mode_policy_state_key"

    .line 67
    .line 68
    .line 69
    iget v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 70
    .line 71
    invoke-static {v0, v2, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceStatusBroadcast(Z)V

    .line 75
    .line 76
    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final exitSleepMode(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "exitSleepMode "

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "SleepModePolicyController"

    .line 9
    .line 10
    const-string p1, "UI switch off disable the cancel sleep mode restriction."

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v2, p1}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const-string/jumbo v0, "pref_sleep_mode_activated_key"

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {p1, v0, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const-string/jumbo v0, "pref_sleep_mode_cancel_time_key"

    .line 59
    .line 60
    .line 61
    sget-boolean v3, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 62
    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceStatusBroadcast(Z)V

    .line 75
    .line 76
    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final getSleepTime()Landroid/os/Bundle;
    .locals 6

    .line 1
    const-string v0, "SleepModePolicyController"

    .line 2
    .line 3
    const-string/jumbo v1, "getSleepTime"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v1, "pref_sleep_mode_start_time_key"

    .line 12
    .line 13
    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string/jumbo v4, "pref_sleep_mode_end_time_key"

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v4, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    cmp-long p0, v0, v2

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    cmp-long p0, v4, v2

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    new-instance p0, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "bundle_start_sleep_time_key"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "bundle_end_sleep_time_key"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    :goto_0
    return-object p0
.end method

.method public final initAlarm(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->updateActivated()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final initBroadcast(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "android.intent.action.TIME_SET"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "android.intent.action.REBOOT"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    new-instance p1, Landroid/content/IntentFilter;

    .line 37
    .line 38
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "package"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p0, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public final initDeviceStatusBroadcast(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/content/IntentFilter;

    .line 6
    .line 7
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 8
    .line 9
    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final isIdleStatus()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isDeviceIdleMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isScreenOn(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isPowerConnected(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    const-string/jumbo v0, "current idle status is "

    .line 29
    .line 30
    .line 31
    const-string v1, "SleepModePolicyController"

    .line 32
    .line 33
    invoke-static {v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    return p0
.end method

.method public final isSleepModeActivated()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "pref_sleep_mode_activated_key"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const-string/jumbo v0, "isSleepModeActivated to be "

    .line 11
    .line 12
    .line 13
    const-string v1, "SleepModePolicyController"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return p0
.end method

.method public final setRubinEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 2
    .line 3
    const-string v1, "SleepModePolicyController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "sleep mode off, doesn\'t deal with runstone event!"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "BEFORE_BEDTIME"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/16 p1, 0xb

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "PROBABLY_ASLEEP"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/16 p1, 0xc

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v0, "WAKEUP"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/16 p1, 0xd

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method public final setSleepModeEnable(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setSleepModeEnable >> "

    .line 2
    .line 3
    .line 4
    const-string v1, "SleepModePolicyController"

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string/jumbo v2, "startSleepModePolicy"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo v2, "stopSleepModePolicy"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const-string/jumbo v0, "pref_sleep_mode_enabled_key"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setSleepTime(JJ)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setSleepTime"

    .line 2
    .line 3
    .line 4
    const-string v1, "SleepModePolicyController"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "sendSetTimeMessage"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string/jumbo v3, "start_time"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-static {p3, p4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string/jumbo v3, "end_time"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x7

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-string/jumbo v1, "pref_sleep_mode_start_time_key"

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const-string/jumbo p1, "pref_sleep_mode_end_time_key"

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p1, p3, p4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final testState(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final updateActivated()V
    .locals 10

    .line 1
    const-string v0, "SleepModePolicyController"

    .line 2
    .line 3
    const-string/jumbo v1, "updateActivated"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v3, v2, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3, v1, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v3, v1, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_0
    const/16 v3, 0xc

    .line 66
    .line 67
    const-string v4, ":"

    .line 68
    .line 69
    const/16 v5, 0xb

    .line 70
    .line 71
    iget-object v6, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    const-string/jumbo v2, "sendAlarmStartMessage"

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    const/4 v2, 0x3

    .line 84
    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v6, "In Active Duration, set inactive alarm at "

    .line 94
    .line 95
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const-string/jumbo v2, "sendAlarmEndMessage"

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    if-eqz v6, :cond_3

    .line 130
    .line 131
    const/4 v2, 0x4

    .line 132
    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    .line 138
    .line 139
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v6, "Out Active Duration, set active alarm at "

    .line 142
    .line 143
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :goto_1
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide v5

    .line 176
    const-string v7, "SleepModePolicyController"

    .line 177
    .line 178
    const/4 v9, 0x0

    .line 179
    const/4 v4, 0x0

    .line 180
    iget-object v8, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    return-void
.end method
