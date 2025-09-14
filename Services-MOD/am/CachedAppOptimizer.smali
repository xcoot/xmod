.class public final Lcom/android/server/am/CachedAppOptimizer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

.field static final DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:J = 0x1f40L

.field static final DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB:J = 0x2ee0L

.field static final DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

.field static final DEFAULT_COMPACT_THROTTLE_1:J = 0x1388L

.field static final DEFAULT_COMPACT_THROTTLE_2:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_3:J = 0x1f4L

.field static final DEFAULT_COMPACT_THROTTLE_4:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_5:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_6:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_MAX_OOM_ADJ:J = 0x3e7L

.field static final DEFAULT_COMPACT_THROTTLE_MIN_OOM_ADJ:J = 0x352L

.field static final DEFAULT_FREEZER_BINDER_ASYNC_THRESHOLD:I = 0x400

.field static final DEFAULT_FREEZER_BINDER_CALLBACK_ENABLED:Z = true

.field static final DEFAULT_FREEZER_BINDER_CALLBACK_THROTTLE:J = 0x2710L

.field static final DEFAULT_FREEZER_BINDER_DIVISOR:J = 0x4L

.field static final DEFAULT_FREEZER_BINDER_ENABLED:Z = true

.field static final DEFAULT_FREEZER_BINDER_OFFSET:I = 0x1f4

.field static final DEFAULT_FREEZER_BINDER_THRESHOLD:J = 0x3e8L

.field static final DEFAULT_FREEZER_DEBOUNCE_TIMEOUT:J = 0x2710L

.field static final DEFAULT_FREEZER_EXEMPT_INST_PKG:Z = false

.field static final DEFAULT_STATSD_SAMPLE_RATE:F = 0.1f

.field static final DEFAULT_USE_COMPACTION:Z = false

.field static final DEFAULT_USE_FREEZER:Z = true

.field static final ENABLE_SHARED_AND_CODE_COMPACT:Z = false

.field static final KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_delta_rss_throttle_kb"

.field static final KEY_COMPACT_FULL_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_rss_throttle_kb"

.field static final KEY_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String; = "compact_proc_state_throttle"

.field static final KEY_COMPACT_STATSD_SAMPLE_RATE:Ljava/lang/String; = "compact_statsd_sample_rate"

.field static final KEY_COMPACT_THROTTLE_1:Ljava/lang/String; = "compact_throttle_1"

.field static final KEY_COMPACT_THROTTLE_2:Ljava/lang/String; = "compact_throttle_2"

.field static final KEY_COMPACT_THROTTLE_3:Ljava/lang/String; = "compact_throttle_3"

.field static final KEY_COMPACT_THROTTLE_4:Ljava/lang/String; = "compact_throttle_4"

.field static final KEY_COMPACT_THROTTLE_5:Ljava/lang/String; = "compact_throttle_5"

.field static final KEY_COMPACT_THROTTLE_6:Ljava/lang/String; = "compact_throttle_6"

.field static final KEY_COMPACT_THROTTLE_MAX_OOM_ADJ:Ljava/lang/String; = "compact_throttle_max_oom_adj"

.field static final KEY_COMPACT_THROTTLE_MIN_OOM_ADJ:Ljava/lang/String; = "compact_throttle_min_oom_adj"

.field static final KEY_FREEZER_BINDER_ASYNC_THRESHOLD:Ljava/lang/String; = "freeze_binder_async_threshold"

.field static final KEY_FREEZER_BINDER_CALLBACK_ENABLED:Ljava/lang/String; = "freeze_binder_callback_enabled"

.field static final KEY_FREEZER_BINDER_CALLBACK_THROTTLE:Ljava/lang/String; = "freeze_binder_callback_throttle"

.field static final KEY_FREEZER_BINDER_DIVISOR:Ljava/lang/String; = "freeze_binder_divisor"

.field static final KEY_FREEZER_BINDER_ENABLED:Ljava/lang/String; = "freeze_binder_enabled"

.field static final KEY_FREEZER_BINDER_OFFSET:Ljava/lang/String; = "freeze_binder_offset"

.field static final KEY_FREEZER_BINDER_THRESHOLD:Ljava/lang/String; = "freeze_binder_threshold"

.field static final KEY_FREEZER_DEBOUNCE_TIMEOUT:Ljava/lang/String; = "freeze_debounce_timeout"

.field static final KEY_FREEZER_EXEMPT_INST_PKG:Ljava/lang/String; = "freeze_exempt_inst_pkg"

.field static final KEY_FREEZER_STATSD_SAMPLE_RATE:Ljava/lang/String; = "freeze_statsd_sample_rate"

.field static final KEY_USE_COMPACTION:Ljava/lang/String; = "use_compaction"

.field static final KEY_USE_FREEZER:Ljava/lang/String; = "use_freezer"


# instance fields
.field public final isDebuggable:Z

