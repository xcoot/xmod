.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJI)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$2:I

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$1:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$3:I

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$4:J

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$5:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJI)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$1:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$2:I

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$3:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$4:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 8
    iget v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$2:I

    .line 10
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$1:Ljava/lang/String;

    .line 12
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$3:I

    .line 14
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$4:J

    .line 16
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$5:J

    .line 18
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    monitor-enter v9

    .line 21
    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 26
    move-result v8

    .line 27
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v6, v7, v8, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 39
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 42
    :goto_0
    monitor-exit v9

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 49
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$2:I

    .line 51
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$1:Ljava/lang/String;

    .line 53
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$3:I

    .line 55
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$4:J

    .line 57
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$5:J

    .line 59
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 61
    monitor-enter v9

    .line 62
    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 64
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteDeviceIdleModeLocked(IILjava/lang/String;JJ)V

    .line 67
    monitor-exit v9

    .line 68
    return-void

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    throw p0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 74
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$1:Ljava/lang/String;

    .line 76
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$2:I

    .line 78
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$3:I

    .line 80
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$4:J

    .line 82
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;->f$5:J

    .line 84
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_2
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 89
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobFinishLocked(IILjava/lang/String;JJ)V

    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :catchall_2
    move-exception v0

    .line 95
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    throw v0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
