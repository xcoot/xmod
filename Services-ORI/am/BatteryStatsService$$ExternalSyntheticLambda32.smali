.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(IIIJJLcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->$r8$classId:I

    .line 2
    .line 3
    iput-object p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$1:I

    .line 6
    .line 7
    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$2:I

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$3:J

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$4:J

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda95()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$1:I

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$2:I

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$3:J

    .line 8
    .line 9
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$4:J

    .line 10
    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 21
    .line 22
    monitor-enter v8

    .line 23
    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 24
    .line 25
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUidProcessStateLocked(IIJJ)V

    .line 26
    .line 27
    .line 28
    monitor-exit v8

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$1:I

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$2:I

    .line 11
    .line 12
    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$3:J

    .line 13
    .line 14
    iget-wide v11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$4:J

    .line 15
    .line 16
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 17
    .line 18
    monitor-enter v13

    .line 19
    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSensorNesting:I

    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSensorNesting:I

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 34
    .line 35
    const/high16 v8, 0x800000

    .line 36
    .line 37
    move-wide v4, v9

    .line 38
    move-wide v6, v11

    .line 39
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    .line 40
    .line 41
    .line 42
    :cond_0
    move-object v3, p0

    .line 43
    move v4, v0

    .line 44
    move-wide v5, v9

    .line 45
    move-wide v7, v11

    .line 46
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 58
    .line 59
    .line 60
    :cond_1
    monitor-exit v13

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0

    .line 65
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda95()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 70
    .line 71
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$1:I

    .line 72
    .line 73
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$2:I

    .line 74
    .line 75
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$3:J

    .line 76
    .line 77
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$4:J

    .line 78
    .line 79
    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 80
    .line 81
    monitor-enter v8

    .line 82
    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 83
    .line 84
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUserActivityLocked(IIJJ)V

    .line 85
    .line 86
    .line 87
    monitor-exit v8

    .line 88
    return-void

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    throw p0

    .line 92
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 93
    .line 94
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$1:I

    .line 95
    .line 96
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$2:I

    .line 97
    .line 98
    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$3:J

    .line 99
    .line 100
    iget-wide v11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;->f$4:J

    .line 101
    .line 102
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 103
    .line 104
    monitor-enter p0

    .line 105
    :try_start_2
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iget v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSensorNesting:I

    .line 112
    .line 113
    if-nez v3, :cond_2

    .line 114
    .line 115
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 116
    .line 117
    const/high16 v8, 0x800000

    .line 118
    .line 119
    move-wide v4, v9

    .line 120
    move-wide v6, v11

    .line 121
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJI)V

    .line 122
    .line 123
    .line 124
    :cond_2
    iget v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSensorNesting:I

    .line 125
    .line 126
    const/4 v13, 0x1

    .line 127
    add-int/2addr v3, v13

    .line 128
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSensorNesting:I

    .line 129
    .line 130
    move-object v3, v0

    .line 131
    move v4, v1

    .line 132
    move-wide v5, v9

    .line 133
    move-wide v7, v11

    .line 134
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0, v2, v13}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 143
    .line 144
    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 147
    :catchall_2
    move-exception v0

    .line 148
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 149
    throw v0

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