.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

.field public final mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

.field volatile mCompactStatsdSampleRate:F

.field volatile mCompactThrottleFullFull:J

.field volatile mCompactThrottleFullSome:J

.field volatile mCompactThrottleMaxOomAdj:J

.field volatile mCompactThrottleMinOomAdj:J

.field volatile mCompactThrottleSomeFull:J

.field volatile mCompactThrottleSomeSome:J

.field mCompactionHandler:Landroid/os/Handler;

.field public final mCompactionStatsHistory:Ljava/util/LinkedList;

.field public mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

.field volatile mFreezerBinderAsyncThreshold:I

.field volatile mFreezerBinderCallbackEnabled:Z

.field public mFreezerBinderCallbackLast:J

.field volatile mFreezerBinderCallbackThrottle:J

.field volatile mFreezerBinderDivisor:J

.field volatile mFreezerBinderEnabled:Z

.field volatile mFreezerBinderOffset:I

.field volatile mFreezerBinderThreshold:J

.field volatile mFreezerDebounceTimeout:J

.field public mFreezerDisableCount:I

.field volatile mFreezerExemptInstPkg:Z

.field public final mFreezerLock:Ljava/lang/Object;

.field public mFreezerOverride:Z

.field volatile mFreezerStatsdSampleRate:F

.field public final mFrozenProcesses:Landroid/util/SparseArray;

.field volatile mFullAnonRssThrottleKb:J

.field volatile mFullDeltaRssThrottleKb:J

.field mLastCompactionStats:Ljava/util/LinkedHashMap;

.field public final mOnFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

.field public final mOnNativeBootFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

.field public final mPendingCompactionProcesses:Ljava/util/ArrayList;

.field public final mPerProcessCompactStats:Ljava/util/LinkedHashMap;

.field public final mPerSourceCompactStats:Ljava/util/EnumMap;

.field final mPhenotypeFlagLock:Ljava/lang/Object;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

.field final mProcStateThrottle:Ljava/util/Set;

.field public final mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

.field public final mRandom:Ljava/util/Random;

.field public final mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

.field public final mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

.field public mTotalCompactionDowngrades:J

.field public final mTotalCompactionsCancelled:Ljava/util/EnumMap;

.field public volatile mUseCompaction:Z

.field public volatile mUseFreezer:Z


