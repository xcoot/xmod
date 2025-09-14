.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 6
    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$1:J

    .line 8
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$2:J

    .line 10
    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$3:J

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$1:J

    .line 5
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$2:J

    .line 7
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$3:J

    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 16
    move-wide v6, v8

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->recordCurrentTimeChange(JJJ)V

    .line 20
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 22
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 25
    move-result-wide v1

    .line 26
    iget-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mRealtimeStartUs:J

    .line 28
    const-wide/16 v5, 0x3e8

    .line 30
    div-long/2addr v3, v5

    .line 31
    sub-long/2addr v1, v3

    .line 32
    sub-long/2addr v8, v1

    .line 33
    iput-wide v8, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mStartClockTimeMs:J

    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v0
.end method
