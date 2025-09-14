.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(IJJLcom/android/server/am/BatteryStatsService;Z)V
    .locals 0

    .line 1
    const/16 p7, 0x8

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IJJI)V
    .locals 0

    .line 2
    iput p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda116()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteGpsSignalQualityLocked(IJJ)V

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda23()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    move-wide v4, v8

    .line 19
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-wide/16 v1, 0x3e8

    .line 28
    .line 29
    mul-long/2addr v8, v1

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 32
    .line 33
    .line 34
    :cond_0
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda24()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 27
    .line 28
    const/high16 v7, 0x10000

    .line 29
    .line 30
    move-wide v3, v8

    .line 31
    move-wide v5, v10

    .line 32
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 44
    .line 45
    invoke-virtual {v2, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 46
    .line 47
    .line 48
    :cond_0
    move-object v2, v0

    .line 49
    move v3, v1

    .line 50
    move-wide v4, v8

    .line 51
    move-wide v6, v10

    .line 52
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked(J)V

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda27()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 32
    .line 33
    const-string/jumbo v9, "video"

    .line 34
    .line 35
    .line 36
    const/high16 v7, 0x40000000    # 2.0f

    .line 37
    .line 38
    move-wide v3, v10

    .line 39
    move-wide v5, v12

    .line 40
    move v8, v1

    .line 41
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJIILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 45
    .line 46
    invoke-virtual {v2, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    .line 50
    .line 51
    const/4 v3, 0x5

    .line 52
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    move v3, v1

    .line 60
    move-wide v4, v10

    .line 61
    move-wide v6, v12

    .line 62
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda35()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenBrightnessLocked(IIJJ)V

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda4()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 23
    .line 24
    const/high16 v7, 0x10000

    .line 25
    .line 26
    move-wide v3, v8

    .line 27
    move-wide v5, v10

    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJI)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 40
    .line 41
    invoke-virtual {v2, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 49
    .line 50
    move-object v2, v0

    .line 51
    move v3, v1

    .line 52
    move-wide v4, v8

    .line 53
    move-wide v6, v10

    .line 54
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked(J)V

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda42()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiSupplState:I

    .line 15
    .line 16
    if-eq v1, v6, :cond_1

    .line 17
    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    iget-object v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 21
    .line 22
    aget-object v1, v7, v1

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iput v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiSupplState:I

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 30
    .line 31
    aget-object v1, v1, v6

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 37
    .line 38
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordWifiSupplicantStateChangeEvent(JJI)V

    .line 39
    .line 40
    .line 41
    :cond_1
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda45()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRssiChangedLocked(IJJ)V

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda62()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOffLocked(IJJ)V

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda63()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 19
    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 27
    .line 28
    const-string/jumbo v9, "flashlight"

    .line 29
    .line 30
    .line 31
    const/high16 v7, 0x8000000

    .line 32
    .line 33
    move-wide v3, v10

    .line 34
    move-wide v5, v12

    .line 35
    move v8, v1

    .line 36
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StartEvent(JJIILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 40
    .line 41
    invoke-virtual {v2, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    .line 45
    .line 46
    const/4 v3, 0x6

    .line 47
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    move-object v2, v0

    .line 54
    move v3, v1

    .line 55
    move-wide v4, v10

    .line 56
    move-wide v6, v12

    .line 57
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 66
    .line 67
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 68
    .line 69
    iget-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 70
    .line 71
    iget-object v7, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v8, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 74
    .line 75
    const/16 v6, 0x10

    .line 76
    .line 77
    move-object v3, v1

    .line 78
    move-object v5, v0

    .line 79
    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 83
    .line 84
    :cond_1
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 85
    .line 86
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 87
    .line 88
    .line 89
    :cond_2
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda66()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 27
    .line 28
    iget v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 29
    .line 30
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateAllPhoneStateLocked(IIIJJ)V

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda67()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 32
    .line 33
    const-string/jumbo v9, "flashlight"

    .line 34
    .line 35
    .line 36
    const/high16 v7, 0x8000000

    .line 37
    .line 38
    move-wide v3, v10

    .line 39
    move-wide v5, v12

    .line 40
    move v8, v1

    .line 41
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJIILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 45
    .line 46
    invoke-virtual {v2, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    .line 50
    .line 51
    const/4 v3, 0x6

    .line 52
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    move v3, v1

    .line 60
    move-wide v4, v10

    .line 61
    move-wide v6, v12

    .line 62
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda70()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda72()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda86()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 23
    .line 24
    const-string/jumbo v9, "video"

    .line 25
    .line 26
    .line 27
    const/high16 v7, 0x40000000    # 2.0f

    .line 28
    .line 29
    move-wide v3, v10

    .line 30
    move-wide v5, v12

    .line 31
    move v8, v1

    .line 32
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StartEvent(JJIILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 36
    .line 37
    invoke-virtual {v2, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    .line 45
    .line 46
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    .line 47
    .line 48
    const/4 v3, 0x5

    .line 49
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    move-object v2, v0

    .line 56
    move v3, v1

    .line 57
    move-wide v4, v10

    .line 58
    move-wide v6, v12

    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 68
    .line 69
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 70
    .line 71
    iget-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 72
    .line 73
    iget-object v7, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 74
    .line 75
    iget-object v8, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 76
    .line 77
    const/16 v6, 0x8

    .line 78
    .line 79
    move-object v3, v1

    .line 80
    move-object v5, v0

    .line 81
    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 85
    .line 86
    :cond_1
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 87
    .line 88
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 89
    .line 90
    .line 91
    :cond_2
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda89()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    iget-wide v12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 23
    .line 24
    const-string v9, "audio"

    .line 25
    .line 26
    const/high16 v7, 0x400000

    .line 27
    .line 28
    move-wide v3, v10

    .line 29
    move-wide v5, v12

    .line 30
    move v8, v1

    .line 31
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJIILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 35
    .line 36
    invoke-virtual {v2, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    .line 44
    .line 45
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    .line 46
    .line 47
    const/4 v3, 0x4

    .line 48
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    move-object v2, v0

    .line 55
    move v3, v1

    .line 56
    move-wide v4, v10

    .line 57
    move-wide v6, v12

    .line 58
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 63
    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 69
    .line 70
    iget-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 71
    .line 72
    iget-object v7, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object v8, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 75
    .line 76
    const/16 v6, 0xf

    .line 77
    .line 78
    move-object v3, v1

    .line 79
    move-object v5, v0

    .line 80
    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 84
    .line 85
    :cond_1
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 86
    .line 87
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 88
    .line 89
    .line 90
    :cond_2
    monitor-exit p0

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 9
    .line 10
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 11
    .line 12
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 13
    .line 14
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    monitor-enter v7

    .line 17
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

    .line 20
    .line 21
    .line 22
    monitor-exit v7

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda89()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda86()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda72()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda70()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda67()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda66()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda63()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda62()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda4()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda45()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda42()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda35()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda27()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda24()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda23()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda116()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 92
    .line 93
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 94
    .line 95
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 96
    .line 97
    iget-wide v12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 98
    .line 99
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 100
    .line 101
    monitor-enter v14

    .line 102
    :try_start_1
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 103
    .line 104
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    .line 105
    .line 106
    if-nez v0, :cond_0

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    .line 114
    .line 115
    add-int/lit8 v1, v1, -0x1

    .line 116
    .line 117
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    .line 118
    .line 119
    if-nez v1, :cond_1

    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 122
    .line 123
    const-string v9, "audio"

    .line 124
    .line 125
    const/high16 v7, 0x400000

    .line 126
    .line 127
    move-wide v3, v10

    .line 128
    move-wide v5, v12

    .line 129
    move v8, v0

    .line 130
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJIILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 134
    .line 135
    invoke-virtual {v1, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 136
    .line 137
    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    .line 139
    .line 140
    const/4 v2, 0x4

    .line 141
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_2

    .line 146
    .line 147
    move-object v2, p0

    .line 148
    move v3, v0

    .line 149
    move-wide v4, v10

    .line 150
    move-wide v6, v12

    .line 151
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 156
    .line 157
    if-eqz p0, :cond_2

    .line 158
    .line 159
    invoke-virtual {p0, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 160
    .line 161
    .line 162
    :cond_2
    :goto_0
    monitor-exit v14

    .line 163
    return-void

    .line 164
    :catchall_1
    move-exception p0

    .line 165
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    throw p0

    .line 167
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 168
    .line 169
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 170
    .line 171
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 172
    .line 173
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 174
    .line 175
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 176
    .line 177
    monitor-enter v7

    .line 178
    :try_start_2
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 179
    .line 180
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOnLocked(IJJ)V

    .line 181
    .line 182
    .line 183
    monitor-exit v7

    .line 184
    return-void

    .line 185
    :catchall_2
    move-exception p0

    .line 186
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 187
    throw p0

    .line 188
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 189
    .line 190
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    .line 191
    .line 192
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    .line 193
    .line 194
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    .line 195
    .line 196
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 197
    .line 198
    monitor-enter p0

    .line 199
    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 200
    .line 201
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

    .line 202
    .line 203
    .line 204
    monitor-exit p0

    .line 205
    return-void

    .line 206
    :catchall_3
    move-exception v0

    .line 207
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 208
    throw v0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
