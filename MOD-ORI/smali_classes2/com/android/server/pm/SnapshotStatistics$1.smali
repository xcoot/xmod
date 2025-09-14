.class public final Lcom/android/server/pm/SnapshotStatistics$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SnapshotStatistics;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$1;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$1;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastLogTimeUs:J

    .line 11
    .line 12
    sub-long v2, v0, v2

    .line 13
    .line 14
    sget-wide v4, Lcom/android/server/pm/SnapshotStatistics;->SNAPSHOT_LOG_INTERVAL_US:J

    .line 15
    .line 16
    cmp-long v2, v2, v4

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-lez v2, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 22
    .line 23
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    .line 24
    .line 25
    .line 26
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastLogTimeUs:J

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 29
    .line 30
    array-length v4, v2

    .line 31
    add-int/lit8 v4, v4, -0x1

    .line 32
    .line 33
    aget-object v2, v2, v4

    .line 34
    .line 35
    iget v13, p0, Lcom/android/server/pm/SnapshotStatistics;->mPackageCount:I

    .line 36
    .line 37
    iget v4, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 38
    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    :goto_0
    move-wide v10, v5

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-wide v5, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 46
    .line 47
    int-to-long v7, v4

    .line 48
    div-long/2addr v5, v7

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    if-nez v4, :cond_1

    .line 51
    .line 52
    move v12, v3

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    iget v5, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 55
    .line 56
    div-int/2addr v5, v4

    .line 57
    move v12, v5

    .line 58
    :goto_2
    iget v4, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 59
    .line 60
    int-to-long v7, v4

    .line 61
    iget v9, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    .line 62
    .line 63
    iget-object v5, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    .line 64
    .line 65
    iget-object v6, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    .line 66
    .line 67
    const/16 v4, 0x220

    .line 68
    .line 69
    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[IJIJII)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_4

    .line 75
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 76
    .line 77
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    .line 78
    .line 79
    .line 80
    iput v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    .line 81
    .line 82
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const-wide/32 v0, 0xea60

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Lcom/android/server/pm/SnapshotStatistics$1;

    .line 87
    .line 88
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0
.end method
