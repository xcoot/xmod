.class public final Lcom/android/server/am/KillPolicyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static KPM_BTIME_ENABLE:Z

.field public static KPM_DEBUG:Z

.field public static KPM_POLICY_ENABLE:Z

.field public static MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

.field public static MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

.field public static final MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

.field public static final RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

.field public static final SWAPPINESS:[I

.field public static brHandler:Landroid/os/Handler;

.field public static brHandlerThread:Lcom/android/server/ServiceThread;

.field public static mIsChimeraPmmKillTriggered:Z

.field public static final resumeSkipPackage:Ljava/util/ArrayList;

.field public static sCompactTriggerSize:I

.field public static sMinTriggerSize:I

.field public static sNativeFloodRatio:I

.field public static sNeverCollectWithin:I

.field public static sPmmEnabledBySpcm:Z

.field public static sPolicyTrigger:I

.field public static sSyspersFloodRatio:I

.field public static sWarmUpCycles:I

.field public static sWarmUpTrigger:I


# instance fields
.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppLaunchCount:J

.field public mBigdataIndex:I

.field public mBigdataMetric:I

.field public mContext:Landroid/content/Context;

.field public mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

.field public mDisplaySizeStr:Ljava/lang/String;

.field public mHasPsiCpuPermission:Z

.field public mHasPsiIoPermission:Z

.field public mHasPsiMemoryPermission:Z

.field public mHqmManager:Landroid/os/SemHqmManager;

.field public final mIdleModeReceiver:Lcom/android/server/am/KillPolicyManager$1;

.field public mIsFirstAppLaunch:Z

.field public final mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public final mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public mKpmStartTime:J

.field public mLastAwakeRealTimeMillis:J

.field public mLastAwakeUpTimeMillis:J

.field public mLastIdleEnterRealTimeMillis:J

.field public mLastIdleExitRealTimeMillis:J

.field public mLastIdleExitUpTimeMillis:J

.field public mLastIdleRealTimeMillis:J

.field public final mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

.field public final mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

.field public final mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

.field public mNumberOfStay:J

.field public final mPlatformStartUpTimeMillis:J

.field public mPolicyIndex:I

.field public mPolicyMetric:I

.field public mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mPrevPackage:Ljava/lang/String;

.field public final mPrevProcessList:Ljava/util/ArrayList;

.field public mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public final mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

.field public mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

.field public final mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

.field public mTotalMem:I

.field public mTotalSwap:I

.field public mTrigger:I

.field public mVmStats:Ljava/util/HashMap;

.field public final policyBroadcastReceiver:Lcom/android/server/am/KillPolicyManager$1;


# direct methods
.method public static -$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    const-string/jumbo v1, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 21
    const-string/jumbo v3, "com.samsung.android.lool"

    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v1, "resetType"

    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 39
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 41
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    check-cast v2, Ljava/lang/Integer;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v2

    .line 49
    const-string/jumbo v3, "nativeStart"

    .line 52
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 57
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 59
    check-cast v2, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v2

    .line 65
    const-string/jumbo v3, "nativeEnd"

    .line 68
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 73
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 75
    check-cast v2, Ljava/lang/Integer;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 80
    move-result v2

    .line 81
    const-string/jumbo v3, "sysPersStart"

    .line 84
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 89
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 91
    check-cast v2, Ljava/lang/Integer;

    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result v2

    .line 97
    const-string/jumbo v3, "sysPersEnd"

    .line 100
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string/jumbo v2, "pmmCyclePlatform"

    .line 106
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 113
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    .line 115
    add-int/2addr v2, v1

    .line 116
    const-string/jumbo v1, "pmmCycleKernel"

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 125
    move-result-wide v1

    .line 126
    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    .line 128
    sub-long/2addr v1, v3

    .line 129
    const-string/jumbo v3, "uptimeSystemBoot"

    .line 132
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    const-string/jumbo p0, "reportResetState : "

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    const-string p1, "ActivityManager_kpm"

    .line 149
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x64

    .line 3
    const/16 v1, 0x82

    .line 5
    const/16 v2, 0x91

    .line 7
    filled-new-array {v0, v0, v1, v1, v2}, [I

    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    .line 13
    const-string/jumbo v1, "ro.slmk.kpm_policy_enable"

    .line 16
    const-string/jumbo v2, "true"

    .line 19
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 27
    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 29
    const/4 v1, 0x0

    .line 30
    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 32
    const-string/jumbo v3, "ro.slmk.kpm_warm_up_trigger"

    .line 35
    const-string v4, "20"

    .line 37
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    move-result v3

    .line 45
    sput v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    .line 47
    const/16 v3, 0x32

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    const-string/jumbo v4, "ro.slmk.kpm_policy_trigger"

    .line 56
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    move-result v3

    .line 64
    sput v3, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    .line 66
    const-string/jumbo v3, "ro.slmk.kpm_warm_up_cycles"

    .line 69
    const-string v4, "3"

    .line 71
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    move-result v3

    .line 79
    sput v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    .line 81
    const-string/jumbo v3, "ro.slmk.kpm_boot_enable"

    .line 84
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 91
    move-result v3

    .line 92
    sput-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    .line 96
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    sput-object v3, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    .line 101
    const-string/jumbo v3, "ro.slmk.kpm_use_cri_pkg_ratio"

    .line 104
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 111
    move-result v3

    .line 112
    sput-boolean v3, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    .line 114
    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 116
    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 118
    const/4 v0, 0x0

    .line 119
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->brHandlerThread:Lcom/android/server/ServiceThread;

    .line 121
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->brHandler:Landroid/os/Handler;

    .line 123
    const-string/jumbo v0, "persist.sys.kpm_onoff"

    .line 126
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 133
    move-result v0

    .line 134
    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    .line 136
    const-wide/16 v2, 0x1

    .line 138
    const-wide/16 v4, 0x64

    .line 140
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 143
    move-result-object v0

    .line 144
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    .line 146
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 149
    move-result-object v0

    .line 150
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

    .line 152
    const-wide/16 v2, 0x2

    .line 154
    const-wide/16 v4, 0x3e8

    .line 156
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 159
    move-result-object v0

    .line 160
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    .line 162
    const-wide/16 v2, 0x0

    .line 164
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 167
    move-result-object v0

    .line 168
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    .line 170
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 173
    move-result-object v0

    .line 174
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    .line 176
    const/16 v0, 0xa

    .line 178
    sput v0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 180
    const/16 v0, 0xc

    .line 182
    sput v0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    .line 184
    const/16 v0, 0x12c

    .line 186
    sput v0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    .line 188
    const/16 v0, 0x1e

    .line 190
    sput v0, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 192
    sput v0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 194
    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    .line 196
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/kpm"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v1, 0x0

    .line 23
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 25
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 27
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 29
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 31
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 33
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 35
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 37
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 39
    const/16 v0, 0x18

    .line 41
    new-array v0, v0, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 43
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 45
    const/16 v0, 0x1e

    .line 47
    new-array v0, v0, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 49
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 51
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 53
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 56
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 58
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 60
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 63
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 65
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 67
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 70
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 72
    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iput-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 86
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    .line 95
    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    .line 97
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 100
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 102
    new-instance v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 104
    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager$SwappinessController;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 109
    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 111
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 114
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 119
    move-result-wide v3

    .line 120
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    move-result-wide v3

    .line 126
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    move-result-wide v3

    .line 132
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 137
    move-result-wide v3

    .line 138
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    .line 140
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    .line 142
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    .line 144
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    .line 146
    new-instance v0, Ljava/util/HashMap;

    .line 148
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    .line 153
    new-instance v0, Lcom/android/server/am/KillPolicyManager$1;

    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/KillPolicyManager$1;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    .line 159
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mIdleModeReceiver:Lcom/android/server/am/KillPolicyManager$1;

    .line 161
    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 163
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 166
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 168
    new-instance v0, Lcom/android/server/am/KillPolicyManager$1;

    .line 170
    const/4 v1, 0x1

    .line 171
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/KillPolicyManager$1;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    .line 174
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->policyBroadcastReceiver:Lcom/android/server/am/KillPolicyManager$1;

    .line 176
    const-string p0, "ActivityManager_kpm"

    .line 178
    const-string v0, "KillPolicyManager()"

    .line 180
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public static changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 3
    iget-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 5
    const-wide/16 v3, 0x0

    .line 7
    cmp-long v1, v1, v3

    .line 9
    if-lez v1, :cond_0

    .line 11
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 16
    iget-wide v5, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 18
    add-long/2addr v1, v5

    .line 19
    cmp-long v1, v1, v3

    .line 21
    if-lez v1, :cond_1

    .line 23
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 28
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 30
    int-to-long v5, p0

    .line 31
    add-long/2addr v0, v5

    .line 32
    cmp-long p0, v0, v3

    .line 34
    if-lez p0, :cond_2

    .line 36
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 41
    :goto_0
    return-object p0
.end method

.method public static fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 3
    if-eqz p0, :cond_2

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    .line 7
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 10
    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    .line 12
    const/high16 v2, 0x42c80000    # 100.0f

    .line 14
    mul-float/2addr v1, v2

    .line 15
    float-to-double v3, v1

    .line 16
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 18
    add-double/2addr v3, v5

    .line 19
    double-to-int v1, v3

    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    .line 26
    mul-float/2addr v1, v2

    .line 27
    float-to-double v3, v1

    .line 28
    add-double/2addr v3, v5

    .line 29
    double-to-int v1, v3

    .line 30
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 33
    move-result-object v0

    .line 34
    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    .line 36
    mul-float/2addr v1, v2

    .line 37
    float-to-double v1, v1

    .line 38
    add-double/2addr v1, v5

    .line 39
    double-to-int v1, v1

    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 43
    move-result-object v0

    .line 44
    const-string v1, "CHWT"

    .line 46
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 51
    const/4 v1, 0x2

    .line 52
    aget v2, v0, v1

    .line 54
    const-string v3, "CHTC"

    .line 56
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const/4 v2, 0x0

    .line 60
    aget v3, v0, v2

    .line 62
    const-string v4, "CLTC"

    .line 64
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const/4 v3, 0x1

    .line 68
    aget v0, v0, v3

    .line 70
    const-string v4, "CBTC"

    .line 72
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 77
    aget v1, v0, v1

    .line 79
    const-string v4, "CHAC"

    .line 81
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    aget v1, v0, v2

    .line 86
    const-string v4, "CLAC"

    .line 88
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    aget v0, v0, v3

    .line 93
    const-string v1, "CBAC"

    .line 95
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    iget v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 100
    const-string v1, "CKLC"

    .line 102
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    new-instance v0, Lorg/json/JSONArray;

    .line 107
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 110
    move v1, v2

    .line 111
    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    .line 113
    array-length v4, v3

    .line 114
    if-ge v1, v4, :cond_0

    .line 116
    aget v3, v3, v1

    .line 118
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    const-string v1, "CKAI"

    .line 126
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    new-instance v0, Lorg/json/JSONArray;

    .line 131
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 134
    :goto_1
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    .line 136
    array-length v3, v1

    .line 137
    if-ge v2, v3, :cond_1

    .line 139
    aget v1, v1, v2

    .line 141
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 146
    goto :goto_1

    .line 147
    :cond_1
    const-string p0, "CKGI"

    .line 149
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_2
    return-void
.end method

.method public static fillLmkdCounts([J)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v1, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 9
    move-result v2

    .line 10
    array-length v3, v0

    .line 11
    const/4 v4, 0x1

    .line 12
    sub-int/2addr v3, v4

    .line 13
    move v5, v1

    .line 14
    :goto_0
    if-ltz v3, :cond_1

    .line 16
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .line 18
    sget-object v7, Lcom/android/server/am/SecLmkdStats;->LMKD_SLOT_ADJ_VALUES:[I

    .line 20
    const/16 v8, 0x11

    .line 22
    if-ge v6, v8, :cond_0

    .line 24
    aget v7, v7, v6

    .line 26
    aget-object v8, v0, v3

    .line 28
    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->getADJ()I

    .line 31
    move-result v8

    .line 32
    if-gt v7, v8, :cond_0

    .line 34
    invoke-static {v5, v6, v4, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 37
    move-result v5

    .line 38
    add-int/2addr v2, v5

    .line 39
    move v5, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    int-to-long v6, v2

    .line 42
    aput-wide v6, p0, v3

    .line 44
    add-int/lit8 v3, v3, -0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public static getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 8
    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 13
    const/16 v2, 0x2000

    .line 15
    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 28
    const-string v3, "[ :]+"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 36
    array-length v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    const/4 v4, 0x2

    .line 38
    if-lt v3, v4, :cond_0

    .line 40
    const/4 v3, 0x0

    .line 41
    :try_start_3
    aget-object v3, v2, v3

    .line 43
    const/4 v4, 0x1

    .line 44
    aget-object v2, v2, v4

    .line 46
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 49
    move-result-wide v4

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v2

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    :cond_0
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 63
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 71
    goto :goto_9

    .line 72
    :catch_1
    move-exception p0

    .line 73
    goto :goto_6

    .line 74
    :catch_2
    move-exception p0

    .line 75
    goto :goto_7

    .line 76
    :catch_3
    move-exception p0

    .line 77
    goto :goto_8

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    goto :goto_4

    .line 80
    :goto_2
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 83
    goto :goto_3

    .line 84
    :catchall_2
    move-exception p0

    .line 85
    :try_start_8
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 88
    :goto_3
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 89
    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 92
    goto :goto_5

    .line 93
    :catchall_3
    move-exception v1

    .line 94
    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    :goto_5
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 98
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    goto :goto_9

    .line 102
    :goto_7
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 105
    goto :goto_9

    .line 106
    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    :goto_9
    return-object v0
.end method

.method public static getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;)Lcom/android/server/am/KillPolicyManager$PsiFile;
    .locals 7

    .line 1
    const-string v0, "\n"

    .line 3
    const-string v1, "Exception"

    .line 5
    const-string v2, "ActivityManager"

    .line 7
    const-string v3, ""

    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 12
    new-instance v6, Ljava/io/FileReader;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$PsiFileType;->getPath()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 27
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    if-nez p0, :cond_0

    .line 30
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    goto :goto_3

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    :goto_1
    invoke-static {p0, v4, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 43
    goto :goto_3

    .line 44
    :cond_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    move-object v4, v5

    .line 65
    goto :goto_5

    .line 66
    :catch_1
    move-exception p0

    .line 67
    move-object v4, v5

    .line 68
    goto :goto_2

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    goto :goto_5

    .line 71
    :catch_2
    move-exception p0

    .line 72
    :goto_2
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string/jumbo v6, "getPsiFile Exception"

    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    if-eqz v4, :cond_1

    .line 99
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 102
    goto :goto_3

    .line 103
    :catch_3
    move-exception p0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_3
    new-instance p0, Lcom/android/server/am/KillPolicyManager$PsiFile;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_2

    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 128
    move-result-object v0

    .line 129
    new-instance v1, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;

    .line 131
    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/KillPolicyManager$PsiFile;)V

    .line 134
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 137
    goto :goto_4

    .line 138
    :cond_2
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    .line 141
    :goto_4
    return-object p0

    .line 142
    :goto_5
    if-eqz v4, :cond_3

    .line 144
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 147
    goto :goto_6

    .line 148
    :catch_4
    move-exception v0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {v0, v3, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 157
    :cond_3
    :goto_6
    throw p0
.end method


# virtual methods
.method public final calculateLmkdStatus(I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 8
    move-result-object v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 12
    move-result-object v4

    .line 13
    if-eqz v3, :cond_19

    .line 15
    if-nez v4, :cond_0

    .line 17
    goto/16 :goto_12

    .line 19
    :cond_0
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 21
    monitor-enter v5

    .line 22
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v0

    .line 28
    const/4 v6, 0x1

    .line 29
    const/4 v7, 0x0

    .line 30
    if-lt v0, v6, :cond_1

    .line 32
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 34
    sub-int/2addr v0, v6

    .line 35
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 41
    monitor-exit v5

    .line 42
    move-object v5, v0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_11

    .line 47
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    move-object v5, v7

    .line 49
    :goto_0
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 51
    monitor-enter v8

    .line 52
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result v0

    .line 58
    const/4 v9, 0x2

    .line 59
    if-lt v0, v9, :cond_2

    .line 61
    iget-object v10, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 63
    sub-int/2addr v0, v9

    .line 64
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 70
    monitor-exit v8

    .line 71
    move-object v8, v0

    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    goto/16 :goto_10

    .line 76
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    move-object v8, v7

    .line 78
    :goto_1
    iget-object v9, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 80
    monitor-enter v9

    .line 81
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result v0

    .line 87
    const/4 v10, 0x3

    .line 88
    if-lt v0, v10, :cond_3

    .line 90
    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 92
    sub-int/2addr v0, v10

    .line 93
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/String;

    .line 99
    monitor-exit v9

    .line 100
    move-object v9, v0

    .line 101
    goto :goto_2

    .line 102
    :catchall_2
    move-exception v0

    .line 103
    goto/16 :goto_f

    .line 105
    :cond_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    move-object v9, v7

    .line 107
    :goto_2
    const/4 v10, 0x0

    .line 108
    move v11, v10

    .line 109
    :goto_3
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 111
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 113
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    if-ge v11, v0, :cond_6

    .line 121
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 123
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 125
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 131
    move-object v12, v0

    .line 132
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 134
    if-eqz v12, :cond_5

    .line 136
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 138
    if-ne v2, v0, :cond_5

    .line 140
    :try_start_5
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 142
    if-eqz v0, :cond_4

    .line 144
    const-string v0, "ActivityManager_kpm"

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    const-string/jumbo v13, "getLruProcessesLOSP() pid["

    .line 154
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string v13, "] "

    .line 162
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 167
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v7

    .line 174
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 177
    goto :goto_4

    .line 178
    :catch_0
    move-exception v0

    .line 179
    move-object v7, v12

    .line 180
    goto :goto_6

    .line 181
    :catch_1
    move-exception v0

    .line 182
    move-object v7, v12

    .line 183
    goto :goto_5

    .line 184
    :cond_4
    :goto_4
    move-object v7, v12

    .line 185
    goto :goto_7

    .line 186
    :catch_2
    move-exception v0

    .line 187
    goto :goto_6

    .line 188
    :catch_3
    move-exception v0

    .line 189
    :goto_5
    :try_start_6
    const-string v12, "ActivityManager_kpm"

    .line 191
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 198
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 200
    goto :goto_3

    .line 201
    :goto_6
    const-string v11, "ActivityManager_kpm"

    .line 203
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_6
    :goto_7
    if-nez v7, :cond_a

    .line 212
    move v11, v10

    .line 213
    :goto_8
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 215
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 217
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 222
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 223
    if-ge v11, v0, :cond_9

    .line 225
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 227
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 229
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    move-result-object v0

    .line 235
    move-object v12, v0

    .line 236
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 238
    if-eqz v12, :cond_8

    .line 240
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 242
    if-ne v2, v0, :cond_8

    .line 244
    :try_start_9
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 246
    if-eqz v0, :cond_7

    .line 248
    const-string v0, "ActivityManager_kpm"

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const-string/jumbo v13, "mRemovedProcesses pid["

    .line 258
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v13, "] "

    .line 266
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 271
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v7

    .line 278
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 281
    goto :goto_9

    .line 282
    :catch_4
    move-exception v0

    .line 283
    move-object v7, v12

    .line 284
    goto :goto_b

    .line 285
    :catch_5
    move-exception v0

    .line 286
    move-object v7, v12

    .line 287
    goto :goto_a

    .line 288
    :cond_7
    :goto_9
    move-object v7, v12

    .line 289
    goto :goto_c

    .line 290
    :catch_6
    move-exception v0

    .line 291
    goto :goto_b

    .line 292
    :catch_7
    move-exception v0

    .line 293
    :goto_a
    :try_start_a
    const-string v12, "ActivityManager_kpm"

    .line 295
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 298
    move-result-object v0

    .line 299
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 302
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 304
    goto :goto_8

    .line 305
    :goto_b
    const-string v11, "ActivityManager_kpm"

    .line 307
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 311
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_9
    :goto_c
    if-nez v7, :cond_a

    .line 316
    const-string v0, "ActivityManager_kpm"

    .line 318
    const-string/jumbo v1, "calculateLmkdStatus pid["

    .line 321
    const-string v3, "] but don\'t get process info"

    .line 323
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 327
    :cond_a
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 329
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 331
    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 333
    iget-boolean v11, v11, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 335
    sget-boolean v12, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 337
    const/16 v13, 0x80

    .line 339
    if-eqz v12, :cond_b

    .line 341
    new-instance v12, Ljava/lang/StringBuilder;

    .line 343
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 346
    const-string/jumbo v14, "pid["

    .line 349
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    const-string v2, "] "

    .line 357
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 362
    const-string v14, " adj["

    .line 364
    const-string v15, "] hasActivities "

    .line 366
    invoke-static {v0, v2, v14, v15, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 369
    const-string v2, "ActivityManager_kpm"

    .line 371
    invoke-static {v2, v12, v11}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 374
    :cond_b
    const/16 v2, -0x2710

    .line 376
    if-ne v0, v2, :cond_c

    .line 378
    return-void

    .line 379
    :cond_c
    if-eqz v5, :cond_d

    .line 381
    if-eqz v11, :cond_d

    .line 383
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 385
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_d

    .line 391
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_14:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 393
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 396
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    .line 401
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 406
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v6, "_"

    .line 411
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    move-result-object v5

    .line 421
    const-string v6, "ActivityManager_kpm"

    .line 423
    const-string/jumbo v7, "calculateLmkdStatus currentProcess Killed "

    .line 426
    invoke-static {v7, v5, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v3, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 431
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v3, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 436
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    goto/16 :goto_d

    .line 441
    :cond_d
    if-eqz v8, :cond_e

    .line 443
    if-eqz v11, :cond_e

    .line 445
    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 447
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_e

    .line 453
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_10:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 455
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 458
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 461
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 463
    iget-boolean v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 465
    if-nez v7, :cond_15

    .line 467
    const/16 v7, 0x3e9

    .line 469
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 471
    new-instance v7, Ljava/util/ArrayList;

    .line 473
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 476
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 478
    new-instance v7, Ljava/util/ArrayList;

    .line 480
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 483
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 485
    new-instance v7, Ljava/util/HashMap;

    .line 487
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 490
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 492
    new-instance v7, Ljava/util/HashMap;

    .line 494
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 497
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 499
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 501
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    new-instance v7, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

    .line 506
    invoke-direct {v7, v5, v4, v3}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 509
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->mProcessMemoryDumpThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

    .line 511
    iput-boolean v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 513
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 516
    goto :goto_d

    .line 517
    :cond_e
    if-eqz v9, :cond_f

    .line 519
    if-eqz v11, :cond_f

    .line 521
    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 523
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    move-result v5

    .line 527
    if-eqz v5, :cond_f

    .line 529
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_8:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 531
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 534
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 537
    goto :goto_d

    .line 538
    :cond_f
    const/16 v5, 0x352

    .line 540
    if-ge v0, v5, :cond_11

    .line 542
    const/16 v5, 0x32

    .line 544
    if-lt v0, v5, :cond_10

    .line 546
    const/16 v5, 0xfa

    .line 548
    if-gt v0, v5, :cond_10

    .line 550
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_12:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 552
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 555
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 558
    goto :goto_d

    .line 559
    :cond_10
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_5:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 561
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 564
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 567
    goto :goto_d

    .line 568
    :cond_11
    if-eqz v11, :cond_14

    .line 570
    const/16 v5, 0x384

    .line 572
    if-le v0, v5, :cond_12

    .line 574
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_2:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 576
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 579
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 582
    goto :goto_d

    .line 583
    :cond_12
    if-ne v0, v5, :cond_13

    .line 585
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_3:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 587
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 590
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 593
    goto :goto_d

    .line 594
    :cond_13
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_4:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 596
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 599
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 602
    goto :goto_d

    .line 603
    :cond_14
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_1:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 605
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 608
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 611
    :cond_15
    :goto_d
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 613
    iget-boolean v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 615
    if-eqz v3, :cond_16

    .line 617
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 619
    if-le v3, v0, :cond_16

    .line 621
    if-eq v0, v2, :cond_16

    .line 623
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 625
    :cond_16
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 627
    if-eqz v0, :cond_18

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    .line 631
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 634
    const-string v1, "ActivityManager_kpm"

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    .line 638
    const-string/jumbo v3, "kpmRawBigdata lmkdState : "

    .line 641
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    iget-object v3, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 646
    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 649
    move-result v3

    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    move-result-object v2

    .line 657
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string/jumbo v1, "kpmRawBigdata lmkdStateCount ["

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 669
    move-result-object v1

    .line 670
    array-length v2, v1

    .line 671
    :goto_e
    if-ge v10, v2, :cond_17

    .line 673
    aget-object v3, v1, v10

    .line 675
    iget-object v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 677
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 680
    move-result v3

    .line 681
    aget-wide v5, v5, v3

    .line 683
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 686
    const-string v3, ", "

    .line 688
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    add-int/lit8 v10, v10, 0x1

    .line 693
    goto :goto_e

    .line 694
    :cond_17
    const-string v1, "]"

    .line 696
    const-string v2, "ActivityManager_kpm"

    .line 698
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_18
    return-void

    .line 702
    :goto_f
    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 703
    throw v0

    .line 704
    :goto_10
    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 705
    throw v0

    .line 706
    :goto_11
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 707
    throw v0

    .line 708
    :cond_19
    :goto_12
    return-void
.end method

.method public final changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 3
    const-string v1, "ActivityManager_kpm"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "Policy ["

    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "]"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 31
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    move-result p1

    .line 37
    aget p1, v0, p1

    .line 39
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 41
    iget v2, v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    .line 43
    const-string v3, "ActivityManager"

    .line 45
    if-gt p1, v2, :cond_1

    .line 47
    const-string p1, "SwappinessController() - new value is lower than default value, go back to default"

    .line 49
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    move p1, v2

    .line 53
    :cond_1
    const-string/jumbo v2, "sys.sysctl.swappiness"

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    const-string v4, "SwappinessController() - changed from "

    .line 67
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget v4, v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v4, " -> "

    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput p1, v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 92
    new-instance p1, Landroid/content/Intent;

    .line 94
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 97
    const-string v0, "android"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v0, "com.samsung.KPM_STATE_CHANGED"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 113
    move-result v0

    .line 114
    const-string/jumbo v2, "kpm_level"

    .line 117
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 125
    move-result v0

    .line 126
    const-string/jumbo v2, "kpm_prev_level"

    .line 129
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "Broadcast sent: prev state = "

    .line 136
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 144
    move-result v2

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, ", cur state = "

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 155
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 158
    move-result v2

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_1

    .line 5
    array-length v2, p2

    .line 6
    if-le v2, v1, :cond_1

    .line 8
    aget-object p1, p2, v1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-string/jumbo p2, "leak.dmabuf"

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    .line 25
    iget-object p2, p1, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 27
    iput-boolean v1, p2, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    .line 29
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 31
    sget-object p2, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 33
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->onMemoryEvent(Landroid/content/Context;Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V

    .line 36
    iget-object p0, p1, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 38
    iput-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    .line 40
    :goto_0
    return-void

    .line 41
    :cond_1
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 43
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 45
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 47
    const-string v4, " [idx, peakLmkdKillAdj, [procMemInfo], [{native(Pss SwapPss Rss)}{sys}{pers}{persvc}{fore}{vis}{percept}{perceptl}{perceptm}{backup}{heavy}{servicea}{home}{prev}{serviceb}{picked}{cached}], [Process name, Process version, Package name, Package version, label, pss, swap, rss, procstats_dumpPssUssRss], ...]"

    .line 49
    const-string v5, " [idx,avg_mem,mem_avl,avg_swap,hotCnt,prKillCnt,svKillCnt,PkgCnt,PkgKillCnt,lmkdTotal,lmkdPrev,lmkdService,lmkdPicked,lmkdSeed,lmkdCri,lmk,cachedkill,emptykill,cur_state,next_state,policy_state,psi_cpu_avg,psi_mem_avg,psi_io_avg,psi_cpu_max,psi_mem_max,psi_io_max,reset_status,lmkdState,lmkdStateCnt,lmkdCnt,tiny_nxst_history,time]"

    .line 51
    if-lt v3, v1, :cond_5

    .line 53
    const-string v3, " KPM Stats(policy):"

    .line 55
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 63
    const/16 v6, 0x18

    .line 65
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 68
    move-result v3

    .line 69
    move v7, p2

    .line 70
    move v6, v0

    .line 71
    :goto_1
    const/16 v8, 0x17

    .line 73
    iget-object v9, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 75
    if-ge v6, v3, :cond_3

    .line 77
    aget-object v9, v9, v7

    .line 79
    iget v10, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 81
    invoke-virtual {v9, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v7, v7, -0x1

    .line 94
    if-gez v7, :cond_2

    .line 96
    move v7, v8

    .line 97
    :cond_2
    add-int/2addr v6, v1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 102
    const-string v6, " Heavy Pss List(policy):"

    .line 104
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    move v6, v0

    .line 111
    :goto_2
    if-ge v6, v3, :cond_5

    .line 113
    aget-object v7, v9, p2

    .line 115
    invoke-virtual {v7}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData()Ljava/lang/StringBuilder;

    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    add-int/lit8 p2, p2, -0x1

    .line 128
    if-gez p2, :cond_4

    .line 130
    move p2, v8

    .line 131
    :cond_4
    add-int/2addr v6, v1

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 135
    const/16 v3, 0x1e

    .line 137
    if-lt p2, v1, :cond_9

    .line 139
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 142
    const-string p2, " KPM Stats(bigdata):"

    .line 144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 152
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 155
    move-result p2

    .line 156
    move v5, v0

    .line 157
    move v6, v2

    .line 158
    :goto_3
    const/16 v7, 0x1d

    .line 160
    iget-object v8, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 162
    if-ge v5, p2, :cond_7

    .line 164
    aget-object v8, v8, v6

    .line 166
    iget v9, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 168
    invoke-virtual {v8, v9}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v6, v6, -0x1

    .line 181
    if-gez v6, :cond_6

    .line 183
    move v6, v7

    .line 184
    :cond_6
    add-int/2addr v5, v1

    .line 185
    goto :goto_3

    .line 186
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 189
    const-string v5, " Heavy Pss List(bigdata):"

    .line 191
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    move v4, v0

    .line 198
    :goto_4
    if-ge v4, p2, :cond_9

    .line 200
    aget-object v5, v8, v2

    .line 202
    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData()Ljava/lang/StringBuilder;

    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    add-int/lit8 v2, v2, -0x1

    .line 215
    if-gez v2, :cond_8

    .line 217
    move v2, v7

    .line 218
    :cond_8
    add-int/2addr v4, v1

    .line 219
    goto :goto_4

    .line 220
    :cond_9
    const-string p2, " "

    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const-string v2, " KPM Tunable Parameters:"

    .line 227
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 232
    const-string v4, " KPM_POLICY_ENABLE: "

    .line 234
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 239
    const-string v5, " KPM_DEBUG_ENABLE: "

    .line 241
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    move-result-object v2

    .line 245
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 247
    const-string v5, " KPM_CURRENT_STATE: "

    .line 249
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    move-result-object v2

    .line 253
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 255
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    const-string v4, " KPM_WARM_UP_TRIGGER_TUNABLE: "

    .line 269
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    sget v4, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    .line 274
    const-string v5, " KPM_POLICY_TRIGGER_TUNABLE: "

    .line 276
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move-result-object v2

    .line 280
    sget v4, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    .line 282
    const-string v5, " KPM_WARM_UP_CYCLES_TUNABLE: "

    .line 284
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    move-result-object v2

    .line 288
    sget v4, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    .line 290
    const-string v5, " KPM_MEM_CRITICAL_LOW_DETECT_ENABLE: "

    .line 292
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    move-result-object v2

    .line 296
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 299
    move-result-object v4

    .line 300
    const-string/jumbo v5, "persist.sys.kpm_cri_mem_detect"

    .line 303
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    move-result-object v4

    .line 307
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 310
    move-result v4

    .line 311
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    const-string v2, " MEMORY_CRITICAL_LOW_KILL_DETECT_ADJ : 700"

    .line 323
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    const-string v4, " MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH : "

    .line 330
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    sget v4, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 335
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    const-string v4, "%"

    .line 340
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object v2

    .line 347
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    const-string v5, " MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO : "

    .line 354
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    .line 359
    const-string v6, " MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH : "

    .line 361
    invoke-static {v2, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    move-result-object v2

    .line 365
    sget v5, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 367
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    const-string v4, " KPM_POLICY_SWAPPINESS_DEFAULT : "

    .line 384
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 389
    iget v5, v4, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    .line 391
    const-string v6, " KPM_POLICY_SWAPPINESS_CURRENT : "

    .line 393
    invoke-static {v2, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    move-result-object v2

    .line 397
    iget v4, v4, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 399
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string p2, "\n KPM Auto Restart Parameters"

    .line 414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    .line 419
    const-string v2, " - Min Triggger Size    : "

    .line 421
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 426
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    move-result-object p2

    .line 437
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance p2, Ljava/lang/StringBuilder;

    .line 442
    const-string v2, " - Never Collect Within : "

    .line 444
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    sget v2, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    .line 449
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    move-result-object p2

    .line 460
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance p2, Ljava/lang/StringBuilder;

    .line 465
    const-string v2, " - Compact Trigger Size : "

    .line 467
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    sget v2, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    .line 472
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    move-result-object p2

    .line 483
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    .line 488
    const-string v2, " - Native Flood Ratio   : "

    .line 490
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    sget v2, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 495
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    move-result-object p2

    .line 506
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    .line 511
    const-string v2, " - Syspers Flood Ratio  : "

    .line 513
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    sget v2, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 518
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    move-result-object p2

    .line 529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    const-string p2, ""

    .line 534
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 539
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 542
    move-result-object v2

    .line 543
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    const-string v4, "\n ChimeraTrigger Stats:"

    .line 548
    const-string v5, " - Last Policy Score      : "

    .line 550
    invoke-static {p1, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    move-result-object v4

    .line 554
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F

    .line 556
    const-string v6, " - Trigger Threshold Score: "

    .line 558
    invoke-static {v4, v5, p1, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    move-result-object v4

    .line 562
    sget v5, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->PMM_CRITICAL_SCORE_THRESHOLD:F

    .line 564
    const-string v6, " - Trigger Required       : "

    .line 566
    invoke-static {v4, v5, p1, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    move-result-object v4

    .line 570
    iget-boolean v5, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    .line 572
    const-string v6, " - Last Triggered Time(ms): "

    .line 574
    invoke-static {v4, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    move-result-object v4

    .line 578
    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J

    .line 580
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    move-result-object v2

    .line 587
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 595
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    const-string v2, "MemoryFloodDetector"

    .line 600
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 605
    check-cast v2, Ljava/util/ArrayList;

    .line 607
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 610
    move-result v2

    .line 611
    if-lez v2, :cond_a

    .line 613
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 615
    const-string/jumbo v4, "native"

    .line 618
    invoke-static {p1, v4, v2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 621
    :cond_a
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 623
    check-cast v2, Ljava/util/ArrayList;

    .line 625
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 628
    move-result v2

    .line 629
    if-lez v2, :cond_b

    .line 631
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 633
    const-string/jumbo v4, "sys"

    .line 636
    invoke-static {p1, v4, v2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 639
    iget-object p2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 641
    const-string/jumbo v2, "pers"

    .line 644
    invoke-static {p1, v2, p2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 647
    :cond_b
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 649
    iget-object p2, p2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 651
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    const-string v2, "ProcessSamplingManager"

    .line 656
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    const-string v2, " Constants"

    .line 661
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    const-string v2, "  MAX_SKIP="

    .line 666
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 669
    const/4 v2, 0x6

    .line 670
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 673
    const-string v2, "  MAX_SKIP_IN_USER_TRIAL="

    .line 675
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 681
    const-string v2, "  PERCENT_DEVICE_SAMPLING="

    .line 683
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 689
    const-string v2, "  SKIP_FIRST_AFTER_BOOT="

    .line 691
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 697
    const-string v2, "  MAX_SIZE_JSON_STRING="

    .line 699
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 702
    const/16 v2, 0x4c2c

    .line 704
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 707
    const-string v2, " States"

    .line 709
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    const-string v2, "  mIsSampleDevice="

    .line 714
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 717
    iget-boolean v2, p2, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    .line 719
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 722
    const-string v2, "  mSkipCount="

    .line 724
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 727
    iget v2, p2, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    .line 729
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 732
    const-string v2, "  mCurrentState="

    .line 734
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    iget p2, p2, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    .line 739
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 742
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 745
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 747
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    const-string p2, "MemoryStabilityEventManager"

    .line 752
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    const-string p2, "  mLastRealtimeMinutes="

    .line 757
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    .line 762
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastRealtimeMinutes:I

    .line 764
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 767
    const-string p2, "  mLastUptimeMinutes="

    .line 769
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastUptimeMinutes:I

    .line 774
    const-string v2, "  mLastCounter="

    .line 776
    const-string v3, "["

    .line 778
    invoke-static {p2, p1, v2, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :goto_5
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 783
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 785
    array-length v2, v2

    .line 786
    if-ge v0, v2, :cond_d

    .line 788
    if-lez v0, :cond_c

    .line 790
    const-string v2, ", "

    .line 792
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    :cond_c
    iget-object p2, p2, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 797
    aget-wide v2, p2, v0

    .line 799
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 802
    add-int/2addr v0, v1

    .line 803
    goto :goto_5

    .line 804
    :cond_d
    const-string p0, "]"

    .line 806
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public final forceChangeState(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    move-result v1

    .line 6
    sparse-switch v1, :sswitch_data_0

    .line 9
    goto :goto_0

    .line 10
    :sswitch_0
    const-string v1, "LIGHT"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    goto :goto_0

    .line 21
    :sswitch_1
    const-string v1, "HEAVY"

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :sswitch_2
    const-string v1, "CRITICAL"

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 45
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 47
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 49
    goto :goto_1

    .line 50
    :pswitch_0
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 52
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 54
    goto :goto_1

    .line 55
    :pswitch_1
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 57
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 59
    goto :goto_1

    .line 60
    :pswitch_2
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 64
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    .line 69
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 71
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 73
    return-void

    .line 74
    nop

    .line 75
    :sswitch_data_0
    .sparse-switch
        -0x5cfe9861 -> :sswitch_2
        0x416f8a7 -> :sswitch_1
        0x4513cf6 -> :sswitch_0
    .end sparse-switch

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 7
    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 9
    aget-object p0, v0, p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 7
    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 9
    aget-object p0, v0, p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getProcMemInfo()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;
    .locals 10

    .line 1
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 3
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 9
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 17
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    .line 20
    move-result-wide v2

    .line 21
    long-to-double v2, v2

    .line 22
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 24
    div-double/2addr v2, v4

    .line 25
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 27
    add-double/2addr v2, v6

    .line 28
    double-to-int v2, v2

    .line 29
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 31
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 34
    move-result-wide v2

    .line 35
    long-to-double v2, v2

    .line 36
    div-double/2addr v2, v4

    .line 37
    add-double/2addr v2, v6

    .line 38
    double-to-int v2, v2

    .line 39
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 41
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    .line 44
    move-result-wide v2

    .line 45
    long-to-double v2, v2

    .line 46
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    .line 48
    div-double/2addr v2, v8

    .line 49
    add-double/2addr v2, v6

    .line 50
    double-to-int v2, v2

    .line 51
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 53
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    .line 56
    move-result-wide v2

    .line 57
    long-to-double v2, v2

    .line 58
    div-double/2addr v2, v8

    .line 59
    add-double/2addr v2, v6

    .line 60
    double-to-int v2, v2

    .line 61
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 63
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getActiveFileSizeKb()J

    .line 66
    move-result-wide v2

    .line 67
    long-to-double v2, v2

    .line 68
    div-double/2addr v2, v4

    .line 69
    add-double/2addr v2, v6

    .line 70
    double-to-int v2, v2

    .line 71
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    .line 73
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getInactiveFileSizeKb()J

    .line 76
    move-result-wide v2

    .line 77
    long-to-double v2, v2

    .line 78
    div-double/2addr v2, v4

    .line 79
    add-double/2addr v2, v6

    .line 80
    double-to-int v2, v2

    .line 81
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    .line 83
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinFreeSizeKb()J

    .line 86
    move-result-wide v2

    .line 87
    long-to-double v2, v2

    .line 88
    div-double/2addr v2, v4

    .line 89
    add-double/2addr v2, v6

    .line 90
    double-to-int v2, v2

    .line 91
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    .line 93
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinCachedSizeKb()J

    .line 96
    move-result-wide v2

    .line 97
    long-to-double v2, v2

    .line 98
    div-double/2addr v2, v4

    .line 99
    add-double/2addr v2, v6

    .line 100
    double-to-int v2, v2

    .line 101
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    .line 103
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 106
    move-result-wide v2

    .line 107
    long-to-double v2, v2

    .line 108
    div-double/2addr v2, v4

    .line 109
    add-double/2addr v2, v6

    .line 110
    double-to-int v2, v2

    .line 111
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 113
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKReclaimableSizeKb()J

    .line 116
    move-result-wide v2

    .line 117
    long-to-double v2, v2

    .line 118
    div-double/2addr v2, v4

    .line 119
    add-double/2addr v2, v6

    .line 120
    double-to-int v2, v2

    .line 121
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    .line 123
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSReclaimableSizeKb()J

    .line 126
    move-result-wide v2

    .line 127
    long-to-double v2, v2

    .line 128
    div-double/2addr v2, v4

    .line 129
    add-double/2addr v2, v6

    .line 130
    double-to-int v2, v2

    .line 131
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    .line 133
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSUnreclaimSizeKb()J

    .line 136
    move-result-wide v2

    .line 137
    long-to-double v2, v2

    .line 138
    div-double/2addr v2, v4

    .line 139
    add-double/2addr v2, v6

    .line 140
    double-to-int v2, v2

    .line 141
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getGpuSwapSizeKb()J

    .line 146
    move-result-wide v2

    .line 147
    long-to-double v2, v2

    .line 148
    div-double/2addr v2, v4

    .line 149
    add-double/2addr v2, v6

    .line 150
    double-to-int v2, v2

    .line 151
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuSwap:I

    .line 153
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSystemCachedSizeKb()J

    .line 156
    move-result-wide v2

    .line 157
    long-to-double v2, v2

    .line 158
    div-double/2addr v2, v4

    .line 159
    add-double/2addr v2, v6

    .line 160
    double-to-int v2, v2

    .line 161
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemCached:I

    .line 163
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 166
    move-result-wide v2

    .line 167
    long-to-double v2, v2

    .line 168
    div-double/2addr v2, v4

    .line 169
    add-double/2addr v2, v6

    .line 170
    double-to-int v2, v2

    .line 171
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    .line 173
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getGpuTotalSizeKb()J

    .line 176
    move-result-wide v2

    .line 177
    long-to-double v2, v2

    .line 178
    div-double/2addr v2, v4

    .line 179
    add-double/2addr v2, v6

    .line 180
    double-to-int v2, v2

    .line 181
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuTotal:I

    .line 183
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getVmAllocUsedSizeKb()J

    .line 186
    move-result-wide v2

    .line 187
    long-to-double v2, v2

    .line 188
    div-double/2addr v2, v4

    .line 189
    add-double/2addr v2, v6

    .line 190
    double-to-int v2, v2

    .line 191
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    .line 193
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSystemUncachedSizeKb()J

    .line 196
    move-result-wide v2

    .line 197
    long-to-double v2, v2

    .line 198
    div-double/2addr v2, v4

    .line 199
    add-double/2addr v2, v6

    .line 200
    double-to-int v2, v2

    .line 201
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemUncached:I

    .line 203
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 205
    if-gtz v2, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 210
    move-result-wide v2

    .line 211
    long-to-double v2, v2

    .line 212
    div-double/2addr v2, v4

    .line 213
    add-double/2addr v2, v6

    .line 214
    double-to-int v0, v2

    .line 215
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 217
    :cond_0
    return-object v1
.end method

.method public final reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 7
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 9
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 11
    const-string v5, "ActivityManager_kpm"

    .line 13
    if-nez v4, :cond_0

    .line 15
    const-string/jumbo v0, "it has \'zero\' samples."

    .line 18
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    .line 24
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 27
    const-string v7, "TYPE"

    .line 29
    move/from16 v8, p1

    .line 31
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string v7, "CRST"

    .line 36
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 38
    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v7, "NXST"

    .line 47
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 49
    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v7, "PLST"

    .line 58
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 60
    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v7, "DRAM"

    .line 69
    iget v8, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    .line 71
    mul-int/lit16 v8, v8, 0x400

    .line 73
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v7, "SWPT"

    .line 78
    iget v8, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 80
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v7, "FCMA"

    .line 85
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 87
    int-to-double v8, v8

    .line 88
    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 90
    int-to-double v10, v10

    .line 91
    div-double/2addr v8, v10

    .line 92
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 94
    add-double/2addr v8, v10

    .line 95
    double-to-int v8, v8

    .line 96
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string v7, "AVMA"

    .line 101
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 103
    int-to-double v8, v8

    .line 104
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 106
    int-to-double v12, v12

    .line 107
    div-double/2addr v8, v12

    .line 108
    add-double/2addr v8, v10

    .line 109
    double-to-int v8, v8

    .line 110
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v7, "SWUA"

    .line 115
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 117
    int-to-double v8, v8

    .line 118
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 120
    int-to-double v12, v12

    .line 121
    div-double/2addr v8, v12

    .line 122
    add-double/2addr v8, v10

    .line 123
    double-to-int v8, v8

    .line 124
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v7, "DISP"

    .line 129
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    .line 131
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v7, "PCKC"

    .line 136
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 138
    int-to-double v8, v8

    .line 139
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 141
    int-to-double v12, v12

    .line 142
    div-double/2addr v8, v12

    .line 143
    add-double/2addr v8, v10

    .line 144
    double-to-int v8, v8

    .line 145
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string v7, "PCKA"

    .line 150
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 152
    int-to-double v8, v8

    .line 153
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 155
    int-to-double v12, v12

    .line 156
    div-double/2addr v8, v12

    .line 157
    add-double/2addr v8, v10

    .line 158
    double-to-int v8, v8

    .line 159
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    const-string v7, "SDBC"

    .line 164
    const/4 v8, 0x0

    .line 165
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    const-string v7, "CCHC"

    .line 170
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 172
    int-to-double v12, v9

    .line 173
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 175
    int-to-double v14, v9

    .line 176
    div-double/2addr v12, v14

    .line 177
    add-double/2addr v12, v10

    .line 178
    double-to-int v9, v12

    .line 179
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v7, "CCHA"

    .line 184
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 186
    int-to-double v12, v9

    .line 187
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 189
    int-to-double v14, v9

    .line 190
    div-double/2addr v12, v14

    .line 191
    add-double/2addr v12, v10

    .line 192
    double-to-int v9, v12

    .line 193
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string v7, "LNCT"

    .line 198
    new-instance v9, Lorg/json/JSONArray;

    .line 200
    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 203
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 205
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 208
    move-result-object v9

    .line 209
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 211
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 214
    move-result-object v9

    .line 215
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 217
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v7, "LPKC"

    .line 226
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 228
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    const-string v7, "PKPC"

    .line 233
    iget v9, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 235
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    const-string v7, "SKSC"

    .line 240
    iget v9, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 242
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    const-string v7, "SKPC"

    .line 247
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 249
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    const-string v7, "VFAK"

    .line 254
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    .line 256
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    const-string v7, "HPAK"

    .line 261
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    .line 263
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    const-string v7, "PRAK"

    .line 268
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 270
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 273
    const-string v7, "SRVK"

    .line 275
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 277
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 280
    const-string v7, "PCKK"

    .line 282
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 284
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 287
    const-string v7, "SBAK"

    .line 289
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 292
    const-string v7, "CHMK"

    .line 294
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 296
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    const-string v3, "CHEK"

    .line 301
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    .line 303
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    const-string v3, "CHNK"

    .line 308
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 310
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string v3, "CACK"

    .line 315
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    .line 317
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    const-string v3, "APPC"

    .line 322
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 324
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v3, "MEDK"

    .line 329
    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 331
    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 334
    const-string v3, "CRIK"

    .line 336
    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 338
    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 341
    const-string v3, "LMKK"

    .line 343
    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 345
    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 348
    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 350
    if-eqz v3, :cond_1

    .line 352
    const-string v3, "SWPN"

    .line 354
    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 356
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 358
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    goto :goto_0

    .line 362
    :catch_0
    const/4 v4, 0x0

    .line 363
    goto/16 :goto_10

    .line 365
    :cond_1
    :goto_0
    new-instance v3, Lorg/json/JSONArray;

    .line 367
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 370
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 372
    const/4 v9, 0x1

    .line 373
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 375
    if-eqz v7, :cond_7

    .line 377
    sget-object v7, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 379
    array-length v15, v7

    .line 380
    move v4, v8

    .line 381
    :goto_1
    const-wide/16 v16, 0x0

    .line 383
    if-ge v4, v15, :cond_3

    .line 385
    aget-object v12, v7, v4

    .line 387
    iget-object v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 389
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 392
    move-result v10

    .line 393
    if-eqz v10, :cond_2

    .line 395
    iget-object v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 397
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    move-result-object v10

    .line 401
    check-cast v10, [J

    .line 403
    aget-wide v11, v10, v8

    .line 405
    aget-wide v16, v10, v9

    .line 407
    add-long v11, v11, v16

    .line 409
    long-to-double v11, v11

    .line 410
    div-double/2addr v11, v13

    .line 411
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 413
    add-double v11, v11, v16

    .line 415
    double-to-long v11, v11

    .line 416
    const/16 v16, 0x3

    .line 418
    aget-wide v16, v10, v16

    .line 420
    move-wide/from16 v13, v16

    .line 422
    goto :goto_2

    .line 423
    :cond_2
    move-wide/from16 v11, v16

    .line 425
    move-wide v13, v11

    .line 426
    :goto_2
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 429
    move-result-object v10

    .line 430
    invoke-virtual {v10, v13, v14}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 433
    add-int/lit8 v4, v4, 0x1

    .line 435
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 437
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 439
    goto :goto_1

    .line 440
    :cond_3
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 442
    array-length v7, v4

    .line 443
    move v10, v8

    .line 444
    :goto_3
    if-ge v10, v7, :cond_5

    .line 446
    aget-object v11, v4, v10

    .line 448
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 450
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 453
    move-result v12

    .line 454
    if-eqz v12, :cond_4

    .line 456
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 458
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    move-result-object v11

    .line 462
    check-cast v11, [J

    .line 464
    aget-wide v11, v11, v9

    .line 466
    long-to-double v11, v11

    .line 467
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 469
    div-double/2addr v11, v13

    .line 470
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 472
    add-double/2addr v11, v13

    .line 473
    double-to-long v11, v11

    .line 474
    goto :goto_4

    .line 475
    :cond_4
    move-wide/from16 v11, v16

    .line 477
    :goto_4
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 480
    add-int/lit8 v10, v10, 0x1

    .line 482
    goto :goto_3

    .line 483
    :cond_5
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 485
    array-length v7, v4

    .line 486
    move v10, v8

    .line 487
    :goto_5
    if-ge v10, v7, :cond_7

    .line 489
    aget-object v11, v4, v10

    .line 491
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 493
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 496
    move-result v12

    .line 497
    if-eqz v12, :cond_6

    .line 499
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 501
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    move-result-object v11

    .line 505
    check-cast v11, [J

    .line 507
    const/4 v12, 0x2

    .line 508
    aget-wide v13, v11, v12

    .line 510
    long-to-double v11, v13

    .line 511
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 513
    div-double/2addr v11, v13

    .line 514
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 516
    add-double/2addr v11, v13

    .line 517
    double-to-long v11, v11

    .line 518
    goto :goto_6

    .line 519
    :cond_6
    move-wide/from16 v11, v16

    .line 521
    :goto_6
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 524
    add-int/lit8 v10, v10, 0x1

    .line 526
    goto :goto_5

    .line 527
    :cond_7
    const-string v4, "PRST"

    .line 529
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    new-instance v3, Lorg/json/JSONArray;

    .line 534
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 537
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 539
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 541
    int-to-double v12, v4

    .line 542
    div-double/2addr v10, v12

    .line 543
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 545
    add-double/2addr v10, v12

    .line 546
    double-to-int v4, v10

    .line 547
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 550
    move-result-object v4

    .line 551
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 553
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 555
    int-to-double v14, v7

    .line 556
    div-double/2addr v10, v14

    .line 557
    add-double/2addr v10, v12

    .line 558
    double-to-int v7, v10

    .line 559
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 562
    move-result-object v4

    .line 563
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 565
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 567
    int-to-double v14, v7

    .line 568
    div-double/2addr v10, v14

    .line 569
    add-double/2addr v10, v12

    .line 570
    double-to-int v7, v10

    .line 571
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 574
    move-result-object v4

    .line 575
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 577
    add-double/2addr v10, v12

    .line 578
    double-to-int v7, v10

    .line 579
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 582
    move-result-object v4

    .line 583
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 585
    add-double/2addr v10, v12

    .line 586
    double-to-int v7, v10

    .line 587
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 590
    move-result-object v4

    .line 591
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 593
    add-double/2addr v10, v12

    .line 594
    double-to-int v7, v10

    .line 595
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 598
    const-string v4, "PSIS"

    .line 600
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    invoke-static {v1, v6}, Lcom/android/server/am/KillPolicyManager;->fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V

    .line 606
    const-string v3, "STAY"

    .line 608
    iget-wide v10, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 610
    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 613
    const-string v3, "ELAP"

    .line 615
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 617
    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    .line 619
    sub-long/2addr v10, v12

    .line 620
    const-wide/16 v12, 0x3e8

    .line 622
    div-long/2addr v10, v12

    .line 623
    const-wide/16 v14, 0x3c

    .line 625
    div-long/2addr v10, v14

    .line 626
    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 629
    const-string v3, "UPTM"

    .line 631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 634
    move-result-wide v10

    .line 635
    div-long/2addr v10, v12

    .line 636
    div-long/2addr v10, v14

    .line 637
    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 640
    const-string v3, "RSTF"

    .line 642
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 644
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 647
    const-string v3, "KVER"

    .line 649
    const-string v4, "4.7"

    .line 651
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    const-string v3, "LS"

    .line 656
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 658
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 661
    move-result v4

    .line 662
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 665
    new-instance v3, Lorg/json/JSONArray;

    .line 667
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 670
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 673
    move-result-object v4

    .line 674
    array-length v7, v4

    .line 675
    move v10, v8

    .line 676
    :goto_7
    if-ge v10, v7, :cond_8

    .line 678
    aget-object v11, v4, v10

    .line 680
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 682
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 685
    move-result v11

    .line 686
    aget-wide v11, v12, v11

    .line 688
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 691
    add-int/lit8 v10, v10, 0x1

    .line 693
    goto :goto_7

    .line 694
    :cond_8
    const-string v4, "LSC"

    .line 696
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    new-instance v3, Lorg/json/JSONArray;

    .line 701
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 704
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 707
    move-result-object v4

    .line 708
    array-length v7, v4

    .line 709
    move v10, v8

    .line 710
    :goto_8
    if-ge v10, v7, :cond_9

    .line 712
    aget-object v11, v4, v10

    .line 714
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 716
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 719
    move-result v11

    .line 720
    aget-wide v11, v12, v11

    .line 722
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 725
    add-int/lit8 v10, v10, 0x1

    .line 727
    goto :goto_8

    .line 728
    :cond_9
    const-string v4, "LC"

    .line 730
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    new-instance v3, Lorg/json/JSONArray;

    .line 735
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 738
    move v4, v8

    .line 739
    :goto_9
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 741
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 744
    move-result v7

    .line 745
    if-ge v4, v7, :cond_b

    .line 747
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 749
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 752
    move-result-object v7

    .line 753
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 756
    const/4 v7, 0x5

    .line 757
    if-le v4, v7, :cond_a

    .line 759
    goto :goto_a

    .line 760
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 762
    goto :goto_9

    .line 763
    :cond_b
    :goto_a
    const-string v4, "LDI"

    .line 765
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    new-instance v3, Lorg/json/JSONArray;

    .line 770
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 773
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 775
    if-eqz v4, :cond_d

    .line 777
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 780
    move-result v4

    .line 781
    if-lez v4, :cond_d

    .line 783
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 785
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 788
    move v4, v8

    .line 789
    :goto_b
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 791
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 794
    move-result v7

    .line 795
    if-ge v4, v7, :cond_d

    .line 797
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 799
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 802
    move-result-object v7

    .line 803
    check-cast v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 805
    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 807
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 809
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 812
    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 814
    if-eqz v10, :cond_c

    .line 816
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 819
    goto :goto_c

    .line 820
    :cond_c
    iget-wide v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 822
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 825
    move-result-object v10

    .line 826
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 829
    :goto_c
    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 831
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 833
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 836
    move-result-object v10

    .line 837
    iget-object v11, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 839
    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 841
    long-to-double v11, v11

    .line 842
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 844
    div-double/2addr v11, v13

    .line 845
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 847
    add-double v11, v11, v16

    .line 849
    double-to-int v11, v11

    .line 850
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 853
    move-result-object v10

    .line 854
    iget-object v11, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 856
    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 858
    long-to-double v11, v11

    .line 859
    div-double/2addr v11, v13

    .line 860
    add-double v11, v11, v16

    .line 862
    double-to-int v11, v11

    .line 863
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 866
    move-result-object v10

    .line 867
    iget-object v7, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 869
    iget-wide v11, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 871
    long-to-double v11, v11

    .line 872
    div-double/2addr v11, v13

    .line 873
    add-double v11, v11, v16

    .line 875
    double-to-int v7, v11

    .line 876
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 879
    add-int/lit8 v4, v4, 0x1

    .line 881
    goto :goto_b

    .line 882
    :cond_d
    const-string v4, "LHI"

    .line 884
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    new-instance v3, Lorg/json/JSONArray;

    .line 889
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 892
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 894
    if-eqz v4, :cond_e

    .line 896
    iget v4, v4, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 898
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 901
    move-result-object v4

    .line 902
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 904
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 906
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 909
    move-result-object v4

    .line 910
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 912
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 914
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 917
    move-result-object v4

    .line 918
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 920
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 922
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 925
    move-result-object v4

    .line 926
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 928
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    .line 930
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 933
    move-result-object v4

    .line 934
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 936
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    .line 938
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 941
    move-result-object v4

    .line 942
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 944
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    .line 946
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 949
    move-result-object v4

    .line 950
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 952
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    .line 954
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 957
    move-result-object v4

    .line 958
    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 960
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 963
    move-result-object v4

    .line 964
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 966
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 968
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 971
    move-result-object v4

    .line 972
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 974
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    .line 976
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 979
    move-result-object v4

    .line 980
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 982
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    .line 984
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 987
    move-result-object v4

    .line 988
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 990
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    .line 992
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 995
    move-result-object v4

    .line 996
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 999
    move-result-object v4

    .line 1000
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1002
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuSwap:I

    .line 1004
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1007
    move-result-object v4

    .line 1008
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1010
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemCached:I

    .line 1012
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1015
    move-result-object v4

    .line 1016
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1018
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    .line 1020
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1023
    move-result-object v4

    .line 1024
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1026
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuTotal:I

    .line 1028
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1031
    move-result-object v4

    .line 1032
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1034
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    .line 1036
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1039
    move-result-object v4

    .line 1040
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1042
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemUncached:I

    .line 1044
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1047
    :cond_e
    const-string v4, "PMI"

    .line 1049
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    new-instance v3, Lorg/json/JSONArray;

    .line 1054
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1057
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 1059
    if-eqz v4, :cond_10

    .line 1061
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 1063
    array-length v7, v4

    .line 1064
    move v10, v8

    .line 1065
    :goto_d
    if-ge v10, v7, :cond_10

    .line 1067
    aget-object v11, v4, v10

    .line 1069
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 1071
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1074
    move-result v12

    .line 1075
    if-eqz v12, :cond_f

    .line 1077
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 1079
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    move-result-object v11

    .line 1083
    check-cast v11, [J

    .line 1085
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    aget-wide v12, v11, v8

    .line 1090
    long-to-double v12, v12

    .line 1091
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    .line 1093
    div-double/2addr v12, v14

    .line 1094
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 1096
    add-double v12, v12, v16

    .line 1098
    double-to-int v12, v12

    .line 1099
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1102
    move-result-object v12

    .line 1103
    aget-wide v14, v11, v9

    .line 1105
    long-to-double v13, v14

    .line 1106
    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    .line 1108
    div-double v13, v13, v18

    .line 1110
    add-double v13, v13, v16

    .line 1112
    double-to-int v13, v13

    .line 1113
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1116
    move-result-object v12

    .line 1117
    const/4 v13, 0x2

    .line 1118
    aget-wide v14, v11, v13

    .line 1120
    long-to-double v14, v14

    .line 1121
    div-double v14, v14, v18

    .line 1123
    add-double v14, v14, v16

    .line 1125
    double-to-int v11, v14

    .line 1126
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1129
    goto :goto_e

    .line 1130
    :cond_f
    const/4 v13, 0x2

    .line 1131
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 1133
    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    .line 1135
    const/4 v11, -0x1

    .line 1136
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1139
    move-result-object v12

    .line 1140
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1143
    move-result-object v12

    .line 1144
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1147
    :goto_e
    add-int/lit8 v10, v10, 0x1

    .line 1149
    goto :goto_d

    .line 1150
    :cond_10
    const-string v2, "LHMA"

    .line 1152
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1155
    new-instance v2, Lorg/json/JSONArray;

    .line 1157
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1162
    if-eqz v1, :cond_11

    .line 1164
    :goto_f
    :try_start_1
    array-length v3, v1

    .line 1165
    if-ge v8, v3, :cond_11

    .line 1167
    aget-object v3, v1, v8

    .line 1169
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1172
    move-result v3

    .line 1173
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1176
    add-int/lit8 v8, v8, 0x1

    .line 1178
    goto :goto_f

    .line 1179
    :cond_11
    const-string v1, "TNXST"

    .line 1181
    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1184
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1187
    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1188
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1191
    move-result v1

    .line 1192
    sub-int/2addr v1, v9

    .line 1193
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1196
    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1197
    goto :goto_11

    .line 1198
    :catch_1
    :goto_10
    const-string/jumbo v1, "failed to create the KPUT"

    .line 1201
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    move-object v1, v4

    .line 1205
    :goto_11
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method public final declared-synchronized sendHqmBigData(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "Success to report \'KPUT\' : "

    .line 3
    const-string v4, "KPUT"

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 8
    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 12
    const-string v2, "HqmManagerService"

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/os/SemHqmManager;

    .line 20
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 27
    if-nez v1, :cond_2

    .line 29
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 31
    if-eqz p1, :cond_1

    .line 33
    const-string p1, "ActivityManager_kpm"

    .line 35
    const-string v0, "HQM services is not working"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_2
    if-eqz p1, :cond_4

    .line 44
    :try_start_1
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 46
    const-string v3, "Sluggish"

    .line 48
    const-string/jumbo v5, "ph"

    .line 51
    const-string v6, "1.1"

    .line 53
    const-string/jumbo v7, "sec"

    .line 56
    const-string v8, ""

    .line 58
    const-string v10, ""

    .line 60
    move-object v9, p1

    .line 61
    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    move-result v1

    .line 65
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 67
    if-eqz v2, :cond_5

    .line 69
    if-eqz v1, :cond_3

    .line 71
    const-string v1, "ActivityManager_kpm"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const-string p1, "ActivityManager_kpm"

    .line 83
    const-string/jumbo v0, "failed to send to server"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 92
    if-eqz p1, :cond_5

    .line 94
    const-string p1, "ActivityManager_kpm"

    .line 96
    const-string/jumbo v0, "failed to send to server."

    .line 99
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_5
    :goto_1
    monitor-exit p0

    .line 103
    return-void

    .line 104
    :goto_2
    monitor-exit p0

    .line 105
    throw p1
.end method
