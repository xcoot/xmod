.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IJI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$1:I

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V
    .locals 0

    .line 2
    const/4 p3, 0x2

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$1:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 8
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$1:I

    .line 10
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$2:J

    .line 12
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    monitor-enter v4

    .line 15
    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 17
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiState:I

    .line 19
    if-eq v0, v1, :cond_2

    .line 21
    if-ltz v0, :cond_0

    .line 23
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 25
    aget-object v0, v5, v0

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 30
    :cond_0
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiState:I

    .line 32
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 34
    aget-object v0, v0, v1

    .line 36
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 39
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiPowerStatsCollector:Lcom/android/server/power/stats/WifiPowerStatsCollector;

    .line 41
    iget-boolean v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 43
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string/jumbo v0, "wifi-state"

    .line 52
    const/4 v1, 0x2

    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(ILjava/lang/String;)V

    .line 56
    :cond_2
    :goto_0
    monitor-exit v4

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 63
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$1:I

    .line 65
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$2:J

    .line 67
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 69
    monitor-enter v4

    .line 70
    :try_start_1
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 72
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->onCleanupUserLocked(IJ)V

    .line 75
    monitor-exit v4

    .line 76
    return-void

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    throw p0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 82
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$1:I

    .line 84
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;->f$2:J

    .line 86
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_2
    iget-object v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 91
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 94
    monitor-exit p0

    .line 95
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 97
    monitor-enter v4

    .line 98
    :try_start_3
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 100
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->removeUidStatsLocked(IJ)V

    .line 103
    monitor-exit v4

    .line 104
    return-void

    .line 105
    :catchall_2
    move-exception p0

    .line 106
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 107
    throw p0

    .line 108
    :catchall_3
    move-exception v0

    .line 109
    monitor-exit p0

    .line 110
    throw v0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
