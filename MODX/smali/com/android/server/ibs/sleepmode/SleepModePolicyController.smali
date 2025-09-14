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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;

    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    .line 11
    iput-object p2, v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 13
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 3
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    iput p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 9
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    .line 18
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 23
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 25
    iput v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 27
    const-string p3, "alarm"

    .line 29
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p3

    .line 33
    check-cast p3, Landroid/app/AlarmManager;

    .line 35
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 37
    new-instance p3, Ljava/util/ArrayList;

    .line 39
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 44
    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 46
    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 49
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 51
    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 53
    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 56
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 58
    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 60
    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 63
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 65
    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    .line 68
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 70
    const-string v2, "PMS_SleepModeAction"

    .line 72
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 75
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    .line 77
    const-string v2, "GPS_SleepModeAction"

    .line 79
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 82
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    .line 84
    const-string v2, "Wifi_SleepModeAction"

    .line 86
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 89
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 91
    const-string v2, "BlueTooth_SleepModeAction"

    .line 93
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 96
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 98
    const-string v2, "Nearby_SleepModeAction"

    .line 100
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 103
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 105
    const-string v2, "MasterSync_SleepModeAction"

    .line 107
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 110
    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 112
    const-string v2, "Notification_SleepModeAction"

    .line 114
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 117
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 119
    const-string v1, "CF_Notification_SleepModeAction"

    .line 121
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 124
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 126
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 129
    move-result-object p2

    .line 130
    invoke-direct {v0, p0, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Looper;)V

    .line 133
    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 135
    new-instance p0, Landroid/content/IntentFilter;

    .line 137
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 142
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const/4 p2, 0x2

    .line 146
    invoke-virtual {p1, p3, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

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

    .line 4
    if-nez v1, :cond_0

    .line 6
    const-string p0, "SleepModePolicyController"

    .line 8
    const-string v0, "UI switch off disable the sleep mode restriction."

    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 19
    const-string/jumbo v3, "enterSleepMode"

    .line 22
    invoke-virtual {v2, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 25
    iput v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 27
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 29
    new-instance v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    .line 31
    invoke-direct {v3, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 34
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 37
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 39
    const-string/jumbo v2, "pref_sleep_mode_activated_key"

    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-static {v0, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 46
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 48
    const-string/jumbo v2, "pref_sleep_mode_trigger_time_key"

    .line 51
    sget-boolean v4, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 60
    move-result-wide v4

    .line 61
    invoke-static {v0, v2, v4, v5}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 64
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 66
    const-string/jumbo v2, "pref_sleep_mode_policy_state_key"

    .line 69
    iget v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 71
    invoke-static {v0, v2, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 74
    invoke-virtual {p0, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceStatusBroadcast(Z)V

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

    .line 4
    iget-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    const-string p0, "SleepModePolicyController"

    .line 10
    const-string p1, "UI switch off disable the cancel sleep mode restriction."

    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v2, p1}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 44
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 47
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 49
    const-string/jumbo v0, "pref_sleep_mode_activated_key"

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {p1, v0, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 56
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 58
    const-string/jumbo v0, "pref_sleep_mode_cancel_time_key"

    .line 61
    sget-boolean v3, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 70
    move-result-wide v3

    .line 71
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceStatusBroadcast(Z)V

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

    .line 3
    const-string/jumbo v1, "getSleepTime"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 11
    const-string/jumbo v1, "pref_sleep_mode_start_time_key"

    .line 14
    const-wide/16 v2, -0x1

    .line 16
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 19
    move-result-wide v0

    .line 20
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 22
    const-string/jumbo v4, "pref_sleep_mode_end_time_key"

    .line 25
    invoke-static {p0, v4, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 28
    move-result-wide v4

    .line 29
    cmp-long p0, v0, v2

    .line 31
    if-eqz p0, :cond_0

    .line 33
    cmp-long p0, v4, v2

    .line 35
    if-eqz p0, :cond_0

    .line 37
    new-instance p0, Landroid/os/Bundle;

    .line 39
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string/jumbo v2, "bundle_start_sleep_time_key"

    .line 45
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    const-string/jumbo v0, "bundle_end_sleep_time_key"

    .line 51
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 7
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->updateActivated()V

    .line 15
    :cond_1
    return-void
.end method

.method public final initBroadcast(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Landroid/content/IntentFilter;

    .line 7
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 10
    const-string v1, "android.intent.action.TIME_SET"

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    const-string v1, "android.intent.action.REBOOT"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 36
    new-instance p1, Landroid/content/IntentFilter;

    .line 38
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 43
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "package"

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    :goto_0
    return-void
.end method

.method public final initDeviceStatusBroadcast(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Landroid/content/IntentFilter;

    .line 7
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 9
    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    :goto_0
    return-void
.end method

.method public final isIdleStatus()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isDeviceIdleMode(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isScreenOn(Landroid/content/Context;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isPowerConnected(Landroid/content/Context;)Z

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

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

    .line 31
    const-string v1, "SleepModePolicyController"

    .line 33
    invoke-static {v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    return p0
.end method

.method public final isSleepModeActivated()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v0, "pref_sleep_mode_activated_key"

    .line 6
    invoke-static {p0, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 9
    move-result p0

    .line 10
    const-string/jumbo v0, "isSleepModeActivated to be "

    .line 13
    const-string v1, "SleepModePolicyController"

    .line 15
    invoke-static {v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    return p0
.end method

.method public final setRubinEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 3
    const-string v1, "SleepModePolicyController"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string/jumbo p0, "sleep mode off, doesn\'t deal with runstone event!"

    .line 10
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "BEFORE_BEDTIME"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    move-result v2

    .line 20
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/16 p1, 0xb

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "PROBABLY_ASLEEP"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/16 p1, 0xc

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v0, "WAKEUP"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 58
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/16 p1, 0xd

    .line 63
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method public final setSleepModeEnable(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setSleepModeEnable >> "

    .line 4
    const-string v1, "SleepModePolicyController"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const-string/jumbo v2, "startSleepModePolicy"

    .line 16
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo v2, "stopSleepModePolicy"

    .line 27
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 36
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 38
    const-string/jumbo v0, "pref_sleep_mode_enabled_key"

    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public final setSleepTime(JJ)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setSleepTime"

    .line 4
    const-string v1, "SleepModePolicyController"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-string/jumbo v0, "sendSetTimeMessage"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    new-instance v1, Landroid/util/ArrayMap;

    .line 21
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 24
    invoke-static {p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 27
    move-result-object v2

    .line 28
    const-string/jumbo v3, "start_time"

    .line 31
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p3, p4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 37
    move-result-object v2

    .line 38
    const-string/jumbo v3, "end_time"

    .line 41
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v2, 0x7

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 54
    const-string/jumbo v1, "pref_sleep_mode_start_time_key"

    .line 57
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 60
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 62
    const-string/jumbo p1, "pref_sleep_mode_end_time_key"

    .line 65
    invoke-static {p0, p1, p3, p4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 68
    return-void
.end method

.method public final testState(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 3
    and-int/2addr p0, p1

    .line 4
    if-ne p0, p1, :cond_0

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

    .line 3
    const-string/jumbo v1, "updateActivated"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 11
    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 15
    if-eqz v1, :cond_4

    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 23
    invoke-virtual {v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 29
    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 31
    invoke-virtual {v4, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    invoke-virtual {v3, v2, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 45
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 47
    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 49
    invoke-virtual {v4, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3, v1, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v3, v1, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    .line 64
    move-result-object v1

    .line 65
    :goto_0
    const/16 v3, 0xc

    .line 67
    const-string v4, ":"

    .line 69
    const/16 v5, 0xb

    .line 71
    iget-object v6, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 73
    if-eqz v2, :cond_2

    .line 75
    const-string/jumbo v2, "sendAlarmStartMessage"

    .line 78
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz v6, :cond_1

    .line 83
    const/4 v2, 0x3

    .line 84
    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    const-string v6, "In Active Duration, set inactive alarm at "

    .line 95
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 101
    move-result v5

    .line 102
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 111
    move-result v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const-string/jumbo v2, "sendAlarmEndMessage"

    .line 126
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz v6, :cond_3

    .line 131
    const/4 v2, 0x4

    .line 132
    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    const-string v6, "Out Active Duration, set active alarm at "

    .line 143
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 149
    move-result v5

    .line 150
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 159
    move-result v3

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_1
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 172
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 175
    move-result-wide v5

    .line 176
    const-string v7, "SleepModePolicyController"

    .line 178
    const/4 v9, 0x0

    .line 179
    const/4 v4, 0x0

    .line 180
    iget-object v8, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    .line 182
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 185
    :cond_4
    return-void
.end method