# direct methods
.method public static -$$Nest$mbinderErrorInternal(Lcom/android/server/am/CachedAppOptimizer;Landroid/util/IntArray;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    .line 3
    if-gez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 9
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 12
    :goto_0
    const/4 v1, 0x0

    .line 13
    :goto_1
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_3

    .line 19
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    .line 22
    move-result v2

    .line 23
    :try_start_0
    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I

    .line 26
    move-result v3

    .line 27
    and-int/lit8 v4, v3, 0x1

    .line 29
    if-eqz v4, :cond_1

    .line 31
    const-string v3, "Sync transaction while frozen"

    .line 33
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 35
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 37
    new-instance v5, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;

    .line 39
    const/16 v6, 0x14

    .line 41
    invoke-direct {v5, p0, v2, v3, v6}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/CachedAppOptimizer;ILjava/lang/String;I)V

    .line 44
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    and-int/lit8 v3, v3, 0x2

    .line 50
    if-eqz v3, :cond_2

    .line 52
    if-eqz v0, :cond_2

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    const-string v3, "Unable to query binder frozen stats for pid "

    .line 64
    const-string v4, "ActivityManager"

    .line 66
    invoke-static {v2, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_4

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    new-instance p1, Lcom/android/internal/os/BinderfsStatsReader;

    .line 83
    invoke-direct {p1}, Lcom/android/internal/os/BinderfsStatsReader;-><init>()V

    .line 86
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda2;

    .line 88
    invoke-direct {v1, v0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArraySet;)V

    .line 91
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda3;

    .line 93
    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 96
    new-instance p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda4;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1, v1, v0, p0}, Lcom/android/internal/os/BinderfsStatsReader;->handleFreeAsyncSpace(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    .line 104
    :cond_5
    :goto_3
    return-void
.end method

.method public static -$$Nest$mupdateFreezerBinderState(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "activity_manager_native_boot"

    .line 6
    const-string/jumbo v1, "freeze_binder_enabled"

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    .line 16
    const-string/jumbo v1, "freeze_binder_divisor"

    .line 19
    const-wide/16 v3, 0x4

    .line 21
    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 24
    move-result-wide v3

    .line 25
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    .line 27
    const-string/jumbo v1, "freeze_binder_offset"

    .line 30
    const/16 v3, 0x1f4

    .line 32
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    .line 38
    const-string/jumbo v1, "freeze_binder_threshold"

    .line 41
    const-wide/16 v3, 0x3e8

    .line 43
    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 46
    move-result-wide v3

    .line 47
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    .line 49
    const-string/jumbo v1, "freeze_binder_callback_enabled"

    .line 52
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 55
    move-result v1

    .line 56
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    .line 58
    const-string/jumbo v1, "freeze_binder_callback_throttle"

    .line 61
    const-wide/16 v2, 0x2710

    .line 63
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 66
    move-result-wide v1

    .line 67
    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    .line 69
    const-string/jumbo v1, "freeze_binder_async_threshold"

    .line 72
    const/16 v2, 0x400

    .line 74
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "Freezer binder state set to enabled="

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", divisor="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", offset="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", threshold="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", callback enabled="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", callback throttle="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", async threshold="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    .line 149
    const-string v1, "ActivityManager"

    .line 151
    invoke-static {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 154
    return-void
.end method

.method public static bridge synthetic -$$Nest$smcompactProcess(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->compactProcess(II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetBinderFreezeInfo(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetUsedZramMemory()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getUsedZramMemory()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smthreadCpuTimeNs()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->threadCpuTimeNs()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "cached_apps_freezer"

    .line 12
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, "ro.debuggable"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_0

    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebuggable:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    .line 29
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Ljava/lang/Object;

    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    .line 43
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;I)V

    .line 46
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

    .line 48
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    .line 50
    invoke-direct {v0, p0, v2}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;I)V

    .line 53
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

    .line 55
    new-instance v0, Ljava/lang/Object;

    .line 57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 62
    const-wide/16 v3, 0x1388

    .line 64
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 66
    const-wide/16 v3, 0x2710

    .line 68
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 70
    const-wide/16 v5, 0x1f4

    .line 72
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 74
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 76
    const-wide/16 v5, 0x352

    .line 78
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 80
    const-wide/16 v5, 0x3e7

    .line 82
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 84
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 88
    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    .line 90
    new-instance v0, Ljava/util/Random;

    .line 92
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    .line 97
    const v0, 0x3dcccccd    # 0.1f

    .line 100
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 102
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 104
    const-wide/16 v5, 0x2ee0

    .line 106
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 108
    const-wide/16 v5, 0x1f40

    .line 110
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 112
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    .line 114
    const-wide/16 v5, 0x4

    .line 116
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    .line 118
    const/16 v0, 0x1f4

    .line 120
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    .line 122
    const-wide/16 v5, 0x3e8

    .line 124
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    .line 126
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    .line 128
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    .line 130
    const/16 v0, 0x400

    .line 132
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    .line 134
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    .line 136
    const-wide/16 v5, -0x1

    .line 138
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackLast:J

    .line 140
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 142
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    .line 144
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$3;

    .line 146
    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$3;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 149
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 151
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$4;

    .line 153
    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$4;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 156
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionStatsHistory:Ljava/util/LinkedList;

    .line 158
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 160
    const/16 v1, 0x100

    .line 162
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 165
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 167
    new-instance v0, Ljava/util/EnumMap;

    .line 169
    const-class v1, Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 171
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 174
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 176
    new-instance v0, Ljava/util/EnumMap;

    .line 178
    const-class v1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 180
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 183
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    .line 187
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 192
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 194
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 196
    new-instance p1, Lcom/android/server/ServiceThread;

    .line 198
    const-string v0, "CachedAppOptimizerThread"

    .line 200
    const/4 v1, 0x2

    .line 201
    invoke-direct {p1, v1, v0, v2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 204
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 206
    new-instance p1, Ljava/util/HashSet;

    .line 208
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 213
    iput-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 215
    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    .line 217
    new-instance p1, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    .line 219
    invoke-direct {p1, p0}, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 222
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    .line 224
    new-instance p1, Lcom/android/internal/os/ProcLocksReader;

    .line 226
    invoke-direct {p1}, Lcom/android/internal/os/ProcLocksReader;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    .line 231
    new-instance p1, Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    .line 233
    const-string/jumbo p2, "cachedAppOptimizer"

    .line 236
    invoke-direct {p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    .line 241
    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    .line 243
    return-void
.end method

.method private static native cancelCompaction()V
.end method

.method private static native compactProcess(II)I
.end method

.method private native compactSystem()V
.end method

.method public static native freezeBinder(IZI)I
.end method

.method private static native getBinderFreezeInfo(I)I
.end method

.method public static native getFreeSwapPercent()D
.end method

.method private static native getFreezerCheckPath()Ljava/lang/String;
.end method

.method private static native getMemoryFreedCompaction()J
.end method

.method public static getUnfreezeReasonCodeFromOomAdjReason(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :pswitch_0
    const/16 p0, 0x1d

    .line 8
    return p0

    .line 9
    :pswitch_1
    const/16 p0, 0x1c

    .line 11
    return p0

    .line 12
    :pswitch_2
    const/16 p0, 0x1b

    .line 14
    return p0

    .line 15
    :pswitch_3
    const/16 p0, 0x1a

    .line 17
    return p0

    .line 18
    :pswitch_4
    const/16 p0, 0x19

    .line 20
    return p0

    .line 21
    :pswitch_5
    const/16 p0, 0x18

    .line 23
    return p0

    .line 24
    :pswitch_6
    const/16 p0, 0x17

    .line 26
    return p0

    .line 27
    :pswitch_7
    const/16 p0, 0x16

    .line 29
    return p0

    .line 30
    :pswitch_8
    const/16 p0, 0x15

    .line 32
    return p0

    .line 33
    :pswitch_9
    const/16 p0, 0x14

    .line 35
    return p0

    .line 36
    :pswitch_a
    const/16 p0, 0xc

    .line 38
    return p0

    .line 39
    :pswitch_b
    const/16 p0, 0xb

    .line 41
    return p0

    .line 42
    :pswitch_c
    const/16 p0, 0xa

    .line 44
    return p0

    .line 45
    :pswitch_d
    const/16 p0, 0x9

    .line 47
    return p0

    .line 48
    :pswitch_e
    const/16 p0, 0x8

    .line 50
    return p0

    .line 51
    :pswitch_f
    const/4 p0, 0x7

    .line 52
    return p0

    .line 53
    :pswitch_10
    const/4 p0, 0x6

    .line 54
    return p0

    .line 55
    :pswitch_11
    const/4 p0, 0x5

    .line 56
    return p0

    .line 57
    :pswitch_12
    const/4 p0, 0x4

    .line 58
    return p0

    .line 59
    :pswitch_13
    const/4 p0, 0x3

    .line 60
    return p0

    .line 61
    :pswitch_14
    const/4 p0, 0x2

    .line 62
    return p0

    .line 63
    :pswitch_15
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
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

.method private static native getUsedZramMemory()J
.end method

.method private static native isFreezerProfileValid()Z
.end method

.method public static isFreezerSupported()Z
    .locals 7

    .line 1
    const-string v0, "ActivityManager"

    .line 3
    const-string v1, "Checking cgroup freezer: "

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreezerCheckPath()Ljava/lang/String;

    .line 10
    move-result-object v4

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Ljava/io/FileReader;

    .line 28
    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 31
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    .line 34
    move-result v3

    .line 35
    int-to-char v3, v3

    .line 36
    const/16 v4, 0x31

    .line 38
    if-eq v3, v4, :cond_1

    .line 40
    const/16 v4, 0x30

    .line 42
    if-ne v3, v4, :cond_0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v3, "Unexpected value in cgroup.freeze"

    .line 47
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto :goto_5

    .line 51
    :catch_0
    move-exception v3

    .line 52
    goto :goto_1

    .line 53
    :catch_1
    move-object v3, v1

    .line 54
    goto :goto_2

    .line 55
    :catch_2
    move-object v3, v1

    .line 56
    goto :goto_4

    .line 57
    :cond_1
    :goto_0
    const-string v3, "Checking binder freezer ioctl"

    .line 59
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 65
    move-result v3

    .line 66
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I

    .line 69
    const-string v3, "Checking freezer profiles"

    .line 71
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->isFreezerProfileValid()Z

    .line 77
    move-result v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    goto :goto_5

    .line 79
    :catch_3
    move-exception v1

    .line 80
    move-object v6, v3

    .line 81
    move-object v3, v1

    .line 82
    move-object v1, v6

    .line 83
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    const-string v5, "Unable to read cgroup.freeze: "

    .line 87
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    goto :goto_5

    .line 105
    :catch_4
    :goto_2
    const-string v1, "Unable to read freezer info"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_3
    move-object v1, v3

    .line 111
    goto :goto_5

    .line 112
    :catch_5
    :goto_4
    const-string v1, "File cgroup.freeze not present"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    goto :goto_3

    .line 118
    :goto_5
    if-eqz v1, :cond_2

    .line 120
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 123
    goto :goto_6

    .line 124
    :catch_6
    move-exception v1

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    const-string v4, "Exception closing cgroup.freeze: "

    .line 129
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    :goto_6
    const-string v1, "Freezer supported: "

    .line 148
    invoke-static {v1, v0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    return v2
.end method

.method private static native threadCpuTimeNs()J
.end method

.method public static traceAppFreeze(IILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    if-gez p1, :cond_0

    .line 8
    const-string v1, "Freeze "

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "Unfreeze "

    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p2, ":"

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string p0, " "

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    const-wide/16 p1, 0x40

    .line 41
    const-string v0, "Freezer"

    .line 43
    invoke-static {p1, p2, v0, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 7
    iget-wide v3, v2, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    .line 9
    add-long/2addr p1, v0

    .line 10
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, v2, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    .line 16
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 18
    iget-wide p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    .line 20
    sub-long/2addr p0, v0

    .line 21
    return-wide p0
.end method


# virtual methods
.method public final cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 13
    iput-boolean v2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 15
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    move v2, v1

    .line 21
    :cond_0
    sget v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    .line 23
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 25
    if-ne v0, p1, :cond_1

    .line 27
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompaction()V

    .line 30
    move v2, v1

    .line 31
    :cond_1
    if-eqz v2, :cond_3

    .line 33
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 35
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 41
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 43
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/Integer;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result p1

    .line 53
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 55
    add-int/2addr p1, v1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_3
    :goto_0
    return-void
.end method

.method public final compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3
    iput-object p3, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 5
    iput-object p2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 7
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 9
    invoke-virtual {v1, p3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 15
    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 19
    invoke-direct {v1, p3}, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;-><init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V

    .line 22
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 24
    invoke-virtual {v2, p3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 29
    if-nez p3, :cond_1

    .line 31
    const-string p3, ""

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 35
    invoke-virtual {v2, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 41
    if-nez v2, :cond_2

    .line 43
    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 45
    invoke-direct {v2, p3}, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 50
    invoke-virtual {v3, p3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 56
    move-result p2

    .line 57
    const-wide/16 v3, 0x1

    .line 59
    const/4 p3, 0x1

    .line 60
    if-eq p2, p3, :cond_4

    .line 62
    const/4 v5, 0x3

    .line 63
    if-eq p2, v5, :cond_3

    .line 65
    const-string p0, "ActivityManager"

    .line 67
    const-string p1, "Unimplemented compaction type, consider adding it."

    .line 69
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 73
    :cond_3
    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactRequested:J

    .line 75
    add-long/2addr v5, v3

    .line 76
    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactRequested:J

    .line 78
    iget-wide v5, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactRequested:J

    .line 80
    add-long/2addr v5, v3

    .line 81
    iput-wide v5, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactRequested:J

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 86
    add-long/2addr v5, v3

    .line 87
    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 89
    iget-wide v5, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 91
    add-long/2addr v5, v3

    .line 92
    iput-wide v5, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 94
    :goto_0
    iget-boolean p2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 96
    if-nez p2, :cond_5

    .line 98
    iput-boolean p3, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 100
    iput-boolean p4, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    .line 102
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 109
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 111
    iget p2, p1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 113
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 115
    invoke-virtual {p0, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    :cond_5
    return-void
.end method

.method public final declared-synchronized enableFreezer(Z)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "freezer override set to "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    monitor-exit p0

    .line 11
    return v2

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    if-eqz p1, :cond_2

    .line 15
    :try_start_1
    iget v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    .line 17
    sub-int/2addr v3, v1

    .line 18
    iput v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    if-lez v3, :cond_1

    .line 22
    monitor-exit p0

    .line 23
    return v1

    .line 24
    :cond_1
    if-gez v3, :cond_3

    .line 26
    :try_start_2
    const-string p1, "ActivityManager"

    .line 28
    const-string/jumbo v0, "unbalanced call to enableFreezer, ignoring"

    .line 31
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    return v2

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :try_start_3
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    .line 42
    add-int/2addr v2, v1

    .line 43
    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    if-le v2, v1, :cond_3

    .line 47
    monitor-exit p0

    .line 48
    return v1

    .line 49
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 51
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 54
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    :try_start_5
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 60
    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 61
    xor-int/lit8 v4, p1, 0x1

    .line 63
    :try_start_6
    iput-boolean v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    .line 65
    const-string v4, "ActivityManager"

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    .line 74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 86
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 88
    new-instance v4, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;

    .line 90
    invoke-direct {v4, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    .line 93
    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 96
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 97
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 100
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 101
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 104
    monitor-exit p0

    .line 105
    return v1

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    goto :goto_0

    .line 108
    :catchall_2
    move-exception p1

    .line 109
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 110
    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 113
    throw p1

    .line 114
    :goto_0
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 115
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 118
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 119
    :goto_1
    monitor-exit p0

    .line 120
    throw p1
.end method

.method public final freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V
    .locals 6

    .line 1
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    cmp-long p1, p1, v0

    .line 14
    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 18
    invoke-virtual {p1, v3, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 21
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 23
    invoke-virtual {p0, v3, v4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    .line 33
    if-eqz v1, :cond_2

    .line 35
    if-nez p4, :cond_2

    .line 37
    return-void

    .line 38
    :cond_2
    iget-boolean p4, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mDoingTrim:Z

    .line 40
    if-nez p4, :cond_4

    .line 42
    iget-object p4, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 44
    iget p4, p4, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 46
    const/16 v1, 0x384

    .line 48
    const/16 v5, 0x28

    .line 50
    if-lt p4, v1, :cond_3

    .line 52
    iget-object p4, p3, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 54
    if-eqz p4, :cond_4

    .line 56
    :try_start_0
    invoke-interface {p4, v5}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 59
    iput-boolean v4, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mDoingTrim:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/16 v1, 0x352

    .line 64
    if-lt p4, v1, :cond_4

    .line 66
    iget-object p4, p3, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 68
    if-eqz p4, :cond_4

    .line 70
    :try_start_1
    invoke-interface {p4, v5}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 73
    iput-boolean v4, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mDoingTrim:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :catch_0
    :cond_4
    :goto_0
    sget-boolean p4, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 77
    sget-object p4, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 79
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 81
    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 85
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    const/4 v1, 0x0

    .line 89
    :goto_1
    iget v5, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 91
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-static {v5, v1}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(ILjava/lang/String;)Z

    .line 97
    move-result p4

    .line 98
    if-nez p4, :cond_6

    .line 100
    return-void

    .line 101
    :cond_6
    iget-object p4, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 103
    iget-object p4, p4, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 105
    iget-object p4, p4, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 107
    const/4 v1, 0x6

    .line 108
    invoke-virtual {p4, v1, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 111
    invoke-virtual {p4, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 114
    move-result-object p4

    .line 115
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 118
    iget-object p4, p3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 120
    iput-wide p1, p4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    .line 122
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 124
    invoke-virtual {p0, v3, v4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 127
    move-result-object p3

    .line 128
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    iput-boolean v4, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 133
    return-void
.end method

.method public final isProcessFrozen(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    move-result p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 23
    throw p0
.end method

.method public final onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 3
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 7
    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 14
    const/4 v3, 0x3

    .line 15
    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 18
    iput-boolean v2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    iget-object v1, v0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 26
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 29
    move-result v1

    .line 30
    const/4 v3, 0x1

    .line 31
    if-le v1, v3, :cond_1

    .line 33
    invoke-virtual {v0, p1}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    move v2, v3

    .line 40
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    .line 42
    if-eq v2, v1, :cond_2

    .line 44
    iput-boolean v2, v0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    .line 46
    iget v0, v0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 48
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->postUidFrozenMessage(IZ)V

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 53
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 55
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 58
    :cond_3
    return-void
.end method

.method public final onProcessFrozen(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 15
    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)V

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 31
    throw p0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 34
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 36
    if-eqz v0, :cond_1

    .line 38
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 43
    monitor-enter p0

    .line 44
    :try_start_2
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 47
    move-result-object v0

    .line 48
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 50
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 52
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 54
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 56
    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 58
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 60
    iget-boolean v5, p1, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 62
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->onProcessFrozen(IILjava/lang/String;IZ)V

    .line 65
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 69
    goto :goto_0

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 75
    throw p1

    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method public final parseProcStateThrottle(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, ","

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    aget-object v3, p1, v2

    .line 19
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    move-result v5

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v5

    .line 29
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const-string p0, "Failed to parse default app compaction proc state: "

    .line 37
    const-string p1, "ActivityManager"

    .line 39
    invoke-static {p0, v3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return v1

    .line 43
    :cond_0
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public final postUidFrozenMessage(IZ)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    return-void
.end method

.method public final unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;IZ)V
    .locals 12

    .line 1
    const-string v0, " "

    .line 3
    const-string v1, "ActivityManager"

    .line 5
    const-string/jumbo v2, "pid "

    .line 8
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 10
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 12
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 14
    iget-boolean v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    .line 16
    if-eqz v6, :cond_0

    .line 18
    if-nez p3, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    iget-boolean p3, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 23
    const/4 v6, 0x6

    .line 24
    iget-object v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 26
    const/4 v8, 0x1

    .line 27
    const/4 v9, 0x0

    .line 28
    if-eqz p3, :cond_1

    .line 30
    iget-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 32
    const/4 v10, 0x3

    .line 33
    invoke-virtual {p3, v10, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 36
    iput-boolean v9, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 38
    iget-object p3, v7, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 40
    iget-object p3, p3, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {p3, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {p3, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 52
    move p3, v8

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move p3, v9

    .line 55
    :goto_0
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 57
    if-eqz v10, :cond_2

    .line 59
    iget-boolean v11, v10, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    .line 61
    if-eqz v11, :cond_2

    .line 63
    iput-boolean v9, v10, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    .line 65
    iget v10, v10, Lcom/android/server/am/UidRecord;->mUid:I

    .line 67
    invoke-virtual {p0, v10, v9}, Lcom/android/server/am/CachedAppOptimizer;->postUidFrozenMessage(IZ)V

    .line 70
    :cond_2
    iput-boolean v9, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    .line 72
    if-eqz v3, :cond_7

    .line 74
    iget-boolean v10, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 76
    if-nez v10, :cond_3

    .line 78
    goto/16 :goto_3

    .line 80
    :cond_3
    :try_start_0
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I

    .line 83
    move-result v10

    .line 84
    and-int/2addr v8, v10

    .line 85
    if-eqz v8, :cond_4

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string p2, " received sync transactions while frozen, killing"

    .line 103
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v9, "Sync transaction while in frozen state"

    .line 115
    const/16 v7, 0x14

    .line 117
    const/4 v10, 0x1

    .line 118
    const/4 v11, 0x1

    .line 119
    const/16 v6, 0xe

    .line 121
    move-object v5, p1

    .line 122
    move-object v8, v9

    .line 123
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto/16 :goto_3

    .line 128
    :catch_0
    move-exception p0

    .line 129
    goto/16 :goto_2

    .line 131
    :cond_4
    if-nez p3, :cond_5

    .line 133
    iget-object p3, v7, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 135
    iget-object p3, p3, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 137
    invoke-virtual {p3, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 140
    invoke-virtual {p3, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 147
    :cond_5
    iget-wide v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 149
    :try_start_1
    invoke-static {v3, v9, v9}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZI)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 152
    :try_start_2
    invoke-static {v3, p2, v4}, Lcom/android/server/am/CachedAppOptimizer;->traceAppFreeze(IILjava/lang/String;)V

    .line 155
    iget p3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 157
    invoke-static {v3, p3, v9}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 163
    move-result-wide v10

    .line 164
    iput-wide v10, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 166
    iput-boolean v9, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 168
    iget-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 170
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->delete(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    goto :goto_1

    .line 174
    :catch_1
    const-string p3, "Unable to unfreeze "

    .line 176
    const-string v2, ". This might cause inconsistency or UI hangs."

    .line 178
    invoke-static {v3, p3, v0, v4, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object p3

    .line 182
    invoke-static {v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_1
    iget-boolean p3, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 187
    if-nez p3, :cond_6

    .line 189
    const-string/jumbo p3, "sync unfroze "

    .line 192
    const-string v2, " for "

    .line 194
    invoke-static {v3, p3, v0, v4, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    move-result-object p3

    .line 198
    invoke-static {p3, p2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 201
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 203
    iget-wide v0, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 205
    sub-long/2addr v0, v6

    .line 206
    const-wide/32 v4, 0x7fffffff

    .line 209
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 212
    move-result-wide v0

    .line 213
    long-to-int p3, v0

    .line 214
    new-instance v0, Landroid/util/Pair;

    .line 216
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    move-result-object p2

    .line 220
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    const/4 p1, 0x4

    .line 224
    invoke-virtual {p0, p1, v3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    :cond_6
    return-void

    .line 232
    :catch_2
    const-string p0, "Unable to unfreeze binder for "

    .line 234
    const-string p2, ". Killing it"

    .line 236
    invoke-static {v3, p0, v0, v4, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    move-result-object p0

    .line 240
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v4, 0x13

    .line 245
    const/4 v7, 0x1

    .line 246
    const-string v6, "Unable to unfreeze"

    .line 248
    const/16 v3, 0xe

    .line 250
    const/4 v8, 0x1

    .line 251
    move-object v2, p1

    .line 252
    move-object v5, v6

    .line 253
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 256
    return-void

    .line 257
    :goto_2
    const-string p2, "Unable to query binder frozen info for pid "

    .line 259
    const-string p3, ". Killing it. Exception: "

    .line 261
    invoke-static {v3, p2, v0, v4, p3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    move-result-object p2

    .line 265
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object p0

    .line 272
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/16 v4, 0x13

    .line 277
    const/4 v7, 0x1

    .line 278
    const-string v6, "Unable to query binder frozen stats"

    .line 280
    const/16 v3, 0xe

    .line 282
    const/4 v8, 0x1

    .line 283
    move-object v2, p1

    .line 284
    move-object v5, v6

    .line 285
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 288
    :cond_7
    :goto_3
    return-void
.end method

.method public final unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 6
    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mDoingTrim:Z

    .line 9
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final unfreezeProcess(II)V
    .locals 6

    .line 1
    const-string v0, "Unable to quick unfreeze binder for "

    .line 3
    const-string v1, "Unable to quick unfreeze "

    .line 5
    const-string/jumbo v2, "quick sync unfreeze "

    .line 8
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    .line 10
    monitor-enter v3

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 19
    if-nez p0, :cond_0

    .line 21
    monitor-exit v3

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string v4, "ActivityManager"

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " for "

    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const/4 v2, 0x0

    .line 51
    :try_start_1
    invoke-static {p1, v2, v2}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZI)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 56
    invoke-static {p1, p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->traceAppFreeze(IILjava/lang/String;)V

    .line 59
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 61
    invoke-static {p1, p0, v2}, Landroid/os/Process;->setProcessFrozen(IIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    :try_start_3
    const-string p0, "ActivityManager"

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    monitor-exit v3

    .line 83
    return-void

    .line 84
    :catch_1
    const-string p0, "ActivityManager"

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-exit v3

    .line 102
    return-void

    .line 103
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    throw p0
.end method

.method public final unfreezeTemporarily(IJLcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-static {p4, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    .line 14
    move-result-wide p2

    .line 15
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 17
    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 19
    if-nez v2, :cond_0

    .line 21
    iget-boolean v1, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 23
    if-eqz v1, :cond_1

    .line 25
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V

    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    .line 32
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 42
    throw p0

    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final updateCompactionThrottles()V
    .locals 9

    .line 1
    const-string/jumbo v0, "compact_throttle_1"

    .line 4
    const-string v1, "activity_manager"

    .line 6
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v2, "compact_throttle_2"

    .line 13
    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const-string/jumbo v3, "compact_throttle_3"

    .line 20
    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const-string/jumbo v4, "compact_throttle_4"

    .line 27
    invoke-static {v1, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const-string/jumbo v5, "compact_throttle_5"

    .line 34
    invoke-static {v1, v5}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    const-string/jumbo v6, "compact_throttle_6"

    .line 41
    invoke-static {v1, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    const-string/jumbo v7, "compact_throttle_min_oom_adj"

    .line 48
    invoke-static {v1, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v7

    .line 52
    const-string/jumbo v8, "compact_throttle_max_oom_adj"

    .line 55
    invoke-static {v1, v8}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v8

    .line 63
    if-nez v8, :cond_1

    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v8

    .line 69
    if-nez v8, :cond_1

    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_1

    .line 77
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v8

    .line 81
    if-nez v8, :cond_1

    .line 83
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_1

    .line 89
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_1

    .line 95
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_0

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 111
    move-result v0

    .line 112
    int-to-long v5, v0

    .line 113
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    move-result v0

    .line 119
    int-to-long v5, v0

    .line 120
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 125
    move-result v0

    .line 126
    int-to-long v2, v0

    .line 127
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    move-result v0

    .line 133
    int-to-long v2, v0

    .line 134
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 136
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 139
    move-result-wide v2

    .line 140
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 142
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 145
    move-result-wide v0

    .line 146
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_1

    .line 149
    :catch_0
    :cond_1
    :goto_0
    const-wide/16 v0, 0x1388

    .line 151
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 153
    const-wide/16 v0, 0x2710

    .line 155
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 157
    const-wide/16 v2, 0x1f4

    .line 159
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 161
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 163
    const-wide/16 v0, 0x352

    .line 165
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 167
    const-wide/16 v0, 0x3e7

    .line 169
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 171
    :goto_1
    return-void
.end method

.method public final updateFreezerDebounceTimeout()V
    .locals 6

    .line 1
    const-string v0, "activity_manager_native_boot"

    .line 3
    const-string/jumbo v1, "freeze_debounce_timeout"

    .line 6
    const-wide/16 v2, 0x2710

    .line 8
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 14
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 16
    const-wide/16 v4, 0x0

    .line 18
    cmp-long v0, v0, v4

    .line 20
    if-gez v0, :cond_0

    .line 22
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "Freezer timeout set to "

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 33
    const-string p0, "ActivityManager"

    .line 35
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 38
    return-void
.end method

.method public final updateFreezerExemptInstPkg()V
    .locals 3

    .line 1
    const-string/jumbo v0, "freeze_exempt_inst_pkg"

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "activity_manager_native_boot"

    .line 7
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "Freezer exemption set to "

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    .line 22
    const-string v1, "ActivityManager"

    .line 24
    invoke-static {v1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 27
    return-void
.end method

.method public final updateProcStateThrottle()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    .line 3
    const-string v1, "activity_manager"

    .line 5
    const-string/jumbo v2, "compact_proc_state_throttle"

    .line 8
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 18
    const-string v2, "Unable to parse app compact proc state throttle \""

    .line 20
    const-string v3, "\" falling back to default."

    .line 22
    const-string v4, "ActivityManager"

    .line 24
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "Unable to parse default app compact proc state throttle "

    .line 37
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-void
.end method

.method public final updateUseCompaction()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "activity_manager"

    .line 4
    const-string/jumbo v2, "use_compaction"

    .line 7
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 13
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 19
    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 31
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    :cond_0
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 39
    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 41
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 43
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 46
    move-result p0

    .line 47
    const/4 v0, 0x2

    .line 48
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 51
    :cond_1
    return-void
.end method

.method public final updateUseFreezer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "cached_apps_freezer"

    .line 12
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "disabled"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 26
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string/jumbo v1, "enabled"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 38
    const-string/jumbo v0, "use_freezer"

    .line 41
    const/4 v1, 0x1

    .line 42
    const-string v3, "activity_manager_native_boot"

    .line 44
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->isFreezerSupported()Z

    .line 57
    move-result v0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerExemptInstPkg()V

    .line 66
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 68
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 70
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 72
    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;

    .line 74
    invoke-direct {v2, p0, v0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method public final useCompaction()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebuggable:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 16
    monitor-exit v0

    .line 17
    return p0

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final useFreezer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method
