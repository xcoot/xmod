.class public final Lcom/android/server/wm/AnrController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PRE_DUMP_MIN_INTERVAL_MS:J

.field public static final PRE_DUMP_MONITOR_TIMEOUT_MS:J


# instance fields
.field public volatile mLastPreDumpTimeMs:J

.field public volatile mLastPreDumpTimeMs_onlyForAnr:J

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mUnresponsiveAppByDisplay:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x14

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/android/server/wm/AnrController;->PRE_DUMP_MIN_INTERVAL_MS:J

    .line 10
    .line 11
    const-wide/16 v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final notifyWindowUnresponsive(ILcom/android/internal/os/TimeoutRecord;)V
    .locals 3

    .line 32
    const-string v0, "ANR in input window owned by pid="

    const-string v1, ". Reason: "

    .line 33
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    iget-object v1, p2, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    const-string v2, "WindowManager"

    .line 35
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLcom/android/internal/os/TimeoutRecord;)J

    .line 37
    iget-object p1, p2, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AnrController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    check-cast p2, Landroid/os/HandlerExecutor;

    invoke-virtual {p2, v0}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final notifyWindowUnresponsive(Landroid/os/IBinder;Lcom/android/internal/os/TimeoutRecord;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    const-string v3, "ANR in "

    iget-object v4, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->preDumpIfLockTooSlowStarted()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AnrController;->preDumpIfLockTooSlow()V

    .line 3
    iget-object v4, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->preDumpIfLockTooSlowEnded()V

    .line 4
    iget-object v4, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockStarted()V

    .line 5
    iget-object v4, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    .line 6
    :try_start_0
    iget-object v5, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockEnded()V

    .line 7
    iget-object v5, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 9
    :cond_0
    :try_start_1
    invoke-interface {v5}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 10
    invoke-interface {v5}, Lcom/android/server/wm/InputTarget;->getPid()I

    move-result v8

    .line 11
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-ne v9, v1, :cond_1

    .line 12
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Reason:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v3, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v5, v7, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x7f6

    .line 15
    invoke-static {v3, v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result v3

    .line 16
    iget v5, v7, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    const/4 v9, 0x1

    if-le v5, v3, :cond_2

    move v6, v9

    .line 17
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    const-string/jumbo v3, "ro.boot.debug_level"

    const-string v4, "0x4f4c"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 20
    iget-wide v10, v0, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs_onlyForAnr:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_4

    iget-wide v10, v0, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs_onlyForAnr:J

    sub-long v10, v3, v10

    sget-wide v12, Lcom/android/server/wm/AnrController;->PRE_DUMP_MIN_INTERVAL_MS:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    iput-wide v3, v0, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs_onlyForAnr:J

    .line 22
    const-string v3, "WindowManager"

    const-string v4, "Pre-dump(onlyForAnr) for unresponsive"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 25
    invoke-static/range {v10 .. v21}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 26
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_preOnlyForAnr"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 27
    invoke-virtual {v1, v8, v2}, Lcom/android/server/wm/ActivityRecord;->inputDispatchingTimedOut(ILcom/android/internal/os/TimeoutRecord;)V

    goto :goto_2

    .line 28
    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v8, v6, v2}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLcom/android/internal/os/TimeoutRecord;)J

    .line 29
    :goto_2
    iget-object v2, v2, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v7, v2}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AnrController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    check-cast v3, Landroid/os/HandlerExecutor;

    invoke-virtual {v3, v4}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return v9

    .line 31
    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final preDumpIfLockTooSlow()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "WindowManager"

    .line 6
    .line 7
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v12

    .line 16
    iget-wide v4, v0, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs:J

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    cmp-long v4, v4, v6

    .line 21
    .line 22
    if-lez v4, :cond_1

    .line 23
    .line 24
    iget-wide v4, v0, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs:J

    .line 25
    .line 26
    sub-long v4, v12, v4

    .line 27
    .line 28
    sget-wide v6, Lcom/android/server/wm/AnrController;->PRE_DUMP_MIN_INTERVAL_MS:J

    .line 29
    .line 30
    cmp-long v4, v4, v6

    .line 31
    .line 32
    if-gez v4, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-wide/16 v14, 0x40

    .line 36
    .line 37
    const-string/jumbo v4, "preDumpIfLockTooSlow()"

    .line 38
    .line 39
    .line 40
    invoke-static {v14, v15, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    new-array v4, v2, [Z

    .line 44
    .line 45
    aput-boolean v2, v4, v1

    .line 46
    .line 47
    new-instance v11, Landroid/util/ArrayMap;

    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    invoke-direct {v11, v5}, Landroid/util/ArrayMap;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iget-object v5, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    new-instance v6, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    invoke-direct {v6, v1, v5}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string v5, "ActivityManager"

    .line 67
    .line 68
    iget-object v6, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 69
    .line 70
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 71
    .line 72
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    new-instance v7, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda1;

    .line 76
    .line 77
    invoke-direct {v7, v2, v6}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v11, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    .line 84
    .line 85
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-direct {v10, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 90
    .line 91
    .line 92
    move v8, v1

    .line 93
    :goto_0
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-ge v8, v5, :cond_2

    .line 98
    .line 99
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    move-object/from16 v16, v5

    .line 104
    .line 105
    check-cast v16, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    move-object v6, v5

    .line 112
    check-cast v6, Ljava/lang/Runnable;

    .line 113
    .line 114
    new-instance v17, Lcom/android/server/wm/AnrController$1;

    .line 115
    .line 116
    move-object/from16 v5, v17

    .line 117
    .line 118
    move-object v7, v10

    .line 119
    move/from16 v18, v8

    .line 120
    .line 121
    move-wide v8, v12

    .line 122
    move-object v1, v10

    .line 123
    move-object/from16 v10, v16

    .line 124
    .line 125
    move-object/from16 v16, v11

    .line 126
    .line 127
    move-object v11, v4

    .line 128
    invoke-direct/range {v5 .. v11}, Lcom/android/server/wm/AnrController$1;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;[Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    add-int/lit8 v8, v18, 0x1

    .line 135
    .line 136
    move-object v10, v1

    .line 137
    move-object/from16 v11, v16

    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_2
    move-object v1, v10

    .line 145
    :try_start_1
    sget-wide v5, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    .line 146
    .line 147
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 148
    .line 149
    invoke-virtual {v1, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 150
    .line 151
    .line 152
    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :catch_0
    :cond_3
    :try_start_2
    iput-wide v12, v0, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs:J

    .line 160
    .line 161
    const-string v0, "Pre-dump for unresponsive"

    .line 162
    .line 163
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .line 170
    .line 171
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    aget-boolean v3, v4, v1

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    if-eqz v3, :cond_4

    .line 185
    .line 186
    const-string v3, "/system/bin/surfaceflinger"

    .line 187
    .line 188
    filled-new-array {v3}, [Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-static {v3}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    goto :goto_1

    .line 197
    :cond_4
    move-object v3, v4

    .line 198
    :goto_1
    if-eqz v3, :cond_5

    .line 199
    .line 200
    new-instance v4, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .line 204
    .line 205
    array-length v5, v3

    .line 206
    :goto_2
    if-ge v1, v5, :cond_5

    .line 207
    .line 208
    aget v6, v3, v1

    .line 209
    .line 210
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    add-int/2addr v1, v2

    .line 218
    goto :goto_2

    .line 219
    :cond_5
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const-string v2, "AID_SYSTEM"

    .line 224
    .line 225
    const/16 v3, 0x3e8

    .line 226
    .line 227
    const/4 v5, 0x3

    .line 228
    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/criticalevents/CriticalEventLog;->getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v3, "--- CriticalEventLog ---\n"

    .line 235
    .line 236
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v1}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const/16 v1, 0xa

    .line 247
    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v26

    .line 255
    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 256
    .line 257
    .line 258
    move-result-object v22

    .line 259
    const-string v25, "Pre-dump"

    .line 260
    .line 261
    new-instance v28, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 262
    .line 263
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 264
    .line 265
    .line 266
    const/16 v27, 0x0

    .line 267
    .line 268
    const/16 v30, 0x0

    .line 269
    .line 270
    const/16 v20, 0x0

    .line 271
    .line 272
    const/16 v21, 0x0

    .line 273
    .line 274
    const/16 v23, 0x0

    .line 275
    .line 276
    const/16 v29, 0x0

    .line 277
    .line 278
    const/16 v24, 0x0

    .line 279
    .line 280
    move-object/from16 v19, v0

    .line 281
    .line 282
    invoke-static/range {v19 .. v30}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    if-eqz v0, :cond_6

    .line 287
    .line 288
    new-instance v1, Ljava/io/File;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v4, "_pre"

    .line 307
    .line 308
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    .line 320
    .line 321
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :goto_3
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 326
    .line 327
    .line 328
    throw v0
.end method
