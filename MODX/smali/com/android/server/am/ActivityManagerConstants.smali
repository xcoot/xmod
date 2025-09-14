.class public final Lcom/android/server/am/ActivityManagerConstants;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

.field public static final ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

.field public static BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

.field public static BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

.field public static BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

.field public static final DEFAULT_ENABLE_NEW_OOM_ADJ:Z

.field public static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

.field public static DEFAULT_MAX_CACHED_PROCESSES:I

.field public static final DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

.field public static final DEFAULT_SERVICE_TIMEOUT:J

.field public static EMPTY_RATE:F

.field public static final ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

.field public static final FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

.field public static final FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static LOW_SWAP_THRESHOLD_PERCENT:F

.field public static MAX_PREVIOUS_TIME:J

.field public static MIN_ASSOC_LOG_DURATION:J

.field public static MIN_CRASH_INTERVAL:I

.field public static PROACTIVE_KILLS_ENABLED:Z

.field public static PROCESS_CRASH_COUNT_LIMIT:I

.field public static PROCESS_CRASH_COUNT_RESET_INTERVAL:J


# instance fields
.field public APP_PROFILER_PSS_PROFILING_DISABLED:Z

.field public BACKGROUND_SETTLE_TIME:J

.field public BG_START_TIMEOUT:J

.field public BOUND_SERVICE_CRASH_RESTART_DURATION:J

.field public BOUND_SERVICE_MAX_CRASH_RETRY:J

.field public CONTENT_PROVIDER_RETAIN_TIME:J

.field public CUR_MAX_CACHED_PROCESSES:I

.field public CUR_MAX_EMPTY_PROCESSES:I

.field public CUR_TRIM_CACHED_PROCESSES:I

.field public CUR_TRIM_EMPTY_PROCESSES:I

.field public CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

.field public CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

.field public final ENABLE_BATCHING_OOM_ADJ:Z

.field public final ENABLE_NEW_OOMADJ:Z

.field public FGSERVICE_MIN_REPORT_TIME:J

.field public FGSERVICE_MIN_SHOWN_TIME:J

.field public FGSERVICE_SCREEN_ON_AFTER_TIME:J

.field public FGSERVICE_SCREEN_ON_BEFORE_TIME:J

.field public FGS_BOOT_COMPLETED_ALLOWLIST:I

.field public FLAG_PROCESS_START_ASYNC:Z

.field public FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

.field public FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

.field public FULL_PSS_LOWERED_INTERVAL:J

.field public FULL_PSS_MIN_INTERVAL:J

.field public GC_MIN_INTERVAL:J

.field public GC_TIMEOUT:J

.field public final IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

.field public final IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

.field public final KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

.field public MAX_CACHED_PROCESSES:I

.field public MAX_PHANTOM_PROCESSES:I

.field public MAX_SERVICE_INACTIVITY:J

.field public MEMORY_INFO_THROTTLE_TIME:J

.field public OOMADJ_UPDATE_QUICK:Z

.field public PENDINGINTENT_WARNING_THRESHOLD:I

.field public POWER_CHECK_INTERVAL:J

.field public POWER_CHECK_MAX_CPU_1:I

.field public POWER_CHECK_MAX_CPU_2:I

.field public POWER_CHECK_MAX_CPU_3:I

.field public POWER_CHECK_MAX_CPU_4:I

.field public PSS_TO_RSS_THRESHOLD_MODIFIER:F

.field public final SERVICE_BACKGROUND_TIMEOUT:J

.field public SERVICE_BG_ACTIVITY_START_TIMEOUT:J

.field public SERVICE_MIN_RESTART_TIME_BETWEEN:J

.field public SERVICE_RESET_RUN_DURATION:J

.field public SERVICE_RESTART_DURATION:J

.field public SERVICE_RESTART_DURATION_FACTOR:I

.field public final SERVICE_TIMEOUT:J

.field public SERVICE_USAGE_INTERACTION_TIME_POST_S:J

.field public SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

.field public TIERED_CACHED_ADJ_DECAY_TIME:J

.field public TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

.field public volatile TOP_TO_FGS_GRACE_DURATION:J

.field public USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

.field public USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

.field public USE_TIERED_CACHED_ADJ:Z

.field public volatile mBootTimeTempAllowlistDuration:J

.field public volatile mComponentAliasOverrides:Ljava/lang/String;

.field public final mCustomizedMaxCachedProcesses:I

.field public volatile mDataSyncFgsTimeoutDuration:J

.field public final mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

.field public final mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

.field public final mDefaultBinderHeavyHitterAutoSamplerThreshold:F

.field public final mDefaultBinderHeavyHitterWatcherBatchSize:I

.field public final mDefaultBinderHeavyHitterWatcherEnabled:Z

.field public final mDefaultBinderHeavyHitterWatcherThreshold:F

.field public final mDefaultDisableAppProfilerPssProfiling:Z

.field public final mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

.field public final mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

.field public final mDefaultPssToRssThresholdModifier:F

.field public volatile mDeferBootCompletedBroadcast:I

.field public volatile mEnableComponentAlias:Z

.field public mEnableExtraServiceRestartDelayOnMemPressure:Z

.field public volatile mEnableProcStateStacktrace:Z

.field public volatile mEnableWaitForFinishAttachApplication:Z

