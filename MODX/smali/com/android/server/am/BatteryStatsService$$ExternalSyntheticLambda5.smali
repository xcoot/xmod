.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(IIIJJJLcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 6
    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$3:I

    .line 10
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$4:J

    .line 12
    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$5:J

    .line 14
    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$6:J

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$1:I

    .line 5
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$3:I

    .line 7
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$4:J

    .line 9
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$5:J

    .line 11
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;->f$6:J

    .line 13
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenStateLocked(IIJJJ)V

    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0
.end method
