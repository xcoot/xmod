.class public final Lcom/android/server/am/ProcessProfileRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field public final mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

.field public mCurRawAdj:I

.field public final mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mInitialIdlePssOrRss:J

.field public mLastCachedPss:J

.field public mLastCachedRss:J

.field public mLastCachedSwapPss:J

.field public final mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastLowMemory:J

.field public mLastMemInfo:Landroid/os/Debug$MemoryInfo;

.field public mLastMemInfoTime:J

.field public mLastPss:J

.field public mLastPssTime:J

.field public mLastRequestedGc:J

.field public mLastRss:J

.field public mLastStateTime:J

.field public mLastSwapPss:J

.field public mNextPssTime:J

.field public mPendingUiClean:Z

.field public mPid:I

.field public final mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field public final mProfilerLock:Ljava/lang/Object;

.field public mPssProcState:I

.field public mPssStatType:I

.field public mReportLowMemory:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSetAdj:I

.field public mSetProcState:I

.field public mThread:Landroid/app/IApplicationThread;

.field public mTrimMemoryLevel:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 10
    .line 11
    const/16 v0, 0x14

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 58
    .line 59
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final abortNextPssTime()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 3
    .line 4
    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 5
    .line 6
    return-void
.end method

.method public final addHostingComponentType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    or-int/2addr v1, p1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    or-int/2addr p1, v0

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final addPss(JJJZIJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v14, v0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 11
    .line 12
    if-eqz v14, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 15
    .line 16
    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 17
    .line 18
    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v13, v15, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 20
    .line 21
    move-object v2, v14

    .line 22
    move-wide/from16 v3, p1

    .line 23
    .line 24
    move-wide/from16 v5, p3

    .line 25
    .line 26
    move-wide/from16 v7, p5

    .line 27
    .line 28
    move/from16 v9, p7

    .line 29
    .line 30
    move/from16 v10, p8

    .line 31
    .line 32
    move-wide/from16 v11, p9

    .line 33
    .line 34
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/app/procstats/ProcessState;->addPss(JJJZIJLandroid/util/ArrayMap;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-virtual {v14, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v15

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :try_start_3
    throw v0

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    goto :goto_3

    .line 53
    :cond_0
    :goto_2
    monitor-exit v1

    .line 54
    return-void

    .line 55
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    throw v0
.end method

.method public final clearHostingComponentType(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    not-int p1, p1

    .line 8
    and-int/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final reportExcessiveCpu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 15
    .line 16
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    throw v1

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    throw p0
.end method
