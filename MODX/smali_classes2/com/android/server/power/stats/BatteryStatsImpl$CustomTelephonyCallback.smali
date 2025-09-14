.class public final Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 26
    .line 27
    iget v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x3

    .line 33
    if-eq v4, v5, :cond_1

    .line 34
    .line 35
    if-ne v4, v8, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v4, v7

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    move v4, v6

    .line 41
    :goto_1
    const/16 v5, 0x14

    .line 42
    .line 43
    if-ne v2, v5, :cond_2

    .line 44
    .line 45
    iput-boolean v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsServiceStateNr:Z

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v5, 0xd

    .line 49
    .line 50
    if-ne v2, v5, :cond_3

    .line 51
    .line 52
    if-ne p1, v8, :cond_3

    .line 53
    .line 54
    iput-boolean v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsServiceStateNr:Z

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    iput-boolean v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsServiceStateNr:Z

    .line 58
    .line 59
    :goto_2
    iget-boolean p1, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsServiceStateNr:Z

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    iget-object p1, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 68
    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    iget-object p1, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p1
.end method
