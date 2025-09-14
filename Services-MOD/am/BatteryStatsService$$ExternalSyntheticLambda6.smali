.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJI)V
    .locals 0

    .line 2
    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda121()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 7
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 9
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 11
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 13
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockStartInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

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

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda19()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 9
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 11
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 13
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 21
    move-result v5

    .line 22
    move-wide v8, v10

    .line 23
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 30
    move-result-object v0

    .line 31
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 33
    if-eqz v1, :cond_1

    .line 35
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 37
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 39
    const-wide/16 v2, 0x3e8

    .line 41
    mul-long/2addr v10, v2

    .line 42
    invoke-virtual {v1, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 45
    move-result-wide v4

    .line 46
    div-long/2addr v4, v2

    .line 47
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    .line 49
    sub-long/2addr v4, v1

    .line 50
    const-wide/16 v1, 0x0

    .line 52
    cmp-long v1, v4, v1

    .line 54
    if-lez v1, :cond_0

    .line 56
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    .line 58
    add-long/2addr v1, v4

    .line 59
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 64
    add-int/lit8 v1, v1, -0x1

    .line 66
    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 68
    :goto_0
    const/4 v1, 0x0

    .line 69
    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 71
    :cond_1
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 8
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 10
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 12
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 14
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 16
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 18
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    monitor-enter v9

    .line 21
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 23
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockFinishInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 26
    monitor-exit v9

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda19()V

    .line 34
    return-void

    .line 35
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda121()V

    .line 38
    return-void

    .line 39
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 41
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 43
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 47
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 49
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 51
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 53
    monitor-enter v12

    .line 54
    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 56
    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 59
    move-result v5

    .line 60
    move-wide v8, v10

    .line 61
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 68
    move-result-object p0

    .line 69
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 71
    if-nez v0, :cond_0

    .line 73
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 75
    const/4 v1, 0x1

    .line 76
    add-int/2addr v0, v1

    .line 77
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 79
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 81
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 83
    const-wide/16 v2, 0x3e8

    .line 85
    mul-long/2addr v10, v2

    .line 86
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 89
    move-result-wide v4

    .line 90
    div-long/2addr v4, v2

    .line 91
    iput-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    .line 93
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 95
    :cond_0
    monitor-exit v12

    .line 96
    return-void

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    throw p0

    .line 100
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 102
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 104
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 108
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 110
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 112
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 114
    monitor-enter v12

    .line 115
    :try_start_2
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 117
    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 120
    move-result v5

    .line 121
    move-wide v8, v10

    .line 122
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 129
    move-result-object p0

    .line 130
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 132
    if-nez v0, :cond_1

    .line 134
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 136
    const/4 v1, 0x1

    .line 137
    add-int/2addr v0, v1

    .line 138
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 140
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 142
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 144
    const-wide/16 v2, 0x3e8

    .line 146
    mul-long/2addr v10, v2

    .line 147
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 150
    move-result-wide v4

    .line 151
    div-long/2addr v4, v2

    .line 152
    iput-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    .line 154
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 156
    :cond_1
    monitor-exit v12

    .line 157
    return-void

    .line 158
    :catchall_2
    move-exception p0

    .line 159
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 160
    throw p0

    .line 161
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 163
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 165
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 167
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 169
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 171
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 173
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 175
    monitor-enter p0

    .line 176
    :try_start_3
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 178
    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 181
    move-result v5

    .line 182
    move-wide v8, v10

    .line 183
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 190
    move-result-object v0

    .line 191
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 193
    if-eqz v1, :cond_3

    .line 195
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 197
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 199
    const-wide/16 v2, 0x3e8

    .line 201
    mul-long/2addr v10, v2

    .line 202
    invoke-virtual {v1, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 205
    move-result-wide v4

    .line 206
    div-long/2addr v4, v2

    .line 207
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    .line 209
    sub-long/2addr v4, v1

    .line 210
    const-wide/16 v1, 0x0

    .line 212
    cmp-long v1, v4, v1

    .line 214
    if-lez v1, :cond_2

    .line 216
    goto :goto_0

    .line 217
    :cond_2
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 219
    add-int/lit8 v1, v1, -0x1

    .line 221
    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 223
    :goto_0
    const/4 v1, 0x0

    .line 224
    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 226
    :cond_3
    monitor-exit p0

    .line 227
    return-void

    .line 228
    :catchall_3
    move-exception v0

    .line 229
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 230
    throw v0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
