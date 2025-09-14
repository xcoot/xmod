.class public final Lcom/android/server/power/stats/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iget-boolean v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setChargingLocked(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 40
    .line 41
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 42
    .line 43
    .line 44
    :cond_1
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method
