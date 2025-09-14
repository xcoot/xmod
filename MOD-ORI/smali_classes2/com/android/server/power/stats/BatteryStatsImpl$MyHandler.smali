.class public final Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCallback:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;

    .line 4
    .line 5
    iget v2, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v2, v3, :cond_5

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v2, v4, :cond_3

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    const/high16 v4, 0x4000000

    .line 15
    .line 16
    if-eq v2, p1, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x4

    .line 19
    if-eq v2, p0, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    if-eqz v1, :cond_6

    .line 23
    .line 24
    iget-boolean p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSystemServicesReady:Z

    .line 25
    .line 26
    if-eqz p0, :cond_6

    .line 27
    .line 28
    const-string p0, "com.samsung.server.BatteryStatsService.action.BATTERYSTATS_RESET"

    .line 29
    .line 30
    invoke-static {v4, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService;->batterySendBroadcast(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_1
    if-eqz v1, :cond_6

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 44
    .line 45
    iget-boolean p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCharging:Z

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string p1, "android.os.action.CHARGING"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string p1, "android.os.action.DISCHARGING"

    .line 55
    .line 56
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {v4, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->batterySendBroadcast(Landroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSystemServicesReady:Z

    .line 69
    .line 70
    if-nez p1, :cond_6

    .line 71
    .line 72
    iput-boolean v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPendingReportCharging:Z

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p0

    .line 77
    :cond_3
    if-eqz v1, :cond_6

    .line 78
    .line 79
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 80
    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const/4 v3, 0x0

    .line 85
    :goto_2
    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 88
    .line 89
    .line 90
    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 91
    .line 92
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 93
    .line 94
    .line 95
    monitor-enter p0

    .line 96
    :try_start_2
    iput-boolean v3, v1, Lcom/android/server/am/ActivityManagerService;->mOnBattery:Z

    .line 97
    .line 98
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catchall_1
    move-exception p1

    .line 104
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :cond_5
    if-eqz v1, :cond_6

    .line 110
    .line 111
    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_3
    return-void
.end method
