.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(IIIJJJLcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->$r8$classId:I

    iput-object p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$1:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$2:J

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$3:I

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$4:J

    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$5:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IIJJJLcom/android/server/am/BatteryStatsService;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$1:I

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$3:I

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$4:J

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 8
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$1:I

    .line 10
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$3:I

    .line 12
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$2:J

    .line 14
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$4:J

    .line 16
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$5:J

    .line 18
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    monitor-enter v10

    .line 21
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 23
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobsDeferredLocked(IIJJJ)V

    .line 26
    monitor-exit v10

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 33
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$1:I

    .line 35
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$2:J

    .line 37
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$3:I

    .line 39
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$4:J

    .line 41
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$5:J

    .line 43
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 45
    monitor-enter v10

    .line 46
    :try_start_1
    iget p0, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 48
    if-ne p0, v2, :cond_0

    .line 50
    monitor-exit v10

    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iput v2, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 56
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 58
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IIJJJ)V

    .line 61
    monitor-exit v10

    .line 62
    :goto_0
    return-void

    .line 63
    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    throw p0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 67
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$1:I

    .line 69
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$2:J

    .line 71
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$3:I

    .line 73
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$4:J

    .line 75
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;->f$5:J

    .line 77
    const-string/jumbo p0, "wifi-data: "

    .line 80
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 82
    monitor-enter v10

    .line 83
    :try_start_2
    iget v1, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 85
    if-ne v1, v2, :cond_1

    .line 87
    monitor-exit v10

    .line 88
    goto :goto_4

    .line 89
    :catchall_2
    move-exception p0

    .line 90
    goto :goto_5

    .line 91
    :cond_1
    iput v2, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 93
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 95
    iget-boolean v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    .line 97
    if-eqz v1, :cond_4

    .line 99
    const/4 v1, 0x3

    .line 100
    const/4 v11, 0x2

    .line 101
    if-eq v2, v1, :cond_3

    .line 103
    if-ne v2, v11, :cond_2

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    const-string/jumbo v1, "inactive"

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    :goto_2
    const-string v1, "active"

    .line 112
    :goto_3
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 114
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v12, v11, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)Ljava/util/concurrent/Future;

    .line 121
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 123
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRadioPowerState(IIJJJ)V

    .line 126
    monitor-exit v10

    .line 127
    :goto_4
    return-void

    .line 128
    :goto_5
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    throw p0

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
