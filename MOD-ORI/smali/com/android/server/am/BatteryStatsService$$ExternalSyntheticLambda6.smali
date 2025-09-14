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

    .line 2
    .line 3
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 10
    .line 11
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 12
    .line 13
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 17
    .line 18
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockStartInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 19
    .line 20
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

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 10
    .line 11
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 12
    .line 13
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 17
    .line 18
    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    move-wide v8, v10

    .line 23
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 38
    .line 39
    const-wide/16 v2, 0x3e8

    .line 40
    .line 41
    mul-long/2addr v10, v2

    .line 42
    invoke-virtual {v1, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    div-long/2addr v4, v2

    .line 47
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    .line 48
    .line 49
    sub-long/2addr v4, v1

    .line 50
    const-wide/16 v1, 0x0

    .line 51
    .line 52
    cmp-long v1, v4, v1

    .line 53
    .line 54
    if-lez v1, :cond_0

    .line 55
    .line 56
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    .line 57
    .line 58
    add-long/2addr v1, v4

    .line 59
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 63
    .line 64
    add-int/lit8 v1, v1, -0x1

    .line 65
    .line 66
    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 67
    .line 68
    :goto_0
    const/4 v1, 0x0

    .line 69
    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 70
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

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 13
    .line 14
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 15
    .line 16
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 17
    .line 18
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    .line 20
    monitor-enter v9

    .line 21
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 22
    .line 23
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockFinishInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 24
    .line 25
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

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda121()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 40
    .line 41
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 46
    .line 47
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 48
    .line 49
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 50
    .line 51
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 52
    .line 53
    monitor-enter v12

    .line 54
    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    move-wide v8, v10

    .line 61
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 70
    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    add-int/2addr v0, v1

    .line 77
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 82
    .line 83
    const-wide/16 v2, 0x3e8

    .line 84
    .line 85
    mul-long/2addr v10, v2

    .line 86
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    div-long/2addr v4, v2

    .line 91
    iput-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    .line 92
    .line 93
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 94
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

    .line 101
    .line 102
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 107
    .line 108
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 109
    .line 110
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 111
    .line 112
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 113
    .line 114
    monitor-enter v12

    .line 115
    :try_start_2
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 116
    .line 117
    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    move-wide v8, v10

    .line 122
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 131
    .line 132
    if-nez v0, :cond_1

    .line 133
    .line 134
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    add-int/2addr v0, v1

    .line 138
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 143
    .line 144
    const-wide/16 v2, 0x3e8

    .line 145
    .line 146
    mul-long/2addr v10, v2

    .line 147
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 148
    .line 149
    .line 150
    move-result-wide v4

    .line 151
    div-long/2addr v4, v2

    .line 152
    iput-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    .line 153
    .line 154
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 155
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

    .line 162
    .line 163
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$1:I

    .line 164
    .line 165
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 168
    .line 169
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$4:J

    .line 170
    .line 171
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;->f$5:J

    .line 172
    .line 173
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 174
    .line 175
    monitor-enter p0

    .line 176
    :try_start_3
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 177
    .line 178
    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    move-wide v8, v10

    .line 183
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 192
    .line 193
    if-eqz v1, :cond_3

    .line 194
    .line 195
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 196
    .line 197
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 198
    .line 199
    const-wide/16 v2, 0x3e8

    .line 200
    .line 201
    mul-long/2addr v10, v2

    .line 202
    invoke-virtual {v1, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v4

    .line 206
    div-long/2addr v4, v2

    .line 207
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    .line 208
    .line 209
    sub-long/2addr v4, v1

    .line 210
    const-wide/16 v1, 0x0

    .line 211
    .line 212
    cmp-long v1, v4, v1

    .line 213
    .line 214
    if-lez v1, :cond_2

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_2
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 218
    .line 219
    add-int/lit8 v1, v1, -0x1

    .line 220
    .line 221
    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 222
    .line 223
    :goto_0
    const/4 v1, 0x0

    .line 224
    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 225
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