.field public mExtraServiceRestartDelayOnMemPressure:[J

.field public volatile mFgToBgFgsGraceDuration:J

.field public volatile mFgsAllowOptOut:Z

.field public volatile mFgsAtomSampleRate:F

.field public volatile mFgsCrashExtraWaitDuration:J

.field public volatile mFgsNotificationDeferralExclusionTime:J

.field public volatile mFgsNotificationDeferralExclusionTimeForShort:J

.field public volatile mFgsNotificationDeferralInterval:J

.field public volatile mFgsNotificationDeferralIntervalForShort:J

.field public volatile mFgsStartAllowedLogSampleRate:F

.field public volatile mFgsStartDeniedLogSampleRate:F

.field public volatile mFgsStartForegroundTimeoutMs:J

.field public volatile mFgsStartRestrictionCheckCallerTargetSdk:Z

.field public volatile mFgsStartRestrictionNotificationEnabled:Z

.field public volatile mFlagActivityStartsLoggingEnabled:Z

.field public volatile mFlagBackgroundActivityStartsEnabled:Z

.field public volatile mFlagBackgroundFgsStartRestrictionEnabled:Z

.field public volatile mFlagFgsNotificationDeferralApiGated:Z

.field public volatile mFlagFgsNotificationDeferralEnabled:Z

.field public volatile mFlagFgsStartRestrictionEnabled:Z

.field public volatile mFlagSystemExemptPowerRestrictionsEnabled:Z

.field public volatile mForceEnablePssProfiling:Z

.field public volatile mKillBgRestrictedAndCachedIdle:Z

.field public volatile mKillBgRestrictedAndCachedIdleSettleTimeMs:J

.field public volatile mMaxEmptyTimeMillis:J

.field public volatile mMaxServiceConnectionsPerProcess:I

.field public volatile mMediaProcessingFgsTimeoutDuration:J

.field public volatile mNetworkAccessTimeoutMs:J

.field public volatile mNoKillCachedProcessesPostBootCompletedDurationMillis:J

.field public volatile mNoKillCachedProcessesUntilBootCompleted:Z

.field public final mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

.field public final mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

.field public mOverrideMaxCachedProcesses:I

.field public final mParser:Landroid/util/KeyValueListParser;

.field public volatile mPrioritizeAlarmBroadcasts:Z

.field public volatile mProcStateDebugSetProcStateDelay:I

.field public volatile mProcStateDebugSetUidStateDelay:I

.field public volatile mProcStateDebugUids:Landroid/util/SparseBooleanArray;

.field public volatile mProcessKillTimeoutMs:J

.field public volatile mPushMessagingOverQuotaBehavior:I

.field public mResolver:Landroid/content/ContentResolver;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mServiceBindAlmostPerceptibleTimeoutMs:J

.field public volatile mServiceStartForegroundAnrDelayMs:I

.field public volatile mServiceStartForegroundTimeoutMs:I

.field public volatile mShortFgsAnrExtraWaitDuration:J

.field public volatile mShortFgsProcStateExtraWaitDuration:J

.field public volatile mShortFgsTimeoutDuration:J

.field public final mSystemServerAutomaticHeapDumpEnabled:Z

.field public final mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

.field public final mSystemServerAutomaticHeapDumpPssThresholdBytes:J

.field public volatile mVisibleToInvisibleUijScheduleGraceDurationMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.slmk.fha_cached_max"

    .line 4
    const-string v1, "1024"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 16
    invoke-static {}, Lcom/android/server/am/Flags;->oomadjusterCorrectnessRewrite()Z

    .line 19
    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_ENABLE_NEW_OOM_ADJ:Z

    .line 22
    invoke-static {}, Lcom/android/server/am/Flags;->batchingOomAdj()Z

    .line 25
    const/4 v0, 0x4

    .line 26
    new-array v0, v0, [J

    .line 28
    fill-array-data v0, :array_0

    .line 31
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    .line 33
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 35
    mul-int/lit16 v0, v0, 0x7530

    .line 37
    int-to-long v0, v0

    .line 38
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_TIMEOUT:J

    .line 40
    const-wide/16 v2, 0xa

    .line 42
    mul-long/2addr v0, v2

    .line 43
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

    .line 45
    const-string/jumbo v0, "ro.slmk.fha_empty_rate"

    .line 48
    const-string v1, "0.5"

    .line 50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 57
    move-result v0

    .line 58
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 60
    const-wide/32 v0, 0xea60

    .line 63
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    .line 65
    const v0, 0x1d4c0

    .line 68
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 70
    const-wide/32 v0, 0x2932e00

    .line 73
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 75
    const/16 v0, 0xc

    .line 77
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 79
    const-string v0, "activity_manager_constants"

    .line 81
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    .line 87
    const-string v0, "activity_starts_logging_enabled"

    .line 89
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 95
    const-string/jumbo v0, "foreground_service_starts_logging_enabled"

    .line 98
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 104
    const-string/jumbo v0, "enable_automatic_system_server_heap_dumps"

    .line 107
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    .line 113
    const-string/jumbo v0, "force_enable_pss_profiling"

    .line 116
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    .line 122
    const-wide/32 v0, 0x493e0

    .line 125
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    .line 127
    const/4 v0, 0x0

    .line 128
    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 130
    const v0, 0x3dcccccd    # 0.1f

    .line 133
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    .line 135
    return-void

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        0x0
        0x2710
        0x4e20
        0x7530
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$UiHandler;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 10
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 16
    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 18
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    .line 20
    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 22
    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 24
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 26
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 28
    const-wide/32 v4, 0xea60

    .line 31
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 33
    const-wide/16 v6, 0x7d0

    .line 35
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 37
    const-wide/16 v6, 0xbb8

    .line 39
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 41
    const-wide/16 v6, 0x3e8

    .line 43
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 45
    const-wide/16 v8, 0x1388

    .line 47
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 49
    const v2, 0x40000718    # 2.000433f

    .line 52
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    .line 54
    const-wide/16 v10, 0x4e20

    .line 56
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 58
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 60
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 62
    const/4 v2, 0x1

    .line 63
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 65
    const-wide/32 v12, 0x124f80

    .line 68
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 70
    const-wide/32 v12, 0x493e0

    .line 73
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 75
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 77
    const/16 v14, 0x19

    .line 79
    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 81
    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 83
    const/16 v14, 0xa

    .line 85
    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 87
    const/4 v14, 0x2

    .line 88
    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 90
    const-wide/32 v14, 0x1b7740

    .line 93
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 95
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 97
    const-wide/32 v8, 0x6ddd00

    .line 100
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 102
    const-wide/32 v8, 0x927c0

    .line 105
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 107
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 109
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 111
    const/4 v8, 0x4

    .line 112
    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 114
    const-wide/16 v8, 0x2710

    .line 116
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 118
    sget-wide v6, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_TIMEOUT:J

    .line 120
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    .line 122
    sget-wide v6, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

    .line 124
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    .line 126
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 128
    const-wide/16 v6, 0x3a98

    .line 130
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 132
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 134
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 136
    const-wide/16 v14, 0x10

    .line 138
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 140
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 142
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 144
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 146
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 148
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 150
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    .line 152
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 154
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    .line 156
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 158
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 160
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 162
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 164
    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 166
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    .line 168
    const-wide/32 v12, 0x1d4c0

    .line 171
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 173
    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 175
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    .line 177
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    .line 179
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 181
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    .line 183
    const-wide/16 v10, 0x1388

    .line 185
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 187
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mVisibleToInvisibleUijScheduleGraceDurationMs:J

    .line 189
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    .line 191
    const/high16 v10, 0x3f800000    # 1.0f

    .line 193
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    .line 195
    const/high16 v11, 0x3e800000    # 0.25f

    .line 197
    iput v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 199
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 201
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 203
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 205
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 207
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 209
    sget-object v10, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    .line 211
    iput-object v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 213
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 215
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 217
    const/4 v10, 0x6

    .line 218
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 220
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    .line 222
    const/16 v10, 0x7530

    .line 224
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    .line 226
    const/16 v10, 0x2710

    .line 228
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 230
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    .line 232
    const-string v6, ""

    .line 234
    iput-object v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 236
    const/16 v6, 0xbb8

    .line 238
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    .line 240
    new-instance v6, Landroid/util/KeyValueListParser;

    .line 242
    const/16 v7, 0x2c

    .line 244
    invoke-direct {v6, v7}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 247
    iput-object v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 249
    const/4 v6, -0x1

    .line 250
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 252
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 254
    const-wide/16 v6, 0x0

    .line 256
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 258
    iget v6, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 260
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 263
    move-result v6

    .line 264
    const/4 v7, 0x2

    .line 265
    div-int/2addr v6, v7

    .line 266
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 268
    iget v6, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 270
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 273
    move-result v7

    .line 274
    sub-int/2addr v6, v7

    .line 275
    const/4 v7, 0x3

    .line 276
    div-int/2addr v6, v7

    .line 277
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 279
    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    .line 281
    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    .line 283
    const-wide v10, 0xd693a400L

    .line 288
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 290
    new-instance v6, Landroid/util/ArraySet;

    .line 292
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 295
    iput-object v6, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 297
    new-instance v10, Landroid/util/ArraySet;

    .line 299
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 302
    iput-object v10, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 304
    const/16 v11, 0x7d0

    .line 306
    iput v11, v0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 308
    new-instance v11, Landroid/util/ArraySet;

    .line 310
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 313
    iput-object v11, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 315
    const/16 v12, 0x20

    .line 317
    iput v12, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 319
    const-wide/16 v12, 0xc8

    .line 321
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 323
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    .line 325
    const-wide/32 v12, 0x2bf20

    .line 328
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    .line 330
    const-wide/16 v12, 0x1388

    .line 332
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    .line 334
    const-wide/32 v12, 0x1499700

    .line 337
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    .line 339
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    .line 341
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    .line 343
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    .line 345
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    .line 347
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 349
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 351
    sget-boolean v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_ENABLE_NEW_OOM_ADJ:Z

    .line 353
    iput-boolean v4, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    .line 355
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    .line 357
    const-wide/16 v8, 0x3e8

    .line 359
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    .line 361
    new-instance v5, Lcom/android/server/am/ActivityManagerConstants$1;

    .line 363
    invoke-direct {v5, v0, v3}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;I)V

    .line 366
    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

    .line 368
    new-instance v5, Lcom/android/server/am/ActivityManagerConstants$1;

    .line 370
    invoke-direct {v5, v0, v2}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;I)V

    .line 373
    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

    .line 375
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 377
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 379
    if-eqz v5, :cond_0

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 384
    move-result-object v5

    .line 385
    const v8, 0x111012a

    .line 388
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 391
    move-result v5

    .line 392
    if-eqz v5, :cond_0

    .line 394
    goto :goto_0

    .line 395
    :cond_0
    move v2, v3

    .line 396
    :goto_0
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 401
    move-result-object v2

    .line 402
    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 407
    move-result-object v2

    .line 408
    const v5, 0x10e0069

    .line 411
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 414
    move-result v2

    .line 415
    int-to-long v8, v2

    .line 416
    const-wide/32 v12, 0x19000

    .line 419
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 422
    move-result-wide v8

    .line 423
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 428
    move-result-object v2

    .line 429
    const v5, 0x10700c4

    .line 432
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 435
    move-result-object v2

    .line 436
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 439
    move-result-object v2

    .line 440
    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 445
    move-result-object v5

    .line 446
    const v8, 0x10700c5

    .line 449
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 452
    move-result-object v5

    .line 453
    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 456
    move-result-object v5

    .line 457
    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 460
    move-result-object v5

    .line 461
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 464
    move-result-object v8

    .line 465
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 468
    move-result-object v5

    .line 469
    check-cast v5, Ljava/util/List;

    .line 471
    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    .line 473
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 476
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 482
    move-result-object v2

    .line 483
    const v5, 0x111012f

    .line 486
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 489
    move-result v2

    .line 490
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 495
    move-result-object v5

    .line 496
    const v6, 0x10e006e

    .line 499
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 502
    move-result v5

    .line 503
    iput v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 508
    move-result-object v6

    .line 509
    const v8, 0x10500df

    .line 512
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getFloat(I)F

    .line 515
    move-result v6

    .line 516
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 521
    move-result-object v8

    .line 522
    const v9, 0x111012e

    .line 525
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 528
    move-result v8

    .line 529
    iput-boolean v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 534
    move-result-object v9

    .line 535
    const v10, 0x10e006d

    .line 538
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    .line 541
    move-result v9

    .line 542
    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 547
    move-result-object v10

    .line 548
    const v12, 0x10500de

    .line 551
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getFloat(I)F

    .line 554
    move-result v10

    .line 555
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    .line 557
    sput-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 559
    sput v5, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 561
    sput v6, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 563
    sput-boolean v8, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 565
    sput v9, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 567
    sput v10, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    .line 569
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 571
    new-instance v5, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;

    .line 573
    const/4 v6, 0x2

    .line 574
    invoke-direct {v5, v1, v6}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    .line 577
    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 583
    move-result-object v1

    .line 584
    const v2, 0x1070112

    .line 587
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 590
    move-result-object v1

    .line 591
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 594
    move-result-object v1

    .line 595
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 597
    invoke-direct {v2, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 600
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 603
    move-result-object v1

    .line 604
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 607
    move-result-object v2

    .line 608
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 611
    move-result-object v1

    .line 612
    check-cast v1, Ljava/util/Collection;

    .line 614
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 620
    move-result-object v1

    .line 621
    const v2, 0x10e0060

    .line 624
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 627
    move-result v1

    .line 628
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    .line 630
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 632
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 634
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 637
    move-result v1

    .line 638
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 640
    iget v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 642
    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 644
    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    .line 647
    move-result v1

    .line 648
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 651
    move-result v1

    .line 652
    const/4 v2, 0x2

    .line 653
    div-int/lit8 v2, v1, 0x2

    .line 655
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 657
    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 659
    iget v5, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 661
    invoke-static {v2, v5}, Ljava/lang/Integer;->min(II)I

    .line 664
    move-result v2

    .line 665
    sub-int/2addr v2, v1

    .line 666
    div-int/2addr v2, v7

    .line 667
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 669
    sget v1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    .line 671
    const-string/jumbo v1, "persist.sys.activity_manager_native_boot."

    .line 674
    const-string/jumbo v2, "enable_new_oom_adj"

    .line 677
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 680
    move-result-object v5

    .line 681
    const-string/jumbo v6, "persist.device_config.activity_manager_native_boot."

    .line 684
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 687
    move-result-object v2

    .line 688
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 691
    move-result v2

    .line 692
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 695
    move-result v2

    .line 696
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    .line 698
    const-string/jumbo v2, "enable_batching_oom_adj"

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 704
    move-result-object v1

    .line 705
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 708
    move-result-object v2

    .line 709
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 712
    move-result v2

    .line 713
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 716
    move-result v1

    .line 717
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    .line 719
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 722
    move-result-object v1

    .line 723
    const v2, 0x1110033

    .line 726
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 729
    move-result v1

    .line 730
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultDisableAppProfilerPssProfiling:Z

    .line 732
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 737
    move-result-object v1

    .line 738
    const v2, 0x10500d5

    .line 741
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 744
    move-result v1

    .line 745
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultPssToRssThresholdModifier:F

    .line 747
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    .line 749
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 4

    .line 1
    int-to-float p0, p0

    .line 2
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 4
    mul-float/2addr p0, v0

    .line 5
    float-to-double v0, p0

    .line 6
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 11
    add-double/2addr v0, v2

    .line 12
    double-to-int p0, v0

    .line 13
    return p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    const-string v0, "ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    const-string v0, "  "

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "max_cached_processes"

    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    const-string v0, "="

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 27
    const-string v0, "  "

    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    const-string v0, "background_settle_time"

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    const-string v0, "="

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 44
    const-string v2, "  "

    .line 46
    const-string/jumbo v3, "fgservice_min_shown_time"

    .line 49
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "="

    .line 54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 59
    const-string v2, "  "

    .line 61
    const-string/jumbo v3, "fgservice_min_report_time"

    .line 64
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "="

    .line 69
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 74
    const-string v2, "  "

    .line 76
    const-string/jumbo v3, "fgservice_screen_on_before_time"

    .line 79
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "="

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 89
    const-string v2, "  "

    .line 91
    const-string/jumbo v3, "fgservice_screen_on_after_time"

    .line 94
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "="

    .line 99
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 104
    const-string v2, "  "

    .line 106
    const-string/jumbo v3, "fgs_boot_completed_allowlist"

    .line 109
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "="

    .line 114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    .line 119
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 122
    const-string v0, "  "

    .line 124
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "content_provider_retain_time"

    .line 130
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    const-string v0, "="

    .line 135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 140
    const-string v2, "  "

    .line 142
    const-string/jumbo v3, "gc_timeout"

    .line 145
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "="

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 155
    const-string v2, "  "

    .line 157
    const-string/jumbo v3, "gc_min_interval"

    .line 160
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "="

    .line 165
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 170
    const-string v2, "  "

    .line 172
    const-string/jumbo v3, "force_bg_check_on_restricted"

    .line 175
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "="

    .line 180
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 185
    const-string v1, "  "

    .line 187
    const-string/jumbo v2, "full_pss_min_interval"

    .line 190
    const-string v3, "="

    .line 192
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 197
    const-string v2, "  "

    .line 199
    const-string/jumbo v3, "full_pss_lowered_interval"

    .line 202
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "="

    .line 207
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 212
    const-string v2, "  "

    .line 214
    const-string/jumbo v3, "power_check_interval"

    .line 217
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "="

    .line 222
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 227
    const-string v2, "  "

    .line 229
    const-string/jumbo v3, "power_check_max_cpu_1"

    .line 232
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "="

    .line 237
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 242
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 245
    const-string v0, "  "

    .line 247
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v0, "power_check_max_cpu_2"

    .line 253
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    const-string v0, "="

    .line 258
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 263
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 266
    const-string v0, "  "

    .line 268
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "power_check_max_cpu_3"

    .line 274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    const-string v0, "="

    .line 279
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 284
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 287
    const-string v0, "  "

    .line 289
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v0, "power_check_max_cpu_4"

    .line 295
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    const-string v0, "="

    .line 300
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 305
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 308
    const-string v0, "  "

    .line 310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v0, "service_usage_interaction_time"

    .line 316
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    const-string v0, "="

    .line 321
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 326
    const-string v2, "  "

    .line 328
    const-string/jumbo v3, "service_usage_interaction_time_post_s"

    .line 331
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "="

    .line 336
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 341
    const-string v2, "  "

    .line 343
    const-string/jumbo v3, "usage_stats_interaction_interval"

    .line 346
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "="

    .line 351
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 356
    const-string v2, "  "

    .line 358
    const-string/jumbo v3, "usage_stats_interaction_interval_post_s"

    .line 361
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "="

    .line 366
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 371
    const-string v2, "  "

    .line 373
    const-string/jumbo v3, "service_restart_duration"

    .line 376
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "="

    .line 381
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 386
    const-string v2, "  "

    .line 388
    const-string/jumbo v3, "service_reset_run_duration"

    .line 391
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "="

    .line 396
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 401
    const-string v2, "  "

    .line 403
    const-string/jumbo v3, "service_restart_duration_factor"

    .line 406
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v0, "="

    .line 411
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 416
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 419
    const-string v0, "  "

    .line 421
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    const-string/jumbo v0, "service_min_restart_time_between"

    .line 427
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    const-string v0, "="

    .line 432
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 437
    const-string v2, "  "

    .line 439
    const-string/jumbo v3, "service_max_inactivity"

    .line 442
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v0, "="

    .line 447
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 452
    const-string v2, "  "

    .line 454
    const-string/jumbo v3, "service_bg_start_timeout"

    .line 457
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, "="

    .line 462
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 467
    const-string v2, "  "

    .line 469
    const-string/jumbo v3, "service_bg_activity_start_timeout"

    .line 472
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "="

    .line 477
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 482
    const-string v2, "  "

    .line 484
    const-string/jumbo v3, "service_crash_restart_duration"

    .line 487
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v0, "="

    .line 492
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 497
    const-string v2, "  "

    .line 499
    const-string/jumbo v3, "service_crash_max_retry"

    .line 502
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "="

    .line 507
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 512
    const-string v2, "  "

    .line 514
    const-string/jumbo v3, "process_start_async"

    .line 517
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v0, "="

    .line 522
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 527
    const-string v1, "  "

    .line 529
    const-string/jumbo v2, "memory_info_throttle_time"

    .line 532
    const-string v3, "="

    .line 534
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 539
    const-string v2, "  "

    .line 541
    const-string/jumbo v3, "top_to_fgs_grace_duration"

    .line 544
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "="

    .line 549
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 554
    const-string v2, "  "

    .line 556
    const-string/jumbo v3, "top_to_almost_perceptible_grace_duration"

    .line 559
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "="

    .line 564
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 569
    const-string v2, "  "

    .line 571
    const-string/jumbo v3, "min_crash_interval"

    .line 574
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "="

    .line 579
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 584
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 587
    const-string v0, "  "

    .line 589
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    const-string/jumbo v0, "process_crash_count_reset_interval"

    .line 595
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    const-string v0, "="

    .line 600
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 605
    const-string v2, "  "

    .line 607
    const-string/jumbo v3, "process_crash_count_limit"

    .line 610
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v0, "="

    .line 615
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 620
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 623
    const-string v0, "  "

    .line 625
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    const-string/jumbo v0, "imperceptible_kill_exempt_proc_states"

    .line 631
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    const-string v0, "="

    .line 636
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 641
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    .line 644
    move-result-object v0

    .line 645
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 648
    move-result-object v0

    .line 649
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    const-string v0, "  "

    .line 654
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    const-string/jumbo v0, "imperceptible_kill_exempt_packages"

    .line 660
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    const-string v0, "="

    .line 665
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 670
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    .line 673
    move-result-object v0

    .line 674
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    const-string v0, "  "

    .line 683
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    const-string/jumbo v0, "min_assoc_log_duration"

    .line 689
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    const-string v0, "="

    .line 694
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 697
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    .line 699
    const-string v2, "  "

    .line 701
    const-string/jumbo v3, "binder_heavy_hitter_watcher_enabled"

    .line 704
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v0, "="

    .line 709
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 714
    const-string v1, "  "

    .line 716
    const-string/jumbo v2, "binder_heavy_hitter_watcher_batchsize"

    .line 719
    const-string v3, "="

    .line 721
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 726
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 729
    const-string v0, "  "

    .line 731
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    const-string/jumbo v0, "binder_heavy_hitter_watcher_threshold"

    .line 737
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    const-string v0, "="

    .line 742
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 747
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 750
    const-string v0, "  "

    .line 752
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    const-string/jumbo v0, "binder_heavy_hitter_auto_sampler_enabled"

    .line 758
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    const-string v0, "="

    .line 763
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 768
    const-string v1, "  "

    .line 770
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_batchsize"

    .line 773
    const-string v3, "="

    .line 775
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 780
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 783
    const-string v0, "  "

    .line 785
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 788
    const-string/jumbo v0, "binder_heavy_hitter_auto_sampler_threshold"

    .line 791
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    const-string v0, "="

    .line 796
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    .line 801
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 804
    const-string v0, "  "

    .line 806
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    const-string/jumbo v0, "max_phantom_processes"

    .line 812
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    const-string v0, "="

    .line 817
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 822
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 825
    const-string v0, "  "

    .line 827
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 830
    const-string/jumbo v0, "boot_time_temp_allowlist_duration"

    .line 833
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    const-string v0, "="

    .line 838
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 841
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    .line 843
    const-string v2, "  "

    .line 845
    const-string/jumbo v3, "fg_to_bg_fgs_grace_duration"

    .line 848
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v0, "="

    .line 853
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 856
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 858
    const-string v2, "  "

    .line 860
    const-string/jumbo v3, "fgs_start_foreground_timeout"

    .line 863
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v0, "="

    .line 868
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    .line 873
    const-string v2, "  "

    .line 875
    const-string/jumbo v3, "default_background_activity_starts_enabled"

    .line 878
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v0, "="

    .line 883
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    .line 888
    const-string v1, "  "

    .line 890
    const-string/jumbo v2, "default_background_fgs_starts_restriction_enabled"

    .line 893
    const-string v3, "="

    .line 895
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 900
    const-string v1, "  "

    .line 902
    const-string/jumbo v2, "default_fgs_starts_restriction_enabled"

    .line 905
    const-string v3, "="

    .line 907
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    .line 912
    const-string v1, "  "

    .line 914
    const-string/jumbo v2, "default_fgs_starts_restriction_notification_enabled"

    .line 917
    const-string v3, "="

    .line 919
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 924
    const-string v1, "  "

    .line 926
    const-string/jumbo v2, "default_fgs_starts_restriction_check_caller_target_sdk"

    .line 929
    const-string v3, "="

    .line 931
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 936
    const-string v1, "  "

    .line 938
    const-string/jumbo v2, "fgs_atom_sample_rate"

    .line 941
    const-string v3, "="

    .line 943
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    .line 948
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 951
    const-string v0, "  "

    .line 953
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 956
    const-string/jumbo v0, "fgs_start_allowed_log_sample_rate"

    .line 959
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    const-string v0, "="

    .line 964
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 967
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 969
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 972
    const-string v0, "  "

    .line 974
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 977
    const-string/jumbo v0, "fgs_start_denied_log_sample_rate"

    .line 980
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 983
    const-string v0, "="

    .line 985
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 988
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 990
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 993
    const-string v0, "  "

    .line 995
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    const-string/jumbo v0, "push_messaging_over_quota_behavior"

    .line 1001
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    const-string v0, "="

    .line 1006
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1011
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1014
    const-string v0, "  "

    .line 1016
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    const-string/jumbo v0, "fgs_allow_opt_out"

    .line 1022
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    const-string v0, "="

    .line 1027
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 1032
    const-string v1, "  "

    .line 1034
    const-string/jumbo v2, "enable_experimental_component_alias"

    .line 1037
    const-string v3, "="

    .line 1039
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 1044
    const-string v1, "  "

    .line 1046
    const-string/jumbo v2, "component_alias_overrides"

    .line 1049
    const-string v3, "="

    .line 1051
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 1056
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    const-string v0, "  "

    .line 1061
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    const-string/jumbo v0, "defer_boot_completed_broadcast"

    .line 1067
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    const-string v0, "="

    .line 1072
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 1077
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1080
    const-string v0, "  "

    .line 1082
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    const-string/jumbo v0, "prioritize_alarm_broadcasts"

    .line 1088
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    const-string v0, "="

    .line 1093
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    .line 1098
    const-string v1, "  "

    .line 1100
    const-string/jumbo v2, "no_kill_cached_processes_until_boot_completed"

    .line 1103
    const-string v3, "="

    .line 1105
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 1110
    const-string v1, "  "

    .line 1112
    const-string/jumbo v2, "no_kill_cached_processes_post_boot_completed_duration_millis"

    .line 1115
    const-string v3, "="

    .line 1117
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 1122
    const-string v2, "  "

    .line 1124
    const-string/jumbo v3, "max_empty_time_millis"

    .line 1127
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string v0, "="

    .line 1132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 1137
    const-string v2, "  "

    .line 1139
    const-string/jumbo v3, "service_start_foreground_timeout_ms"

    .line 1142
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v0, "="

    .line 1147
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    .line 1152
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1155
    const-string v0, "  "

    .line 1157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    const-string/jumbo v0, "service_start_foreground_anr_delay_ms"

    .line 1163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    const-string v0, "="

    .line 1168
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1171
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 1173
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1176
    const-string v0, "  "

    .line 1178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1181
    const-string/jumbo v0, "service_bind_almost_perceptible_timeout_ms"

    .line 1184
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1187
    const-string v0, "="

    .line 1189
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    .line 1194
    const-string v2, "  "

    .line 1196
    const-string/jumbo v3, "network_access_timeout_ms"

    .line 1199
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v0, "="

    .line 1204
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 1209
    const-string v2, "  "

    .line 1211
    const-string/jumbo v3, "max_service_connections_per_process"

    .line 1214
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v0, "="

    .line 1219
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    .line 1224
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1227
    const-string v0, "  "

    .line 1229
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1232
    const-string/jumbo v0, "proactive_kills_enabled"

    .line 1235
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    const-string v0, "="

    .line 1240
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1243
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 1245
    const-string v1, "  "

    .line 1247
    const-string/jumbo v2, "low_swap_threshold_percent"

    .line 1250
    const-string v3, "="

    .line 1252
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    .line 1257
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1260
    const-string v0, "  "

    .line 1262
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    const-string/jumbo v0, "deferred_fgs_notifications_enabled"

    .line 1268
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    const-string v0, "="

    .line 1273
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 1278
    const-string v1, "  "

    .line 1280
    const-string/jumbo v2, "deferred_fgs_notifications_api_gated"

    .line 1283
    const-string v3, "="

    .line 1285
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 1290
    const-string v1, "  "

    .line 1292
    const-string/jumbo v2, "deferred_fgs_notification_interval"

    .line 1295
    const-string v3, "="

    .line 1297
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 1302
    const-string v2, "  "

    .line 1304
    const-string/jumbo v3, "deferred_fgs_notification_interval_for_short"

    .line 1307
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v0, "="

    .line 1312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    .line 1317
    const-string v2, "  "

    .line 1319
    const-string/jumbo v3, "deferred_fgs_notification_exclusion_time"

    .line 1322
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v0, "="

    .line 1327
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1330
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 1332
    const-string v2, "  "

    .line 1334
    const-string/jumbo v3, "deferred_fgs_notification_exclusion_time_for_short"

    .line 1337
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v0, "="

    .line 1342
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1345
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    .line 1347
    const-string v2, "  "

    .line 1349
    const-string/jumbo v3, "system_exempt_power_restrictions_enabled"

    .line 1352
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string v0, "="

    .line 1357
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    .line 1362
    const-string v1, "  "

    .line 1364
    const-string/jumbo v2, "short_fgs_timeout_duration"

    .line 1367
    const-string v3, "="

    .line 1369
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    .line 1374
    const-string v2, "  "

    .line 1376
    const-string/jumbo v3, "short_fgs_proc_state_extra_wait_duration"

    .line 1379
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v0, "="

    .line 1384
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1387
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    .line 1389
    const-string v2, "  "

    .line 1391
    const-string/jumbo v3, "short_fgs_anr_extra_wait_duration"

    .line 1394
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v0, "="

    .line 1399
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1402
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    .line 1404
    const-string v2, "  "

    .line 1406
    const-string/jumbo v3, "media_processing_fgs_timeout_duration"

    .line 1409
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v0, "="

    .line 1414
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1417
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    .line 1419
    const-string v2, "  "

    .line 1421
    const-string/jumbo v3, "data_sync_fgs_timeout_duration"

    .line 1424
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-string v0, "="

    .line 1429
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1432
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    .line 1434
    const-string v2, "  "

    .line 1436
    const-string/jumbo v3, "fgs_crash_extra_wait_duration"

    .line 1439
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v0, "="

    .line 1444
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1447
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    .line 1449
    const-string v2, "  "

    .line 1451
    const-string/jumbo v3, "use_tiered_cached_adj"

    .line 1454
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    const-string v0, "="

    .line 1459
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 1464
    const-string v1, "  "

    .line 1466
    const-string/jumbo v2, "tiered_cached_adj_decay_time"

    .line 1469
    const-string v3, "="

    .line 1471
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 1476
    const-string v2, "  "

    .line 1478
    const-string/jumbo v3, "enable_new_oom_adj"

    .line 1481
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const-string v0, "="

    .line 1486
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1489
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    .line 1491
    const-string v1, "  "

    .line 1493
    const-string/jumbo v2, "disable_app_profiler_pss_profiling"

    .line 1496
    const-string v3, "="

    .line 1498
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 1503
    const-string v1, "  "

    .line 1505
    const-string/jumbo v2, "pss_to_rss_threshold_modifier"

    .line 1508
    const-string v3, "="

    .line 1510
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    .line 1515
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1518
    const-string v0, "  "

    .line 1520
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1523
    const-string/jumbo v0, "max_previous_time"

    .line 1526
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1529
    const-string v0, "="

    .line 1531
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1534
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    .line 1536
    const-string v2, "  "

    .line 1538
    const-string/jumbo v3, "enable_batching_oom_adj"

    .line 1541
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const-string v0, "="

    .line 1546
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1549
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    .line 1551
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1554
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1557
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 1559
    if-ltz v0, :cond_0

    .line 1561
    const-string v0, "  mOverrideMaxCachedProcesses="

    .line 1563
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1566
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 1568
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1571
    :cond_0
    const-string v0, "  mCustomizedMaxCachedProcesses="

    .line 1573
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    .line 1578
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1581
    const-string v0, "  CUR_MAX_CACHED_PROCESSES="

    .line 1583
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 1588
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1591
    const-string v0, "  CUR_MAX_EMPTY_PROCESSES="

    .line 1593
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1596
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1598
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1601
    const-string v0, "  CUR_TRIM_EMPTY_PROCESSES="

    .line 1603
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1606
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1608
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1611
    const-string v0, "  CUR_TRIM_CACHED_PROCESSES="

    .line 1613
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1616
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 1618
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1621
    const-string v0, "  OOMADJ_UPDATE_QUICK="

    .line 1623
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    .line 1628
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1631
    const-string v0, "  ENABLE_WAIT_FOR_FINISH_ATTACH_APPLICATION="

    .line 1633
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1636
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    .line 1638
    const-string v1, "  "

    .line 1640
    const-string/jumbo v2, "follow_up_oomadj_update_wait_duration"

    .line 1643
    const-string v3, "="

    .line 1645
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    .line 1650
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1653
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 1655
    monitor-enter v0

    .line 1656
    :try_start_0
    const-string v1, "  "

    .line 1658
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1661
    const-string/jumbo v1, "proc_state_debug_uids"

    .line 1664
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1667
    const-string v1, "="

    .line 1669
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1672
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 1674
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1677
    const-string v1, "    uid-state-delay="

    .line 1679
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1682
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 1684
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1687
    const-string v1, "    proc-state-delay="

    .line 1689
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 1694
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 1697
    monitor-exit v0

    .line 1698
    return-void

    .line 1699
    :catchall_0
    move-exception p0

    .line 1700
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    throw p0
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    .line 6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 18
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz p1, :cond_3

    .line 26
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 28
    const-string p2, "activity_starts_logging_enabled"

    .line 30
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    move-result p1

    .line 34
    if-ne p1, v1, :cond_2

    .line 36
    move v0, v1

    .line 37
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 42
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 48
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 50
    const-string/jumbo p1, "foreground_service_starts_logging_enabled"

    .line 53
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    .line 59
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_5

    .line 65
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    .line 68
    goto :goto_0

    .line 69
    :cond_5
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    .line 71
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_7

    .line 77
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 79
    const-string/jumbo p2, "force_enable_pss_profiling"

    .line 82
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 85
    move-result p1

    .line 86
    if-ne p1, v1, :cond_6

    .line 88
    move v0, v1

    .line 89
    :cond_6
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    .line 91
    :cond_7
    :goto_0
    return-void
.end method

.method public final updateConstants()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 3
    const-string v1, "activity_manager_constants"

    .line 5
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 17
    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    :try_start_1
    const-string v2, "ActivityManagerConstants"

    .line 27
    const-string v3, "Bad activity manager config settings"

    .line 29
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :goto_0
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 34
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 36
    const-string v4, "background_settle_time"

    .line 38
    const-wide/32 v5, 0xea60

    .line 41
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 44
    move-result-wide v7

    .line 45
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 47
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 49
    const-string/jumbo v4, "fgservice_min_shown_time"

    .line 52
    const-wide/16 v7, 0x7d0

    .line 54
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 57
    move-result-wide v7

    .line 58
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 60
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 62
    const-string/jumbo v4, "fgservice_min_report_time"

    .line 65
    const-wide/16 v7, 0xbb8

    .line 67
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 70
    move-result-wide v7

    .line 71
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 73
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 75
    const-string/jumbo v4, "fgservice_screen_on_before_time"

    .line 78
    const-wide/16 v7, 0x3e8

    .line 80
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 83
    move-result-wide v9

    .line 84
    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 86
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 88
    const-string/jumbo v4, "fgservice_screen_on_after_time"

    .line 91
    const-wide/16 v9, 0x1388

    .line 93
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 96
    move-result-wide v11

    .line 97
    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 99
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 101
    const-string/jumbo v4, "fgs_boot_completed_allowlist"

    .line 104
    const v11, 0x40000718    # 2.000433f

    .line 107
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 110
    move-result v0

    .line 111
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    .line 113
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 115
    const-string/jumbo v4, "content_provider_retain_time"

    .line 118
    const-wide/16 v11, 0x4e20

    .line 120
    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 123
    move-result-wide v11

    .line 124
    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 126
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 128
    const-string/jumbo v4, "gc_timeout"

    .line 131
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 134
    move-result-wide v9

    .line 135
    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 137
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 139
    const-string/jumbo v4, "gc_min_interval"

    .line 142
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 145
    move-result-wide v9

    .line 146
    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 148
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 150
    const-string/jumbo v4, "full_pss_min_interval"

    .line 153
    const-wide/32 v9, 0x124f80

    .line 156
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 159
    move-result-wide v9

    .line 160
    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 162
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 164
    const-string/jumbo v4, "full_pss_lowered_interval"

    .line 167
    const-wide/32 v9, 0x493e0

    .line 170
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 173
    move-result-wide v11

    .line 174
    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 176
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 178
    const-string/jumbo v4, "power_check_interval"

    .line 181
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 184
    move-result-wide v11

    .line 185
    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 187
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 189
    const-string/jumbo v4, "power_check_max_cpu_1"

    .line 192
    const/16 v11, 0x19

    .line 194
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 197
    move-result v0

    .line 198
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 202
    const-string/jumbo v4, "power_check_max_cpu_2"

    .line 205
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 208
    move-result v0

    .line 209
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 211
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 213
    const-string/jumbo v4, "power_check_max_cpu_3"

    .line 216
    const/16 v11, 0xa

    .line 218
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 221
    move-result v0

    .line 222
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 224
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 226
    const-string/jumbo v4, "power_check_max_cpu_4"

    .line 229
    const/4 v11, 0x2

    .line 230
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 233
    move-result v0

    .line 234
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 236
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 238
    const-string/jumbo v4, "service_usage_interaction_time"

    .line 241
    const-wide/32 v11, 0x1b7740

    .line 244
    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 247
    move-result-wide v13

    .line 248
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 250
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 252
    const-string/jumbo v4, "service_usage_interaction_time_post_s"

    .line 255
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 258
    move-result-wide v13

    .line 259
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 261
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 263
    const-string/jumbo v4, "usage_stats_interaction_interval"

    .line 266
    const-wide/32 v13, 0x6ddd00

    .line 269
    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 272
    move-result-wide v13

    .line 273
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 275
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 277
    const-string/jumbo v4, "usage_stats_interaction_interval_post_s"

    .line 280
    const-wide/32 v13, 0x927c0

    .line 283
    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 286
    move-result-wide v13

    .line 287
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 289
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 291
    const-string/jumbo v4, "service_restart_duration"

    .line 294
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 297
    move-result-wide v7

    .line 298
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 300
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 302
    const-string/jumbo v4, "service_reset_run_duration"

    .line 305
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 308
    move-result-wide v4

    .line 309
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 311
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 313
    const-string/jumbo v4, "service_restart_duration_factor"

    .line 316
    const/4 v5, 0x4

    .line 317
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 320
    move-result v0

    .line 321
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 323
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 325
    const-string/jumbo v4, "service_min_restart_time_between"

    .line 328
    const-wide/16 v5, 0x2710

    .line 330
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 333
    move-result-wide v7

    .line 334
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 336
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 338
    const-string/jumbo v4, "service_max_inactivity"

    .line 341
    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 344
    move-result-wide v7

    .line 345
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 347
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 349
    const-string/jumbo v4, "service_bg_start_timeout"

    .line 352
    const-wide/16 v7, 0x3a98

    .line 354
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 357
    move-result-wide v13

    .line 358
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 360
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 362
    const-string/jumbo v4, "service_bg_activity_start_timeout"

    .line 365
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 368
    move-result-wide v4

    .line 369
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 371
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 373
    const-string/jumbo v4, "service_crash_restart_duration"

    .line 376
    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 379
    move-result-wide v4

    .line 380
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 382
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 384
    const-string/jumbo v4, "service_crash_max_retry"

    .line 387
    const/16 v5, 0x10

    .line 389
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 392
    move-result v0

    .line 393
    int-to-long v4, v0

    .line 394
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 396
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 398
    const-string/jumbo v4, "process_start_async"

    .line 401
    const/4 v5, 0x1

    .line 402
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 405
    move-result v0

    .line 406
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 408
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 410
    const-string/jumbo v4, "memory_info_throttle_time"

    .line 413
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 416
    move-result-wide v4

    .line 417
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 419
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 421
    const-string/jumbo v4, "top_to_almost_perceptible_grace_duration"

    .line 424
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    .line 427
    move-result-wide v4

    .line 428
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 430
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 432
    const-string/jumbo v4, "min_crash_interval"

    .line 435
    const v5, 0x1d4c0

    .line 438
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 441
    move-result v0

    .line 442
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 444
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 446
    const-string/jumbo v4, "pendingintent_warning_threshold"

    .line 449
    const/16 v5, 0x7d0

    .line 451
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 454
    move-result v0

    .line 455
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 457
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 459
    const-string/jumbo v4, "process_crash_count_reset_interval"

    .line 462
    const v5, 0x2932e00

    .line 465
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 468
    move-result v0

    .line 469
    int-to-long v4, v0

    .line 470
    sput-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 472
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 474
    const-string/jumbo v4, "process_crash_count_limit"

    .line 477
    const/16 v5, 0xc

    .line 479
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 482
    move-result v0

    .line 483
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 485
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 487
    cmp-long v0, v4, v2

    .line 489
    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 493
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 495
    const/16 v2, 0x1b

    .line 497
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 502
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 504
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 507
    move-result-object v0

    .line 508
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 510
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 512
    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 514
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 517
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 521
    return-void

    .line 522
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 526
    throw p0
.end method

.method public final updateEnableAutomaticSystemServerHeapDumps()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string p0, "ActivityManagerConstants"

    .line 7
    const-string/jumbo v0, "updateEnableAutomaticSystemServerHeapDumps called when leak detection disabled"

    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 16
    const-string/jumbo v1, "enable_automatic_system_server_heap_dumps"

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    move-result v0

    .line 24
    if-ne v0, v2, :cond_1

    .line 26
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    .line 28
    :goto_0
    move-wide v5, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-wide/16 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 35
    const/4 v4, 0x0

    .line 36
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 42
    return-void
.end method

.method public final updateMaxCachedProcesses()V
    .locals 4

    .line 1
    const-string v0, "activity_manager"

    .line 3
    const-string/jumbo v1, "max_cached_processes"

    .line 6
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 12
    if-gez v1, :cond_1

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    move-result v1

    .line 29
    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    const-string v3, "Unable to parse flag for max_cached_processes: "

    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    const-string v2, "ActivityManagerConstants"

    .line 48
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 53
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 55
    :goto_2
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 57
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 63
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 65
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Integer;->min(II)I

    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 74
    move-result v0

    .line 75
    div-int/lit8 v1, v0, 0x2

    .line 77
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 79
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 81
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 83
    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    .line 86
    move-result v1

    .line 87
    sub-int/2addr v1, v0

    .line 88
    div-int/lit8 v1, v1, 0x3

    .line 90
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 92
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    .line 94
    if-eqz v0, :cond_2

    .line 96
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 98
    :cond_2
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    .line 100
    if-eqz v0, :cond_3

    .line 102
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 104
    :cond_3
    return-void
.end method
