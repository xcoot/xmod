.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl$4;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$4;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl$4;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl$4;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    .line 10
    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    const/16 v0, 0xd

    .line 25
    .line 26
    if-ne p0, v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iget v7, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHotspotState:I

    .line 32
    .line 33
    if-eq v7, p0, :cond_1

    .line 34
    .line 35
    iput p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHotspotState:I

    .line 36
    .line 37
    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setWifiApState(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 43
    .line 44
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 45
    .line 46
    .line 47
    :cond_1
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method
