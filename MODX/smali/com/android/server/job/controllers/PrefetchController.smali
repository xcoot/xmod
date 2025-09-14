.class public final Lcom/android/server/job/controllers/PrefetchController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mEstimatedLaunchTimeChangedListener:Lcom/android/server/job/controllers/PrefetchController$1;

.field public final mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

.field public final mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

.field public mLaunchTimeAllowanceMs:J

.field public mLaunchTimeThresholdMs:J

.field public final mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

.field public final mPrefetchChangedListeners:Landroid/util/ArraySet;

.field public final mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

.field public final mTrackedJobs:Landroid/util/SparseArrayMap;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static -$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v11, p1

    .line 5
    move-object/from16 v12, p2

    .line 7
    move-wide/from16 v13, p3

    .line 9
    const-string v1, "Not caching launch time since we haven\'t seen any prefetch jobs for "

    .line 11
    sget-boolean v2, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    .line 13
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v3, "JobScheduler.Prefetch"

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    const-string v5, "Estimated launch time for "

    .line 24
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v5, " changed to "

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    const-string v5, " ("

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 49
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    .line 52
    move-result-wide v5

    .line 53
    sub-long v5, v13, v5

    .line 55
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v5, " from now)"

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iget-object v15, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 76
    monitor-enter v15

    .line 77
    :try_start_0
    iget-object v3, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 79
    invoke-virtual {v3, v11, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 83
    move-object v9, v3

    .line 84
    check-cast v9, Landroid/util/ArraySet;

    .line 86
    if-nez v9, :cond_1

    .line 88
    if-eqz v2, :cond_3

    .line 90
    const-string v0, "JobScheduler.Prefetch"

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto/16 :goto_1

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto/16 :goto_2

    .line 116
    :cond_1
    iget-object v1, v0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 118
    invoke-virtual {v1, v11, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Ljava/lang/Long;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 127
    move-result-wide v16

    .line 128
    iget-object v1, v0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 130
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v1, v11, v12, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_3

    .line 143
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 145
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    .line 148
    move-result-wide v18

    .line 149
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 157
    move-result-wide v20

    .line 158
    move-object/from16 v1, p0

    .line 160
    move/from16 v2, p1

    .line 162
    move-wide/from16 v3, v18

    .line 164
    move-wide/from16 v5, v20

    .line 166
    move-object/from16 v7, p2

    .line 168
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(IJJLjava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    .line 172
    move v10, v1

    .line 173
    :goto_0
    iget-object v1, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    .line 175
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 178
    move-result v1

    .line 179
    if-ge v10, v1, :cond_2

    .line 181
    iget-object v1, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    .line 183
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 189
    check-cast v1, Lcom/android/server/job/controllers/FlexibilityController$1;

    .line 191
    move-object v2, v9

    .line 192
    move/from16 v3, p1

    .line 194
    move-object/from16 v4, p2

    .line 196
    move-wide/from16 v5, v16

    .line 198
    move-wide/from16 v7, p3

    .line 200
    move-object v11, v9

    .line 201
    move/from16 v22, v10

    .line 203
    move-wide/from16 v9, v20

    .line 205
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/job/controllers/FlexibilityController$1;->onPrefetchCacheUpdated(Landroid/util/ArraySet;ILjava/lang/String;JJJ)V

    .line 208
    add-int/lit8 v10, v22, 0x1

    .line 210
    move-object v9, v11

    .line 211
    move/from16 v11, p1

    .line 213
    goto :goto_0

    .line 214
    :cond_2
    move-object v11, v9

    .line 215
    move-object/from16 v1, p0

    .line 217
    move/from16 v2, p1

    .line 219
    move-wide/from16 v3, v18

    .line 221
    move-wide/from16 v5, v20

    .line 223
    move-object/from16 v7, p2

    .line 225
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(IJJLjava/lang/String;)Z

    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_3

    .line 231
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 233
    invoke-virtual {v0, v11}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 236
    :cond_3
    :goto_1
    monitor-exit v15

    .line 237
    return-void

    .line 238
    :goto_2
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string v0, "JobScheduler.Prefetch"

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 4
    new-instance p1, Landroid/util/SparseArrayMap;

    .line 6
    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 11
    new-instance p1, Landroid/util/SparseArrayMap;

    .line 13
    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 18
    new-instance p1, Landroid/util/ArraySet;

    .line 20
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    .line 25
    const-wide/32 v0, 0x36ee80

    .line 28
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    .line 30
    const-wide/32 v0, 0x1b7740

    .line 33
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    .line 35
    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$1;

    .line 37
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/PrefetchController$1;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    .line 40
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimeChangedListener:Lcom/android/server/job/controllers/PrefetchController$1;

    .line 42
    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 44
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    .line 47
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 49
    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    .line 51
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/PrefetchController$PcHandler;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/os/Looper;)V

    .line 62
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    .line 64
    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 66
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 75
    move-result-object v1

    .line 76
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V

    .line 79
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 81
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 83
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 89
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 91
    return-void
.end method


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 9
    const-string v0, "PrefetchController"

    .line 11
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 14
    const-string v0, ":"

    .line 16
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 22
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    .line 24
    const-string/jumbo v2, "pc_launch_time_threshold_ms"

    .line 27
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 30
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    move-result-object p0

    .line 36
    const-string/jumbo v0, "pc_launch_time_allowance_ms"

    .line 39
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 46
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 49
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 3
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 6
    move-result-wide v0

    .line 7
    const-string v2, "Cached launch times:"

    .line 9
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 19
    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_1

    .line 25
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 27
    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 30
    move-result v4

    .line 31
    move v5, v2

    .line 32
    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 34
    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 37
    move-result v6

    .line 38
    if-ge v5, v6, :cond_0

    .line 40
    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 42
    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Ljava/lang/String;

    .line 48
    iget-object v7, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 50
    invoke-virtual {v7, v3, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Ljava/lang/Long;

    .line 56
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 59
    move-result-wide v7

    .line 60
    invoke-static {v4, v6}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 67
    const-string v6, ": "

    .line 69
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, v7, v8}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 75
    const-string v6, " ("

    .line 77
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 80
    sub-long/2addr v7, v0

    .line 81
    const/16 v6, 0x13

    .line 83
    invoke-static {v7, v8, p1, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 86
    const-string v6, " from now)"

    .line 88
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v5, v5, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 100
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 103
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 105
    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;

    .line 107
    invoke-direct {v1, p1, p2}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 113
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 116
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 121
    return-void
.end method

.method public getLaunchTimeAllowanceMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    .line 3
    return-wide v0
.end method

.method public getLaunchTimeThresholdMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    .line 3
    return-wide v0
.end method

.method public final getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v1

    .line 15
    iget-wide v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    .line 17
    sub-long/2addr p3, v3

    .line 18
    cmp-long p3, v1, p3

    .line 20
    if-gez p3, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 26
    move-result-wide p0

    .line 27
    return-wide p0

    .line 28
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    .line 30
    const/4 p4, 0x0

    .line 31
    invoke-virtual {p3, p4, p1, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 38
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 40
    const-wide p3, 0x7fffffffffffffffL

    .line 45
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-wide p3
.end method

.method public getPcConstants()Lcom/android/server/job/controllers/PrefetchController$PcConstants;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 3
    return-object p0
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 13

    .line 1
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 11
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 13
    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 15
    invoke-virtual {p2, v1, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/util/ArraySet;

    .line 21
    if-nez p2, :cond_0

    .line 23
    new-instance p2, Landroid/util/ArraySet;

    .line 25
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 30
    invoke-virtual {v0, v1, v6, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 35
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 38
    move-result-wide v9

    .line 39
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    move-result-wide v11

    .line 48
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 57
    move-result p2

    .line 58
    const/4 v0, 0x1

    .line 59
    if-ne p2, v0, :cond_1

    .line 61
    invoke-virtual {p0, v1, v6, v9, v10}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_1

    .line 67
    move-object v0, p0

    .line 68
    move-wide v2, v9

    .line 69
    move-wide v4, v11

    .line 70
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(IJJLjava/lang/String;)V

    .line 73
    :cond_1
    move-object v7, p0

    .line 74
    move-object v8, p1

    .line 75
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    .line 78
    :cond_2
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 3
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 5
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/util/ArraySet;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 29
    invoke-static {p2, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 36
    :cond_0
    return-void
.end method

.method public final maybeUpdateConstraintForPkgLocked(IJJLjava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0, p1, p6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/util/ArraySet;

    .line 9
    const/4 p6, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 12
    return p6

    .line 13
    :cond_0
    move v0, p6

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 17
    move-result v1

    .line 18
    if-ge p6, v1, :cond_1

    .line 20
    invoke-virtual {p1, p6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    move-object v3, v1

    .line 25
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 27
    move-object v2, p0

    .line 28
    move-wide v4, p2

    .line 29
    move-wide v6, p4

    .line 30
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    .line 33
    move-result v1

    .line 34
    or-int/2addr v0, v1

    .line 35
    add-int/lit8 p6, p6, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v0
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 3
    const-string p0, "JobScheduler.Prefetch"

    .line 5
    const-string p1, "Told app removed but given null package name."

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 27
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_0
    return-void
.end method

.method public final onSystemServicesReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/appwidget/AppWidgetManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/appwidget/AppWidgetManager;

    .line 11
    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 13
    return-void
.end method

.method public final onUidBiasChangedLocked(III)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x28

    .line 5
    if-ne p3, v2, :cond_0

    .line 7
    move p3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p3, v1

    .line 10
    :goto_0
    if-ne p2, v2, :cond_1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move v0, v1

    .line 14
    :goto_1
    if-eq p3, v0, :cond_2

    .line 16
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    .line 18
    const/4 p2, 0x2

    .line 19
    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    :cond_2
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 11
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    .line 16
    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    .line 6
    return-void
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 9
    const-string/jumbo v2, "pc_launch_time_allowance_ms"

    .line 12
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 18
    const-string/jumbo v2, "pc_launch_time_threshold_ms"

    .line 21
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/32 v2, 0x36ee80

    .line 31
    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 34
    move-result-wide p1

    .line 35
    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    .line 37
    const-wide/32 v4, 0x5265c00

    .line 40
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 43
    move-result-wide p1

    .line 44
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 47
    move-result-wide p1

    .line 48
    iget-wide v2, v1, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    .line 50
    cmp-long v2, v2, p1

    .line 52
    if-eqz v2, :cond_2

    .line 54
    iput-wide p1, v1, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    .line 56
    iput-boolean v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    .line 58
    const-wide/16 v2, 0xa

    .line 60
    div-long/2addr p1, v2

    .line 61
    iget-object p0, v1, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-wide/32 v2, 0x1b7740

    .line 70
    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 73
    move-result-wide p1

    .line 74
    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    .line 76
    const-wide/16 v2, 0x0

    .line 78
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 81
    move-result-wide p1

    .line 82
    const-wide/32 v2, 0x6ddd00

    .line 85
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 88
    move-result-wide p1

    .line 89
    iget-wide v2, v1, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    .line 91
    cmp-long v2, v2, p1

    .line 93
    if-eqz v2, :cond_2

    .line 95
    iput-wide p1, v1, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    .line 97
    iput-boolean v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    .line 99
    :cond_2
    :goto_0
    return-void
.end method

.method public final startTrackingLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 3
    check-cast v0, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 5
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 7
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimeChangedListener:Lcom/android/server/job/controllers/PrefetchController$1;

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public final updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 5
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    .line 8
    move-result v0

    .line 9
    const/16 v2, 0x28

    .line 11
    if-ne v0, v2, :cond_0

    .line 13
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 16
    move-result p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 20
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_2

    .line 28
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 30
    if-eqz p0, :cond_1

    .line 32
    invoke-virtual {p0, v1, v0}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 42
    :goto_1
    const/high16 p2, 0x800000

    .line 44
    invoke-virtual {p1, p2, p4, p5, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public final updateThresholdAlarmLocked(IJJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0, p1, p6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/ArraySet;

    .line 9
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 11
    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p6, p2, p3}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    .line 23
    move-result-wide v2

    .line 24
    const-wide v4, 0x7fffffffffffffffL

    .line 29
    cmp-long v0, v2, v4

    .line 31
    if-eqz v0, :cond_1

    .line 33
    sub-long v4, v2, p2

    .line 35
    iget-wide v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    .line 37
    cmp-long p0, v4, v6

    .line 39
    if-lez p0, :cond_1

    .line 41
    add-long/2addr p2, v6

    .line 42
    sub-long/2addr v2, p2

    .line 43
    invoke-static {p1, p6}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 46
    move-result-object p0

    .line 47
    add-long/2addr p4, v2

    .line 48
    invoke-virtual {v1, p4, p5, p0}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p1, p6}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v1, p0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 60
    :cond_2
    :goto_1
    invoke-static {p1, p6}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v1, p0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public final willBeLaunchedSoonLocked(ILjava/lang/String;J)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    .line 4
    move-result-wide p1

    .line 5
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    .line 7
    add-long/2addr p3, v0

    .line 8
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    .line 10
    sub-long/2addr p3, v0

    .line 11
    cmp-long p0, p1, p3

    .line 13
    if-gtz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method
