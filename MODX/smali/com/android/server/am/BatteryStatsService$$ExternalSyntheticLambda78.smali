.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 6
    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$2:Ljava/lang/String;

    .line 10
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$3:J

    .line 12
    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$4:J

    .line 14
    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$5:J

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$2:Ljava/lang/String;

    .line 7
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$3:J

    .line 9
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$4:J

    .line 11
    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;->f$5:J

    .line 13
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    iget-boolean v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    .line 17
    if-nez v3, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 23
    invoke-virtual {v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 26
    move-result v4

    .line 27
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 34
    move-result-object v0

    .line 35
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    .line 37
    add-long/2addr v1, v9

    .line 38
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    .line 40
    monitor-exit p0

    .line 41
    :goto_0
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v0
.end method
