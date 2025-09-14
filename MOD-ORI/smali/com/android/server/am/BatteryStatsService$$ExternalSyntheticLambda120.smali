.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda120;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda120;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda120;->f$1:Z

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda120;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda120;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda120;->f$1:Z

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda120;->f$2:J

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    .line 12
    iget-boolean v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mInteractive:Z

    .line 13
    .line 14
    if-eq v4, v1, :cond_1

    .line 15
    .line 16
    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mInteractive:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v0
.end method
