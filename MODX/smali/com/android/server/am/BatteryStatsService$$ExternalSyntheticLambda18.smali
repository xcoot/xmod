.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(IJJLcom/android/server/am/BatteryStatsService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 6
    iput-boolean p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$1:Z

    .line 8
    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$2:I

    .line 10
    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$3:J

    .line 12
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$4:J

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$1:Z

    .line 5
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$2:I

    .line 7
    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$3:J

    .line 9
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$4:J

    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    monitor-enter p0

    .line 14
    if-eqz v1, :cond_0

    .line 16
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 21
    move-result v4

    .line 22
    move-wide v5, v9

    .line 23
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteActivityResumedLocked(J)V

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 35
    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 38
    move-result v4

    .line 39
    move-wide v5, v9

    .line 40
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteActivityPausedLocked(J)V

    .line 47
    :goto_0
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v0
.end method
