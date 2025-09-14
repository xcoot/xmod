.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;
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

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 6
    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 14
    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$5:I

    .line 16
    iput-boolean p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$6:Z

    .line 18
    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$7:J

    .line 20
    iput-wide p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$8:J

    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$1:I

    .line 5
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$2:I

    .line 7
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 9
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 11
    iget v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$5:I

    .line 13
    iget-boolean v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$6:Z

    .line 15
    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$7:J

    .line 17
    iget-wide v11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$8:J

    .line 19
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v0
.end method
