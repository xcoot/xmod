.class public final Lcom/android/server/am/AnrHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CONSECUTIVE_ANR_TIME_MS:J

.field public static final EXPIRED_REPORT_TIME_MS:J

.field public static final SELF_ONLY_AFTER_BOOT_MS:J

.field public static final sDefaultThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

.field public static final sMainProcessDumpThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;


# instance fields
.field public final mAnrRecords:Ljava/util/ArrayList;

.field public final mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field public mLastAnrTimeMs:J

.field public mProcessingPid:I

.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTempDumpedPids:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0xa

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v3

    .line 9
    sput-wide v3, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 13
    const-wide/16 v3, 0x2

    .line 15
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 18
    move-result-wide v3

    .line 19
    sput-wide v3, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 24
    move-result-wide v0

    .line 25
    sput-wide v0, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    .line 27
    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, v1}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 33
    sput-object v0, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    .line 35
    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-direct {v0, v1}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 41
    sput-object v0, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 12

    .line 11
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0xa

    const/4 v2, 0x1

    sget-object v7, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    move-object v0, v8

    move v1, v2

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v10, 0x1

    .line 12
    invoke-virtual {v8, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 13
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0xa

    const/4 v2, 0x2

    sget-object v7, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    move-object v0, v11

    move v1, v2

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 14
    invoke-virtual {v11, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 15
    invoke-direct {p0, p1, v8, v11}, Lcom/android/server/am/AnrHelper;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    .line 8
    iput-object p1, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 9
    iput-object p2, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 10
    iput-object p3, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Z)V

    return-void
.end method

.method public final appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p7

    .line 2
    const-string v1, "Skip ANR being predumped, pid="

    const-string v2, "Skip duplicated ANR, pid="

    const-string v3, "Skip zero pid ANR, process="

    :try_start_0
    iget-object v4, v14, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingStarted()V

    .line 3
    iget v4, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 4
    iget-object v5, v14, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAnrRecordLockStarted()V

    .line 5
    iget-object v15, v0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 6
    :try_start_1
    iget-object v5, v14, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAnrRecordLockEnded()V

    if-nez v4, :cond_0

    .line 7
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    iget-object v0, v14, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v14

    goto/16 :goto_3

    .line 10
    :cond_0
    :try_start_2
    iget v3, v0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    if-ne v3, v4, :cond_1

    .line 11
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v15

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    monitor-exit v15

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    :goto_1
    if-ltz v1, :cond_4

    .line 17
    iget-object v2, v0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AnrHelper$AnrRecord;

    iget v2, v2, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-ne v2, v4, :cond_3

    .line 18
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip queued ANR, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    monitor-exit v15

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 20
    :cond_4
    iget-object v1, v14, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v2, v0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 21
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->earlyDumpRequestSubmittedWithSize(I)V

    .line 23
    iget-object v1, v0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v4, v14}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v16

    .line 24
    iget-object v1, v14, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v2, v0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrRecordPlacingOnQueueWithSize(I)V

    .line 25
    iget-object v10, v0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/am/AnrHelper$AnrRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object v14, v9

    move-object/from16 v9, p7

    move-object v0, v10

    move/from16 v10, p8

    move-object/from16 v11, v16

    :try_start_3
    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;ZLjava/util/concurrent/Future;)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v13, :cond_5

    .line 27
    :try_start_4
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_5

    .line 28
    new-instance v0, Lcom/android/server/am/AnrHelper$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v12}, Lcom/android/server/am/AnrHelper$1;-><init>(Lcom/android/server/am/AnrHelper;Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p7

    goto :goto_4

    :cond_5
    move-object/from16 v1, p0

    .line 30
    :goto_2
    iget-object v0, v1, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    new-instance v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    invoke-direct {v0, v1}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    move-object/from16 v1, p7

    .line 32
    iget-object v0, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v1, p7

    .line 33
    :goto_3
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v1, v14

    .line 34
    :goto_4
    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 35
    throw v0
.end method
