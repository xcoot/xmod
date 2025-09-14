.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/WorkSource;

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJI)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$1:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$2:Landroid/os/WorkSource;

    .line 9
    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$3:I

    .line 11
    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$4:J

    .line 13
    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$5:J

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 8
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$1:Ljava/lang/String;

    .line 10
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$2:Landroid/os/WorkSource;

    .line 12
    iget v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$3:I

    .line 14
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$4:J

    .line 16
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$5:J

    .line 18
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    monitor-enter v10

    .line 21
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 23
    const/16 v2, 0x400d

    .line 25
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmStartOrFinishLocked(ILjava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 28
    monitor-exit v10

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 35
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$1:Ljava/lang/String;

    .line 37
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$2:Landroid/os/WorkSource;

    .line 39
    iget v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$3:I

    .line 41
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$4:J

    .line 43
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$5:J

    .line 45
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 50
    const v2, 0x800d

    .line 53
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmStartOrFinishLocked(ILjava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_1
    move-exception v0

    .line 59
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    throw v0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
