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

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 20
    .line 21
    const-string/jumbo v3, "com.samsung.android.lool"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "resetType"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 40
    .line 41
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const-string/jumbo v3, "nativeStart"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 56
    .line 57
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const-string/jumbo v3, "nativeEnd"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 72
    .line 73
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const-string/jumbo v3, "sysPersStart"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 88
    .line 89
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const-string/jumbo v3, "sysPersEnd"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-string/jumbo v2, "pmmCyclePlatform"

    .line 104
    .line 105
    .line 106
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 107
    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 112
    .line 113
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    .line 114
    .line 115
    add-int/2addr v2, v1

    .line 116
    const-string/jumbo v1, "pmmCycleKernel"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    .line 127
    .line 128
    sub-long/2addr v1, v3

    .line 129
    const-string/jumbo v3, "uptimeSystemBoot"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    .line 139
    .line 140
    const-string/jumbo p0, "reportResetState : "

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const-string p1, "ActivityManager_kpm"

    .line 148
    .line 149
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    const/16 v2, 0x91

    .line 6
    .line 7
    filled-new-array {v0, v0, v1, v1, v2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    .line 12
    .line 13
    const-string/jumbo v1, "ro.slmk.kpm_policy_enable"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "true"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 31
    .line 32
    const-string/jumbo v3, "ro.slmk.kpm_warm_up_trigger"

    .line 33
    .line 34
    .line 35
    const-string v4, "20"

    .line 36
    .line 37
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sput v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    .line 46
    .line 47
    const/16 v3, 0x32

    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string/jumbo v4, "ro.slmk.kpm_policy_trigger"

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    sput v3, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    .line 65
    .line 66
    const-string/jumbo v3, "ro.slmk.kpm_warm_up_cycles"

    .line 67
    .line 68
    .line 69
    const-string v4, "3"

    .line 70
    .line 71
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    sput v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    .line 80
    .line 81
    const-string/jumbo v3, "ro.slmk.kpm_boot_enable"

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    sput-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    .line 93
    .line 94
    new-instance v3, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    sput-object v3, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    .line 100
    .line 101
    const-string/jumbo v3, "ro.slmk.kpm_use_cri_pkg_ratio"

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    sput-boolean v3, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    .line 113
    .line 114
    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 115
    .line 116
    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->brHandlerThread:Lcom/android/server/ServiceThread;

    .line 120
    .line 121
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->brHandler:Landroid/os/Handler;

    .line 122
    .line 123
    const-string/jumbo v0, "persist.sys.kpm_onoff"

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    .line 135
    .line 136
    const-wide/16 v2, 0x1

    .line 137
    .line 138
    const-wide/16 v4, 0x64

    .line 139
    .line 140
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    .line 145
    .line 146
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

    .line 151
    .line 152
    const-wide/16 v2, 0x2

    .line 153
    .line 154
    const-wide/16 v4, 0x3e8

    .line 155
    .line 156
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    .line 161
    .line 162
    const-wide/16 v2, 0x0

    .line 163
    .line 164
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    .line 169
    .line 170
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    .line 175
    .line 176
    const/16 v0, 0xa

    .line 177
    .line 178
    sput v0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 179
    .line 180
    const/16 v0, 0xc

    .line 181
    .line 182
    sput v0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    .line 183
    .line 184
    const/16 v0, 0x12c

    .line 185
    .line 186
    sput v0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    .line 187
    .line 188
    const/16 v0, 0x1e

    .line 189
    .line 190
    sput v0, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 191
    .line 192
    sput v0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 193
    .line 194
    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    .line 195
    .line 196
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/kpm"

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 24
    .line 25
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 26
    .line 27
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 28
    .line 29
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 30
    .line 31
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 32
    .line 33
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 34
    .line 35
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 38
    .line 39
    const/16 v0, 0x18

    .line 40
    .line 41
    new-array v0, v0, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 44
    .line 45
    const/16 v0, 0x1e

    .line 46
    .line 47
    new-array v0, v0, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 57
    .line 58
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 64
    .line 65
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 71
    .line 72
    const-string v0, ""

    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v3, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    .line 90
    .line 91
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    .line 92
    .line 93
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    .line 94
    .line 95
    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    .line 96
    .line 97
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 101
    .line 102
    new-instance v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager$SwappinessController;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 108
    .line 109
    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 115
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    .line 121
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v3

    .line 126
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    .line 133
    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    .line 139
    .line 140
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    .line 141
    .line 142
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    .line 143
    .line 144
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    .line 145
    .line 146
    new-instance v0, Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    .line 152
    .line 153
    new-instance v0, Lcom/android/server/am/KillPolicyManager$1;

    .line 154
    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/KillPolicyManager$1;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mIdleModeReceiver:Lcom/android/server/am/KillPolicyManager$1;

    .line 160
    .line 161
    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 162
    .line 163
    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 164
    .line 165
    .line 166
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 167
    .line 168
    new-instance v0, Lcom/android/server/am/KillPolicyManager$1;

    .line 169
    .line 170
    const/4 v1, 0x1

    .line 171
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/KillPolicyManager$1;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->policyBroadcastReceiver:Lcom/android/server/am/KillPolicyManager$1;

    .line 175
    .line 176
    const-string p0, "ActivityManager_kpm"

    .line 177
    .line 178
    const-string v0, "KillPolicyManager()"

    .line 179
    .line 180
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public static changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 15
    .line 16
    iget-wide v5, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 17
    .line 18
    add-long/2addr v1, v5

    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 29
    .line 30
    int-to-long v5, p0

    .line 31
    add-long/2addr v0, v5

    .line 32
    cmp-long p0, v0, v3

    .line 33
    .line 34
    if-lez p0, :cond_2

    .line 35
    .line 36
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 40
    .line 41
    :goto_0
    return-object p0
.end method

.method public static fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONArray;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    .line 11
    .line 12
    const/high16 v2, 0x42c80000    # 100.0f

    .line 13
    .line 14
    mul-float/2addr v1, v2

    .line 15
    float-to-double v3, v1

    .line 16
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 17
    .line 18
    add-double/2addr v3, v5

    .line 19
    double-to-int v1, v3

    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    .line 25
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

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    .line 35
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

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "CHWT"

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    aget v2, v0, v1

    .line 53
    .line 54
    const-string v3, "CHTC"

    .line 55
    .line 56
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    aget v3, v0, v2

    .line 61
    .line 62
    const-string v4, "CLTC"

    .line 63
    .line 64
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    aget v0, v0, v3

    .line 69
    .line 70
    const-string v4, "CBTC"

    .line 71
    .line 72
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 76
    .line 77
    aget v1, v0, v1

    .line 78
    .line 79
    const-string v4, "CHAC"

    .line 80
    .line 81
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    aget v1, v0, v2

    .line 85
    .line 86
    const-string v4, "CLAC"

    .line 87
    .line 88
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    aget v0, v0, v3

    .line 92
    .line 93
    const-string v1, "CBAC"

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    iget v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 99
    .line 100
    const-string v1, "CKLC"

    .line 101
    .line 102
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    new-instance v0, Lorg/json/JSONArray;

    .line 106
    .line 107
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 108
    .line 109
    .line 110
    move v1, v2

    .line 111
    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    .line 112
    .line 113
    array-length v4, v3

    .line 114
    if-ge v1, v4, :cond_0

    .line 115
    .line 116
    aget v3, v3, v1

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 119
    .line 120
    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    const-string v1, "CKAI"

    .line 125
    .line 126
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    new-instance v0, Lorg/json/JSONArray;

    .line 130
    .line 131
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 132
    .line 133
    .line 134
    :goto_1
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    .line 135
    .line 136
    array-length v3, v1

    .line 137
    if-ge v2, v3, :cond_1

    .line 138
    .line 139
    aget v1, v1, v2

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 142
    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_1
    const-string p0, "CKGI"

    .line 148
    .line 149
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    :cond_2
    return-void
.end method

.method public static fillLmkdCounts([J)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v1, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 7
    .line 8
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

    .line 15
    .line 16
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .line 17
    .line 18
    sget-object v7, Lcom/android/server/am/SecLmkdStats;->LMKD_SLOT_ADJ_VALUES:[I

    .line 19
    .line 20
    const/16 v8, 0x11

    .line 21
    .line 22
    if-ge v6, v8, :cond_0

    .line 23
    .line 24
    aget v7, v7, v6

    .line 25
    .line 26
    aget-object v8, v0, v3

    .line 27
    .line 28
    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->getADJ()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-gt v7, v8, :cond_0

    .line 33
    .line 34
    invoke-static {v5, v6, v4, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 35
    .line 36
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

    .line 43
    .line 44
    add-int/lit8 v3, v3, -0x1

    .line 45
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

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 12
    .line 13
    const/16 v2, 0x2000

    .line 14
    .line 15
    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    const-string v3, "[ :]+"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    array-length v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    const/4 v4, 0x2

    .line 38
    if-lt v3, v4, :cond_0

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    :try_start_3
    aget-object v3, v2, v3

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    aget-object v2, v2, v4

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
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

    .line 61
    .line 62
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

    .line 66
    .line 67
    .line 68
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 69
    .line 70
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

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catchall_2
    move-exception p0

    .line 85
    :try_start_8
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
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

    .line 90
    .line 91
    .line 92
    goto :goto_5

    .line 93
    :catchall_3
    move-exception v1

    .line 94
    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
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

    .line 99
    .line 100
    .line 101
    goto :goto_9

    .line 102
    :goto_7
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    goto :goto_9

    .line 106
    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_9
    return-object v0
.end method

.method public static getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;)Lcom/android/server/am/KillPolicyManager$PsiFile;
    .locals 7

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const-string v1, "Exception"

    .line 4
    .line 5
    const-string v2, "ActivityManager"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 11
    .line 12
    new-instance v6, Ljava/io/FileReader;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$PsiFileType;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_3

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-static {p0, v4, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
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

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string/jumbo v6, "getPsiFile Exception"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    .line 96
    .line 97
    if-eqz v4, :cond_1

    .line 98
    .line 99
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catch_3
    move-exception p0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_3
    new-instance p0, Lcom/android/server/am/KillPolicyManager$PsiFile;

    .line 111
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_2

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v1, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/KillPolicyManager$PsiFile;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_2
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    .line 140
    .line 141
    :goto_4
    return-object p0

    .line 142
    :goto_5
    if-eqz v4, :cond_3

    .line 143
    .line 144
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :catch_4
    move-exception v0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v3, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 155
    .line 156
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

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-eqz v3, :cond_19

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_12

    .line 18
    .line 19
    :cond_0
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 20
    .line 21
    monitor-enter v5

    .line 22
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v6, 0x1

    .line 29
    const/4 v7, 0x0

    .line 30
    if-lt v0, v6, :cond_1

    .line 31
    .line 32
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 33
    .line 34
    sub-int/2addr v0, v6

    .line 35
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
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

    .line 46
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

    .line 50
    .line 51
    monitor-enter v8

    .line 52
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v9, 0x2

    .line 59
    if-lt v0, v9, :cond_2

    .line 60
    .line 61
    iget-object v10, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 62
    .line 63
    sub-int/2addr v0, v9

    .line 64
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
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

    .line 75
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

    .line 79
    .line 80
    monitor-enter v9

    .line 81
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v10, 0x3

    .line 88
    if-lt v0, v10, :cond_3

    .line 89
    .line 90
    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 91
    .line 92
    sub-int/2addr v0, v10

    .line 93
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/String;

    .line 98
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

    .line 104
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

    .line 110
    .line 111
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    if-ge v11, v0, :cond_6

    .line 120
    .line 121
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    move-object v12, v0

    .line 132
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 133
    .line 134
    if-eqz v12, :cond_5

    .line 135
    .line 136
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 137
    .line 138
    if-ne v2, v0, :cond_5

    .line 139
    .line 140
    :try_start_5
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    const-string v0, "ActivityManager_kpm"

    .line 145
    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string/jumbo v13, "getLruProcessesLOSP() pid["

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v13, "] "

    .line 161
    .line 162
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 175
    .line 176
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

    .line 190
    .line 191
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 196
    .line 197
    .line 198
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :goto_6
    const-string v11, "ActivityManager_kpm"

    .line 202
    .line 203
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :cond_6
    :goto_7
    if-nez v7, :cond_a

    .line 211
    .line 212
    move v11, v10

    .line 213
    :goto_8
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 216
    .line 217
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 220
    .line 221
    .line 222
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 223
    if-ge v11, v0, :cond_9

    .line 224
    .line 225
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 228
    .line 229
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    move-object v12, v0

    .line 236
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 237
    .line 238
    if-eqz v12, :cond_8

    .line 239
    .line 240
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 241
    .line 242
    if-ne v2, v0, :cond_8

    .line 243
    .line 244
    :try_start_9
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 245
    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    const-string v0, "ActivityManager_kpm"

    .line 249
    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string/jumbo v13, "mRemovedProcesses pid["

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v13, "] "

    .line 265
    .line 266
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 279
    .line 280
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

    .line 294
    .line 295
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 300
    .line 301
    .line 302
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :goto_b
    const-string v11, "ActivityManager_kpm"

    .line 306
    .line 307
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    :cond_9
    :goto_c
    if-nez v7, :cond_a

    .line 315
    .line 316
    const-string v0, "ActivityManager_kpm"

    .line 317
    .line 318
    const-string/jumbo v1, "calculateLmkdStatus pid["

    .line 319
    .line 320
    .line 321
    const-string v3, "] but don\'t get process info"

    .line 322
    .line 323
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :cond_a
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 328
    .line 329
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 330
    .line 331
    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 332
    .line 333
    iget-boolean v11, v11, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 334
    .line 335
    sget-boolean v12, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 336
    .line 337
    const/16 v13, 0x80

    .line 338
    .line 339
    if-eqz v12, :cond_b

    .line 340
    .line 341
    new-instance v12, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 344
    .line 345
    .line 346
    const-string/jumbo v14, "pid["

    .line 347
    .line 348
    .line 349
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v2, "] "

    .line 356
    .line 357
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 361
    .line 362
    const-string v14, " adj["

    .line 363
    .line 364
    const-string v15, "] hasActivities "

    .line 365
    .line 366
    invoke-static {v0, v2, v14, v15, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 367
    .line 368
    .line 369
    const-string v2, "ActivityManager_kpm"

    .line 370
    .line 371
    invoke-static {v2, v12, v11}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 372
    .line 373
    .line 374
    :cond_b
    const/16 v2, -0x2710

    .line 375
    .line 376
    if-ne v0, v2, :cond_c

    .line 377
    .line 378
    return-void

    .line 379
    :cond_c
    if-eqz v5, :cond_d

    .line 380
    .line 381
    if-eqz v11, :cond_d

    .line 382
    .line 383
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_d

    .line 390
    .line 391
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_14:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 392
    .line 393
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 394
    .line 395
    .line 396
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 397
    .line 398
    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v6, "_"

    .line 410
    .line 411
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    const-string v6, "ActivityManager_kpm"

    .line 422
    .line 423
    const-string/jumbo v7, "calculateLmkdStatus currentProcess Killed "

    .line 424
    .line 425
    .line 426
    invoke-static {v7, v5, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object v3, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    iget-object v3, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    goto/16 :goto_d

    .line 440
    .line 441
    :cond_d
    if-eqz v8, :cond_e

    .line 442
    .line 443
    if-eqz v11, :cond_e

    .line 444
    .line 445
    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_e

    .line 452
    .line 453
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_10:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 454
    .line 455
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 456
    .line 457
    .line 458
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 459
    .line 460
    .line 461
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 462
    .line 463
    iget-boolean v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 464
    .line 465
    if-nez v7, :cond_15

    .line 466
    .line 467
    const/16 v7, 0x3e9

    .line 468
    .line 469
    iput v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 470
    .line 471
    new-instance v7, Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .line 475
    .line 476
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 477
    .line 478
    new-instance v7, Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .line 482
    .line 483
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 484
    .line 485
    new-instance v7, Ljava/util/HashMap;

    .line 486
    .line 487
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 488
    .line 489
    .line 490
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 491
    .line 492
    new-instance v7, Ljava/util/HashMap;

    .line 493
    .line 494
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 495
    .line 496
    .line 497
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    .line 498
    .line 499
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 500
    .line 501
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    new-instance v7, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

    .line 505
    .line 506
    invoke-direct {v7, v5, v4, v3}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 507
    .line 508
    .line 509
    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->mProcessMemoryDumpThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

    .line 510
    .line 511
    iput-boolean v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 512
    .line 513
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 514
    .line 515
    .line 516
    goto :goto_d

    .line 517
    :cond_e
    if-eqz v9, :cond_f

    .line 518
    .line 519
    if-eqz v11, :cond_f

    .line 520
    .line 521
    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    if-eqz v5, :cond_f

    .line 528
    .line 529
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_8:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 530
    .line 531
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 532
    .line 533
    .line 534
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 535
    .line 536
    .line 537
    goto :goto_d

    .line 538
    :cond_f
    const/16 v5, 0x352

    .line 539
    .line 540
    if-ge v0, v5, :cond_11

    .line 541
    .line 542
    const/16 v5, 0x32

    .line 543
    .line 544
    if-lt v0, v5, :cond_10

    .line 545
    .line 546
    const/16 v5, 0xfa

    .line 547
    .line 548
    if-gt v0, v5, :cond_10

    .line 549
    .line 550
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_12:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 551
    .line 552
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 556
    .line 557
    .line 558
    goto :goto_d

    .line 559
    :cond_10
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_5:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 560
    .line 561
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 562
    .line 563
    .line 564
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 565
    .line 566
    .line 567
    goto :goto_d

    .line 568
    :cond_11
    if-eqz v11, :cond_14

    .line 569
    .line 570
    const/16 v5, 0x384

    .line 571
    .line 572
    if-le v0, v5, :cond_12

    .line 573
    .line 574
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_2:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 575
    .line 576
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 577
    .line 578
    .line 579
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 580
    .line 581
    .line 582
    goto :goto_d

    .line 583
    :cond_12
    if-ne v0, v5, :cond_13

    .line 584
    .line 585
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_3:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 586
    .line 587
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 588
    .line 589
    .line 590
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 591
    .line 592
    .line 593
    goto :goto_d

    .line 594
    :cond_13
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_4:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 595
    .line 596
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 597
    .line 598
    .line 599
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 600
    .line 601
    .line 602
    goto :goto_d

    .line 603
    :cond_14
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_1:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 604
    .line 605
    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 606
    .line 607
    .line 608
    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 609
    .line 610
    .line 611
    :cond_15
    :goto_d
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 612
    .line 613
    iget-boolean v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 614
    .line 615
    if-eqz v3, :cond_16

    .line 616
    .line 617
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 618
    .line 619
    if-le v3, v0, :cond_16

    .line 620
    .line 621
    if-eq v0, v2, :cond_16

    .line 622
    .line 623
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 624
    .line 625
    :cond_16
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 626
    .line 627
    if-eqz v0, :cond_18

    .line 628
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 632
    .line 633
    .line 634
    const-string v1, "ActivityManager_kpm"

    .line 635
    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    const-string/jumbo v3, "kpmRawBigdata lmkdState : "

    .line 639
    .line 640
    .line 641
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    iget-object v3, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 645
    .line 646
    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .line 659
    .line 660
    const-string/jumbo v1, "kpmRawBigdata lmkdStateCount ["

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    array-length v2, v1

    .line 671
    :goto_e
    if-ge v10, v2, :cond_17

    .line 672
    .line 673
    aget-object v3, v1, v10

    .line 674
    .line 675
    iget-object v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    aget-wide v5, v5, v3

    .line 682
    .line 683
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    const-string v3, ", "

    .line 687
    .line 688
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    add-int/lit8 v10, v10, 0x1

    .line 692
    .line 693
    goto :goto_e

    .line 694
    :cond_17
    const-string v1, "]"

    .line 695
    .line 696
    const-string v2, "ActivityManager_kpm"

    .line 697
    .line 698
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .line 700
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

    .line 2
    .line 3
    const-string v1, "ActivityManager_kpm"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Policy ["

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "]"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 30
    .line 31
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    aget p1, v0, p1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 40
    .line 41
    iget v2, v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    .line 42
    .line 43
    const-string v3, "ActivityManager"

    .line 44
    .line 45
    if-gt p1, v2, :cond_1

    .line 46
    .line 47
    const-string p1, "SwappinessController() - new value is lower than default value, go back to default"

    .line 48
    .line 49
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move p1, v2

    .line 53
    :cond_1
    const-string/jumbo v2, "sys.sysctl.swappiness"

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v4, "SwappinessController() - changed from "

    .line 66
    .line 67
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v4, v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, " -> "

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iput p1, v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 91
    .line 92
    new-instance p1, Landroid/content/Intent;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v0, "android"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const-string/jumbo v0, "com.samsung.KPM_STATE_CHANGED"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const-string/jumbo v2, "kpm_level"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const-string/jumbo v2, "kpm_prev_level"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, "Broadcast sent: prev state = "

    .line 135
    .line 136
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, ", cur state = "

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    .line 173
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

    .line 4
    .line 5
    array-length v2, p2

    .line 6
    if-le v2, v1, :cond_1

    .line 7
    .line 8
    aget-object p1, p2, v1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string/jumbo p2, "leak.dmabuf"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    .line 24
    .line 25
    iget-object p2, p1, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 26
    .line 27
    iput-boolean v1, p2, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    sget-object p2, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 32
    .line 33
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->onMemoryEvent(Landroid/content/Context;Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p1, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_1
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 42
    .line 43
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 44
    .line 45
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 46
    .line 47
    const-string v4, " [idx, peakLmkdKillAdj, [procMemInfo], [{native(Pss SwapPss Rss)}{sys}{pers}{persvc}{fore}{vis}{percept}{perceptl}{perceptm}{backup}{heavy}{servicea}{home}{prev}{serviceb}{picked}{cached}], [Process name, Process version, Package name, Package version, label, pss, swap, rss, procstats_dumpPssUssRss], ...]"

    .line 48
    .line 49
    const-string v5, " [idx,avg_mem,mem_avl,avg_swap,hotCnt,prKillCnt,svKillCnt,PkgCnt,PkgKillCnt,lmkdTotal,lmkdPrev,lmkdService,lmkdPicked,lmkdSeed,lmkdCri,lmk,cachedkill,emptykill,cur_state,next_state,policy_state,psi_cpu_avg,psi_mem_avg,psi_io_avg,psi_cpu_max,psi_mem_max,psi_io_max,reset_status,lmkdState,lmkdStateCnt,lmkdCnt,tiny_nxst_history,time]"

    .line 50
    .line 51
    if-lt v3, v1, :cond_5

    .line 52
    .line 53
    const-string v3, " KPM Stats(policy):"

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 62
    .line 63
    const/16 v6, 0x18

    .line 64
    .line 65
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    move v7, p2

    .line 70
    move v6, v0

    .line 71
    :goto_1
    const/16 v8, 0x17

    .line 72
    .line 73
    iget-object v9, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 74
    .line 75
    if-ge v6, v3, :cond_3

    .line 76
    .line 77
    aget-object v9, v9, v7

    .line 78
    .line 79
    iget v10, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 80
    .line 81
    invoke-virtual {v9, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v7, v7, -0x1

    .line 93
    .line 94
    if-gez v7, :cond_2

    .line 95
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

    .line 100
    .line 101
    .line 102
    const-string v6, " Heavy Pss List(policy):"

    .line 103
    .line 104
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move v6, v0

    .line 111
    :goto_2
    if-ge v6, v3, :cond_5

    .line 112
    .line 113
    aget-object v7, v9, p2

    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData()Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 p2, p2, -0x1

    .line 127
    .line 128
    if-gez p2, :cond_4

    .line 129
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

    .line 134
    .line 135
    const/16 v3, 0x1e

    .line 136
    .line 137
    if-lt p2, v1, :cond_9

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 140
    .line 141
    .line 142
    const-string p2, " KPM Stats(bigdata):"

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 151
    .line 152
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    move v5, v0

    .line 157
    move v6, v2

    .line 158
    :goto_3
    const/16 v7, 0x1d

    .line 159
    .line 160
    iget-object v8, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 161
    .line 162
    if-ge v5, p2, :cond_7

    .line 163
    .line 164
    aget-object v8, v8, v6

    .line 165
    .line 166
    iget v9, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 167
    .line 168
    invoke-virtual {v8, v9}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v6, v6, -0x1

    .line 180
    .line 181
    if-gez v6, :cond_6

    .line 182
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

    .line 187
    .line 188
    .line 189
    const-string v5, " Heavy Pss List(bigdata):"

    .line 190
    .line 191
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    move v4, v0

    .line 198
    :goto_4
    if-ge v4, p2, :cond_9

    .line 199
    .line 200
    aget-object v5, v8, v2

    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData()Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    add-int/lit8 v2, v2, -0x1

    .line 214
    .line 215
    if-gez v2, :cond_8

    .line 216
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

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string v2, " KPM Tunable Parameters:"

    .line 226
    .line 227
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v4, " KPM_POLICY_ENABLE: "

    .line 233
    .line 234
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 238
    .line 239
    const-string v5, " KPM_DEBUG_ENABLE: "

    .line 240
    .line 241
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 246
    .line 247
    const-string v5, " KPM_CURRENT_STATE: "

    .line 248
    .line 249
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 254
    .line 255
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v4, " KPM_WARM_UP_TRIGGER_TUNABLE: "

    .line 268
    .line 269
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    sget v4, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    .line 273
    .line 274
    const-string v5, " KPM_POLICY_TRIGGER_TUNABLE: "

    .line 275
    .line 276
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    sget v4, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    .line 281
    .line 282
    const-string v5, " KPM_WARM_UP_CYCLES_TUNABLE: "

    .line 283
    .line 284
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    sget v4, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    .line 289
    .line 290
    const-string v5, " KPM_MEM_CRITICAL_LOW_DETECT_ENABLE: "

    .line 291
    .line 292
    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    const-string/jumbo v5, "persist.sys.kpm_cri_mem_detect"

    .line 301
    .line 302
    .line 303
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v2, " MEMORY_CRITICAL_LOW_KILL_DETECT_ADJ : 700"

    .line 322
    .line 323
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string v4, " MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH : "

    .line 329
    .line 330
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    sget v4, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 334
    .line 335
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v4, "%"

    .line 339
    .line 340
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v5, " MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO : "

    .line 353
    .line 354
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    .line 358
    .line 359
    const-string v6, " MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH : "

    .line 360
    .line 361
    invoke-static {v2, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    sget v5, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 366
    .line 367
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v4, " KPM_POLICY_SWAPPINESS_DEFAULT : "

    .line 383
    .line 384
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 388
    .line 389
    iget v5, v4, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    .line 390
    .line 391
    const-string v6, " KPM_POLICY_SWAPPINESS_CURRENT : "

    .line 392
    .line 393
    invoke-static {v2, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    iget v4, v4, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 398
    .line 399
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    const-string p2, "\n KPM Auto Restart Parameters"

    .line 413
    .line 414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v2, " - Min Triggger Size    : "

    .line 420
    .line 421
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 425
    .line 426
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    new-instance p2, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v2, " - Never Collect Within : "

    .line 443
    .line 444
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    sget v2, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    .line 448
    .line 449
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    new-instance p2, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string v2, " - Compact Trigger Size : "

    .line 466
    .line 467
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    sget v2, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    .line 471
    .line 472
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    const-string v2, " - Native Flood Ratio   : "

    .line 489
    .line 490
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    sget v2, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 494
    .line 495
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p2

    .line 506
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    const-string v2, " - Syspers Flood Ratio  : "

    .line 512
    .line 513
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    sget v2, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 517
    .line 518
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p2

    .line 529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    const-string p2, ""

    .line 533
    .line 534
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 538
    .line 539
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    const-string v4, "\n ChimeraTrigger Stats:"

    .line 547
    .line 548
    const-string v5, " - Last Policy Score      : "

    .line 549
    .line 550
    invoke-static {p1, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    iget v5, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F

    .line 555
    .line 556
    const-string v6, " - Trigger Threshold Score: "

    .line 557
    .line 558
    invoke-static {v4, v5, p1, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    sget v5, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->PMM_CRITICAL_SCORE_THRESHOLD:F

    .line 563
    .line 564
    const-string v6, " - Trigger Required       : "

    .line 565
    .line 566
    invoke-static {v4, v5, p1, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    iget-boolean v5, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    .line 571
    .line 572
    const-string v6, " - Last Triggered Time(ms): "

    .line 573
    .line 574
    invoke-static {v4, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J

    .line 579
    .line 580
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 594
    .line 595
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    const-string v2, "MemoryFloodDetector"

    .line 599
    .line 600
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 604
    .line 605
    check-cast v2, Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    if-lez v2, :cond_a

    .line 612
    .line 613
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 614
    .line 615
    const-string/jumbo v4, "native"

    .line 616
    .line 617
    .line 618
    invoke-static {p1, v4, v2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 619
    .line 620
    .line 621
    :cond_a
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 622
    .line 623
    check-cast v2, Ljava/util/ArrayList;

    .line 624
    .line 625
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-lez v2, :cond_b

    .line 630
    .line 631
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 632
    .line 633
    const-string/jumbo v4, "sys"

    .line 634
    .line 635
    .line 636
    invoke-static {p1, v4, v2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 637
    .line 638
    .line 639
    iget-object p2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 640
    .line 641
    const-string/jumbo v2, "pers"

    .line 642
    .line 643
    .line 644
    invoke-static {p1, v2, p2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 645
    .line 646
    .line 647
    :cond_b
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 648
    .line 649
    iget-object p2, p2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 650
    .line 651
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    const-string v2, "ProcessSamplingManager"

    .line 655
    .line 656
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    const-string v2, " Constants"

    .line 660
    .line 661
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    const-string v2, "  MAX_SKIP="

    .line 665
    .line 666
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    const/4 v2, 0x6

    .line 670
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 671
    .line 672
    .line 673
    const-string v2, "  MAX_SKIP_IN_USER_TRIAL="

    .line 674
    .line 675
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 679
    .line 680
    .line 681
    const-string v2, "  PERCENT_DEVICE_SAMPLING="

    .line 682
    .line 683
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 687
    .line 688
    .line 689
    const-string v2, "  SKIP_FIRST_AFTER_BOOT="

    .line 690
    .line 691
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 695
    .line 696
    .line 697
    const-string v2, "  MAX_SIZE_JSON_STRING="

    .line 698
    .line 699
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    const/16 v2, 0x4c2c

    .line 703
    .line 704
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 705
    .line 706
    .line 707
    const-string v2, " States"

    .line 708
    .line 709
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    const-string v2, "  mIsSampleDevice="

    .line 713
    .line 714
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    iget-boolean v2, p2, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    .line 718
    .line 719
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 720
    .line 721
    .line 722
    const-string v2, "  mSkipCount="

    .line 723
    .line 724
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    iget v2, p2, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    .line 728
    .line 729
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 730
    .line 731
    .line 732
    const-string v2, "  mCurrentState="

    .line 733
    .line 734
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    iget p2, p2, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    .line 738
    .line 739
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 743
    .line 744
    .line 745
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 746
    .line 747
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 748
    .line 749
    .line 750
    const-string p2, "MemoryStabilityEventManager"

    .line 751
    .line 752
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    const-string p2, "  mLastRealtimeMinutes="

    .line 756
    .line 757
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    .line 761
    .line 762
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastRealtimeMinutes:I

    .line 763
    .line 764
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 765
    .line 766
    .line 767
    const-string p2, "  mLastUptimeMinutes="

    .line 768
    .line 769
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastUptimeMinutes:I

    .line 773
    .line 774
    const-string v2, "  mLastCounter="

    .line 775
    .line 776
    const-string v3, "["

    .line 777
    .line 778
    invoke-static {p2, p1, v2, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    :goto_5
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 782
    .line 783
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 784
    .line 785
    array-length v2, v2

    .line 786
    if-ge v0, v2, :cond_d

    .line 787
    .line 788
    if-lez v0, :cond_c

    .line 789
    .line 790
    const-string v2, ", "

    .line 791
    .line 792
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    :cond_c
    iget-object p2, p2, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 796
    .line 797
    aget-wide v2, p2, v0

    .line 798
    .line 799
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 800
    .line 801
    .line 802
    add-int/2addr v0, v1

    .line 803
    goto :goto_5

    .line 804
    :cond_d
    const-string p0, "]"

    .line 805
    .line 806
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    return-void
.end method

.method public final forceChangeState(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    sparse-switch v1, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :sswitch_0
    const-string v1, "LIGHT"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
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

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
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

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :pswitch_0
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_1
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_2
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 63
    .line 64
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 72
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

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 8
    .line 9
    aget-object p0, v0, p0

    .line 10
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 8
    .line 9
    aget-object p0, v0, p0

    .line 10
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

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    long-to-double v2, v2

    .line 22
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 23
    .line 24
    div-double/2addr v2, v4

    .line 25
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 26
    .line 27
    add-double/2addr v2, v6

    .line 28
    double-to-int v2, v2

    .line 29
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 32
    .line 33
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

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    long-to-double v2, v2

    .line 46
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    .line 47
    .line 48
    div-double/2addr v2, v8

    .line 49
    add-double/2addr v2, v6

    .line 50
    double-to-int v2, v2

    .line 51
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    .line 54
    .line 55
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

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getActiveFileSizeKb()J

    .line 64
    .line 65
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

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getInactiveFileSizeKb()J

    .line 74
    .line 75
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

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinFreeSizeKb()J

    .line 84
    .line 85
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

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinCachedSizeKb()J

    .line 94
    .line 95
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

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 104
    .line 105
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

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKReclaimableSizeKb()J

    .line 114
    .line 115
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

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSReclaimableSizeKb()J

    .line 124
    .line 125
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

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSUnreclaimSizeKb()J

    .line 134
    .line 135
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

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getGpuSwapSizeKb()J

    .line 144
    .line 145
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

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSystemCachedSizeKb()J

    .line 154
    .line 155
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

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 164
    .line 165
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

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getGpuTotalSizeKb()J

    .line 174
    .line 175
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

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getVmAllocUsedSizeKb()J

    .line 184
    .line 185
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

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSystemUncachedSizeKb()J

    .line 194
    .line 195
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

    .line 202
    .line 203
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 204
    .line 205
    if-gtz v2, :cond_0

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 208
    .line 209
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

    .line 216
    .line 217
    :cond_0
    return-object v1
.end method

.method public final reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 8
    .line 9
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 10
    .line 11
    const-string v5, "ActivityManager_kpm"

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "it has \'zero\' samples."

    .line 16
    .line 17
    .line 18
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v7, "TYPE"

    .line 28
    .line 29
    move/from16 v8, p1

    .line 30
    .line 31
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v7, "CRST"

    .line 35
    .line 36
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 37
    .line 38
    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v7, "NXST"

    .line 46
    .line 47
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 48
    .line 49
    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v7, "PLST"

    .line 57
    .line 58
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 59
    .line 60
    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    const-string v7, "DRAM"

    .line 68
    .line 69
    iget v8, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    .line 70
    .line 71
    mul-int/lit16 v8, v8, 0x400

    .line 72
    .line 73
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v7, "SWPT"

    .line 77
    .line 78
    iget v8, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 79
    .line 80
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string v7, "FCMA"

    .line 84
    .line 85
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 86
    .line 87
    int-to-double v8, v8

    .line 88
    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 89
    .line 90
    int-to-double v10, v10

    .line 91
    div-double/2addr v8, v10

    .line 92
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 93
    .line 94
    add-double/2addr v8, v10

    .line 95
    double-to-int v8, v8

    .line 96
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v7, "AVMA"

    .line 100
    .line 101
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 102
    .line 103
    int-to-double v8, v8

    .line 104
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 105
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

    .line 111
    .line 112
    .line 113
    const-string v7, "SWUA"

    .line 114
    .line 115
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 116
    .line 117
    int-to-double v8, v8

    .line 118
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 119
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

    .line 125
    .line 126
    .line 127
    const-string v7, "DISP"

    .line 128
    .line 129
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    const-string v7, "PCKC"

    .line 135
    .line 136
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 137
    .line 138
    int-to-double v8, v8

    .line 139
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 140
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

    .line 146
    .line 147
    .line 148
    const-string v7, "PCKA"

    .line 149
    .line 150
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 151
    .line 152
    int-to-double v8, v8

    .line 153
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 154
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

    .line 160
    .line 161
    .line 162
    const-string v7, "SDBC"

    .line 163
    .line 164
    const/4 v8, 0x0

    .line 165
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    const-string v7, "CCHC"

    .line 169
    .line 170
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 171
    .line 172
    int-to-double v12, v9

    .line 173
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 174
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

    .line 180
    .line 181
    .line 182
    const-string v7, "CCHA"

    .line 183
    .line 184
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 185
    .line 186
    int-to-double v12, v9

    .line 187
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 188
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

    .line 194
    .line 195
    .line 196
    const-string v7, "LNCT"

    .line 197
    .line 198
    new-instance v9, Lorg/json/JSONArray;

    .line 199
    .line 200
    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 201
    .line 202
    .line 203
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 204
    .line 205
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 210
    .line 211
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 216
    .line 217
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    const-string v7, "LPKC"

    .line 225
    .line 226
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 227
    .line 228
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    .line 230
    .line 231
    const-string v7, "PKPC"

    .line 232
    .line 233
    iget v9, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 234
    .line 235
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    .line 237
    .line 238
    const-string v7, "SKSC"

    .line 239
    .line 240
    iget v9, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 241
    .line 242
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    const-string v7, "SKPC"

    .line 246
    .line 247
    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 248
    .line 249
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    .line 251
    .line 252
    const-string v7, "VFAK"

    .line 253
    .line 254
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    .line 255
    .line 256
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    .line 258
    .line 259
    const-string v7, "HPAK"

    .line 260
    .line 261
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    .line 262
    .line 263
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 264
    .line 265
    .line 266
    const-string v7, "PRAK"

    .line 267
    .line 268
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 269
    .line 270
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 271
    .line 272
    .line 273
    const-string v7, "SRVK"

    .line 274
    .line 275
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 276
    .line 277
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 278
    .line 279
    .line 280
    const-string v7, "PCKK"

    .line 281
    .line 282
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 283
    .line 284
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 285
    .line 286
    .line 287
    const-string v7, "SBAK"

    .line 288
    .line 289
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    .line 291
    .line 292
    const-string v7, "CHMK"

    .line 293
    .line 294
    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 295
    .line 296
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 297
    .line 298
    .line 299
    const-string v3, "CHEK"

    .line 300
    .line 301
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    .line 302
    .line 303
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    .line 305
    .line 306
    const-string v3, "CHNK"

    .line 307
    .line 308
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 309
    .line 310
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    const-string v3, "CACK"

    .line 314
    .line 315
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    .line 316
    .line 317
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    .line 319
    .line 320
    const-string v3, "APPC"

    .line 321
    .line 322
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 323
    .line 324
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    .line 326
    .line 327
    const-string v3, "MEDK"

    .line 328
    .line 329
    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 330
    .line 331
    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 332
    .line 333
    .line 334
    const-string v3, "CRIK"

    .line 335
    .line 336
    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 337
    .line 338
    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 339
    .line 340
    .line 341
    const-string v3, "LMKK"

    .line 342
    .line 343
    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 344
    .line 345
    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 346
    .line 347
    .line 348
    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 349
    .line 350
    if-eqz v3, :cond_1

    .line 351
    .line 352
    const-string v3, "SWPN"

    .line 353
    .line 354
    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 355
    .line 356
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 357
    .line 358
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    .line 360
    .line 361
    goto :goto_0

    .line 362
    :catch_0
    const/4 v4, 0x0

    .line 363
    goto/16 :goto_10

    .line 364
    .line 365
    :cond_1
    :goto_0
    new-instance v3, Lorg/json/JSONArray;

    .line 366
    .line 367
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 368
    .line 369
    .line 370
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 371
    .line 372
    const/4 v9, 0x1

    .line 373
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 374
    .line 375
    if-eqz v7, :cond_7

    .line 376
    .line 377
    sget-object v7, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 378
    .line 379
    array-length v15, v7

    .line 380
    move v4, v8

    .line 381
    :goto_1
    const-wide/16 v16, 0x0

    .line 382
    .line 383
    if-ge v4, v15, :cond_3

    .line 384
    .line 385
    aget-object v12, v7, v4

    .line 386
    .line 387
    iget-object v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 388
    .line 389
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    if-eqz v10, :cond_2

    .line 394
    .line 395
    iget-object v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 396
    .line 397
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    check-cast v10, [J

    .line 402
    .line 403
    aget-wide v11, v10, v8

    .line 404
    .line 405
    aget-wide v16, v10, v9

    .line 406
    .line 407
    add-long v11, v11, v16

    .line 408
    .line 409
    long-to-double v11, v11

    .line 410
    div-double/2addr v11, v13

    .line 411
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 412
    .line 413
    add-double v11, v11, v16

    .line 414
    .line 415
    double-to-long v11, v11

    .line 416
    const/16 v16, 0x3

    .line 417
    .line 418
    aget-wide v16, v10, v16

    .line 419
    .line 420
    move-wide/from16 v13, v16

    .line 421
    .line 422
    goto :goto_2

    .line 423
    :cond_2
    move-wide/from16 v11, v16

    .line 424
    .line 425
    move-wide v13, v11

    .line 426
    :goto_2
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 427
    .line 428
    .line 429
    move-result-object v10

    .line 430
    invoke-virtual {v10, v13, v14}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 431
    .line 432
    .line 433
    add-int/lit8 v4, v4, 0x1

    .line 434
    .line 435
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 436
    .line 437
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 438
    .line 439
    goto :goto_1

    .line 440
    :cond_3
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 441
    .line 442
    array-length v7, v4

    .line 443
    move v10, v8

    .line 444
    :goto_3
    if-ge v10, v7, :cond_5

    .line 445
    .line 446
    aget-object v11, v4, v10

    .line 447
    .line 448
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 449
    .line 450
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v12

    .line 454
    if-eqz v12, :cond_4

    .line 455
    .line 456
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 457
    .line 458
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v11

    .line 462
    check-cast v11, [J

    .line 463
    .line 464
    aget-wide v11, v11, v9

    .line 465
    .line 466
    long-to-double v11, v11

    .line 467
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 468
    .line 469
    div-double/2addr v11, v13

    .line 470
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 471
    .line 472
    add-double/2addr v11, v13

    .line 473
    double-to-long v11, v11

    .line 474
    goto :goto_4

    .line 475
    :cond_4
    move-wide/from16 v11, v16

    .line 476
    .line 477
    :goto_4
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 478
    .line 479
    .line 480
    add-int/lit8 v10, v10, 0x1

    .line 481
    .line 482
    goto :goto_3

    .line 483
    :cond_5
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 484
    .line 485
    array-length v7, v4

    .line 486
    move v10, v8

    .line 487
    :goto_5
    if-ge v10, v7, :cond_7

    .line 488
    .line 489
    aget-object v11, v4, v10

    .line 490
    .line 491
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 492
    .line 493
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v12

    .line 497
    if-eqz v12, :cond_6

    .line 498
    .line 499
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 500
    .line 501
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v11

    .line 505
    check-cast v11, [J

    .line 506
    .line 507
    const/4 v12, 0x2

    .line 508
    aget-wide v13, v11, v12

    .line 509
    .line 510
    long-to-double v11, v13

    .line 511
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 512
    .line 513
    div-double/2addr v11, v13

    .line 514
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 515
    .line 516
    add-double/2addr v11, v13

    .line 517
    double-to-long v11, v11

    .line 518
    goto :goto_6

    .line 519
    :cond_6
    move-wide/from16 v11, v16

    .line 520
    .line 521
    :goto_6
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 522
    .line 523
    .line 524
    add-int/lit8 v10, v10, 0x1

    .line 525
    .line 526
    goto :goto_5

    .line 527
    :cond_7
    const-string v4, "PRST"

    .line 528
    .line 529
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    .line 531
    .line 532
    new-instance v3, Lorg/json/JSONArray;

    .line 533
    .line 534
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 535
    .line 536
    .line 537
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 538
    .line 539
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 540
    .line 541
    int-to-double v12, v4

    .line 542
    div-double/2addr v10, v12

    .line 543
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 544
    .line 545
    add-double/2addr v10, v12

    .line 546
    double-to-int v4, v10

    .line 547
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 552
    .line 553
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 554
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

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 564
    .line 565
    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 566
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

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 576
    .line 577
    add-double/2addr v10, v12

    .line 578
    double-to-int v7, v10

    .line 579
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 584
    .line 585
    add-double/2addr v10, v12

    .line 586
    double-to-int v7, v10

    .line 587
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 592
    .line 593
    add-double/2addr v10, v12

    .line 594
    double-to-int v7, v10

    .line 595
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 596
    .line 597
    .line 598
    const-string v4, "PSIS"

    .line 599
    .line 600
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    .line 602
    .line 603
    invoke-static {v1, v6}, Lcom/android/server/am/KillPolicyManager;->fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V

    .line 604
    .line 605
    .line 606
    const-string v3, "STAY"

    .line 607
    .line 608
    iget-wide v10, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 609
    .line 610
    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 611
    .line 612
    .line 613
    const-string v3, "ELAP"

    .line 614
    .line 615
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 616
    .line 617
    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    .line 618
    .line 619
    sub-long/2addr v10, v12

    .line 620
    const-wide/16 v12, 0x3e8

    .line 621
    .line 622
    div-long/2addr v10, v12

    .line 623
    const-wide/16 v14, 0x3c

    .line 624
    .line 625
    div-long/2addr v10, v14

    .line 626
    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 627
    .line 628
    .line 629
    const-string v3, "UPTM"

    .line 630
    .line 631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 632
    .line 633
    .line 634
    move-result-wide v10

    .line 635
    div-long/2addr v10, v12

    .line 636
    div-long/2addr v10, v14

    .line 637
    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 638
    .line 639
    .line 640
    const-string v3, "RSTF"

    .line 641
    .line 642
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 643
    .line 644
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 645
    .line 646
    .line 647
    const-string v3, "KVER"

    .line 648
    .line 649
    const-string v4, "4.7"

    .line 650
    .line 651
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    .line 653
    .line 654
    const-string v3, "LS"

    .line 655
    .line 656
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 657
    .line 658
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    .line 659
    .line 660
    .line 661
    move-result v4

    .line 662
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 663
    .line 664
    .line 665
    new-instance v3, Lorg/json/JSONArray;

    .line 666
    .line 667
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 668
    .line 669
    .line 670
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    array-length v7, v4

    .line 675
    move v10, v8

    .line 676
    :goto_7
    if-ge v10, v7, :cond_8

    .line 677
    .line 678
    aget-object v11, v4, v10

    .line 679
    .line 680
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 681
    .line 682
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 683
    .line 684
    .line 685
    move-result v11

    .line 686
    aget-wide v11, v12, v11

    .line 687
    .line 688
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 689
    .line 690
    .line 691
    add-int/lit8 v10, v10, 0x1

    .line 692
    .line 693
    goto :goto_7

    .line 694
    :cond_8
    const-string v4, "LSC"

    .line 695
    .line 696
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    .line 698
    .line 699
    new-instance v3, Lorg/json/JSONArray;

    .line 700
    .line 701
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 702
    .line 703
    .line 704
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    array-length v7, v4

    .line 709
    move v10, v8

    .line 710
    :goto_8
    if-ge v10, v7, :cond_9

    .line 711
    .line 712
    aget-object v11, v4, v10

    .line 713
    .line 714
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 715
    .line 716
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 717
    .line 718
    .line 719
    move-result v11

    .line 720
    aget-wide v11, v12, v11

    .line 721
    .line 722
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 723
    .line 724
    .line 725
    add-int/lit8 v10, v10, 0x1

    .line 726
    .line 727
    goto :goto_8

    .line 728
    :cond_9
    const-string v4, "LC"

    .line 729
    .line 730
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    .line 732
    .line 733
    new-instance v3, Lorg/json/JSONArray;

    .line 734
    .line 735
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 736
    .line 737
    .line 738
    move v4, v8

    .line 739
    :goto_9
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 740
    .line 741
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 742
    .line 743
    .line 744
    move-result v7

    .line 745
    if-ge v4, v7, :cond_b

    .line 746
    .line 747
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 748
    .line 749
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v7

    .line 753
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 754
    .line 755
    .line 756
    const/4 v7, 0x5

    .line 757
    if-le v4, v7, :cond_a

    .line 758
    .line 759
    goto :goto_a

    .line 760
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 761
    .line 762
    goto :goto_9

    .line 763
    :cond_b
    :goto_a
    const-string v4, "LDI"

    .line 764
    .line 765
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    .line 767
    .line 768
    new-instance v3, Lorg/json/JSONArray;

    .line 769
    .line 770
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 771
    .line 772
    .line 773
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 774
    .line 775
    if-eqz v4, :cond_d

    .line 776
    .line 777
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 778
    .line 779
    .line 780
    move-result v4

    .line 781
    if-lez v4, :cond_d

    .line 782
    .line 783
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 784
    .line 785
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 786
    .line 787
    .line 788
    move v4, v8

    .line 789
    :goto_b
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 790
    .line 791
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 792
    .line 793
    .line 794
    move-result v7

    .line 795
    if-ge v4, v7, :cond_d

    .line 796
    .line 797
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 798
    .line 799
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v7

    .line 803
    check-cast v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 804
    .line 805
    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 806
    .line 807
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    .line 808
    .line 809
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 810
    .line 811
    .line 812
    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    .line 813
    .line 814
    if-eqz v10, :cond_c

    .line 815
    .line 816
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 817
    .line 818
    .line 819
    goto :goto_c

    .line 820
    :cond_c
    iget-wide v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 821
    .line 822
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v10

    .line 826
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 827
    .line 828
    .line 829
    :goto_c
    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 830
    .line 831
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 832
    .line 833
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 834
    .line 835
    .line 836
    move-result-object v10

    .line 837
    iget-object v11, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 838
    .line 839
    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 840
    .line 841
    long-to-double v11, v11

    .line 842
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 843
    .line 844
    div-double/2addr v11, v13

    .line 845
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 846
    .line 847
    add-double v11, v11, v16

    .line 848
    .line 849
    double-to-int v11, v11

    .line 850
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 851
    .line 852
    .line 853
    move-result-object v10

    .line 854
    iget-object v11, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 855
    .line 856
    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 857
    .line 858
    long-to-double v11, v11

    .line 859
    div-double/2addr v11, v13

    .line 860
    add-double v11, v11, v16

    .line 861
    .line 862
    double-to-int v11, v11

    .line 863
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 864
    .line 865
    .line 866
    move-result-object v10

    .line 867
    iget-object v7, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 868
    .line 869
    iget-wide v11, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    .line 870
    .line 871
    long-to-double v11, v11

    .line 872
    div-double/2addr v11, v13

    .line 873
    add-double v11, v11, v16

    .line 874
    .line 875
    double-to-int v7, v11

    .line 876
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 877
    .line 878
    .line 879
    add-int/lit8 v4, v4, 0x1

    .line 880
    .line 881
    goto :goto_b

    .line 882
    :cond_d
    const-string v4, "LHI"

    .line 883
    .line 884
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    .line 886
    .line 887
    new-instance v3, Lorg/json/JSONArray;

    .line 888
    .line 889
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 890
    .line 891
    .line 892
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 893
    .line 894
    if-eqz v4, :cond_e

    .line 895
    .line 896
    iget v4, v4, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 897
    .line 898
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 899
    .line 900
    .line 901
    move-result-object v4

    .line 902
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 903
    .line 904
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 905
    .line 906
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 911
    .line 912
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 913
    .line 914
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 919
    .line 920
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 921
    .line 922
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 923
    .line 924
    .line 925
    move-result-object v4

    .line 926
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 927
    .line 928
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    .line 929
    .line 930
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 931
    .line 932
    .line 933
    move-result-object v4

    .line 934
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 935
    .line 936
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    .line 937
    .line 938
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 943
    .line 944
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    .line 945
    .line 946
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 947
    .line 948
    .line 949
    move-result-object v4

    .line 950
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 951
    .line 952
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    .line 953
    .line 954
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 955
    .line 956
    .line 957
    move-result-object v4

    .line 958
    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 959
    .line 960
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 961
    .line 962
    .line 963
    move-result-object v4

    .line 964
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 965
    .line 966
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 967
    .line 968
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 973
    .line 974
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    .line 975
    .line 976
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 977
    .line 978
    .line 979
    move-result-object v4

    .line 980
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 981
    .line 982
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    .line 983
    .line 984
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 985
    .line 986
    .line 987
    move-result-object v4

    .line 988
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 989
    .line 990
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    .line 991
    .line 992
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 993
    .line 994
    .line 995
    move-result-object v4

    .line 996
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 997
    .line 998
    .line 999
    move-result-object v4

    .line 1000
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1001
    .line 1002
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuSwap:I

    .line 1003
    .line 1004
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1009
    .line 1010
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemCached:I

    .line 1011
    .line 1012
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1017
    .line 1018
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    .line 1019
    .line 1020
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v4

    .line 1024
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1025
    .line 1026
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuTotal:I

    .line 1027
    .line 1028
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v4

    .line 1032
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1033
    .line 1034
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    .line 1035
    .line 1036
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v4

    .line 1040
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 1041
    .line 1042
    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemUncached:I

    .line 1043
    .line 1044
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1045
    .line 1046
    .line 1047
    :cond_e
    const-string v4, "PMI"

    .line 1048
    .line 1049
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1050
    .line 1051
    .line 1052
    new-instance v3, Lorg/json/JSONArray;

    .line 1053
    .line 1054
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1055
    .line 1056
    .line 1057
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 1058
    .line 1059
    if-eqz v4, :cond_10

    .line 1060
    .line 1061
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 1062
    .line 1063
    array-length v7, v4

    .line 1064
    move v10, v8

    .line 1065
    :goto_d
    if-ge v10, v7, :cond_10

    .line 1066
    .line 1067
    aget-object v11, v4, v10

    .line 1068
    .line 1069
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 1070
    .line 1071
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v12

    .line 1075
    if-eqz v12, :cond_f

    .line 1076
    .line 1077
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 1078
    .line 1079
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v11

    .line 1083
    check-cast v11, [J

    .line 1084
    .line 1085
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    aget-wide v12, v11, v8

    .line 1089
    .line 1090
    long-to-double v12, v12

    .line 1091
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    .line 1092
    .line 1093
    div-double/2addr v12, v14

    .line 1094
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 1095
    .line 1096
    add-double v12, v12, v16

    .line 1097
    .line 1098
    double-to-int v12, v12

    .line 1099
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v12

    .line 1103
    aget-wide v14, v11, v9

    .line 1104
    .line 1105
    long-to-double v13, v14

    .line 1106
    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    .line 1107
    .line 1108
    div-double v13, v13, v18

    .line 1109
    .line 1110
    add-double v13, v13, v16

    .line 1111
    .line 1112
    double-to-int v13, v13

    .line 1113
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v12

    .line 1117
    const/4 v13, 0x2

    .line 1118
    aget-wide v14, v11, v13

    .line 1119
    .line 1120
    long-to-double v14, v14

    .line 1121
    div-double v14, v14, v18

    .line 1122
    .line 1123
    add-double v14, v14, v16

    .line 1124
    .line 1125
    double-to-int v11, v14

    .line 1126
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1127
    .line 1128
    .line 1129
    goto :goto_e

    .line 1130
    :cond_f
    const/4 v13, 0x2

    .line 1131
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 1132
    .line 1133
    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    .line 1134
    .line 1135
    const/4 v11, -0x1

    .line 1136
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v12

    .line 1140
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v12

    .line 1144
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1145
    .line 1146
    .line 1147
    :goto_e
    add-int/lit8 v10, v10, 0x1

    .line 1148
    .line 1149
    goto :goto_d

    .line 1150
    :cond_10
    const-string v2, "LHMA"

    .line 1151
    .line 1152
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1153
    .line 1154
    .line 1155
    new-instance v2, Lorg/json/JSONArray;

    .line 1156
    .line 1157
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    .line 1159
    .line 1160
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1161
    .line 1162
    if-eqz v1, :cond_11

    .line 1163
    .line 1164
    :goto_f
    :try_start_1
    array-length v3, v1

    .line 1165
    if-ge v8, v3, :cond_11

    .line 1166
    .line 1167
    aget-object v3, v1, v8

    .line 1168
    .line 1169
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1170
    .line 1171
    .line 1172
    move-result v3

    .line 1173
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1174
    .line 1175
    .line 1176
    add-int/lit8 v8, v8, 0x1

    .line 1177
    .line 1178
    goto :goto_f

    .line 1179
    :cond_11
    const-string v1, "TNXST"

    .line 1180
    .line 1181
    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1188
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1189
    .line 1190
    .line 1191
    move-result v1

    .line 1192
    sub-int/2addr v1, v9

    .line 1193
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1194
    .line 1195
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

    .line 1199
    .line 1200
    .line 1201
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    .line 1203
    .line 1204
    move-object v1, v4

    .line 1205
    :goto_11
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    return-void
.end method

.method public final declared-synchronized sendHqmBigData(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "Success to report \'KPUT\' : "

    .line 2
    .line 3
    const-string v4, "KPUT"

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v2, "HqmManagerService"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/os/SemHqmManager;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 21
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

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string p1, "ActivityManager_kpm"

    .line 34
    .line 35
    const-string v0, "HQM services is not working"

    .line 36
    .line 37
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :cond_1
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_2
    if-eqz p1, :cond_4

    .line 43
    .line 44
    :try_start_1
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 45
    .line 46
    const-string v3, "Sluggish"

    .line 47
    .line 48
    const-string/jumbo v5, "ph"

    .line 49
    .line 50
    .line 51
    const-string v6, "1.1"

    .line 52
    .line 53
    const-string/jumbo v7, "sec"

    .line 54
    .line 55
    .line 56
    const-string v8, ""

    .line 57
    .line 58
    const-string v10, ""

    .line 59
    .line 60
    move-object v9, p1

    .line 61
    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    const-string v1, "ActivityManager_kpm"

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const-string p1, "ActivityManager_kpm"

    .line 82
    .line 83
    const-string/jumbo v0, "failed to send to server"

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    const-string p1, "ActivityManager_kpm"

    .line 95
    .line 96
    const-string/jumbo v0, "failed to send to server."

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
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
