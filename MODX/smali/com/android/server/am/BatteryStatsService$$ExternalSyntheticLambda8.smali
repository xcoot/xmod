.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJI)V
    .locals 0

    .line 1
    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V
    .locals 0

    .line 2
    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda129()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 5
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 7
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 9
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->reportExcessiveCpuLocked(IJJLjava/lang/String;)V

    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda13()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 5
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 7
    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 9
    iget-wide v11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->encodingPersonalInformation(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 26
    move-result v2

    .line 27
    move-object v3, v0

    .line 28
    move v4, v2

    .line 29
    move-wide v5, v9

    .line 30
    move-wide v7, v11

    .line 31
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 34
    move-result-object v3

    .line 35
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 37
    invoke-virtual {v3, v9, v10, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->startObject(JLjava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 43
    invoke-virtual {v3, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 46
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 48
    const v4, 0x8004

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 61
    const v8, 0x8004

    .line 64
    move-wide v4, v9

    .line 65
    move-wide v6, v11

    .line 66
    move-object v9, v1

    .line 67
    move v10, v2

    .line 68
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 71
    :goto_0
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

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda22()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 5
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 7
    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 9
    iget-wide v11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->encodingPersonalInformation(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 26
    move-result v2

    .line 27
    move-object v3, v0

    .line 28
    move v4, v2

    .line 29
    move-wide v5, v9

    .line 30
    move-wide v7, v11

    .line 31
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 34
    move-result-object v3

    .line 35
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 37
    invoke-virtual {v3, v9, v10, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->stopObject(JLjava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 43
    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 48
    :cond_0
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 50
    const/16 v4, 0x4004

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 62
    const/16 v8, 0x4004

    .line 64
    move-wide v4, v9

    .line 65
    move-wide v6, v11

    .line 66
    move-object v9, v1

    .line 67
    move v10, v2

    .line 68
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 71
    :goto_0
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

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda36()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 5
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 7
    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 9
    iget-wide v11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->encodingPersonalInformation(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 26
    move-result v2

    .line 27
    move-object v3, v0

    .line 28
    move v4, v2

    .line 29
    move-wide v5, v9

    .line 30
    move-wide v7, v11

    .line 31
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 34
    move-result-object v3

    .line 35
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 37
    invoke-virtual {v3, v9, v10, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->startObject(JLjava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 43
    invoke-virtual {v3, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 46
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 48
    const v4, 0x8006

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 61
    const v8, 0x8006

    .line 64
    move-wide v4, v9

    .line 65
    move-wide v6, v11

    .line 66
    move-object v9, v1

    .line 67
    move v10, v2

    .line 68
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 71
    :goto_0
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

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda68()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 7
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 9
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 19
    move-result v14

    .line 20
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    .line 22
    if-eqz v1, :cond_0

    .line 24
    move-object v8, v0

    .line 25
    move v9, v14

    .line 26
    move-wide v10, v2

    .line 27
    move-wide v12, v4

    .line 28
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 35
    move-result-object v1

    .line 36
    iget v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 40
    iput v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 42
    :cond_0
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 44
    const v6, 0x8001

    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-virtual {v1, v6, v7, v14, v8}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mRecordAllHistory:Z

    .line 57
    if-nez v1, :cond_2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 62
    const v6, 0x8001

    .line 65
    move v8, v14

    .line 66
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 69
    :goto_0
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda74()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 5
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 7
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 9
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 18
    const/16 v6, 0x9

    .line 20
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 23
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 8
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 10
    iget v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 12
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 14
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 16
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    monitor-enter v9

    .line 19
    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenWakeStats:Ljava/util/HashMap;

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenWakeStats:Ljava/util/HashMap;

    .line 54
    new-instance v6, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 56
    iget-object v10, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 58
    invoke-direct {v6, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 61
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenWakeStats:Ljava/util/HashMap;

    .line 66
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 76
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 78
    const/16 v6, 0x12

    .line 80
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 83
    monitor-exit v9

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0

    .line 88
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda74()V

    .line 91
    return-void

    .line 92
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda68()V

    .line 95
    return-void

    .line 96
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda36()V

    .line 99
    return-void

    .line 100
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda22()V

    .line 103
    return-void

    .line 104
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda13()V

    .line 107
    return-void

    .line 108
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda129()V

    .line 111
    return-void

    .line 112
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 114
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 116
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 118
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 120
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 122
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 124
    monitor-enter v9

    .line 125
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 127
    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 130
    move-result v4

    .line 131
    iget-boolean p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    .line 133
    if-eqz p0, :cond_1

    .line 135
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 142
    move-result-object p0

    .line 143
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 147
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 149
    :cond_1
    monitor-exit v9

    .line 150
    return-void

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    throw p0

    .line 154
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 156
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 158
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 160
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 162
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 164
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 166
    monitor-enter v9

    .line 167
    :try_start_2
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 169
    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 172
    move-result v4

    .line 173
    iget-boolean p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    .line 175
    if-eqz p0, :cond_2

    .line 177
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 184
    move-result-object p0

    .line 185
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 189
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 191
    :cond_2
    monitor-exit v9

    .line 192
    return-void

    .line 193
    :catchall_2
    move-exception p0

    .line 194
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 195
    throw p0

    .line 196
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 198
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 200
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    .line 202
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    .line 204
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    .line 206
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 208
    monitor-enter p0

    .line 209
    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 211
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 214
    move-result v8

    .line 215
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 217
    const/16 v6, 0x4001

    .line 219
    const/4 v9, 0x0

    .line 220
    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_3

    .line 226
    goto :goto_0

    .line 227
    :cond_3
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mRecordAllHistory:Z

    .line 229
    if-nez v1, :cond_4

    .line 231
    goto :goto_0

    .line 232
    :cond_4
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 234
    const/16 v6, 0x4001

    .line 236
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 239
    :goto_0
    monitor-exit p0

    .line 240
    return-void

    .line 241
    :catchall_3
    move-exception v0

    .line 242
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 243
    throw v0

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
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
