.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$5:I

    .line 15
    .line 16
    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$6:J

    .line 17
    .line 18
    iput-wide p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$7:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$1:I

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$2:I

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$5:I

    .line 12
    .line 13
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$6:J

    .line 14
    .line 15
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;->f$7:J

    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0
.end method
